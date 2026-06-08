.class public abstract Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;
.super Ljava/lang/Object;
.source "AbstractBluetoothController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractBluetoothController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1116:1\n1855#2,2:1117\n1855#2,2:1119\n1855#2,2:1121\n1855#2,2:1123\n1855#2,2:1125\n1855#2,2:1127\n1855#2,2:1129\n1855#2,2:1131\n1855#2,2:1133\n1855#2,2:1135\n1855#2,2:1137\n1855#2,2:1139\n1855#2,2:1141\n1855#2,2:1143\n1855#2,2:1145\n1855#2,2:1147\n1855#2,2:1150\n1855#2,2:1152\n1855#2,2:1154\n1855#2,2:1156\n1855#2,2:1158\n1855#2,2:1160\n1855#2,2:1162\n1855#2,2:1164\n1855#2,2:1166\n1855#2,2:1168\n1855#2,2:1170\n1855#2,2:1172\n1855#2,2:1174\n1855#2,2:1176\n1855#2,2:1178\n1855#2,2:1180\n1855#2,2:1182\n1855#2,2:1184\n1855#2,2:1186\n1#3:1149\n*S KotlinDebug\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController\n*L\n389#1:1117,2\n415#1:1119,2\n457#1:1121,2\n482#1:1123,2\n502#1:1125,2\n533#1:1127,2\n570#1:1129,2\n600#1:1131,2\n652#1:1133,2\n663#1:1135,2\n697#1:1137,2\n730#1:1139,2\n750#1:1141,2\n753#1:1143,2\n755#1:1145,2\n767#1:1147,2\n797#1:1150,2\n802#1:1152,2\n808#1:1154,2\n824#1:1156,2\n829#1:1158,2\n842#1:1160,2\n868#1:1162,2\n891#1:1164,2\n898#1:1166,2\n912#1:1168,2\n929#1:1170,2\n941#1:1172,2\n985#1:1174,2\n996#1:1176,2\n1014#1:1178,2\n1026#1:1180,2\n1030#1:1182,2\n554#1:1184,2\n586#1:1186,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00db\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0005:=@CV\u0008&\u0018\u0000 \u0092\u00012\u00020\u0001:\u0002\u0092\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010[\u001a\u00020\u001d2\u0006\u0010\\\u001a\u000202H\u0002J\u0019\u0010]\u001a\u00020^2\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010\u001dH\u0002\u00a2\u0006\u0002\u0010`J\u0006\u0010a\u001a\u00020\u001dJ\u0010\u0010b\u001a\u00020\u001d2\u0006\u0010\\\u001a\u000202H\u0002J\u000e\u0010c\u001a\u00020^2\u0006\u0010\\\u001a\u000202J\u0010\u0010d\u001a\u00020\u001d2\u0006\u0010\\\u001a\u000202H\u0002J\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u0002020fJ\u001d\u0010g\u001a\u0008\u0012\u0004\u0012\u0002020f2\n\u0008\u0002\u0010h\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0002\u0010iJ\u000e\u0010j\u001a\u00020\u00072\u0006\u0010\\\u001a\u000202J\u0012\u0010k\u001a\u0004\u0018\u0001022\u0008\u0010l\u001a\u0004\u0018\u00010mJ\u0006\u0010n\u001a\u00020\u001dJ\u0006\u0010o\u001a\u00020\u001dJ\u0006\u0010)\u001a\u00020\u001dJ\u0010\u0010p\u001a\u00020\u001d2\u0006\u0010l\u001a\u00020mH\u0002J\u0010\u0010q\u001a\u00020\u001d2\u0008\u0010\\\u001a\u0004\u0018\u000102J\u0010\u0010q\u001a\u00020\u001d2\u0008\u0010r\u001a\u0004\u0018\u00010mJ\u0012\u0010s\u001a\u00020\u001d2\u0008\u0010t\u001a\u0004\u0018\u00010uH\u0002J\u0008\u0010v\u001a\u00020^H\u0014J\u0008\u0010w\u001a\u00020^H\u0002J\u0012\u0010x\u001a\u00020^2\u0008\u0010\\\u001a\u0004\u0018\u000102H\u0015J\u0012\u0010y\u001a\u00020^2\u0008\u0010\\\u001a\u0004\u0018\u000102H\u0015J\u0016\u0010z\u001a\u00020^2\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u00020|0fH\u0002J\u001b\u0010}\u001a\u00020^2\u0006\u0010~\u001a\u00020\u007f2\u000b\u0008\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u000bJ\u001d\u0010}\u001a\u00020^2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u000b\u0008\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u000bJ\t\u0010\u0083\u0001\u001a\u00020^H\u0002J\u0012\u0010\u0084\u0001\u001a\u00020^2\u0007\u0010\u0085\u0001\u001a\u00020\u0001H\u0017J\u000f\u0010\u0086\u0001\u001a\u00020^2\u0006\u0010\\\u001a\u000202J\u000f\u0010\u0086\u0001\u001a\u00020^2\u0006\u0010l\u001a\u00020mJ\u0012\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u0081\u0001\u001a\u00030\u0089\u0001J\t\u0010\u008a\u0001\u001a\u00020^H\u0015J\u0013\u0010\u008b\u0001\u001a\u00020^2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0002J\t\u0010\u008c\u0001\u001a\u00020^H\u0002J\u0013\u0010\u008c\u0001\u001a\u00020^2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0003J\u0017\u0010\u008d\u0001\u001a\u00020^2\u0006\u0010~\u001a\u00020\u007f2\u0006\u0010Z\u001a\u00020\u0007J\u0019\u0010\u008d\u0001\u001a\u00020^2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0006\u0010Z\u001a\u00020\u0007J\u0007\u0010\u008e\u0001\u001a\u00020^J\u0012\u0010\u008f\u0001\u001a\u00020^2\u0007\u0010\u0085\u0001\u001a\u00020\u0001H\u0017J\u000b\u0010\u0090\u0001\u001a\u00020\u001d*\u000202J\u000b\u0010\u0091\u0001\u001a\u00020\u001d*\u000202R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\nj\u0008\u0012\u0004\u0012\u00020\u000e`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0015\u001a\u00020\u0007X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001b0\nj\u0008\u0012\u0004\u0012\u00020\u001b`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001e\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0014\u001a\u0004\u0008\u001f\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u001dX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u000e\u0010(\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010*\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u0014\u001a\u0004\u0008,\u0010-R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00101\u001a\u0004\u0018\u000102X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010;R\u0010\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010>R\u0010\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010AR\u0010\u0010B\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010DR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010FR\u001a\u0010G\u001a\u00020HX\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010O\u001a\u00020HX\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010J\"\u0004\u0008Q\u0010LR\u001b\u0010R\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010\u0014\u001a\u0004\u0008S\u0010\u0012R\u0010\u0010U\u001a\u00020VX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010WR\u001e\u0010X\u001a\u0012\u0012\u0004\u0012\u00020Y0\nj\u0008\u0012\u0004\u0012\u00020Y`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0093\u0001"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;",
        "",
        "mContext",
        "Landroid/content/Context;",
        "deviceFilter",
        "Lcom/flydigi/sdk/bluetooth/DeviceFilter;",
        "mProfile",
        "",
        "(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V",
        "bluetoothStateCallbacks",
        "Ljava/util/ArrayList;",
        "Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;",
        "Lkotlin/collections/ArrayList;",
        "bondStateCallbacks",
        "Lcom/flydigi/sdk/bluetooth/BondStateCallback;",
        "checkLocationServiceEnabledRunnable",
        "Ljava/lang/Runnable;",
        "getCheckLocationServiceEnabledRunnable",
        "()Ljava/lang/Runnable;",
        "checkLocationServiceEnabledRunnable$delegate",
        "Lkotlin/Lazy;",
        "chipType",
        "getChipType",
        "()I",
        "setChipType",
        "(I)V",
        "connectionStateCallbacks",
        "Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;",
        "continueCreateBond",
        "",
        "createBondTimeoutRunnable",
        "getCreateBondTimeoutRunnable",
        "createBondTimeoutRunnable$delegate",
        "getDeviceFilter",
        "()Lcom/flydigi/sdk/bluetooth/DeviceFilter;",
        "inOtaMode",
        "getInOtaMode",
        "()Z",
        "setInOtaMode",
        "(Z)V",
        "inScanning",
        "isBluetoothSupported",
        "leScanCallback",
        "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
        "getLeScanCallback",
        "()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
        "leScanCallback$delegate",
        "mBluetoothAdapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "mBluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "getMBluetoothDevice",
        "()Landroid/bluetooth/BluetoothDevice;",
        "setMBluetoothDevice",
        "(Landroid/bluetooth/BluetoothDevice;)V",
        "mBluetoothManager",
        "Landroid/bluetooth/BluetoothManager;",
        "mBluetoothStateReceiver",
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1",
        "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;",
        "mBondStateReceiver",
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1",
        "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;",
        "mClassicScanReceiver",
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1",
        "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;",
        "mConnectStateReceiver",
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1",
        "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;",
        "getMContext",
        "()Landroid/content/Context;",
        "mMainHandler",
        "Landroid/os/Handler;",
        "getMMainHandler",
        "()Landroid/os/Handler;",
        "setMMainHandler",
        "(Landroid/os/Handler;)V",
        "mProxy",
        "Landroid/bluetooth/BluetoothProfile;",
        "mWorkHandler",
        "getMWorkHandler",
        "setMWorkHandler",
        "removeBondTimeoutRunnable",
        "getRemoveBondTimeoutRunnable",
        "removeBondTimeoutRunnable$delegate",
        "scanCallback",
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1",
        "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;",
        "scanDeviceCallbacks",
        "Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;",
        "scanMode",
        "cancelBondProcess",
        "device",
        "checkLocationServiceEnabled",
        "",
        "doScan",
        "(Ljava/lang/Boolean;)V",
        "closeBluetooth",
        "connectDevice",
        "createBond",
        "disconnectDevice",
        "getBondedDevice",
        "",
        "getConnectedDevices",
        "bondRequired",
        "(Ljava/lang/Boolean;)Ljava/util/List;",
        "getConnectionState",
        "getRemoteDevice",
        "deviceMac",
        "",
        "isAccessFineLocationPermissionGranted",
        "isBluetoothEnabled",
        "isDeviceBonded",
        "isDeviceConnected",
        "address",
        "isDeviceReady",
        "scanRecord",
        "",
        "onBluetoothDisabled",
        "onBluetoothEnabled",
        "onDeviceConnected",
        "onDeviceDisconnected",
        "onDeviceFound",
        "devices",
        "Lcom/flydigi/sdk/bluetooth/data/BleDevice;",
        "openBluetooth",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "callback",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "openProfile",
        "register",
        "obj",
        "removeBond",
        "requestEnableLocationService",
        "Lio/reactivex/disposables/Disposable;",
        "Landroid/app/Activity;",
        "reset",
        "startClassicScan",
        "startLeScan",
        "startScan",
        "stopScan",
        "unregister",
        "isConnected",
        "isDeviceNameExist",
        "Companion",
        "bluetooth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$Companion;

