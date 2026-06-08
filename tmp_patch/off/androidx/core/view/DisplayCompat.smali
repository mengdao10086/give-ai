.class public final Landroidx/core/view/DisplayCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCompat$ModeCompat;,
        Landroidx/core/view/DisplayCompat$Api17Impl;,
        Landroidx/core/view/DisplayCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final DISPLAY_SIZE_4K_HEIGHT:I = 0x870

.field private static final DISPLAY_SIZE_4K_WIDTH:I = 0xf00


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .registers 4

    #@0
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-ge v0, v1, :cond_d

    #@6
    const-string v0, "sys.display-size"

    #@8
    .line 193
    invoke-static {v0, p1}, Landroidx/core/view/DisplayCompat;->parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;

    #@b
    move-result-object v0

    #@c
    goto :goto_13

    #@d
    :cond_d
    const-string v0, "vendor.display-size"

    #@f
    .line 194
    invoke-static {v0, p1}, Landroidx/core/view/DisplayCompat;->parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;

    #@12
    move-result-object v0

    #@13
    :goto_13
    if-eqz v0, :cond_16

    #@15
    return-object v0

    #@16
    .line 197
    :cond_16
    invoke-static {p0}, Landroidx/core/view/DisplayCompat;->isSonyBravia4kTv(Landroid/content/Context;)Z

    #@19
    move-result p0

    #@1a
    const/4 v0, 0x0

    #@1b
    if-eqz p0, :cond_2c

    #@1d
    .line 202
    invoke-static {p1}, Landroidx/core/view/DisplayCompat;->isCurrentModeTheLargestMode(Landroid/view/Display;)Z

    #@20
    move-result p0

    #@21
    if-eqz p0, :cond_2c

    #@23
    .line 203
    new-instance v0, Landroid/graphics/Point;

    #@25
    const/16 p0, 0xf00

    #@27
    const/16 p1, 0x870

    #@29
    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    #@2c
    :cond_2c
    return-object v0
.end method

.method private static getDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .registers 2

    #@0
    .line 72
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_7

    #@6
    return-object p0

    #@7
    .line 77
    :cond_7
    new-instance p0, Landroid/graphics/Point;

    #@9
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    #@c
    .line 79
    invoke-static {p1, p0}, Landroidx/core/view/DisplayCompat$Api17Impl;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    #@f
    return-object p0
.end method

.method public static getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 2

    #@0
    .line 62
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat$Api23Impl;->getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 2

    #@0
    .line 95
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat$Api23Impl;->getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    #@2
    .line 134
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    const-string v1, "get"

    #@8
    const/4 v2, 0x1

    #@9
    new-array v3, v2, [Ljava/lang/Class;

    #@b
    .line 135
    const-class v4, Ljava/lang/String;

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13
    move-result-object v1

    #@14
    new-array v2, v2, [Ljava/lang/Object;

    #@16
    aput-object p0, v2, v5

    #@18
    .line 136
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object p0

    #@1c
    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    #@1e
    return-object p0

    #@1f
    :catch_1f
    const/4 p0, 0x0

    #@20
    return-object p0
.end method

.method static isCurrentModeTheLargestMode(Landroid/view/Display;)Z
    .registers 1

    #@0
    .line 225
    invoke-static {p0}, Landroidx/core/view/DisplayCompat$Api23Impl;->isCurrentModeTheLargestMode(Landroid/view/Display;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static isSonyBravia4kTv(Landroid/content/Context;)Z
    .registers 3

    #@0
    .line 213
    invoke-static {p0}, Landroidx/core/view/DisplayCompat;->isTv(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_28

    #@6
    const-string v0, "Sony"

    #@8
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@a
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_28

    #@10
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@12
    const-string v1, "BRAVIA"

    #@14
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_28

    #@1a
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object p0

    #@1e
    const-string v0, "com.sony.dtv.hardware.panel.qfhd"

    #@20
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@23
    move-result p0

    #@24
    if-eqz p0, :cond_28

    #@26
    const/4 p0, 0x1

    #@27
    goto :goto_29

    #@28
    :cond_28
    const/4 p0, 0x0

    #@29
    :goto_29
    return p0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .registers 2

    #@0
    const-string v0, "uimode"

    #@2
    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/app/UiModeManager;

    #@8
    if-eqz p0, :cond_13

    #@a
    .line 149
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    #@d
    move-result p0

    #@e
    const/4 v0, 0x4

    #@f
    if-ne p0, v0, :cond_13

    #@11
    const/4 p0, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 p0, 0x0

    #@14
    :goto_14
    return p0
.end method

.method private static parseDisplaySize(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const-string v0, "x"

    #@6
    const/4 v1, -0x1

    #@7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    .line 114
    array-length v0, p0

    #@c
    const/4 v1, 0x2

    #@d
    if-ne v0, v1, :cond_27

    #@f
    const/4 v0, 0x0

    #@10
    .line 115
    aget-object v0, p0, v0

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    const/4 v1, 0x1

    #@17
    .line 116
    aget-object p0, p0, v1

    #@19
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1c
    move-result p0

    #@1d
    if-lez v0, :cond_27

    #@1f
    if-lez p0, :cond_27

    #@21
    .line 118
    new-instance v1, Landroid/graphics/Point;

    #@23
    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    #@26
    return-object v1

    #@27
    .line 121
    :cond_27
    new-instance p0, Ljava/lang/NumberFormatException;

    #@29
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    #@2c
    throw p0
.end method

.method private static parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;
    .registers 3

    #@0
    .line 165
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@3
    move-result p1

    #@4
    const/4 v0, 0x0

    #@5
    if-eqz p1, :cond_8

    #@7
    return-object v0

    #@8
    .line 170
    :cond_8
    invoke-static {p0}, Landroidx/core/view/DisplayCompat;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result p1

    #@10
    if-nez p1, :cond_1a

    #@12
    if-nez p0, :cond_15

    #@14
    goto :goto_1a

    #@15
    .line 176
    :cond_15
    :try_start_15
    invoke-static {p0}, Landroidx/core/view/DisplayCompat;->parseDisplaySize(Ljava/lang/String;)Landroid/graphics/Point;

    #@18
    move-result-object p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1a

    #@19
    return-object p0

    #@1a
    :catch_1a
    :cond_1a
    :goto_1a
    return-object v0
.end method
