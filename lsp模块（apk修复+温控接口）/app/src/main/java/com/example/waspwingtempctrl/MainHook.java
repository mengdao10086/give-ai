package com.example.waspwingtempctrl;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/**
 * 飞智散热器 — LSPosed 模块
 *
 * 修复（v1.0）：
 * 1. 控制器层 stopScan 保底
 * 2. ViewModel 层：更新 LiveData，但不创建中间态 WaspWingInfo（避免干扰正常数据流）
 * 3. 强制 checkBluetoothPermission=true（Android 16 权限导致 discoverServices 不走）
 *
 * 智能温控唤醒（v2.0）：
 * 4. BLE 连接/断联 → 通过 FIFO 通知 tempctrl 守护进程
 * 5. B6ExperimentalActivity.onResume → 检查 BLE 状态 → 唤醒守护进程
 */
public class MainHook implements IXposedHookLoadPackage {

    private static final String TARGET_PACKAGE = "com.flydigi.waspwing.experimental";
    private static final String TAG = "[WaspWingTempCtrl]";
    private static final String FIFO_PATH = "/data/local/tmp/b6x_fifo";
    private static Object capturedWaspWingMgr = null;  // 构造函数钩子捕获的实例

    /**
     * 向 FIFO 写入一个字节，通知 tempctrl 守护进程
     * '1' = BLE 已连接，请求开始控制
     * '0' = BLE 已断开，请求停止控制
     */
    private static void writeFifo(String data) {
        try {
            // KernelSU 下 App 进程无权限写 /data/local/tmp/，需要用 su 提权
            Runtime.getRuntime().exec(new String[]{
                "su", "-c",
                "echo " + data + " > " + FIFO_PATH
            });
        } catch (Exception e) {
            // FIFO 可能还不存在（守护进程还未启动），忽略
        }
    }

    // ========== 智能温控广播接收器（v2.0） ==========
    // 接收 tempctrl 发送的 am broadcast，调用 setRunMode 控制散热器

