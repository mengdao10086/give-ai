.class public final Lcom/blankj/utilcode/constant/PermissionConstants;
.super Ljava/lang/Object;
.source "PermissionConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/constant/PermissionConstants$PermissionGroup;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RECOGNITION:Ljava/lang/String; = "ACTIVITY_RECOGNITION"

.field public static final CALENDAR:Ljava/lang/String; = "CALENDAR"

.field public static final CAMERA:Ljava/lang/String; = "CAMERA"

.field public static final CONTACTS:Ljava/lang/String; = "CONTACTS"

.field private static final GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

.field private static final GROUP_CALENDAR:[Ljava/lang/String;

.field private static final GROUP_CAMERA:[Ljava/lang/String;

.field private static final GROUP_CONTACTS:[Ljava/lang/String;

.field private static final GROUP_LOCATION:[Ljava/lang/String;

.field private static final GROUP_MICROPHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE_BELOW_O:[Ljava/lang/String;

.field private static final GROUP_SENSORS:[Ljava/lang/String;

.field private static final GROUP_SMS:[Ljava/lang/String;

.field private static final GROUP_STORAGE:[Ljava/lang/String;

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final MICROPHONE:Ljava/lang/String; = "MICROPHONE"

.field public static final PHONE:Ljava/lang/String; = "PHONE"

.field public static final SENSORS:Ljava/lang/String; = "SENSORS"

.field public static final SMS:Ljava/lang/String; = "SMS"

.field public static final STORAGE:Ljava/lang/String; = "STORAGE"


# direct methods
.method static constructor <clinit>()V
    .registers 10

    #@0
    const-string v0, "android.permission.READ_CALENDAR"

    #@2
    const-string v1, "android.permission.WRITE_CALENDAR"

    #@4
    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    #@a
    const-string v0, "android.permission.CAMERA"

    #@c
    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    #@12
    const-string v0, "android.permission.WRITE_CONTACTS"

    #@14
    const-string v1, "android.permission.GET_ACCOUNTS"

    #@16
    const-string v2, "android.permission.READ_CONTACTS"

    #@18
    .line 40
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    #@1e
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    #@20
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@22
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    #@24
    .line 43
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    #@2a
    const-string v0, "android.permission.RECORD_AUDIO"

    #@2c
    .line 46
    filled-new-array {v0}, [Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    #@32
    const-string v1, "android.permission.READ_PHONE_STATE"

    #@34
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    #@36
    const-string v3, "android.permission.CALL_PHONE"

    #@38
    const-string v4, "android.permission.READ_CALL_LOG"

    #@3a
    const-string v5, "android.permission.WRITE_CALL_LOG"

    #@3c
    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@3e
    const-string v7, "android.permission.USE_SIP"

    #@40
    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    #@42
    const-string v9, "android.permission.ANSWER_PHONE_CALLS"

    #@44
    .line 49
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    #@4a
    const-string v1, "android.permission.READ_PHONE_STATE"

    #@4c
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    #@4e
    const-string v3, "android.permission.CALL_PHONE"

    #@50
    const-string v4, "android.permission.READ_CALL_LOG"

    #@52
    const-string v5, "android.permission.WRITE_CALL_LOG"

    #@54
    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@56
    const-string v7, "android.permission.USE_SIP"

    #@58
    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    #@5a
    .line 54
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    #@60
    const-string v0, "android.permission.BODY_SENSORS"

    #@62
    .line 59
    filled-new-array {v0}, [Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    #@68
    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    #@6a
    const-string v1, "android.permission.RECEIVE_MMS"

    #@6c
    const-string v2, "android.permission.SEND_SMS"

    #@6e
    const-string v3, "android.permission.RECEIVE_SMS"

    #@70
    const-string v4, "android.permission.READ_SMS"

    #@72
    .line 62
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    #@78
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    #@7a
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@7c
    .line 66
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    #@82
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    #@84
    .line 69
    filled-new-array {v0}, [Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    #@8a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_6

    #@3
    new-array p0, v0, [Ljava/lang/String;

    #@5
    return-object p0

    #@6
    .line 80
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x1

    #@e
    const/4 v3, -0x1

    #@f
    sparse-switch v1, :sswitch_data_ae

    #@12
    goto/16 :goto_87

    #@14
    :sswitch_14
    const-string v1, "CAMERA"

    #@16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_1e

    #@1c
    goto/16 :goto_87

    #@1e
    :cond_1e
    const/16 v3, 0x9

    #@20
    goto/16 :goto_87

    #@22
    :sswitch_22
    const-string v1, "MICROPHONE"

    #@24
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_2c

    #@2a
    goto/16 :goto_87

    #@2c
    :cond_2c
    const/16 v3, 0x8

    #@2e
    goto/16 :goto_87

    #@30
    :sswitch_30
    const-string v1, "CALENDAR"

    #@32
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_39

    #@38
    goto :goto_87

    #@39
    :cond_39
    const/4 v3, 0x7

    #@3a
    goto :goto_87

    #@3b
    :sswitch_3b
    const-string v1, "CONTACTS"

    #@3d
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_44

    #@43
    goto :goto_87

    #@44
    :cond_44
    const/4 v3, 0x6

    #@45
    goto :goto_87

    #@46
    :sswitch_46
    const-string v1, "ACTIVITY_RECOGNITION"

    #@48
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-nez v1, :cond_4f

    #@4e
    goto :goto_87

    #@4f
    :cond_4f
    const/4 v3, 0x5

    #@50
    goto :goto_87

    #@51
    :sswitch_51
    const-string v1, "PHONE"

    #@53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v1

    #@57
    if-nez v1, :cond_5a

    #@59
    goto :goto_87

    #@5a
    :cond_5a
    const/4 v3, 0x4

    #@5b
    goto :goto_87

    #@5c
    :sswitch_5c
    const-string v1, "SMS"

    #@5e
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-nez v1, :cond_65

    #@64
    goto :goto_87

    #@65
    :cond_65
    const/4 v3, 0x3

    #@66
    goto :goto_87

    #@67
    :sswitch_67
    const-string v1, "STORAGE"

    #@69
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v1

    #@6d
    if-nez v1, :cond_70

    #@6f
    goto :goto_87

    #@70
    :cond_70
    const/4 v3, 0x2

    #@71
    goto :goto_87

    #@72
    :sswitch_72
    const-string v1, "SENSORS"

    #@74
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v1

    #@78
    if-nez v1, :cond_7b

    #@7a
    goto :goto_87

    #@7b
    :cond_7b
    move v3, v2

    #@7c
    goto :goto_87

    #@7d
    :sswitch_7d
    const-string v1, "LOCATION"

    #@7f
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v1

    #@83
    if-nez v1, :cond_86

    #@85
    goto :goto_87

    #@86
    :cond_86
    move v3, v0

    #@87
    :goto_87
    packed-switch v3, :pswitch_data_d8

    #@8a
    new-array v1, v2, [Ljava/lang/String;

    #@8c
    aput-object p0, v1, v0

    #@8e
    return-object v1

    #@8f
    .line 84
    :pswitch_8f
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    #@91
    return-object p0

    #@92
    .line 90
    :pswitch_92
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    #@94
    return-object p0

    #@95
    .line 82
    :pswitch_95
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    #@97
    return-object p0

    #@98
    .line 86
    :pswitch_98
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    #@9a
    return-object p0

    #@9b
    .line 104
    :pswitch_9b
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    #@9d
    return-object p0

    #@9e
    .line 95
    :pswitch_9e
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    #@a0
    return-object p0

    #@a1
    .line 100
    :pswitch_a1
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    #@a3
    return-object p0

    #@a4
    .line 102
    :pswitch_a4
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    #@a6
    return-object p0

    #@a7
    .line 98
    :pswitch_a7
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    #@a9
    return-object p0

    #@aa
    .line 88
    :pswitch_aa
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    #@ac
    return-object p0

    #@ad
    nop

    #@ae
    :sswitch_data_ae
    .sparse-switch
        -0x600a704b -> :sswitch_7d
        -0x5f2a5027 -> :sswitch_72
        -0x458431a5 -> :sswitch_67
        0x14139 -> :sswitch_5c
        0x489454e -> :sswitch_51
        0x8623667 -> :sswitch_46
        0xcd35053 -> :sswitch_3b
        0x2404eb3e -> :sswitch_30
        0x6ea0852a -> :sswitch_22
        0x760cb725 -> :sswitch_14
    .end sparse-switch

    #@d8
    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
    .end packed-switch
.end method
