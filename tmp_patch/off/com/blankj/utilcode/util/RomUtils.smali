.class public final Lcom/blankj/utilcode/util/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/RomUtils$RomInfo;
    }
.end annotation


# static fields
.field private static final ROM_360:[Ljava/lang/String;

.field private static final ROM_COOLPAD:[Ljava/lang/String;

.field private static final ROM_GIONEE:[Ljava/lang/String;

.field private static final ROM_GOOGLE:[Ljava/lang/String;

.field private static final ROM_HTC:[Ljava/lang/String;

.field private static final ROM_HUAWEI:[Ljava/lang/String;

.field private static final ROM_LEECO:[Ljava/lang/String;

.field private static final ROM_LENOVO:[Ljava/lang/String;

.field private static final ROM_LG:[Ljava/lang/String;

.field private static final ROM_MEIZU:[Ljava/lang/String;

.field private static final ROM_MOTOROLA:[Ljava/lang/String;

.field private static final ROM_NUBIA:[Ljava/lang/String;

.field private static final ROM_ONEPLUS:[Ljava/lang/String;

.field private static final ROM_OPPO:[Ljava/lang/String;

.field private static final ROM_SAMSUNG:[Ljava/lang/String;

.field private static final ROM_SMARTISAN:[Ljava/lang/String;

.field private static final ROM_SONY:[Ljava/lang/String;

.field private static final ROM_VIVO:[Ljava/lang/String;

.field private static final ROM_XIAOMI:[Ljava/lang/String;

.field private static final ROM_ZTE:[Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final VERSION_PROPERTY_360:Ljava/lang/String; = "ro.build.uiversion"

.field private static final VERSION_PROPERTY_HUAWEI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final VERSION_PROPERTY_LEECO:Ljava/lang/String; = "ro.letv.release.version"

.field private static final VERSION_PROPERTY_NUBIA:Ljava/lang/String; = "ro.build.rom.id"

.field private static final VERSION_PROPERTY_ONEPLUS:Ljava/lang/String; = "ro.rom.version"

.field private static final VERSION_PROPERTY_OPPO:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final VERSION_PROPERTY_VIVO:Ljava/lang/String; = "ro.vivo.os.build.display.id"

.field private static final VERSION_PROPERTY_XIAOMI:Ljava/lang/String; = "ro.build.version.incremental"

.field private static final VERSION_PROPERTY_ZTE:Ljava/lang/String; = "ro.build.MiFavor_version"

.field private static bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "huawei"

    #@2
    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    #@8
    const-string v0, "vivo"

    #@a
    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_VIVO:[Ljava/lang/String;

    #@10
    const-string v0, "xiaomi"

    #@12
    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    #@18
    const-string v0, "oppo"

    #@1a
    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_OPPO:[Ljava/lang/String;

    #@20
    const-string v0, "leeco"

    #@22
    const-string v1, "letv"

    #@24
    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LEECO:[Ljava/lang/String;

    #@2a
    const-string v0, "360"

    #@2c
    const-string v1, "qiku"

    #@2e
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_360:[Ljava/lang/String;

    #@34
    const-string v0, "zte"

    #@36
    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ZTE:[Ljava/lang/String;

    #@3c
    const-string v0, "oneplus"

    #@3e
    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    #@44
    const-string v0, "nubia"

    #@46
    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_NUBIA:[Ljava/lang/String;

    #@4c
    const-string v0, "coolpad"

    #@4e
    const-string v1, "yulong"

    #@50
    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    #@56
    const-string v0, "lg"

    #@58
    const-string v1, "lge"

    #@5a
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LG:[Ljava/lang/String;

    #@60
    const-string v0, "google"

    #@62
    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    #@68
    const-string v0, "samsung"

    #@6a
    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    #@70
    const-string v0, "meizu"

    #@72
    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MEIZU:[Ljava/lang/String;

    #@78
    const-string v0, "lenovo"

    #@7a
    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LENOVO:[Ljava/lang/String;

    #@80
    const-string v0, "smartisan"

    #@82
    const-string v1, "deltainno"

    #@84
    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    #@8a
    const-string v0, "htc"

    #@8c
    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HTC:[Ljava/lang/String;

    #@92
    const-string v0, "sony"

    #@94
    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    #@97
    move-result-object v0

    #@98
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SONY:[Ljava/lang/String;

    #@9a
    const-string v0, "gionee"

    #@9c
    const-string v1, "amigo"

    #@9e
    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GIONEE:[Ljava/lang/String;

    #@a4
    const-string v0, "motorola"

    #@a6
    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    #@a9
    move-result-object v0

    #@aa
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    #@ac
    const/4 v0, 0x0

    #@ad
    .line 58
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@af
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method private static getBrand()Ljava/lang/String;
    .registers 2

    #@0
    .line 357
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@2
    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_d

    #@8
    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@b
    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    #@c
    return-object v0

    #@d
    :catchall_d
    :cond_d
    const-string v0, "unknown"

    #@f
    return-object v0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .registers 2

    #@0
    .line 347
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@2
    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_d

    #@8
    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@b
    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    #@c
    return-object v0

    #@d
    :catchall_d
    :cond_d
    const-string v0, "unknown"

    #@f
    return-object v0
.end method

.method public static getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;
    .registers 5

    #@0
    .line 250
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 251
    :cond_5
    new-instance v0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@7
    invoke-direct {v0}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;-><init>()V

    #@a
    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@c
    .line 252
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getBrand()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 253
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getManufacturer()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 254
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    #@16
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    const/4 v4, 0x0

    #@1b
    if-eqz v3, :cond_44

    #@1d
    .line 255
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1f
    aget-object v1, v2, v4

    #@21
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@24
    const-string v0, "ro.build.version.emui"

    #@26
    .line 256
    invoke-static {v0}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    const-string v1, "_"

    #@2c
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 258
    array-length v2, v1

    #@31
    const/4 v3, 0x1

    #@32
    if-le v2, v3, :cond_3c

    #@34
    .line 259
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@36
    aget-object v1, v1, v3

    #@38
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@3b
    goto :goto_41

    #@3c
    .line 261
    :cond_3c
    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@3e
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@41
    .line 263
    :goto_41
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@43
    return-object v0

    #@44
    .line 265
    :cond_44
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_VIVO:[Ljava/lang/String;

    #@46
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_61

    #@4c
    .line 266
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@4e
    aget-object v1, v2, v4

    #@50
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@53
    .line 267
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@55
    const-string v1, "ro.vivo.os.build.display.id"

    #@57
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@5e
    .line 268
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@60
    return-object v0

    #@61
    .line 270
    :cond_61
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    #@63
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@66
    move-result v3

    #@67
    if-eqz v3, :cond_7e

    #@69
    .line 271
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@6b
    aget-object v1, v2, v4

    #@6d
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@70
    .line 272
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@72
    const-string v1, "ro.build.version.incremental"

    #@74
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@7b
    .line 273
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@7d
    return-object v0

    #@7e
    .line 275
    :cond_7e
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_OPPO:[Ljava/lang/String;

    #@80
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_9b

    #@86
    .line 276
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@88
    aget-object v1, v2, v4

    #@8a
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@8d
    .line 277
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8f
    const-string v1, "ro.build.version.opporom"

    #@91
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@98
    .line 278
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@9a
    return-object v0

    #@9b
    .line 280
    :cond_9b
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_LEECO:[Ljava/lang/String;

    #@9d
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@a0
    move-result v3

    #@a1
    if-eqz v3, :cond_b8

    #@a3
    .line 281
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@a5
    aget-object v1, v2, v4

    #@a7
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@aa
    .line 282
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@ac
    const-string v1, "ro.letv.release.version"

    #@ae
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@b5
    .line 283
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@b7
    return-object v0

    #@b8
    .line 286
    :cond_b8
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_360:[Ljava/lang/String;

    #@ba
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@bd
    move-result v3

    #@be
    if-eqz v3, :cond_d5

    #@c0
    .line 287
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@c2
    aget-object v1, v2, v4

    #@c4
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@c7
    .line 288
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@c9
    const-string v1, "ro.build.uiversion"

    #@cb
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@ce
    move-result-object v1

    #@cf
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@d2
    .line 289
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@d4
    return-object v0

    #@d5
    .line 291
    :cond_d5
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_ZTE:[Ljava/lang/String;

    #@d7
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@da
    move-result v3

    #@db
    if-eqz v3, :cond_f2

    #@dd
    .line 292
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@df
    aget-object v1, v2, v4

    #@e1
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@e4
    .line 293
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@e6
    const-string v1, "ro.build.MiFavor_version"

    #@e8
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@eb
    move-result-object v1

    #@ec
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@ef
    .line 294
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@f1
    return-object v0

    #@f2
    .line 296
    :cond_f2
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    #@f4
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@f7
    move-result v3

    #@f8
    if-eqz v3, :cond_10f

    #@fa
    .line 297
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@fc
    aget-object v1, v2, v4

    #@fe
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@101
    .line 298
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@103
    const-string v1, "ro.rom.version"

    #@105
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@108
    move-result-object v1

    #@109
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@10c
    .line 299
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@10e
    return-object v0

    #@10f
    .line 301
    :cond_10f
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_NUBIA:[Ljava/lang/String;

    #@111
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@114
    move-result v3

    #@115
    if-eqz v3, :cond_12c

    #@117
    .line 302
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@119
    aget-object v1, v2, v4

    #@11b
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@11e
    .line 303
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@120
    const-string v1, "ro.build.rom.id"

    #@122
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@125
    move-result-object v1

    #@126
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@129
    .line 304
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@12b
    return-object v0

    #@12c
    .line 307
    :cond_12c
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    #@12e
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@131
    move-result v3

    #@132
    if-eqz v3, :cond_13d

    #@134
    .line 308
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@136
    aget-object v1, v2, v4

    #@138
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@13b
    goto/16 :goto_1e5

    #@13d
    .line 309
    :cond_13d
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_LG:[Ljava/lang/String;

    #@13f
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@142
    move-result v3

    #@143
    if-eqz v3, :cond_14e

    #@145
    .line 310
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@147
    aget-object v1, v2, v4

    #@149
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@14c
    goto/16 :goto_1e5

    #@14e
    .line 311
    :cond_14e
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    #@150
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@153
    move-result v3

    #@154
    if-eqz v3, :cond_15f

    #@156
    .line 312
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@158
    aget-object v1, v2, v4

    #@15a
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@15d
    goto/16 :goto_1e5

    #@15f
    .line 313
    :cond_15f
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    #@161
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@164
    move-result v3

    #@165
    if-eqz v3, :cond_170

    #@167
    .line 314
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@169
    aget-object v1, v2, v4

    #@16b
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@16e
    goto/16 :goto_1e5

    #@170
    .line 315
    :cond_170
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_MEIZU:[Ljava/lang/String;

    #@172
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@175
    move-result v3

    #@176
    if-eqz v3, :cond_180

    #@178
    .line 316
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@17a
    aget-object v1, v2, v4

    #@17c
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@17f
    goto :goto_1e5

    #@180
    .line 317
    :cond_180
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_LENOVO:[Ljava/lang/String;

    #@182
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@185
    move-result v3

    #@186
    if-eqz v3, :cond_190

    #@188
    .line 318
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@18a
    aget-object v1, v2, v4

    #@18c
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@18f
    goto :goto_1e5

    #@190
    .line 319
    :cond_190
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    #@192
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@195
    move-result v3

    #@196
    if-eqz v3, :cond_1a0

    #@198
    .line 320
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@19a
    aget-object v1, v2, v4

    #@19c
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@19f
    goto :goto_1e5

    #@1a0
    .line 321
    :cond_1a0
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_HTC:[Ljava/lang/String;

    #@1a2
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@1a5
    move-result v3

    #@1a6
    if-eqz v3, :cond_1b0

    #@1a8
    .line 322
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1aa
    aget-object v1, v2, v4

    #@1ac
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@1af
    goto :goto_1e5

    #@1b0
    .line 323
    :cond_1b0
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_SONY:[Ljava/lang/String;

    #@1b2
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@1b5
    move-result v3

    #@1b6
    if-eqz v3, :cond_1c0

    #@1b8
    .line 324
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1ba
    aget-object v1, v2, v4

    #@1bc
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@1bf
    goto :goto_1e5

    #@1c0
    .line 325
    :cond_1c0
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_GIONEE:[Ljava/lang/String;

    #@1c2
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@1c5
    move-result v3

    #@1c6
    if-eqz v3, :cond_1d0

    #@1c8
    .line 326
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1ca
    aget-object v1, v2, v4

    #@1cc
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@1cf
    goto :goto_1e5

    #@1d0
    .line 327
    :cond_1d0
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    #@1d2
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    #@1d5
    move-result v0

    #@1d6
    if-eqz v0, :cond_1e0

    #@1d8
    .line 328
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1da
    aget-object v1, v2, v4

    #@1dc
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@1df
    goto :goto_1e5

    #@1e0
    .line 330
    :cond_1e0
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1e2
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@1e5
    .line 332
    :goto_1e5
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1e7
    const-string v1, ""

    #@1e9
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    #@1ec
    move-result-object v1

    #@1ed
    # setter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    #@1f0
    .line 333
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@1f2
    return-object v0
.end method

.method private static getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 368
    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    goto :goto_d

    #@b
    :cond_b
    const-string p0, ""

    #@d
    .line 370
    :goto_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v0

    #@11
    const-string v1, "unknown"

    #@13
    if-nez v0, :cond_1b

    #@15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_27

    #@1b
    .line 372
    :cond_1b
    :try_start_1b
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    #@1d
    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_27

    #@23
    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@26
    move-result-object p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_27

    #@27
    .line 378
    :catchall_27
    :cond_27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    return-object v1

    #@2e
    :cond_2e
    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 385
    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b

    #@a
    return-object v0

    #@b
    .line 387
    :cond_b
    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_16

    #@15
    return-object v0

    #@16
    .line 389
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@18
    const/16 v2, 0x1c

    #@1a
    if-ge v1, v2, :cond_21

    #@1c
    .line 390
    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    return-object p0

    #@21
    :cond_21
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
    .line 431
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
    .line 432
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
    .line 433
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

.method private static getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "getprop "

    #@2
    const/4 v1, 0x0

    #@3
    .line 399
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@6
    move-result-object v2

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object p0

    #@10
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@17
    move-result-object p0

    #@18
    .line 400
    new-instance v0, Ljava/io/BufferedReader;

    #@1a
    new-instance v2, Ljava/io/InputStreamReader;

    #@1c
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@1f
    move-result-object p0

    #@20
    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@23
    const/16 p0, 0x400

    #@25
    invoke-direct {v0, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_42
    .catchall {:try_start_3 .. :try_end_28} :catchall_3b

    #@28
    .line 401
    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2b
    move-result-object p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_39
    .catchall {:try_start_28 .. :try_end_2c} :catchall_36

    #@2c
    if-eqz p0, :cond_32

    #@2e
    .line 409
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    #@31
    :catch_31
    return-object p0

    #@32
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_47

    #@35
    goto :goto_47

    #@36
    :catchall_36
    move-exception p0

    #@37
    move-object v1, v0

    #@38
    goto :goto_3c

    #@39
    :catch_39
    move-object v1, v0

    #@3a
    goto :goto_42

    #@3b
    :catchall_3b
    move-exception p0

    #@3c
    :goto_3c
    if-eqz v1, :cond_41

    #@3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_41

    #@41
    .line 412
    :catch_41
    :cond_41
    throw p0

    #@42
    :catch_42
    :goto_42
    if-eqz v1, :cond_47

    #@44
    .line 409
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_47

    #@47
    :catch_47
    :cond_47
    :goto_47
    const-string p0, ""

    #@49
    return-object p0
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    const-string v0, ""

    #@2
    .line 418
    :try_start_2
    new-instance v1, Ljava/util/Properties;

    #@4
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    #@7
    .line 419
    new-instance v2, Ljava/io/FileInputStream;

    #@9
    new-instance v3, Ljava/io/File;

    #@b
    .line 420
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@e
    move-result-object v4

    #@f
    const-string v5, "build.prop"

    #@11
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@17
    .line 422
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@1a
    .line 423
    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    #@1e
    return-object p0

    #@1f
    :catch_1f
    return-object v0
.end method

.method public static is360()Z
    .registers 2

    #@0
    .line 115
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_360:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isCoolpad()Z
    .registers 2

    #@0
    .line 151
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isGionee()Z
    .registers 2

    #@0
    .line 232
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GIONEE:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isGoogle()Z
    .registers 2

    #@0
    .line 169
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isHtc()Z
    .registers 2

    #@0
    .line 214
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HTC:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isHuawei()Z
    .registers 2

    #@0
    .line 70
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isLeeco()Z
    .registers 2

    #@0
    .line 106
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LEECO:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isLenovo()Z
    .registers 2

    #@0
    .line 196
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LENOVO:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isLg()Z
    .registers 2

    #@0
    .line 160
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LG:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isMeizu()Z
    .registers 2

    #@0
    .line 187
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MEIZU:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isMotorola()Z
    .registers 2

    #@0
    .line 241
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isNubia()Z
    .registers 2

    #@0
    .line 142
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_NUBIA:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isOneplus()Z
    .registers 2

    #@0
    .line 133
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isOppo()Z
    .registers 2

    #@0
    .line 97
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_OPPO:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    #@0
    .line 337
    array-length v0, p2

    #@1
    const/4 v1, 0x0

    #@2
    move v2, v1

    #@3
    :goto_3
    if-ge v2, v0, :cond_19

    #@5
    aget-object v3, p2, v2

    #@7
    .line 338
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_17

    #@d
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_14

    #@13
    goto :goto_17

    #@14
    :cond_14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_3

    #@17
    :cond_17
    :goto_17
    const/4 p0, 0x1

    #@18
    return p0

    #@19
    :cond_19
    return v1
.end method

.method public static isSamsung()Z
    .registers 2

    #@0
    .line 178
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isSmartisan()Z
    .registers 2

    #@0
    .line 205
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isSony()Z
    .registers 2

    #@0
    .line 223
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SONY:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isVivo()Z
    .registers 2

    #@0
    .line 79
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_VIVO:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isXiaomi()Z
    .registers 2

    #@0
    .line 88
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isZte()Z
    .registers 2

    #@0
    .line 124
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ZTE:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@8
    move-result-object v1

    #@9
    # getter for: Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method