    private static void registerTemperatureReceiver(Context ctx) {
        try {
            IntentFilter filter = new IntentFilter("com.flydigi.SET_TEMPERATURE");
            ctx.registerReceiver(new BroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    try {
                        int mode        = intent.getIntExtra("mode", 0);
                        int temperature = intent.getIntExtra("temperature", 20);
                        int windOC      = intent.getIntExtra("windOC", 0);
                        int coldOC      = intent.getIntExtra("coldOC", 0);
                        int windLevel   = intent.getIntExtra("windLevel", 0);
                        int modeCustom  = intent.getIntExtra("modeCustom", 0);
                        int extra       = intent.getIntExtra("extra", 0);

                        XposedBridge.log(TAG + " 收到广播 mode=" + mode
                                + " temp=" + temperature + " windOC=" + windOC
                                + " coldOC=" + coldOC + " windLv=" + windLevel);

                        // 调用 setRunMode——优先用构造函数捕获的实例，其次试单例
                        try {
                            Object inst = capturedWaspWingMgr;
                            if (inst == null) {
                                // 构造函数还没触发过，试单例方式兜底
                                Class<?> mgrCls = context.getClassLoader()
                                        .loadClass("com.flydigi.sdk.waspwing.WaspWingManager");
                                String[] methods = {"getInstance", "get", "getDefault"};
                                for (String m : methods) {
                                    try {
                                        inst = XposedHelpers.callStaticMethod(mgrCls, m);
                                        if (inst != null) break;
                                    } catch (Throwable t) { /* next */ }
                                }
                                if (inst == null) {
                                    try {
                                        // Kotlin object singleton: ClassName.INSTANCE
                                        inst = XposedHelpers.getStaticObjectField(mgrCls, "INSTANCE");
                                    } catch (Throwable t) { /* ok */ }
                                }
                            }

                            if (inst != null) {
                                XposedHelpers.callMethod(inst, "setRunMode",
                                        mode, temperature, windOC, coldOC,
                                        windLevel, modeCustom, extra);
                            } else {
                                XposedBridge.log(TAG + " setRunMode 失败: WaspWingManager 实例未就绪");
                            }
                        } catch (Throwable t) {
                            XposedBridge.log(TAG + " setRunMode 异常: " + t.getMessage());
                        }
                    } catch (Throwable t) {
                        XposedBridge.log(TAG + " 广播处理崩溃: " + t);
                    }
                }
            }, filter, Context.RECEIVER_EXPORTED);
            XposedBridge.log(TAG + " 已注册 SET_TEMPERATURE 广播接收器 (RECEIVER_EXPORTED)");
        } catch (Exception e) {
            XposedBridge.log(TAG + " 注册广播接收器失败: " + e.getMessage());
        }
    }

    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) {
        XposedBridge.log(TAG + " LoadPackage: " + lpparam.packageName);

        if (!lpparam.packageName.equals(TARGET_PACKAGE)) {
            XposedBridge.log(TAG + " 跳过非目标包: " + lpparam.packageName);
            return;
        }

        XposedBridge.log(TAG + " 模块已加载到 " + TARGET_PACKAGE);

        // ========== 修复 #1：控制器层 — 设备连接后停扫描 ==========
        try {
            Class<?> controllerClass = lpparam.classLoader.loadClass(
                    "com.flydigi.sdk.bluetooth.AbstractBluetoothController");

            XposedHelpers.findAndHookMethod(
                    controllerClass,
                    "onDeviceConnected",
                    BluetoothDevice.class,
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                Object controller = param.thisObject;
                                XposedHelpers.callMethod(controller, "stopScan");
                                XposedHelpers.setBooleanField(controller, "inScanning", false);
                                XposedBridge.log(TAG + " 控制器：扫描已停止");

                                // BLE 已连接 → 通知守护进程
                                writeFifo("1");
                                XposedBridge.log(TAG + " FIFO → '1'（BLE 已连接）");
                            } catch (Exception e) {
                                XposedBridge.log(TAG + " 控制器修复异常: " + e.getMessage());
                            }
                        }
                    }
            );
            XposedBridge.log(TAG + " 已钩住 AbstractBluetoothController.onDeviceConnected");
        } catch (Exception e) {
            XposedBridge.log(TAG + " 钩控制器失败: " + e.getMessage());
        }

        // ========== 修复 #2：ViewModel 层 — 连接后更新 UI LiveData ==========
        try {
            Class<?> btVmClass = lpparam.classLoader.loadClass(
                    "com.example.extool.BluetoothViewModel");

            XposedHelpers.findAndHookMethod(
                    btVmClass,
                    "onDeviceConnected",
                    BluetoothDevice.class,
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            try {
                                BluetoothDevice device = (BluetoothDevice) param.args[0];
                                Object vm = param.thisObject;

                                // 停止扫描
                                XposedHelpers.callMethod(vm, "stopScan");

                                if (device != null) {
                                    String name = device.getName();
                                    String addr = device.getAddress();

                                    // 更新基础 LiveData
                                    Object nameMd = XposedHelpers.getObjectField(
                                            vm, "_bluetoothNameLiveData");
                                    XposedHelpers.callMethod(nameMd, "postValue", name);

                                    Object macMd = XposedHelpers.getObjectField(
                                            vm, "_macLiveData");
                                    XposedHelpers.callMethod(macMd, "postValue", addr);

                                    Object connMd = XposedHelpers.getObjectField(
                                            vm, "_connectLiveData");
                                    XposedHelpers.callMethod(connMd, "postValue", true);

                                    // === _waspWingInfo：如有现有值则标记 connected=true ===
                                    // 注意：不要用 convertFromDevice 创建新实例！
                                    // 原因：convertFromDevice 创建的 WaspWingInfo 所有字段为默认值，
                                    // 其中 experimentalRunModeValue=null，会触发 App.onDeviceInfoUpdate
                                    // 里的 setExperimentalRunMode(true, coldLevel+1) 逻辑，导致
                                    // 状态循环和 UI 闪烁。让正常 GATT 数据流填充即可。
                                    try {
                                        Object waspInfoMd = XposedHelpers.getObjectField(
                                                vm, "_waspWingInfo");
                                        Object currentInfo = XposedHelpers.callMethod(
                                                waspInfoMd, "getValue");

                                        if (currentInfo != null) {
                                            XposedHelpers.callMethod(
                                                    currentInfo, "setConnected", true);
                                            XposedHelpers.callMethod(
                                                    waspInfoMd, "postValue", currentInfo);
                                            XposedBridge.log(TAG + " waspWingInfo 已更新 (connected=true)");
                                        }
                                        // currentInfo == null：不创建新对象，等正常数据流填充
                                    } catch (Exception e2) {
                                        XposedBridge.log(TAG + " 更新 waspWingInfo 失败: "
                                                + e2.getMessage());
                                    }
                                }

                                XposedBridge.log(TAG + " ViewModel 修复完成");
                            } catch (Exception e) {
                                XposedBridge.log(TAG + " ViewModel 修复异常: " + e.getMessage());
                            }
                        }
                    }
            );

            XposedBridge.log(TAG + " 已钩住 BluetoothViewModel.onDeviceConnected");
        } catch (Exception e) {
            XposedBridge.log(TAG + " 钩 BluetoothViewModel 失败: " + e.getMessage());
        }

        // ========== 修复 #3 + 智能温控 FIFO 唤醒 ==========
        try {
            Class<?> sdkVm = lpparam.classLoader.loadClass(
                    "com.flydigi.sdk.waspwing.WaspwingViewModel");
            Class<?> waspInfoCls = lpparam.classLoader.loadClass(
                    "com.flydigi.sdk.waspwing.WaspWingInfo");
            Class<?> leCtrl = lpparam.classLoader.loadClass(
                    "com.flydigi.sdk.bluetooth.LeDataInteractionController");
            Class<?> wingCtrl = lpparam.classLoader.loadClass(
                    "com.flydigi.sdk.waspwing.WaspWingDataInteractionController");
            Class<?> appVm = lpparam.classLoader.loadClass(
                    "com.example.extool.WaspWingViewModel");

            // ===== 修复 #4：强制 checkBluetoothPermission 返回 true（Android 16 权限问题） =====
            // 根因：Android 16 (SDK 36) 上，SDK 内部检查 BLUETOOTH_CONNECT 权限可能失败
            // 导致 onGattConnected() 提前 return，discoverServices() 从未被执行
            XposedHelpers.findAndHookMethod(leCtrl, "checkBluetoothPermission",
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            param.setResult(true);
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 checkBluetoothPermission（强制返回 true）");

            // ===== BLE 断联检测：BluetoothGatt.disconnect → FIFO "0" =====
            XposedHelpers.findAndHookMethod(
                    BluetoothGatt.class, "disconnect",
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            writeFifo("0");
                            XposedBridge.log(TAG + " FIFO → '0'（BLE 断联）");
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 BluetoothGatt.disconnect → FIFO '0'");

            // ===== 诊断钩子（调试用，保留） =====

            // 诊断 0：BluetoothGatt.discoverServices() — 验证是否被调用
            XposedHelpers.findAndHookMethod(
                    BluetoothGatt.class, "discoverServices",
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            BluetoothGatt gatt = (BluetoothGatt) param.thisObject;
                            String devName = gatt.getDevice() != null
                                    ? gatt.getDevice().getName() : "null";
                            XposedBridge.log(TAG + " [诊断] discoverServices 被调用"
                                    + " device=" + devName);
                        }
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            boolean result = (Boolean) param.getResult();
                            XposedBridge.log(TAG + " [诊断] discoverServices 返回 " + result);
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 BluetoothGatt.discoverServices");

            // 诊断 3a：LeDataInteractionController.connect() — 是否实际执行 connectGatt
            XposedHelpers.findAndHookMethod(leCtrl, "connect",
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            Object ctrl = param.thisObject;
                            Object dev = XposedHelpers.callMethod(ctrl, "getMBluetoothDevice");
                            int state = XposedHelpers.getIntField(ctrl, "mDataConnectState");
                            XposedBridge.log(TAG + " [诊断] connect() 进入"
                                    + " device=" + (dev != null ? dev.toString() : "null")
                                    + " state=" + state);
                        }
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            Object ctrl = param.thisObject;
                            Object gatt = XposedHelpers.getObjectField(ctrl, "mBluetoothGatt");
                            XposedBridge.log(TAG + " [诊断] connect() 退出"
                                    + " gatt=" + (gatt != null ? "有值" : "null"));
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 LeDataInteractionController.connect");

            // 诊断 3b：GattCallback 服务发现 — 是否完成
            Class<?> gattCb = lpparam.classLoader.loadClass(
                    "com.flydigi.sdk.bluetooth.LeDataInteractionController$mGattCallback$1");
            XposedHelpers.findAndHookMethod(gattCb, "onServicesDiscovered",
                    BluetoothGatt.class, int.class, new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            XposedBridge.log(TAG + " [诊断] onServicesDiscovered 被调用了"
                                    + " status=" + param.args[1]);
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 GattCallback.onServicesDiscovered");

            // 诊断 3d：WaspWingDataInteractionController.onGattConnected — GATT 连接成功
            XposedHelpers.findAndHookMethod(wingCtrl, "onGattConnected",
                    BluetoothGatt.class, new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            XposedBridge.log(TAG + " [诊断] WaspWingDataInteractionController.onGattConnected 已触发");
                            // 检查 discoverServices 结果
                            BluetoothGatt gatt = (BluetoothGatt) param.args[0];
                            if (gatt != null) {
                                XposedBridge.log(TAG + " [诊断]   services="
                                        + (gatt.getServices() != null ? gatt.getServices().size() : 0));
                            }
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 WaspWingDataInteractionController.onGattConnected");

            // 诊断 3c：SDK ViewModel 的 onGattConnected
            XposedHelpers.findAndHookMethod(sdkVm, "onGattConnected",
                    BluetoothDevice.class, new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            BluetoothDevice d = (BluetoothDevice) param.args[0];
                            Object thisVm = param.thisObject;
                            Object ld = XposedHelpers.getObjectField(thisVm, "_connectedLiveData");
                            Object val = XposedHelpers.callMethod(ld, "getValue");
                            XposedBridge.log(TAG + " [诊断] SDK.onGattConnected"
                                    + " device=" + (d != null ? d.getAddress() : "null")
                                    + " _connectedLiveData=" + (val != null ? "有值" : "null"));
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 SDK WaspwingViewModel.onGattConnected");

            // SDK onDeviceInfoUpdate — 只留一次，验证数据到达
            XposedHelpers.findAndHookMethod(sdkVm, "onDeviceInfoUpdate",
                    waspInfoCls, new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            Object info = param.args[0];
                            Boolean connected = (Boolean) XposedHelpers.callMethod(info, "isConnected");
                            Integer wind = (Integer) XposedHelpers.callMethod(info, "getRealWindLevel");
                            XposedBridge.log(TAG + " [诊断] SDK.onDeviceInfoUpdate"
                                    + " connected=" + connected
                                    + " windLevel(real)=" + wind);
                        }
                    });
            XposedBridge.log(TAG + " 已钩住 SDK WaspwingViewModel.onDeviceInfoUpdate");

        } catch (Exception e) {
            XposedBridge.log(TAG + " 钩诊断失败: " + e.getMessage());
        }

        // ========== 智能温控唤醒 #5：B6ExperimentalActivity.onResume ==========
        try {
            Class<?> b6ExpAct = lpparam.classLoader.loadClass(
                    "com.flydigi.waspwing.experimental.B6ExperimentalActivity");

            XposedHelpers.findAndHookMethod(b6ExpAct, "onResume",
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                // 通过 Activity 的 ViewModel 检查 BLE 连接状态
                                // B6ExperimentalActivity 中 getViewModel() 返回 BluetoothViewModel
                                Object vm = XposedHelpers.callMethod(param.thisObject, "getViewModel");
                                Object connLd = XposedHelpers.getObjectField(vm, "_connectLiveData");
                                Boolean isConnected = (Boolean) XposedHelpers.callMethod(connLd, "getValue");

                                if (isConnected != null && isConnected) {
                                    writeFifo("1");
                                    XposedBridge.log(TAG + " FIFO → '1'（onResume + BLE 已连接）");
                                } else {
                                    XposedBridge.log(TAG + " onResume 但 BLE 未连接，不唤醒");
                                }
                            } catch (Exception e) {
                                // ViewModel 可能不存在或方法不同，跳过
                                XposedBridge.log(TAG + " onResume 检查 BLE 状态失败: " + e.getMessage());
                            }
                        }
                    });

            XposedBridge.log(TAG + " 已钩住 B6ExperimentalActivity.onResume → FIFO");

            // ===== 捕获 WaspWingManager 实例（用于 setRunMode） =====
            try {
                Class<?> mgrCls = lpparam.classLoader.loadClass(
                        "com.flydigi.sdk.waspwing.WaspWingManager");
                XposedBridge.hookAllConstructors(mgrCls, new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        capturedWaspWingMgr = param.thisObject;
                        XposedBridge.log(TAG + " 已捕获 WaspWingManager 实例");
                    }
                });
                XposedBridge.log(TAG + " 已钩住 WaspWingManager 构造函数");
            } catch (Exception e) {
                XposedBridge.log(TAG + " 钩 WaspWingManager 失败: " + e.getMessage());
            }
        } catch (Exception e) {
            XposedBridge.log(TAG + " 钩 B6ExperimentalActivity 失败: " + e.getMessage());
        }

        // ========== 广播接收器注册（Application.onCreate 时机） ==========
        try {
            Class<?> appClass = lpparam.classLoader.loadClass("android.app.Application");
            XposedHelpers.findAndHookMethod(appClass, "onCreate", new XC_MethodHook() {
                @Override
                protected void afterHookedMethod(MethodHookParam param) {
                    Context ctx = (Context) param.thisObject;
                    registerTemperatureReceiver(ctx);
                }
            });
        } catch (Exception e) {
            XposedBridge.log(TAG + " 钩 Application.onCreate 失败: " + e.getMessage());
        }
    }
}
