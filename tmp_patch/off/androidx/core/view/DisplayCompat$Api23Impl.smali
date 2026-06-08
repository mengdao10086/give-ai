.class Landroidx/core/view/DisplayCompat$Api23Impl;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 3

    #@0
    .line 238
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    #@3
    move-result-object v0

    #@4
    .line 239
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    #@7
    move-result-object p0

    #@8
    if-eqz p0, :cond_17

    #@a
    .line 242
    invoke-static {v0, p0}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_11

    #@10
    goto :goto_17

    #@11
    .line 244
    :cond_11
    new-instance p1, Landroidx/core/view/DisplayCompat$ModeCompat;

    #@13
    invoke-direct {p1, v0, p0}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    #@16
    goto :goto_1d

    #@17
    .line 243
    :cond_17
    :goto_17
    new-instance p1, Landroidx/core/view/DisplayCompat$ModeCompat;

    #@19
    const/4 p0, 0x1

    #@1a
    invoke-direct {p1, v0, p0}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    #@1d
    :goto_1d
    return-object p1
.end method

.method public static getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 8

    #@0
    .line 251
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    #@3
    move-result-object v0

    #@4
    .line 252
    array-length v1, v0

    #@5
    new-array v1, v1, [Landroidx/core/view/DisplayCompat$ModeCompat;

    #@7
    .line 254
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    #@a
    move-result-object v2

    #@b
    .line 255
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    #@e
    move-result-object p0

    #@f
    const/4 p1, 0x0

    #@10
    if-eqz p0, :cond_39

    #@12
    .line 258
    invoke-static {v2, p0}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_19

    #@18
    goto :goto_39

    #@19
    :cond_19
    move v3, p1

    #@1a
    .line 266
    :goto_1a
    array-length v4, v0

    #@1b
    if-ge v3, v4, :cond_4e

    #@1d
    .line 268
    aget-object v4, v0, v3

    #@1f
    invoke-static {v4, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2d

    #@25
    .line 269
    new-instance v4, Landroidx/core/view/DisplayCompat$ModeCompat;

    #@27
    aget-object v5, v0, v3

    #@29
    invoke-direct {v4, v5, p0}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    #@2c
    goto :goto_34

    #@2d
    .line 270
    :cond_2d
    new-instance v4, Landroidx/core/view/DisplayCompat$ModeCompat;

    #@2f
    aget-object v5, v0, v3

    #@31
    invoke-direct {v4, v5, p1}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    #@34
    :goto_34
    aput-object v4, v1, v3

    #@36
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_1a

    #@39
    .line 260
    :cond_39
    :goto_39
    array-length p0, v0

    #@3a
    if-ge p1, p0, :cond_4e

    #@3c
    .line 261
    aget-object p0, v0, p1

    #@3e
    invoke-static {p0, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    #@41
    move-result p0

    #@42
    .line 262
    new-instance v3, Landroidx/core/view/DisplayCompat$ModeCompat;

    #@44
    aget-object v4, v0, p1

    #@46
    invoke-direct {v3, v4, p0}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    #@49
    aput-object v3, v1, p1

    #@4b
    add-int/lit8 p1, p1, 0x1

    #@4d
    goto :goto_39

    #@4e
    :cond_4e
    return-object v1
.end method

.method static isCurrentModeTheLargestMode(Landroid/view/Display;)Z
    .registers 8

    #@0
    .line 277
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    #@3
    move-result-object v0

    #@4
    .line 278
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    #@7
    move-result-object p0

    #@8
    .line 279
    array-length v1, p0

    #@9
    const/4 v2, 0x0

    #@a
    move v3, v2

    #@b
    :goto_b
    if-ge v3, v1, :cond_28

    #@d
    aget-object v4, p0, v3

    #@f
    .line 280
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@12
    move-result v5

    #@13
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@16
    move-result v6

    #@17
    if-lt v5, v6, :cond_27

    #@19
    .line 281
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@1c
    move-result v5

    #@1d
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@20
    move-result v4

    #@21
    if-ge v5, v4, :cond_24

    #@23
    goto :goto_27

    #@24
    :cond_24
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_b

    #@27
    :cond_27
    :goto_27
    return v2

    #@28
    :cond_28
    const/4 p0, 0x1

    #@29
    return p0
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z
    .registers 4

    #@0
    .line 293
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@3
    move-result v0

    #@4
    iget v1, p1, Landroid/graphics/Point;->x:I

    #@6
    if-ne v0, v1, :cond_10

    #@8
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@b
    move-result v0

    #@c
    iget v1, p1, Landroid/graphics/Point;->y:I

    #@e
    if-eq v0, v1, :cond_20

    #@10
    .line 294
    :cond_10
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@13
    move-result v0

    #@14
    iget v1, p1, Landroid/graphics/Point;->y:I

    #@16
    if-ne v0, v1, :cond_22

    #@18
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@1b
    move-result p0

    #@1c
    iget p1, p1, Landroid/graphics/Point;->x:I

    #@1e
    if-ne p0, p1, :cond_22

    #@20
    :cond_20
    const/4 p0, 0x1

    #@21
    goto :goto_23

    #@22
    :cond_22
    const/4 p0, 0x0

    #@23
    :goto_23
    return p0
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 4

    #@0
    .line 302
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_16

    #@a
    .line 303
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@d
    move-result p0

    #@e
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@11
    move-result p1

    #@12
    if-ne p0, p1, :cond_16

    #@14
    const/4 p0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p0, 0x0

    #@17
    :goto_17
    return p0
.end method