.field public static final TIMEOUT_BOND:J = 0x3a98L


# instance fields
.field private bluetoothStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bondStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flydigi/sdk/bluetooth/BondStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final checkLocationServiceEnabledRunnable$delegate:Lkotlin/Lazy;

.field private chipType:I

.field private connectionStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private continueCreateBond:Z

.field private final createBondTimeoutRunnable$delegate:Lkotlin/Lazy;

.field private final deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

.field private inOtaMode:Z

.field private inScanning:Z

.field private isBluetoothSupported:Z

.field private final leScanCallback$delegate:Lkotlin/Lazy;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final mBluetoothStateReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;

.field private final mBondStateReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;

.field private final mClassicScanReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;

.field private final mConnectStateReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;

.field private final mContext:Landroid/content/Context;

.field protected mMainHandler:Landroid/os/Handler;

.field private final mProfile:I

.field private mProxy:Landroid/bluetooth/BluetoothProfile;

.field protected mWorkHandler:Landroid/os/Handler;

.field private final removeBondTimeoutRunnable$delegate:Lkotlin/Lazy;

.field private final scanCallback:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;

.field private scanDeviceCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private scanMode:I


# direct methods
.method public static synthetic $r8$lambda$DuU7MZ1PnYBIO7vJdKr2djD0IvM(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;ZLjava/util/List;Ljava/util/List;)V
    .registers 4

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->startLeScan$lambda$19(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;ZLjava/util/List;Ljava/util/List;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$O3k0zptRxhza0tW5XxfXB5Ea2mM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openBluetooth$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$Rhxns2YOOPAoOf_gDjAz3wlz52M(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;ZLjava/util/List;Ljava/util/List;)V
    .registers 4

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->startClassicScan$lambda$16(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;ZLjava/util/List;Ljava/util/List;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$jKnbpaYBPPIGjzhGiBGjmpnxdg8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openBluetooth$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$nI30JbqAnRnNJ3HRLkP_QT3zsDA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->requestEnableLocationService$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->Companion:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$Companion;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V
    .registers 9

    #@0
    const-string v0, "mContext"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "deviceFilter"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    .line 51
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mContext:Landroid/content/Context;

    #@f
    .line 52
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@11
    .line 53
    iput p3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mProfile:I

    #@13
    const/4 p2, -0x1

    #@14
    .line 58
    iput p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->chipType:I

    #@16
    .line 66
    new-instance p2, Ljava/util/ArrayList;

    #@18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@1d
    .line 67
    new-instance p2, Ljava/util/ArrayList;

    #@1f
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@24
    .line 68
    new-instance p2, Ljava/util/ArrayList;

    #@26
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    #@29
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@2b
    .line 69
    new-instance p2, Ljava/util/ArrayList;

    #@2d
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    #@30
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@32
    const/4 p2, 0x2

    #@33
    .line 71
    iput p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanMode:I

    #@35
    const/4 p2, 0x1

    #@36
    .line 73
    iput-boolean p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@38
    .line 82
    new-instance p3, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;

    #@3a
    invoke-direct {p3, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@3d
    iput-object p3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mClassicScanReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;

    #@3f
    .line 117
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;

    #@41
    invoke-direct {v0, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@44
    iput-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothStateReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;

    #@46
    .line 152
    new-instance v1, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;

    #@48
    invoke-direct {v1, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@4b
    iput-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBondStateReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;

    #@4d
    .line 223
    new-instance v2, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;

    #@4f
    invoke-direct {v2, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@52
    iput-object v2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mConnectStateReceiver:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;

    #@54
    .line 262
    new-instance v3, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;

    #@56
    invoke-direct {v3, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@59
    check-cast v3, Lkotlin/jvm/functions/Function0;

    #@5b
    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    #@5e
    move-result-object v3

    #@5f
    iput-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->leScanCallback$delegate:Lkotlin/Lazy;

    #@61
    .line 279
    new-instance v3, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;

    #@63
    invoke-direct {v3, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@66
    iput-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanCallback:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;

    #@68
    .line 328
    new-instance v3, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$checkLocationServiceEnabledRunnable$2;

    #@6a
    invoke-direct {v3, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$checkLocationServiceEnabledRunnable$2;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@6d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    #@6f
    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    #@72
    move-result-object v3

    #@73
    iput-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->checkLocationServiceEnabledRunnable$delegate:Lkotlin/Lazy;

    #@75
    .line 334
    new-instance v3, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$createBondTimeoutRunnable$2;

    #@77
    invoke-direct {v3, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$createBondTimeoutRunnable$2;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@7a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    #@7c
    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    #@7f
    move-result-object v3

    #@80
    iput-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->createBondTimeoutRunnable$delegate:Lkotlin/Lazy;

    #@82
    .line 341
    new-instance v3, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$removeBondTimeoutRunnable$2;

    #@84
    invoke-direct {v3, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$removeBondTimeoutRunnable$2;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@87
    check-cast v3, Lkotlin/jvm/functions/Function0;

    #@89
    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    #@8c
    move-result-object v3

    #@8d
    iput-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->removeBondTimeoutRunnable$delegate:Lkotlin/Lazy;

    #@8f
    const-string v3, "bluetooth"

    #@91
    .line 348
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@94
    move-result-object v3

    #@95
    const-string v4, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    #@97
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@9a
    check-cast v3, Landroid/bluetooth/BluetoothManager;

    #@9c
    iput-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    #@9e
    if-eqz v3, :cond_a6

    #@a0
    .line 349
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@a3
    move-result-object v3

    #@a4
    if-nez v3, :cond_aa

    #@a6
    :cond_a6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@a9
    move-result-object v3

    #@aa
    :cond_aa
    iput-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@ac
    if-eqz v3, :cond_af

    #@ae
    goto :goto_b0

    #@af
    :cond_af
    const/4 p2, 0x0

    #@b0
    .line 350
    :goto_b0
    iput-boolean p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@b2
    .line 353
    new-instance p2, Landroid/os/HandlerThread;

    #@b4
    const-string v3, "flyBleThread"

    #@b6
    invoke-direct {p2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@b9
    .line 354
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    #@bc
    .line 355
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@bf
    move-result-object p2

    #@c0
    .line 356
    new-instance v3, Landroid/os/Handler;

    #@c2
    invoke-direct {v3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@c5
    invoke-virtual {p0, v3}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->setMWorkHandler(Landroid/os/Handler;)V

    #@c8
    .line 357
    new-instance p2, Landroid/os/Handler;

    #@ca
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@cd
    move-result-object v3

    #@ce
    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d1
    invoke-virtual {p0, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->setMMainHandler(Landroid/os/Handler;)V

    #@d4
    .line 359
    iget-boolean p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@d6
    if-eqz p2, :cond_12d

    #@d8
    .line 360
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openProfile()V

    #@db
    .line 362
    new-instance p2, Landroid/content/IntentFilter;

    #@dd
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    #@e0
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    #@e2
    .line 363
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e5
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    #@e7
    .line 364
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ea
    const-string v3, "android.bluetooth.device.action.FOUND"

    #@ec
    .line 365
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ef
    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    #@f1
    .line 366
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f4
    .line 367
    check-cast p3, Landroid/content/BroadcastReceiver;

    #@f6
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@f9
    .line 369
    new-instance p2, Landroid/content/IntentFilter;

    #@fb
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    #@fe
    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    #@100
    .line 370
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@103
    .line 371
    check-cast v0, Landroid/content/BroadcastReceiver;

    #@105
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@108
    .line 374
    new-instance p2, Landroid/content/IntentFilter;

    #@10a
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    #@10d
    const-string p3, "android.bluetooth.device.action.ACL_CONNECTED"

    #@10f
    .line 375
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@112
    const-string p3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    #@114
    .line 376
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@117
    const-string p3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    #@119
    .line 377
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11c
    .line 378
    check-cast v2, Landroid/content/BroadcastReceiver;

    #@11e
    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@121
    .line 381
    check-cast v1, Landroid/content/BroadcastReceiver;

    #@123
    .line 382
    new-instance p2, Landroid/content/IntentFilter;

    #@125
    const-string p3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    #@127
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@12a
    .line 380
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@12d
    :cond_12d
    return-void
.end method

.method public static final synthetic access$cancelBondProcess(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    #@0
    .line 50
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static final synthetic access$checkLocationServiceEnabled(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/lang/Boolean;)V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->checkLocationServiceEnabled(Ljava/lang/Boolean;)V

    #@3
    return-void
.end method

.method public static final synthetic access$connectDevice(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    #@0
    .line 50
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static final synthetic access$getBluetoothStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;
    .registers 1

    #@0
    .line 50
    iget-object p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getBondStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;
    .registers 1

    #@0
    .line 50
    iget-object p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getCheckLocationServiceEnabledRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCheckLocationServiceEnabledRunnable()Ljava/lang/Runnable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static final synthetic access$getConnectionStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;
    .registers 1

    #@0
    .line 50
    iget-object p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getContinueCreateBond$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Z
    .registers 1

    #@0
    .line 50
    iget-boolean p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->continueCreateBond:Z

    #@2
    return p0
.end method

.method public static final synthetic access$getCreateBondTimeoutRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCreateBondTimeoutRunnable()Ljava/lang/Runnable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static final synthetic access$getRemoveBondTimeoutRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoveBondTimeoutRunnable()Ljava/lang/Runnable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static final synthetic access$getScanDeviceCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;
    .registers 1

    #@0
    .line 50
    iget-object p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@2
    return-object p0
.end method

.method public static final synthetic access$onBluetoothEnabled(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onBluetoothEnabled()V

    #@3
    return-void
.end method

.method public static final synthetic access$onDeviceFound(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/util/List;)V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceFound(Ljava/util/List;)V

    #@3
    return-void
.end method

.method public static final synthetic access$openProfile(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openProfile()V

    #@3
    return-void
.end method

.method public static final synthetic access$setContinueCreateBond$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Z)V
    .registers 2

    #@0
    .line 50
    iput-boolean p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->continueCreateBond:Z

    #@2
    return-void
.end method

.method public static final synthetic access$setMProxy$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothProfile;)V
    .registers 2

    #@0
    .line 50
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mProxy:Landroid/bluetooth/BluetoothProfile;

    #@2
    return-void
.end method

.method private final cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    #@0
    .line 766
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1e

    #@5
    .line 767
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@7
    check-cast p1, Ljava/lang/Iterable;

    #@9
    .line 1147
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@19
    .line 767
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return v1

    #@1e
    .line 771
    :cond_1e
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothEnabled()Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_25

    #@24
    return v1

    #@25
    .line 776
    :cond_25
    :try_start_25
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    #@27
    const-string v2, "cancelBondProcess"

    #@29
    new-array v3, v1, [Ljava/lang/Class;

    #@2b
    .line 777
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2e
    move-result-object v0

    #@2f
    const/4 v2, 0x1

    #@30
    .line 778
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@33
    new-array v2, v2, [Ljava/lang/Object;

    #@35
    const/4 v3, 0x0

    #@36
    aput-object v3, v2, v1

    #@38
    .line 779
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object p1

    #@3c
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    #@3e
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@41
    check-cast p1, Ljava/lang/Boolean;

    #@43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@46
    move-result v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_47} :catch_47

    #@47
    :catch_47
    return v1
.end method

.method private final checkLocationServiceEnabled(Ljava/lang/Boolean;)V
    .registers 6

    #@0
    .line 446
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mContext:Landroid/content/Context;

    #@2
    const-string v1, "location"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    const-string v1, "null cannot be cast to non-null type android.location.LocationManager"

    #@a
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@d
    check-cast v0, Landroid/location/LocationManager;

    #@f
    .line 447
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@11
    const/16 v2, 0x1c

    #@13
    const/4 v3, 0x1

    #@14
    if-lt v1, v2, :cond_1b

    #@16
    .line 448
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    #@19
    move-result v0

    #@1a
    goto :goto_37

    #@1b
    :cond_1b
    const-string v1, "gps"

    #@1d
    .line 450
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_36

    #@23
    const-string v1, "network"

    #@25
    .line 451
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_36

    #@2b
    const-string v1, "passive"

    #@2d
    .line 452
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_34

    #@33
    goto :goto_36

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_37

    #@36
    :cond_36
    :goto_36
    move v0, v3

    #@37
    :goto_37
    if-nez v0, :cond_56

    #@39
    .line 456
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->stopScan()V

    #@3c
    .line 457
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@3e
    check-cast p1, Ljava/lang/Iterable;

    #@40
    .line 1121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object p1

    #@44
    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_63

    #@4a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@50
    const/16 v1, 0x8

    #@52
    .line 458
    invoke-interface {v0, v1}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onScanFailed(I)V

    #@55
    goto :goto_44

    #@56
    .line 460
    :cond_56
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@59
    move-result-object v0

    #@5a
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5d
    move-result p1

    #@5e
    if-eqz p1, :cond_63

    #@60
    .line 461
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->startLeScan()V

    #@63
    :cond_63
    return-void
.end method

.method static synthetic checkLocationServiceEnabled$default(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .registers 4

    #@0
    if-nez p3, :cond_f

    #@2
    and-int/lit8 p2, p2, 0x1

    #@4
    if-eqz p2, :cond_b

    #@6
    const/4 p1, 0x0

    #@7
    .line 445
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a
    move-result-object p1

    #@b
    :cond_b
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->checkLocationServiceEnabled(Ljava/lang/Boolean;)V

    #@e
    return-void

    #@f
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    #@11
    const-string p1, "Super calls with default arguments not supported in this target, function: checkLocationServiceEnabled"

    #@13
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@16
    throw p0
.end method

.method private final connectDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9

    #@0
    .line 841
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1e

    #@5
    .line 842
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@7
    check-cast p1, Ljava/lang/Iterable;

    #@9
    .line 1160
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@19
    .line 842
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return v1

    #@1e
    .line 846
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@20
    const/16 v2, 0x1c

    #@22
    const/4 v3, 0x1

    #@23
    if-lt v0, v2, :cond_26

    #@25
    return v3

    #@26
    .line 851
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mProxy:Landroid/bluetooth/BluetoothProfile;

    #@28
    if-eqz v0, :cond_50

    #@2a
    .line 852
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v2

    #@2e
    const-string v4, "connect"

    #@30
    new-array v5, v3, [Ljava/lang/Class;

    #@32
    .line 853
    const-class v6, Landroid/bluetooth/BluetoothDevice;

    #@34
    aput-object v6, v5, v1

    #@36
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@39
    move-result-object v2

    #@3a
    .line 854
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@3d
    new-array v3, v3, [Ljava/lang/Object;

    #@3f
    aput-object p1, v3, v1

    #@41
    .line 855
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object p1

    #@45
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    #@47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@4a
    check-cast p1, Ljava/lang/Boolean;

    #@4c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@4f
    move-result v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_50} :catch_50

    #@50
    :catch_50
    :cond_50
    return v1
.end method

.method private final disconnectDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9

    #@0
    .line 867
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1e

    #@5
    .line 868
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@7
    check-cast p1, Ljava/lang/Iterable;

    #@9
    .line 1162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@19
    .line 868
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return v1

    #@1e
    .line 871
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@20
    const/16 v2, 0x1c

    #@22
    const/4 v3, 0x1

    #@23
    if-lt v0, v2, :cond_26

    #@25
    return v3

    #@26
    .line 876
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mProxy:Landroid/bluetooth/BluetoothProfile;

    #@28
    if-eqz v0, :cond_50

    #@2a
    .line 877
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v2

    #@2e
    const-string v4, "disconnect"

    #@30
    new-array v5, v3, [Ljava/lang/Class;

    #@32
    .line 879
    const-class v6, Landroid/bluetooth/BluetoothDevice;

    #@34
    aput-object v6, v5, v1

    #@36
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@39
    move-result-object v2

    #@3a
    .line 880
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@3d
    new-array v3, v3, [Ljava/lang/Object;

    #@3f
    aput-object p1, v3, v1

    #@41
    .line 881
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object p1

    #@45
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    #@47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@4a
    check-cast p1, Ljava/lang/Boolean;

    #@4c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@4f
    move-result v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_50} :catch_50

    #@50
    :catch_50
    :cond_50
    return v1
.end method

.method private final getCheckLocationServiceEnabledRunnable()Ljava/lang/Runnable;
    .registers 2

    #@0
    .line 328
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->checkLocationServiceEnabledRunnable$delegate:Lkotlin/Lazy;

    #@2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Runnable;

    #@8
    return-object v0
.end method

.method public static synthetic getConnectedDevices$default(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;
    .registers 4

    #@0
    if-nez p3, :cond_10

    #@2
    and-int/lit8 p2, p2, 0x1

    #@4
    if-eqz p2, :cond_b

    #@6
    const/4 p1, 0x0

    #@7
    .line 939
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a
    move-result-object p1

    #@b
    :cond_b
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getConnectedDevices(Ljava/lang/Boolean;)Ljava/util/List;

    #@e
    move-result-object p0

    #@f
    return-object p0

    #@10
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string p1, "Super calls with default arguments not supported in this target, function: getConnectedDevices"

    #@14
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw p0
.end method

.method private final getCreateBondTimeoutRunnable()Ljava/lang/Runnable;
    .registers 2

    #@0
    .line 334
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->createBondTimeoutRunnable$delegate:Lkotlin/Lazy;

    #@2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Runnable;

    #@8
    return-object v0
.end method

.method private final getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .registers 2

    #@0
    .line 262
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->leScanCallback$delegate:Lkotlin/Lazy;

    #@2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    #@8
    return-object v0
.end method

.method private final getRemoveBondTimeoutRunnable()Ljava/lang/Runnable;
    .registers 2

    #@0
    .line 341
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->removeBondTimeoutRunnable$delegate:Lkotlin/Lazy;

    #@2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Runnable;

    #@8
    return-object v0
.end method

.method private final isDeviceBonded(Ljava/lang/String;)Z
    .registers 4

    #@0
    .line 928
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1e

    #@5
    .line 929
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@7
    check-cast p1, Ljava/lang/Iterable;

    #@9
    .line 1170
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@19
    .line 929
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return v1

    #@1e
    .line 932
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@21
    move-result-object p1

    #@22
    if-eqz p1, :cond_2d

    #@24
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    #@27
    move-result p1

    #@28
    const/16 v0, 0xc

    #@2a
    if-ne p1, v0, :cond_2d

    #@2c
    const/4 v1, 0x1

    #@2d
    :cond_2d
    return v1
.end method

.method private final isDeviceReady([B)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 709
    :cond_4
    array-length v1, p1

    #@5
    const/4 v2, 0x1

    #@6
    if-le v1, v2, :cond_21

    #@8
    .line 711
    :try_start_8
    array-length v1, p1

    #@9
    sub-int/2addr v1, v2

    #@a
    move v3, v0

    #@b
    :goto_b
    if-ge v3, v1, :cond_21

    #@d
    .line 712
    aget-byte v4, p1, v3

    #@f
    if-ne v4, v2, :cond_1e

    #@11
    add-int/2addr v3, v2

    #@12
    .line 713
    aget-byte p1, p1, v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_21

    #@14
    and-int/lit8 v1, p1, 0x1

    #@16
    if-gtz v1, :cond_1c

    #@18
    and-int/lit8 p1, p1, 0x2

    #@1a
    if-lez p1, :cond_1d

    #@1c
    :cond_1c
    move v0, v2

    #@1d
    :cond_1d
    return v0

    #@1e
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_b

    #@21
    :catch_21
    :cond_21
    return v0
.end method

.method private final onBluetoothEnabled()V
    .registers 4

    #@0
    .line 1030
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@2
    check-cast v0, Ljava/lang/Iterable;

    #@4
    .line 1182
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_19

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@14
    const/4 v2, 0x1

    #@15
    .line 1030
    invoke-interface {v1, v2}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothState(Z)V

    #@18
    goto :goto_8

    #@19
    :cond_19
    return-void
.end method

.method private final onDeviceFound(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flydigi/sdk/bluetooth/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 682
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 683
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p1

    #@9
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    const/4 v2, 0x1

    #@e
    if-eqz v1, :cond_56

    #@10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@16
    .line 684
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p0, v3}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isDeviceNameExist(Landroid/bluetooth/BluetoothDevice;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_29

    #@20
    .line 685
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    goto :goto_31

    #@29
    .line 687
    :cond_29
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getBytes()[B

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v3}, Lcom/flydigi/sdk/bluetooth/BleUtils;->readDeviceNameFromScanRecord([B)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 689
    :goto_31
    invoke-virtual {v1, v3}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->setDeviceName(Ljava/lang/String;)V

    #@34
    .line 690
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getDeviceName()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Ljava/lang/CharSequence;

    #@3a
    if-eqz v4, :cond_44

    #@3c
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@3f
    move-result v4

    #@40
    if-nez v4, :cond_43

    #@42
    goto :goto_44

    #@43
    :cond_43
    const/4 v2, 0x0

    #@44
    :cond_44
    :goto_44
    if-nez v2, :cond_9

    #@46
    .line 691
    iget-object v2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@48
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getRssi()I

    #@4b
    move-result v4

    #@4c
    invoke-interface {v2, v3, v4}, Lcom/flydigi/sdk/bluetooth/DeviceFilter;->isValidDevice(Ljava/lang/String;I)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_9

    #@52
    .line 693
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    goto :goto_9

    #@56
    .line 696
    :cond_56
    move-object p1, v0

    #@57
    check-cast p1, Ljava/util/Collection;

    #@59
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@5c
    move-result p1

    #@5d
    xor-int/2addr p1, v2

    #@5e
    if-eqz p1, :cond_7b

    #@60
    .line 697
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@62
    check-cast p1, Ljava/lang/Iterable;

    #@64
    .line 1137
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object p1

    #@68
    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_7b

    #@6e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v1

    #@72
    check-cast v1, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@74
    .line 698
    move-object v2, v0

    #@75
    check-cast v2, Ljava/util/List;

    #@77
    invoke-interface {v1, v2}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onDeviceFound(Ljava/util/List;)V

    #@7a
    goto :goto_68

    #@7b
    :cond_7b
    return-void
.end method

.method public static synthetic openBluetooth$default(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroidx/fragment/app/Fragment;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;ILjava/lang/Object;)V
    .registers 5

    #@0
    if-nez p4, :cond_b

    #@2
    and-int/lit8 p3, p3, 0x2

    #@4
    if-eqz p3, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    .line 434
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openBluetooth(Landroidx/fragment/app/Fragment;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;)V

    #@a
    return-void

    #@b
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    #@d
    const-string p1, "Super calls with default arguments not supported in this target, function: openBluetooth"

    #@f
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@12
    throw p0
.end method

.method public static synthetic openBluetooth$default(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroidx/fragment/app/FragmentActivity;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;ILjava/lang/Object;)V
    .registers 5

    #@0
    if-nez p4, :cond_b

    #@2
    and-int/lit8 p3, p3, 0x2

    #@4
    if-eqz p3, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    .line 413
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openBluetooth(Landroidx/fragment/app/FragmentActivity;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;)V

    #@a
    return-void

    #@b
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    #@d
    const-string p1, "Super calls with default arguments not supported in this target, function: openBluetooth"

    #@f
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@12
    throw p0
.end method

.method private static final openBluetooth$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 422
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method

.method private static final openBluetooth$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 430
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method

.method private final openProfile()V
    .registers 5

    #@0
    .line 388
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    if-nez v0, :cond_1d

    #@4
    .line 389
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@6
    check-cast v0, Ljava/lang/Iterable;

    #@8
    .line 1117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1c

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@18
    .line 389
    invoke-interface {v1}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    return-void

    #@1d
    .line 392
    :cond_1d
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1f
    if-eqz v0, :cond_2f

    #@21
    .line 393
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mContext:Landroid/content/Context;

    #@23
    .line 394
    new-instance v2, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$openProfile$2;

    #@25
    invoke-direct {v2, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$openProfile$2;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@28
    check-cast v2, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2a
    .line 409
    iget v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mProfile:I

    #@2c
    .line 392
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    #@2f
    :cond_2f
    return-void
.end method

.method private static final requestEnableLocationService$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 475
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method

.method private final startClassicScan(Landroidx/fragment/app/FragmentActivity;)V
    .registers 5

    #@0
    .line 532
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    if-nez v0, :cond_1d

    #@4
    .line 533
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@6
    check-cast p1, Ljava/lang/Iterable;

    #@8
    .line 1127
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object p1

    #@c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1c

    #@12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@18
    .line 533
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    return-void

    #@1d
    .line 536
    :cond_1d
    invoke-static {p1}, Lcom/permissionx/guolindev/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/permissionx/guolindev/PermissionMediator;

    #@20
    move-result-object p1

    #@21
    const/4 v0, 0x1

    #@22
    new-array v0, v0, [Ljava/lang/String;

    #@24
    .line 538
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@26
    const/16 v2, 0x1f

    #@28
    if-lt v1, v2, :cond_2d

    #@2a
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    #@2c
    goto :goto_2f

    #@2d
    :cond_2d
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    #@2f
    :goto_2f
    const/4 v2, 0x0

    #@30
    aput-object v1, v0, v2

    #@32
    .line 537
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/PermissionMediator;->permissions([Ljava/lang/String;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@35
    move-result-object p1

    #@36
    .line 544
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda0;

    #@38
    invoke-direct {v0, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda0;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@3b
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->request(Lcom/permissionx/guolindev/callback/RequestCallback;)V

    #@3e
    return-void
.end method

.method private static final startClassicScan$lambda$16(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "<anonymous parameter 1>"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p2, "<anonymous parameter 2>"

    #@c
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_27

    #@11
    .line 546
    iget-object p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@13
    if-eqz p0, :cond_41

    #@15
    .line 547
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_23

    #@1b
    const-string p1, "\u53d6\u6d88\u4e4b\u524d\u7684\u626b\u63cf"

    #@1d
    .line 548
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@20
    .line 549
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    #@23
    .line 551
    :cond_23
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    #@26
    goto :goto_41

    #@27
    .line 554
    :cond_27
    iget-object p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@29
    check-cast p0, Ljava/lang/Iterable;

    #@2b
    .line 1184
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object p0

    #@2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result p1

    #@33
    if-eqz p1, :cond_41

    #@35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object p1

    #@39
    check-cast p1, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@3b
    const/16 p2, 0x9

    #@3d
    .line 555
    invoke-interface {p1, p2}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onScanFailed(I)V

    #@40
    goto :goto_2f

    #@41
    :cond_41
    :goto_41
    return-void
.end method

.method private final startLeScan()V
    .registers 8

    #@0
    .line 599
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    if-nez v0, :cond_1d

    #@4
    .line 600
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@6
    check-cast v0, Ljava/lang/Iterable;

    #@8
    .line 1131
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1c

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@18
    .line 600
    invoke-interface {v1}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    return-void

    #@1d
    .line 603
    :cond_1d
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->inScanning:Z

    #@1f
    if-eqz v0, :cond_27

    #@21
    const-string v0, "\u5df2\u7ecf\u5728\u626b\u63cf\u4e2d\u4e86"

    #@23
    .line 604
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@26
    return-void

    #@27
    :cond_27
    const/4 v0, 0x1

    #@28
    .line 607
    iput-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->inScanning:Z

    #@2a
    .line 610
    iget v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanMode:I

    #@2c
    const-wide/16 v2, 0x1f4

    #@2e
    const/4 v4, 0x2

    #@2f
    if-ne v1, v4, :cond_3d

    #@31
    .line 612
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@33
    if-eqz v0, :cond_7f

    #@35
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    #@3c
    goto :goto_7f

    #@3d
    .line 614
    :cond_3d
    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    #@3f
    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    #@42
    .line 616
    iget v5, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanMode:I

    #@44
    const/4 v6, 0x3

    #@45
    if-eq v5, v6, :cond_51

    #@47
    const/4 v6, 0x4

    #@48
    if-eq v5, v6, :cond_4f

    #@4a
    const/4 v6, 0x5

    #@4b
    if-eq v5, v6, :cond_52

    #@4d
    move v0, v4

    #@4e
    goto :goto_52

    #@4f
    :cond_4f
    const/4 v0, 0x0

    #@50
    goto :goto_52

    #@51
    :cond_51
    const/4 v0, -0x1

    #@52
    .line 615
    :cond_52
    :goto_52
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    #@55
    .line 639
    iget v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanMode:I

    #@57
    if-ne v0, v4, :cond_5f

    #@59
    const-wide/16 v4, 0x0

    #@5b
    .line 641
    invoke-virtual {v1, v4, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    #@5e
    goto :goto_66

    #@5f
    :cond_5f
    const-wide/16 v2, 0x3e8

    #@61
    .line 644
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    #@64
    const-wide/16 v2, 0x1388

    #@66
    .line 646
    :goto_66
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@68
    if-eqz v0, :cond_7f

    #@6a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    #@6d
    move-result-object v0

    #@6e
    if-eqz v0, :cond_7f

    #@70
    .line 647
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@73
    move-result-object v4

    #@74
    .line 648
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    #@77
    move-result-object v1

    #@78
    .line 649
    iget-object v5, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanCallback:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;

    #@7a
    check-cast v5, Landroid/bluetooth/le/ScanCallback;

    #@7c
    .line 646
    invoke-virtual {v0, v4, v1, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    #@7f
    .line 652
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@81
    check-cast v0, Ljava/lang/Iterable;

    #@83
    .line 1133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@86
    move-result-object v0

    #@87
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_97

    #@8d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@90
    move-result-object v1

    #@91
    check-cast v1, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@93
    .line 653
    invoke-interface {v1}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onScanStarted()V

    #@96
    goto :goto_87

    #@97
    .line 656
    :cond_97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@99
    const/16 v1, 0x1f

    #@9b
    if-ge v0, v1, :cond_a8

    #@9d
    .line 657
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMWorkHandler()Landroid/os/Handler;

    #@a0
    move-result-object v0

    #@a1
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCheckLocationServiceEnabledRunnable()Ljava/lang/Runnable;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@a8
    :cond_a8
    return-void
.end method

.method private final startLeScan(Landroidx/fragment/app/FragmentActivity;)V
    .registers 5

    #@0
    .line 569
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    if-nez v0, :cond_1d

    #@4
    .line 570
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@6
    check-cast p1, Ljava/lang/Iterable;

    #@8
    .line 1129
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object p1

    #@c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1c

    #@12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@18
    .line 570
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    return-void

    #@1d
    .line 574
    :cond_1d
    invoke-static {p1}, Lcom/permissionx/guolindev/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/permissionx/guolindev/PermissionMediator;

    #@20
    move-result-object p1

    #@21
    const/4 v0, 0x1

    #@22
    new-array v0, v0, [Ljava/lang/String;

    #@24
    .line 576
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@26
    const/16 v2, 0x1f

    #@28
    if-lt v1, v2, :cond_2d

    #@2a
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    #@2c
    goto :goto_2f

    #@2d
    :cond_2d
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    #@2f
    :goto_2f
    const/4 v2, 0x0

    #@30
    aput-object v1, v0, v2

    #@32
    .line 575
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/PermissionMediator;->permissions([Ljava/lang/String;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@35
    move-result-object p1

    #@36
    .line 582
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda1;

    #@38
    invoke-direct {v0, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@3b
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->request(Lcom/permissionx/guolindev/callback/RequestCallback;)V

    #@3e
    return-void
.end method

.method private static final startLeScan$lambda$19(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "<anonymous parameter 1>"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p2, "<anonymous parameter 2>"

    #@c
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_15

    #@11
    .line 584
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->startLeScan()V

    #@14
    goto :goto_2f

    #@15
    .line 586
    :cond_15
    iget-object p0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@17
    check-cast p0, Ljava/lang/Iterable;

    #@19
    .line 1186
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object p0

    #@1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result p1

    #@21
    if-eqz p1, :cond_2f

    #@23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object p1

    #@27
    check-cast p1, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@29
    const/16 p2, 0x9

    #@2b
    .line 587
    invoke-interface {p1, p2}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onScanFailed(I)V

    #@2e
    goto :goto_1d

    #@2f
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public final closeBluetooth()Z
    .registers 4

    #@0
    .line 481
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_1e

    #@5
    .line 482
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@7
    check-cast v0, Ljava/lang/Iterable;

    #@9
    .line 1123
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1d

    #@13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@19
    .line 482
    invoke-interface {v2}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return v1

    #@1e
    .line 485
    :cond_1e
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothEnabled()Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2a

    #@24
    const-string v0, "\u7cfb\u7edf\u84dd\u7259\u672a\u5f00\u542f\uff0c\u65e0\u9700\u5173\u95ed"

    #@26
    .line 486
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@29
    return v1

    #@2a
    .line 490
    :cond_2a
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2c
    if-eqz v0, :cond_33

    #@2e
    .line 491
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    #@31
    move-result v0

    #@32
    goto :goto_34

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    :goto_34
    return v0
.end method

.method public final createBond(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 729
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@7
    if-nez v0, :cond_22

    #@9
    .line 730
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@b
    check-cast p1, Ljava/lang/Iterable;

    #@d
    .line 1139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p1

    #@11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_21

    #@17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@1d
    .line 730
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@20
    goto :goto_11

    #@21
    :cond_21
    return-void

    #@22
    .line 734
    :cond_22
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->stopScan()V

    #@25
    .line 737
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0, v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@2f
    const/4 v1, 0x0

    #@30
    if-eqz v0, :cond_bd

    #@32
    .line 741
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@35
    move-result-object p1

    #@36
    const-string v2, "it.address"

    #@38
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@3b
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isDeviceBonded(Ljava/lang/String;)Z

    #@3e
    move-result p1

    #@3f
    if-eqz p1, :cond_79

    #@41
    const/4 p1, 0x1

    #@42
    .line 742
    iput-boolean p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->continueCreateBond:Z

    #@44
    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    #@46
    const-string v1, "\u5df2\u6709"

    #@48
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object p1

    #@53
    const/16 v1, 0x28

    #@55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    move-result-object p1

    #@59
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object p1

    #@61
    const-string v1, ")\u7684\u914d\u5bf9\u4fe1\u606f\uff0c\u9700\u8981\u5148\u53d6\u6d88\u914d\u5bf9"

    #@63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object p1

    #@67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object p1

    #@6b
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@6e
    .line 744
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@71
    move-result-object p1

    #@72
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@75
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->removeBond(Ljava/lang/String;)V

    #@78
    return-void

    #@79
    .line 748
    :cond_79
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    #@7c
    move-result p1

    #@7d
    if-eqz p1, :cond_a5

    #@7f
    .line 750
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@81
    check-cast p1, Ljava/lang/Iterable;

    #@83
    .line 1141
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@86
    move-result-object p1

    #@87
    :goto_87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_97

    #@8d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@90
    move-result-object v1

    #@91
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@93
    .line 750
    invoke-interface {v1, v0}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onCreateBondStart(Landroid/bluetooth/BluetoothDevice;)V

    #@96
    goto :goto_87

    #@97
    .line 751
    :cond_97
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@9a
    move-result-object p1

    #@9b
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCreateBondTimeoutRunnable()Ljava/lang/Runnable;

    #@9e
    move-result-object v0

    #@9f
    const-wide/16 v1, 0x3a98

    #@a1
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@a4
    goto :goto_d5

    #@a5
    .line 753
    :cond_a5
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@a7
    check-cast p1, Ljava/lang/Iterable;

    #@a9
    .line 1143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ac
    move-result-object p1

    #@ad
    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@b0
    move-result v2

    #@b1
    if-eqz v2, :cond_d5

    #@b3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b6
    move-result-object v2

    #@b7
    check-cast v2, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@b9
    .line 753
    invoke-interface {v2, v0, v1}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onCreateBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@bc
    goto :goto_ad

    #@bd
    .line 755
    :cond_bd
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@bf
    check-cast v0, Ljava/lang/Iterable;

    #@c1
    .line 1145
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c4
    move-result-object v0

    #@c5
    :goto_c5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c8
    move-result v2

    #@c9
    if-eqz v2, :cond_d5

    #@cb
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ce
    move-result-object v2

    #@cf
    check-cast v2, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@d1
    .line 756
    invoke-interface {v2, p1, v1}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onCreateBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@d4
    goto :goto_c5

    #@d5
    :cond_d5
    :goto_d5
    return-void
.end method

.method public final getBondedDevice()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .line 911
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    if-nez v0, :cond_21

    #@4
    .line 912
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@6
    check-cast v0, Ljava/lang/Iterable;

    #@8
    .line 1168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1c

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@18
    .line 912
    invoke-interface {v1}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1b
    goto :goto_c

    #@1c
    .line 913
    :cond_1c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 916
    :cond_21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    .line 917
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@27
    if-eqz v1, :cond_58

    #@29
    .line 918
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v1

    #@31
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_58

    #@37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #@3d
    .line 919
    iget-object v3, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@3f
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    const/4 v5, 0x2

    #@44
    const/4 v6, 0x0

    #@45
    const/4 v7, 0x0

    #@46
    invoke-static {v3, v4, v7, v5, v6}, Lcom/flydigi/sdk/bluetooth/DeviceFilter$DefaultImpls;->isValidDevice$default(Lcom/flydigi/sdk/bluetooth/DeviceFilter;Ljava/lang/String;IILjava/lang/Object;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_31

    #@4c
    .line 920
    check-cast v0, Ljava/util/Collection;

    #@4e
    const-string v3, "device"

    #@50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@53
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    #@56
    move-result-object v0

    #@57
    goto :goto_31

    #@58
    :cond_58
    return-object v0
.end method

.method protected final getChipType()I
    .registers 2

    #@0
    .line 58
    iget v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->chipType:I

    #@2
    return v0
.end method

.method public final getConnectedDevices(Ljava/lang/Boolean;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .line 940
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    if-nez v0, :cond_21

    #@4
    .line 941
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@6
    check-cast p1, Ljava/lang/Iterable;

    #@8
    .line 1172
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object p1

    #@c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1c

    #@12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@18
    .line 941
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1b
    goto :goto_c

    #@1c
    .line 942
    :cond_1c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@1f
    move-result-object p1

    #@20
    return-object p1

    #@21
    .line 945
    :cond_21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    .line 946
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    #@27
    const-string v2, "device"

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x2

    #@2b
    const/4 v5, 0x0

    #@2c
    if-eqz v1, :cond_8c

    #@2e
    const/4 v6, 0x7

    #@2f
    .line 947
    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    #@32
    move-result-object v1

    #@33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v1

    #@37
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_8c

    #@3d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    #@43
    .line 948
    iget-object v7, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@45
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    invoke-static {v7, v8, v5, v4, v3}, Lcom/flydigi/sdk/bluetooth/DeviceFilter$DefaultImpls;->isValidDevice$default(Lcom/flydigi/sdk/bluetooth/DeviceFilter;Ljava/lang/String;IILjava/lang/Object;)Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_37

    #@4f
    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    #@51
    const-string v8, "find bluetooth "

    #@53
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-static {v7}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@65
    const/4 v7, 0x1

    #@66
    .line 950
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@69
    move-result-object v7

    #@6a
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6d
    move-result v7

    #@6e
    if-eqz v7, :cond_82

    #@70
    .line 951
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    #@73
    move-result v7

    #@74
    const/16 v8, 0xc

    #@76
    if-ne v7, v8, :cond_37

    #@78
    .line 952
    check-cast v0, Ljava/util/Collection;

    #@7a
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@7d
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    #@80
    move-result-object v0

    #@81
    goto :goto_37

    #@82
    .line 955
    :cond_82
    check-cast v0, Ljava/util/Collection;

    #@84
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@87
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    #@8a
    move-result-object v0

    #@8b
    goto :goto_37

    #@8c
    .line 960
    :cond_8c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@8f
    move-result p1

    #@90
    if-eqz p1, :cond_ee

    #@92
    .line 962
    :try_start_92
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mProxy:Landroid/bluetooth/BluetoothProfile;

    #@94
    if-eqz p1, :cond_ee

    #@96
    .line 963
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    #@99
    move-result-object p1

    #@9a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9d
    move-result-object p1

    #@9e
    :cond_9e
    :goto_9e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@a1
    move-result v1

    #@a2
    if-eqz v1, :cond_ee

    #@a4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v1

    #@a8
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@aa
    .line 964
    iget-object v6, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@ac
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    invoke-static {v6, v7, v5, v4, v3}, Lcom/flydigi/sdk/bluetooth/DeviceFilter$DefaultImpls;->isValidDevice$default(Lcom/flydigi/sdk/bluetooth/DeviceFilter;Ljava/lang/String;IILjava/lang/Object;)Z

    #@b3
    move-result v6

    #@b4
    if-eqz v6, :cond_9e

    #@b6
    .line 965
    move-object v6, v0

    #@b7
    check-cast v6, Ljava/util/Collection;

    #@b9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@bc
    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    #@bf
    move-result-object v0
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_c0} :catch_c1

    #@c0
    goto :goto_9e

    #@c1
    .line 970
    :catch_c1
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getBondedDevice()Ljava/util/List;

    #@c4
    move-result-object p1

    #@c5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c8
    move-result-object p1

    #@c9
    :cond_c9
    :goto_c9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@cc
    move-result v1

    #@cd
    if-eqz v1, :cond_ee

    #@cf
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d2
    move-result-object v1

    #@d3
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@d5
    .line 971
    iget-object v2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@d7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@da
    move-result-object v6

    #@db
    invoke-static {v2, v6, v5, v4, v3}, Lcom/flydigi/sdk/bluetooth/DeviceFilter$DefaultImpls;->isValidDevice$default(Lcom/flydigi/sdk/bluetooth/DeviceFilter;Ljava/lang/String;IILjava/lang/Object;)Z

    #@de
    move-result v2

    #@df
    if-eqz v2, :cond_c9

    #@e1
    invoke-virtual {p0, v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_c9

    #@e7
    .line 972
    check-cast v0, Ljava/util/Collection;

    #@e9
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    #@ec
    move-result-object v0

    #@ed
    goto :goto_c9

    #@ee
    :cond_ee
    return-object v0
.end method

.method public final getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 984
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@7
    const/4 v1, 0x0

    #@8
    if-nez v0, :cond_23

    #@a
    .line 985
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@c
    check-cast p1, Ljava/lang/Iterable;

    #@e
    .line 1174
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object p1

    #@12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_22

    #@18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@1e
    .line 985
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@21
    goto :goto_12

    #@22
    :cond_22
    return v1

    #@23
    .line 988
    :cond_23
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    #@25
    if-eqz v0, :cond_2d

    #@27
    const/4 v1, 0x7

    #@28
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    #@2b
    move-result v1

    #@2c
    goto :goto_35

    #@2d
    .line 989
    :cond_2d
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mProxy:Landroid/bluetooth/BluetoothProfile;

    #@2f
    if-eqz v0, :cond_35

    #@31
    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@34
    move-result v1

    #@35
    :cond_35
    :goto_35
    return v1
.end method

.method protected final getDeviceFilter()Lcom/flydigi/sdk/bluetooth/DeviceFilter;
    .registers 2

    #@0
    .line 52
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->deviceFilter:Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@2
    return-object v0
.end method

.method protected final getInOtaMode()Z
    .registers 2

    #@0
    .line 59
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->inOtaMode:Z

    #@2
    return v0
.end method

.method protected final getMBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    #@0
    .line 55
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method protected final getMContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 51
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method protected final getMMainHandler()Landroid/os/Handler;
    .registers 2

    #@0
    .line 57
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mMainHandler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    :cond_5
    const-string v0, "mMainHandler"

    #@7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@a
    const/4 v0, 0x0

    #@b
    return-object v0
.end method

.method protected final getMWorkHandler()Landroid/os/Handler;
    .registers 2

    #@0
    .line 56
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mWorkHandler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    :cond_5
    const-string v0, "mWorkHandler"

    #@7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@a
    const/4 v0, 0x0

    #@b
    return-object v0
.end method

.method public final getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3

    #@0
    .line 904
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@7
    move-result-object p1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return-object p1
.end method

.method public final isAccessFineLocationPermissionGranted()Z
    .registers 3

    #@0
    .line 1084
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mContext:Landroid/content/Context;

    #@2
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    #@4
    .line 1083
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_17

    #@a
    .line 1087
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mContext:Landroid/content/Context;

    #@c
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    #@e
    .line 1086
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    const/4 v0, 0x1

    #@18
    :goto_18
    return v0
.end method

.method public final isBluetoothEnabled()Z
    .registers 4

    #@0
    .line 1013
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1e

    #@5
    .line 1014
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@7
    check-cast v0, Ljava/lang/Iterable;

    #@9
    .line 1178
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1d

    #@13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@19
    .line 1014
    invoke-interface {v2}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return v1

    #@1e
    .line 1018
    :cond_1e
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@20
    if-eqz v0, :cond_27

    #@22
    .line 1019
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    #@25
    move-result v0

    #@26
    return v0

    #@27
    :cond_27
    return v1
.end method

.method public final isBluetoothSupported()Z
    .registers 2

    #@0
    .line 1081
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    return v0
.end method

.method public final isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    #@7
    const/4 v1, 0x0

    #@8
    new-array v2, v1, [Ljava/lang/Class;

    #@a
    const-string v3, "isConnected"

    #@c
    .line 1104
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@f
    move-result-object v0

    #@10
    const/4 v2, 0x1

    #@11
    .line 1105
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@14
    new-array v1, v1, [Ljava/lang/Object;

    #@16
    .line 1106
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    #@1c
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@1f
    check-cast p1, Ljava/lang/Boolean;

    #@21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@24
    move-result p1

    #@25
    return p1
.end method

.method public final isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    #@0
    .line 995
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1e

    #@5
    .line 996
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@7
    check-cast p1, Ljava/lang/Iterable;

    #@9
    .line 1176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@19
    .line 996
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return v1

    #@1e
    :cond_1e
    const/4 v0, 0x1

    #@1f
    const/4 v2, 0x0

    #@20
    .line 1001
    :try_start_20
    invoke-static {p0, v2, v0, v2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getConnectedDevices$default(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v3

    #@28
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_47

    #@2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    #@34
    if-eqz p1, :cond_3b

    #@36
    .line 1002
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move-object v5, v2

    #@3c
    :goto_3c
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v4
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_44} :catch_47

    #@44
    if-eqz v4, :cond_28

    #@46
    return v0

    #@47
    :catch_47
    :cond_47
    return v1
.end method

.method public final isDeviceConnected(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 992
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public final isDeviceNameExist(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 1101
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Ljava/lang/CharSequence;

    #@b
    const/4 v0, 0x1

    #@c
    if-eqz p1, :cond_17

    #@e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@11
    move-result p1

    #@12
    if-nez p1, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    move p1, v0

    #@18
    :goto_18
    xor-int/2addr p1, v0

    #@19
    return p1
.end method

.method protected onBluetoothDisabled()V
    .registers 4

    #@0
    .line 1026
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@2
    check-cast v0, Ljava/lang/Iterable;

    #@4
    .line 1180
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_19

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@14
    const/4 v2, 0x0

    #@15
    .line 1026
    invoke-interface {v1, v2}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothState(Z)V

    #@18
    goto :goto_8

    #@19
    :cond_19
    return-void
.end method

.method protected onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    #@0
    .line 898
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@2
    check-cast v0, Ljava/lang/Iterable;

    #@4
    .line 1166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_18

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;

    #@14
    .line 899
    invoke-interface {v1, p1}, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method protected onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 890
    iput v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->chipType:I

    #@3
    .line 891
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@5
    check-cast v0, Ljava/lang/Iterable;

    #@7
    .line 1164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1b

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;

    #@17
    .line 892
    invoke-interface {v1, p1}, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    #@1a
    goto :goto_b

    #@1b
    :cond_1b
    return-void
.end method

.method public final openBluetooth(Landroidx/fragment/app/Fragment;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;)V
    .registers 4

    #@0
    const-string v0, "fragment"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 435
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@8
    move-result-object p1

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openBluetooth(Landroidx/fragment/app/FragmentActivity;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;)V

    #@e
    :cond_e
    return-void
.end method

.method public final openBluetooth(Landroidx/fragment/app/FragmentActivity;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;)V
    .registers 5

    #@0
    const-string v0, "activity"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 414
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@7
    if-nez v0, :cond_22

    #@9
    .line 415
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@b
    check-cast p1, Ljava/lang/Iterable;

    #@d
    .line 1119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p1

    #@11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result p2

    #@15
    if-eqz p2, :cond_21

    #@17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object p2

    #@1b
    check-cast p2, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@1d
    .line 415
    invoke-interface {p2}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@20
    goto :goto_11

    #@21
    :cond_21
    return-void

    #@22
    .line 419
    :cond_22
    check-cast p1, Landroid/app/Activity;

    #@24
    invoke-static {p1}, Lrx_activity_result2/RxActivityResult;->on(Landroid/app/Activity;)Lrx_activity_result2/RxActivityResult$Builder;

    #@27
    move-result-object p1

    #@28
    .line 420
    new-instance v0, Landroid/content/Intent;

    #@2a
    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    #@2c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2f
    invoke-virtual {p1, v0}, Lrx_activity_result2/RxActivityResult$Builder;->startIntent(Landroid/content/Intent;)Lio/reactivex/Observable;

    #@32
    move-result-object p1

    #@33
    .line 421
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$openBluetooth$disposable$1;

    #@35
    invoke-direct {v0, p0, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$openBluetooth$disposable$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;)V

    #@38
    .line 422
    check-cast v0, Lkotlin/jvm/functions/Function1;

    #@3a
    new-instance p2, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda3;

    #@3c
    invoke-direct {p2, v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@3f
    .line 421
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$openBluetooth$disposable$2;

    #@41
    invoke-direct {v0, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$openBluetooth$disposable$2;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@44
    .line 430
    check-cast v0, Lkotlin/jvm/functions/Function1;

    #@46
    new-instance v1, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda4;

    #@48
    invoke-direct {v1, v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@4b
    .line 421
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    #@4e
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "obj"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 1035
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@7
    if-eqz v0, :cond_16

    #@9
    .line 1036
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_16

    #@11
    .line 1037
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1040
    :cond_16
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;

    #@18
    if-eqz v0, :cond_27

    #@1a
    .line 1041
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_27

    #@22
    .line 1042
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 1045
    :cond_27
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@29
    if-eqz v0, :cond_38

    #@2b
    .line 1046
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_38

    #@33
    .line 1047
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 1050
    :cond_38
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@3a
    if-eqz v0, :cond_49

    #@3c
    .line 1051
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_49

    #@44
    .line 1052
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    :cond_49
    return-void
.end method

.method public final removeBond(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 796
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@7
    if-nez v0, :cond_22

    #@9
    .line 797
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@b
    check-cast p1, Ljava/lang/Iterable;

    #@d
    .line 1150
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p1

    #@11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_21

    #@17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@1d
    .line 797
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@20
    goto :goto_11

    #@21
    :cond_21
    return-void

    #@22
    .line 801
    :cond_22
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    #@25
    move-result v0

    #@26
    const/16 v1, 0xc

    #@28
    const/4 v2, 0x0

    #@29
    if-eq v0, v1, :cond_44

    #@2b
    .line 802
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@2d
    check-cast v0, Ljava/lang/Iterable;

    #@2f
    .line 1152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v0

    #@33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_43

    #@39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@3f
    .line 803
    invoke-interface {v1, p1, v2}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onRemoveBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@42
    goto :goto_33

    #@43
    :cond_43
    return-void

    #@44
    .line 808
    :cond_44
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@46
    check-cast v0, Ljava/lang/Iterable;

    #@48
    .line 1154
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v0

    #@4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_5c

    #@52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v1

    #@56
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@58
    .line 809
    invoke-interface {v1, p1}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onRemoveBondStart(Landroid/bluetooth/BluetoothDevice;)V

    #@5b
    goto :goto_4c

    #@5c
    .line 813
    :cond_5c
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    #@5f
    move-result v0

    #@60
    const/4 v1, 0x1

    #@61
    if-eqz v0, :cond_68

    #@63
    .line 814
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->disconnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@66
    move-result v0

    #@67
    goto :goto_69

    #@68
    :cond_68
    move v0, v1

    #@69
    :goto_69
    if-eqz v0, :cond_c9

    #@6b
    .line 817
    :try_start_6b
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    #@6d
    const-string v3, "removeBond"

    #@6f
    new-array v4, v2, [Ljava/lang/Class;

    #@71
    .line 818
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@74
    move-result-object v0

    #@75
    .line 819
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@78
    new-array v1, v2, [Ljava/lang/Object;

    #@7a
    .line 820
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    #@80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@83
    check-cast v0, Ljava/lang/Boolean;

    #@85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_99

    #@8b
    .line 822
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@8e
    move-result-object v0

    #@8f
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoveBondTimeoutRunnable()Ljava/lang/Runnable;

    #@92
    move-result-object v1

    #@93
    const-wide/16 v3, 0x3a98

    #@95
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@98
    goto :goto_c9

    #@99
    .line 824
    :cond_99
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@9b
    check-cast v0, Ljava/lang/Iterable;

    #@9d
    .line 1156
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a0
    move-result-object v0

    #@a1
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a4
    move-result v1

    #@a5
    if-eqz v1, :cond_c9

    #@a7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@aa
    move-result-object v1

    #@ab
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@ad
    .line 825
    invoke-interface {v1, p1, v2}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onRemoveBondResult(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b0} :catch_b1

    #@b0
    goto :goto_a1

    #@b1
    .line 829
    :catch_b1
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@b3
    check-cast v0, Ljava/lang/Iterable;

    #@b5
    .line 1158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b8
    move-result-object v0

    #@b9
    :goto_b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@bc
    move-result v1

    #@bd
    if-eqz v1, :cond_c9

    #@bf
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c2
    move-result-object v1

    #@c3
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@c5
    .line 830
    invoke-interface {v1, p1, v2}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onRemoveBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@c8
    goto :goto_b9

    #@c9
    :cond_c9
    :goto_c9
    return-void
.end method

.method public final removeBond(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "deviceMac"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 787
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@8
    move-result-object p1

    #@9
    if-eqz p1, :cond_e

    #@b
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->removeBond(Landroid/bluetooth/BluetoothDevice;)V

    #@e
    :cond_e
    return-void
.end method

.method public final requestEnableLocationService(Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;
    .registers 4

    #@0
    const-string v0, "activity"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 473
    invoke-static {p1}, Lrx_activity_result2/RxActivityResult;->on(Landroid/app/Activity;)Lrx_activity_result2/RxActivityResult$Builder;

    #@8
    move-result-object p1

    #@9
    .line 474
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {p1, v0}, Lrx_activity_result2/RxActivityResult$Builder;->startIntent(Landroid/content/Intent;)Lio/reactivex/Observable;

    #@13
    move-result-object p1

    #@14
    .line 475
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$requestEnableLocationService$1;

    #@16
    invoke-direct {v0, p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$requestEnableLocationService$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@19
    check-cast v0, Lkotlin/jvm/functions/Function1;

    #@1b
    new-instance v1, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda2;

    #@1d
    invoke-direct {v1, v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@20
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    #@23
    move-result-object p1

    #@24
    const-string v0, "fun requestEnableLocatio\u2026true)\n            }\n    }"

    #@26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@29
    return-object p1
.end method

.method protected reset()V
    .registers 3

    #@0
    .line 1096
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@8
    .line 1097
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMWorkHandler()Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@f
    .line 1098
    iput-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@11
    return-void
.end method

.method protected final setChipType(I)V
    .registers 2

    #@0
    .line 58
    iput p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->chipType:I

    #@2
    return-void
.end method

.method protected final setInOtaMode(Z)V
    .registers 2

    #@0
    .line 59
    iput-boolean p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->inOtaMode:Z

    #@2
    return-void
.end method

.method protected final setMBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    #@0
    .line 55
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-void
.end method

.method protected final setMMainHandler(Landroid/os/Handler;)V
    .registers 3

    #@0
    const-string v0, "<set-?>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 57
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mMainHandler:Landroid/os/Handler;

    #@7
    return-void
.end method

.method protected final setMWorkHandler(Landroid/os/Handler;)V
    .registers 3

    #@0
    const-string v0, "<set-?>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 56
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mWorkHandler:Landroid/os/Handler;

    #@7
    return-void
.end method

.method public final startScan(Landroidx/fragment/app/Fragment;I)V
    .registers 4

    #@0
    const-string v0, "fragment"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 564
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    #@8
    move-result-object p1

    #@9
    const-string v0, "fragment.requireActivity()"

    #@b
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@e
    invoke-virtual {p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->startScan(Landroidx/fragment/app/FragmentActivity;I)V

    #@11
    return-void
.end method

.method public final startScan(Landroidx/fragment/app/FragmentActivity;I)V
    .registers 5

    #@0
    const-string v0, "activity"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 501
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@7
    if-nez v0, :cond_21

    #@9
    .line 502
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@b
    check-cast v0, Ljava/lang/Iterable;

    #@d
    .line 1125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_21

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@1d
    .line 503
    invoke-interface {p1}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@20
    return-void

    #@21
    .line 507
    :cond_21
    iput p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanMode:I

    #@23
    .line 508
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothEnabled()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_34

    #@29
    .line 511
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$startScan$2;

    #@2b
    invoke-direct {v0, p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$startScan$2;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroidx/fragment/app/FragmentActivity;I)V

    #@2e
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@30
    .line 509
    invoke-virtual {p0, p1, v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->openBluetooth(Landroidx/fragment/app/FragmentActivity;Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;)V

    #@33
    goto :goto_3e

    #@34
    :cond_34
    const/4 v0, 0x1

    #@35
    if-ne p2, v0, :cond_3b

    #@37
    .line 522
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->startClassicScan(Landroidx/fragment/app/FragmentActivity;)V

    #@3a
    goto :goto_3e

    #@3b
    .line 525
    :cond_3b
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->startLeScan(Landroidx/fragment/app/FragmentActivity;)V

    #@3e
    :goto_3e
    return-void
.end method

.method public final stopScan()V
    .registers 3

    #@0
    .line 662
    iget-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isBluetoothSupported:Z

    #@2
    if-nez v0, :cond_1d

    #@4
    .line 663
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@6
    check-cast v0, Ljava/lang/Iterable;

    #@8
    .line 1135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1c

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@18
    .line 663
    invoke-interface {v1}, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;->onBluetoothNotSupported()V

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    return-void

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    .line 666
    iput-boolean v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->inScanning:Z

    #@20
    const-string v0, "\u505c\u6b62\u626b\u63cf"

    #@22
    .line 667
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@25
    .line 669
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@27
    if-eqz v0, :cond_32

    #@29
    .line 670
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_32

    #@2f
    .line 671
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    #@32
    .line 674
    :cond_32
    iget v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanMode:I

    #@34
    const/4 v1, 0x2

    #@35
    if-ne v0, v1, :cond_43

    #@37
    .line 675
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@39
    if-eqz v0, :cond_54

    #@3b
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    #@42
    goto :goto_54

    #@43
    .line 677
    :cond_43
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@45
    if-eqz v0, :cond_54

    #@47
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    #@4a
    move-result-object v0

    #@4b
    if-eqz v0, :cond_54

    #@4d
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanCallback:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;

    #@4f
    check-cast v1, Landroid/bluetooth/le/ScanCallback;

    #@51
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    #@54
    :cond_54
    :goto_54
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "obj"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 1059
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/BluetoothStateCallback;

    #@7
    if-eqz v0, :cond_16

    #@9
    .line 1060
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_16

    #@11
    .line 1061
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bluetoothStateCallbacks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@16
    .line 1064
    :cond_16
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;

    #@18
    if-eqz v0, :cond_27

    #@1a
    .line 1065
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_27

    #@22
    .line 1066
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@27
    .line 1069
    :cond_27
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@29
    if-eqz v0, :cond_38

    #@2b
    .line 1070
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_38

    #@33
    .line 1071
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@38
    .line 1074
    :cond_38
    instance-of v0, p1, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@3a
    if-eqz v0, :cond_49

    #@3c
    .line 1075
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_49

    #@44
    .line 1076
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@49
    :cond_49
    return-void
.end method
