.class Landroidx/core/graphics/BitmapCompat$Api27Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api27Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    .line 397
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    #@6
    if-ne v0, v1, :cond_19

    #@8
    .line 398
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@a
    .line 399
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v2, 0x1f

    #@e
    if-lt v1, v2, :cond_14

    #@10
    .line 400
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api31Impl;->getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    #@13
    move-result-object v0

    #@14
    :cond_14
    const/4 v1, 0x1

    #@15
    .line 402
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@18
    move-result-object p0

    #@19
    :cond_19
    return-object p0
.end method

.method static createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    .line 373
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@3
    move-result-object v0

    #@4
    .line 374
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    #@7
    move-result-object v1

    #@8
    .line 375
    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    #@a
    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    #@d
    move-result-object v2

    #@e
    if-eqz p3, :cond_1e

    #@10
    .line 376
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    #@13
    move-result-object p3

    #@14
    invoke-virtual {p3, v2}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    #@17
    move-result p3

    #@18
    if-nez p3, :cond_1e

    #@1a
    .line 378
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    #@1c
    move-object v1, v2

    #@1d
    goto :goto_32

    #@1e
    .line 380
    :cond_1e
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@21
    move-result-object p3

    #@22
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    #@24
    if-ne p3, v2, :cond_32

    #@26
    .line 381
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@28
    .line 382
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2a
    const/16 v2, 0x1f

    #@2c
    if-lt p3, v2, :cond_32

    #@2e
    .line 383
    invoke-static {p2}, Landroidx/core/graphics/BitmapCompat$Api31Impl;->getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    #@31
    move-result-object v0

    #@32
    .line 386
    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@35
    move-result p2

    #@36
    invoke-static {p0, p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    #@39
    move-result-object p0

    #@3a
    return-object p0
.end method

.method static isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z
    .registers 4

    #@0
    .line 391
    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    #@2
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    #@5
    move-result-object v0

    #@6
    .line 392
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@9
    move-result-object v1

    #@a
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    #@c
    if-ne v1, v2, :cond_1a

    #@e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    #@15
    move-result p0

    #@16
    if-eqz p0, :cond_1a

    #@18
    const/4 p0, 0x1

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    :goto_1b
    return p0
.end method
