.class public final Lcom/blankj/utilcode/util/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static call(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 305
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@b
    return-void
.end method

.method public static dial(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 294
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getDialIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@b
    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 4

    #@0
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    const-string v2, ""

    #@6
    if-lt v0, v1, :cond_9

    #@8
    return-object v2

    #@9
    .line 55
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@c
    move-result-object v0

    #@d
    .line 56
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_18

    #@17
    return-object v1

    #@18
    .line 59
    :cond_18
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_23

    #@22
    return-object v1

    #@23
    .line 61
    :cond_23
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2e

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    move-object v2, v0

    #@2f
    :goto_2f
    return-object v2
.end method

.method public static getIMEI()Ljava/lang/String;
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    .line 95
    invoke-static {v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getImeiOrMeid(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getIMSI()Ljava/lang/String;
    .registers 2

    #@0
    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_15

    #@6
    .line 215
    :try_start_6
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_d} :catch_e

    #@d
    goto :goto_15

    #@e
    :catch_e
    move-exception v0

    #@f
    .line 217
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    #@12
    const-string v0, ""

    #@14
    return-object v0

    #@15
    .line 221
    :cond_15
    :goto_15
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public static getImeiOrMeid(Z)Ljava/lang/String;
    .registers 4

    #@0
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_9

    #@6
    const-string p0, ""

    #@8
    return-object p0

    #@9
    .line 116
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x1

    #@e
    const/4 v2, 0x0

    #@f
    if-eqz p0, :cond_1e

    #@11
    .line 119
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    .line 121
    :cond_1e
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    return-object p0
.end method

.method public static getMEID()Ljava/lang/String;
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 107
    invoke-static {v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getImeiOrMeid(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v0, :cond_f

    #@a
    if-eqz v1, :cond_f

    #@c
    const-string p0, ""

    #@e
    return-object p0

    #@f
    :cond_f
    if-nez v0, :cond_1b

    #@11
    if-nez v1, :cond_1b

    #@13
    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    if-gtz v0, :cond_1a

    #@19
    return-object p0

    #@1a
    :cond_1a
    return-object p1

    #@1b
    :cond_1b
    if-nez v0, :cond_1e

    #@1d
    return-object p0

    #@1e
    :cond_1e
    return-object p1
.end method

.method public static getPhoneType()I
    .registers 1

    #@0
    .line 236
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    .line 237
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 2

    #@0
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_12

    #@6
    .line 77
    :try_start_6
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    #@9
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_b

    #@a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    .line 79
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    #@f
    const-string v0, ""

    #@11
    return-object v0

    #@12
    .line 83
    :cond_12
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getSimOperatorByMnc()Ljava/lang/String;
    .registers 3

    #@0
    .line 266
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    .line 267
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_d

    #@a
    const-string v0, ""

    #@c
    return-object v0

    #@d
    .line 269
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v1

    #@14
    const/4 v2, -0x1

    #@15
    sparse-switch v1, :sswitch_data_9a

    #@18
    goto/16 :goto_8d

    #@1a
    :sswitch_1a
    const-string v1, "46020"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_24

    #@22
    goto/16 :goto_8d

    #@24
    :cond_24
    const/16 v2, 0x9

    #@26
    goto/16 :goto_8d

    #@28
    :sswitch_28
    const-string v1, "46011"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_32

    #@30
    goto/16 :goto_8d

    #@32
    :cond_32
    const/16 v2, 0x8

    #@34
    goto/16 :goto_8d

    #@36
    :sswitch_36
    const-string v1, "46009"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_3f

    #@3e
    goto :goto_8d

    #@3f
    :cond_3f
    const/4 v2, 0x7

    #@40
    goto :goto_8d

    #@41
    :sswitch_41
    const-string v1, "46007"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-nez v1, :cond_4a

    #@49
    goto :goto_8d

    #@4a
    :cond_4a
    const/4 v2, 0x6

    #@4b
    goto :goto_8d

    #@4c
    :sswitch_4c
    const-string v1, "46006"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v1

    #@52
    if-nez v1, :cond_55

    #@54
    goto :goto_8d

    #@55
    :cond_55
    const/4 v2, 0x5

    #@56
    goto :goto_8d

    #@57
    :sswitch_57
    const-string v1, "46005"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_60

    #@5f
    goto :goto_8d

    #@60
    :cond_60
    const/4 v2, 0x4

    #@61
    goto :goto_8d

    #@62
    :sswitch_62
    const-string v1, "46003"

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v1

    #@68
    if-nez v1, :cond_6b

    #@6a
    goto :goto_8d

    #@6b
    :cond_6b
    const/4 v2, 0x3

    #@6c
    goto :goto_8d

    #@6d
    :sswitch_6d
    const-string v1, "46002"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    if-nez v1, :cond_76

    #@75
    goto :goto_8d

    #@76
    :cond_76
    const/4 v2, 0x2

    #@77
    goto :goto_8d

    #@78
    :sswitch_78
    const-string v1, "46001"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v1

    #@7e
    if-nez v1, :cond_81

    #@80
    goto :goto_8d

    #@81
    :cond_81
    const/4 v2, 0x1

    #@82
    goto :goto_8d

    #@83
    :sswitch_83
    const-string v1, "46000"

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v1

    #@89
    if-nez v1, :cond_8c

    #@8b
    goto :goto_8d

    #@8c
    :cond_8c
    const/4 v2, 0x0

    #@8d
    :goto_8d
    packed-switch v2, :pswitch_data_c4

    #@90
    return-object v0

    #@91
    :pswitch_91
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    #@93
    return-object v0

    #@94
    :pswitch_94
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    #@96
    return-object v0

    #@97
    :pswitch_97
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    #@99
    return-object v0

    #@9a
    :sswitch_data_9a
    .sparse-switch
        0x2f60c6e -> :sswitch_83
        0x2f60c6f -> :sswitch_78
        0x2f60c70 -> :sswitch_6d
        0x2f60c71 -> :sswitch_62
        0x2f60c73 -> :sswitch_57
        0x2f60c74 -> :sswitch_4c
        0x2f60c75 -> :sswitch_41
        0x2f60c77 -> :sswitch_36
        0x2f60c8e -> :sswitch_28
        0x2f60cac -> :sswitch_1a
    .end sparse-switch

    #@c4
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_97
        :pswitch_94
        :pswitch_97
        :pswitch_91
        :pswitch_91
        :pswitch_94
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_97
    .end packed-switch
.end method

.method public static getSimOperatorName()Ljava/lang/String;
    .registers 1

    #@0
    .line 256
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    .line 257
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    #@0
    const-string v0, ""

    #@2
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    #@4
    .line 197
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    const-string v2, "get"

    #@a
    const/4 v3, 0x2

    #@b
    new-array v4, v3, [Ljava/lang/Class;

    #@d
    .line 198
    const-class v5, Ljava/lang/String;

    #@f
    const/4 v6, 0x0

    #@10
    aput-object v5, v4, v6

    #@12
    const-class v5, Ljava/lang/String;

    #@14
    const/4 v7, 0x1

    #@15
    aput-object v5, v4, v7

    #@17
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1a
    move-result-object v2

    #@1b
    new-array v3, v3, [Ljava/lang/Object;

    #@1d
    aput-object p0, v3, v6

    #@1f
    aput-object v0, v3, v7

    #@21
    .line 199
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object p0

    #@25
    check-cast p0, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    #@27
    return-object p0

    #@28
    :catch_28
    return-object v0
.end method

.method private static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    #@0
    .line 319
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "phone"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@c
    return-object v0
.end method

.method public static isPhone()Z
    .registers 1

    #@0
    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    .line 39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public static isSimCardReady()Z
    .registers 2

    #@0
    .line 246
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    .line 247
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x5

    #@9
    if-ne v0, v1, :cond_d

    #@b
    const/4 v0, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method public static sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 315
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@b
    return-void
.end method
