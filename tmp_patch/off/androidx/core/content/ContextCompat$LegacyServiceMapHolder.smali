.class final Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyServiceMapHolder"
.end annotation


# static fields
.field static final SERVICES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 896
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    #@7
    .line 900
    const-class v1, Landroid/telephony/SubscriptionManager;

    #@9
    const-string v2, "telephony_subscription_service"

    #@b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 901
    const-class v1, Landroid/app/usage/UsageStatsManager;

    #@10
    const-string v2, "usagestats"

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 904
    const-class v1, Landroid/appwidget/AppWidgetManager;

    #@17
    const-string v2, "appwidget"

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 905
    const-class v1, Landroid/os/BatteryManager;

    #@1e
    const-string v2, "batterymanager"

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 906
    const-class v1, Landroid/hardware/camera2/CameraManager;

    #@25
    const-string v2, "camera"

    #@27
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 907
    const-class v1, Landroid/app/job/JobScheduler;

    #@2c
    const-string v2, "jobscheduler"

    #@2e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 908
    const-class v1, Landroid/content/pm/LauncherApps;

    #@33
    const-string v2, "launcherapps"

    #@35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 909
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    #@3a
    const-string v2, "media_projection"

    #@3c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 910
    const-class v1, Landroid/media/session/MediaSessionManager;

    #@41
    const-string v2, "media_session"

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 911
    const-class v1, Landroid/content/RestrictionsManager;

    #@48
    const-string v2, "restrictions"

    #@4a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 912
    const-class v1, Landroid/telecom/TelecomManager;

    #@4f
    const-string v2, "telecom"

    #@51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 913
    const-class v1, Landroid/media/tv/TvInputManager;

    #@56
    const-string v2, "tv_input"

    #@58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 916
    const-class v1, Landroid/app/AppOpsManager;

    #@5d
    const-string v2, "appops"

    #@5f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 917
    const-class v1, Landroid/view/accessibility/CaptioningManager;

    #@64
    const-string v2, "captioning"

    #@66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 918
    const-class v1, Landroid/hardware/ConsumerIrManager;

    #@6b
    const-string v2, "consumer_ir"

    #@6d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 919
    const-class v1, Landroid/print/PrintManager;

    #@72
    const-string v2, "print"

    #@74
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 922
    const-class v1, Landroid/bluetooth/BluetoothManager;

    #@79
    const-string v2, "bluetooth"

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 925
    const-class v1, Landroid/hardware/display/DisplayManager;

    #@80
    const-string v2, "display"

    #@82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    .line 926
    const-class v1, Landroid/os/UserManager;

    #@87
    const-string v2, "user"

    #@89
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 929
    const-class v1, Landroid/hardware/input/InputManager;

    #@8e
    const-string v2, "input"

    #@90
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    .line 930
    const-class v1, Landroid/media/MediaRouter;

    #@95
    const-string v2, "media_router"

    #@97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 931
    const-class v1, Landroid/net/nsd/NsdManager;

    #@9c
    const-string v2, "servicediscovery"

    #@9e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    .line 933
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    #@a3
    const-string v2, "accessibility"

    #@a5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 934
    const-class v1, Landroid/accounts/AccountManager;

    #@aa
    const-string v2, "account"

    #@ac
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 935
    const-class v1, Landroid/app/ActivityManager;

    #@b1
    const-string v2, "activity"

    #@b3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 936
    const-class v1, Landroid/app/AlarmManager;

    #@b8
    const-string v2, "alarm"

    #@ba
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bd
    .line 937
    const-class v1, Landroid/media/AudioManager;

    #@bf
    const-string v2, "audio"

    #@c1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    .line 938
    const-class v1, Landroid/content/ClipboardManager;

    #@c6
    const-string v2, "clipboard"

    #@c8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    .line 939
    const-class v1, Landroid/net/ConnectivityManager;

    #@cd
    const-string v2, "connectivity"

    #@cf
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    .line 940
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    #@d4
    const-string v2, "device_policy"

    #@d6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d9
    .line 941
    const-class v1, Landroid/app/DownloadManager;

    #@db
    const-string v2, "download"

    #@dd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e0
    .line 942
    const-class v1, Landroid/os/DropBoxManager;

    #@e2
    const-string v2, "dropbox"

    #@e4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    .line 943
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    #@e9
    const-string v2, "input_method"

    #@eb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ee
    .line 944
    const-class v1, Landroid/app/KeyguardManager;

    #@f0
    const-string v2, "keyguard"

    #@f2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 945
    const-class v1, Landroid/view/LayoutInflater;

    #@f7
    const-string v2, "layout_inflater"

    #@f9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fc
    .line 946
    const-class v1, Landroid/location/LocationManager;

    #@fe
    const-string v2, "location"

    #@100
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    .line 947
    const-class v1, Landroid/nfc/NfcManager;

    #@105
    const-string v2, "nfc"

    #@107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    .line 948
    const-class v1, Landroid/app/NotificationManager;

    #@10c
    const-string v2, "notification"

    #@10e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@111
    .line 949
    const-class v1, Landroid/os/PowerManager;

    #@113
    const-string v2, "power"

    #@115
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@118
    .line 950
    const-class v1, Landroid/app/SearchManager;

    #@11a
    const-string v2, "search"

    #@11c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    .line 951
    const-class v1, Landroid/hardware/SensorManager;

    #@121
    const-string v2, "sensor"

    #@123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@126
    .line 952
    const-class v1, Landroid/os/storage/StorageManager;

    #@128
    const-string v2, "storage"

    #@12a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 953
    const-class v1, Landroid/telephony/TelephonyManager;

    #@12f
    const-string v2, "phone"

    #@131
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@134
    .line 954
    const-class v1, Landroid/view/textservice/TextServicesManager;

    #@136
    const-string v2, "textservices"

    #@138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13b
    .line 955
    const-class v1, Landroid/app/UiModeManager;

    #@13d
    const-string v2, "uimode"

    #@13f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@142
    .line 956
    const-class v1, Landroid/hardware/usb/UsbManager;

    #@144
    const-string v2, "usb"

    #@146
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@149
    .line 957
    const-class v1, Landroid/os/Vibrator;

    #@14b
    const-string v2, "vibrator"

    #@14d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@150
    .line 958
    const-class v1, Landroid/app/WallpaperManager;

    #@152
    const-string v2, "wallpaper"

    #@154
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@157
    .line 959
    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    #@159
    const-string v2, "wifip2p"

    #@15b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15e
    .line 960
    const-class v1, Landroid/net/wifi/WifiManager;

    #@160
    const-string v2, "wifi"

    #@162
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@165
    .line 961
    const-class v1, Landroid/view/WindowManager;

    #@167
    const-string v2, "window"

    #@169
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
