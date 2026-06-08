.class public final Lcom/blankj/utilcode/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getColor(I)I
    .registers 2

    #@0
    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static getRandomColor()I
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    .line 194
    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->getRandomColor(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getRandomColor(Z)I
    .registers 5

    #@0
    if-eqz p0, :cond_d

    #@2
    .line 204
    invoke-static {}, Ljava/lang/Math;->random()D

    #@5
    move-result-wide v0

    #@6
    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    #@8
    mul-double/2addr v0, v2

    #@9
    double-to-int p0, v0

    #@a
    shl-int/lit8 p0, p0, 0x18

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/high16 p0, -0x1000000

    #@f
    .line 205
    :goto_f
    invoke-static {}, Ljava/lang/Math;->random()D

    #@12
    move-result-wide v0

    #@13
    const-wide/high16 v2, 0x4170000000000000L    # 1.6777216E7

    #@15
    mul-double/2addr v0, v2

    #@16
    double-to-int v0, v0

    #@17
    or-int/2addr p0, v0

    #@18
    return p0
.end method

.method public static int2ArgbString(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 178
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 179
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x6

    #@9
    if-ge v0, v1, :cond_1b

    #@b
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string v1, "0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p0

    #@16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object p0

    #@1a
    goto :goto_4

    #@1b
    .line 182
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1e
    move-result v0

    #@1f
    const/16 v1, 0x8

    #@21
    if-ge v0, v1, :cond_33

    #@23
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    const-string v1, "f"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object p0

    #@32
    goto :goto_1b

    #@33
    .line 185
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    const-string v1, "#"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p0

    #@3e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p0

    #@42
    return-object p0
.end method

.method public static int2RgbString(I)Ljava/lang/String;
    .registers 3

    #@0
    const v0, 0xffffff

    #@3
    and-int/2addr p0, v0

    #@4
    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    .line 165
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x6

    #@d
    if-ge v0, v1, :cond_1f

    #@f
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    const-string v1, "0"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    goto :goto_8

    #@1f
    .line 168
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    const-string v1, "#"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p0

    #@2a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p0

    #@2e
    return-object p0
.end method

.method public static isLightColor(I)Z
    .registers 7

    #@0
    .line 215
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    int-to-double v0, v0

    #@5
    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    #@a
    mul-double/2addr v0, v2

    #@b
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@e
    move-result v2

    #@f
    int-to-double v2, v2

    #@10
    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    #@15
    mul-double/2addr v2, v4

    #@16
    add-double/2addr v0, v2

    #@17
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@1a
    move-result p0

    #@1b
    int-to-double v2, p0

    #@1c
    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    #@21
    mul-double/2addr v2, v4

    #@22
    add-double/2addr v0, v2

    #@23
    const-wide v2, 0x405fe00000000000L    # 127.5

    #@28
    cmpl-double p0, v0, v2

    #@2a
    if-ltz p0, :cond_2e

    #@2c
    const/4 p0, 0x1

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    const/4 p0, 0x0

    #@2f
    :goto_2f
    return p0
.end method

.method public static setAlphaComponent(IF)I
    .registers 3

    #@0
    const v0, 0xffffff

    #@3
    and-int/2addr p0, v0

    #@4
    const/high16 v0, 0x437f0000    # 255.0f

    #@6
    mul-float/2addr p1, v0

    #@7
    const/high16 v0, 0x3f000000    # 0.5f

    #@9
    add-float/2addr p1, v0

    #@a
    float-to-int p1, p1

    #@b
    shl-int/lit8 p1, p1, 0x18

    #@d
    or-int/2addr p0, p1

    #@e
    return p0
.end method

.method public static setAlphaComponent(II)I
    .registers 3

    #@0
    const v0, 0xffffff

    #@3
    and-int/2addr p0, v0

    #@4
    shl-int/lit8 p1, p1, 0x18

    #@6
    or-int/2addr p0, p1

    #@7
    return p0
.end method

.method public static setBlueComponent(IF)I
    .registers 3

    #@0
    and-int/lit16 p0, p0, -0x100

    #@2
    const/high16 v0, 0x437f0000    # 255.0f

    #@4
    mul-float/2addr p1, v0

    #@5
    const/high16 v0, 0x3f000000    # 0.5f

    #@7
    add-float/2addr p1, v0

    #@8
    float-to-int p1, p1

    #@9
    or-int/2addr p0, p1

    #@a
    return p0
.end method

.method public static setBlueComponent(II)I
    .registers 2

    #@0
    and-int/lit16 p0, p0, -0x100

    #@2
    or-int/2addr p0, p1

    #@3
    return p0
.end method

.method public static setGreenComponent(IF)I
    .registers 3

    #@0
    const v0, -0xff01

    #@3
    and-int/2addr p0, v0

    #@4
    const/high16 v0, 0x437f0000    # 255.0f

    #@6
    mul-float/2addr p1, v0

    #@7
    const/high16 v0, 0x3f000000    # 0.5f

    #@9
    add-float/2addr p1, v0

    #@a
    float-to-int p1, p1

    #@b
    shl-int/lit8 p1, p1, 0x8

    #@d
    or-int/2addr p0, p1

    #@e
    return p0
.end method

.method public static setGreenComponent(II)I
    .registers 3

    #@0
    const v0, -0xff01

    #@3
    and-int/2addr p0, v0

    #@4
    shl-int/lit8 p1, p1, 0x8

    #@6
    or-int/2addr p0, p1

    #@7
    return p0
.end method

.method public static setRedComponent(IF)I
    .registers 3

    #@0
    const v0, -0xff0001

    #@3
    and-int/2addr p0, v0

    #@4
    const/high16 v0, 0x437f0000    # 255.0f

    #@6
    mul-float/2addr p1, v0

    #@7
    const/high16 v0, 0x3f000000    # 0.5f

    #@9
    add-float/2addr p1, v0

    #@a
    float-to-int p1, p1

    #@b
    shl-int/lit8 p1, p1, 0x10

    #@d
    or-int/2addr p0, p1

    #@e
    return p0
.end method

.method public static setRedComponent(II)I
    .registers 3

    #@0
    const v0, -0xff0001

    #@3
    and-int/2addr p0, v0

    #@4
    shl-int/lit8 p1, p1, 0x10

    #@6
    or-int/2addr p0, p1

    #@7
    return p0
.end method

.method public static string2Int(Ljava/lang/String;)I
    .registers 1

    #@0
    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    #@3
    move-result p0

    #@4
    return p0
.end method
