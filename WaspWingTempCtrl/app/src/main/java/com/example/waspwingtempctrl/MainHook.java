package com.example.waspwingtempctrl;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/**
 * 飞智散热器 — LSPosed 模块
 *
 * 修复：
 * 1. 控制器层 stopScan 保底
 * 2. ViewModel 层：更新 LiveData，但不创建中间态 WaspWingInfo（避免干扰正常数据流）
 * 3. 强制 checkBluetoothPermission=true（Android 16 权限导致 discoverServices 不走）
 *
 * 关键修复历程：
 * - 问题1：ACL_CONNECTED 后扫描不停止 → 钩 onDeviceConnected → stopScan()
 * - 问题2：_waspWingInfo 一直 null → 曾用 convertFromDevice 创建，但导致智能温控闪烁
 * - 问题3：discoverServices 不回调 → 权限检查在 Android 16 上返回 false
 * - 最终：convertFromDevice 会创建全默认值 WaspWingInfo（experimentalRunModeValue=null），
 *   触发 App.onDeviceInfoUpdate 中的 setExperimentalRunMode(true, coldLevel+1)，导致状态循环。
 *   解决方案：不提前创建 WaspWingInfo，让正常 GATT 数据流填充。
 */
public class MainHook implements IXposedHookLoadPackage {

    private static final String TARGET_PACKAGE = "com.flydigi.waspwing.experimental";
    private static final String TAG = "[WaspWingTempCtrl]";

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

        // ========== 修复 #3：诊断 — 追踪 GATT 连接和设备信息链路 ==========
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

            // 诊断 0：BluetoothGatt.discoverServices() — 验证是否被调用
            XposedHelpers.findAndHookMethod(
                    BluetoothGatt.class, "discoverServices",
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            BluetoothGatt gatt = (BluetoothGatt) param.thisObject;
                            String devName = gatt.getDevice() != null
                                    ? gatt.getDevice().getName() : "null";
                            StringBuilder sb = new StringBuilder();
                            for (StackTraceElement el : Thread.currentThread().getStackTrace()) {
                                if (sb.length() > 400) break;
                                String s = el.toString();
                                if (s.contains("flydigi") || s.contains("example")
                                        || s.contains("waspwing")) {
                                    sb.append("\n  at ").append(s);
                                }
                            }
                            XposedBridge.log(TAG + " [诊断] BluetoothGatt.discoverServices() 被调用"
                                    + " device=" + devName
                                    + " stack=" + sb.toString());
                        }
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            boolean result = (Boolean) param.getResult();
                            XposedBridge.log(TAG + " [诊断] BluetoothGatt.discoverServices() 返回 "
                                    + result);
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
                            // 打印调用栈定位谁调了 connect()
                            StringBuilder sb = new StringBuilder();
                            for (StackTraceElement el : Thread.currentThread().getStackTrace()) {
                                if (sb.length() > 500) break;
                                String s = el.toString();
                                if (s.contains("flydigi") || s.contains("example")
                                        || s.contains("waspwing")) {
                                    sb.append("\n  at ").append(s);
                                }
                            }
                            XposedBridge.log(TAG + " [诊断] LeDataInteractionController.connect() 进入"
                                    + " device=" + (dev != null ? dev.toString() : "null")
                                    + " mDataConnectState=" + state
                                    + " stack=" + sb.toString());
                        }
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            Object ctrl = param.thisObject;
                            Object gatt = XposedHelpers.getObjectField(ctrl, "mBluetoothGatt");
                            XposedBridge.log(TAG + " [诊断] LeDataInteractionController.connect() 退出"
                                    + " mBluetoothGatt=" + (gatt != null ? "有值" : "null"));
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
    }
}
