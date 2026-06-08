.class public final Landroidx/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/print/PrintHelper$PrintUriAdapter;,
        Landroidx/print/PrintHelper$PrintBitmapAdapter;,
        Landroidx/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    .line 70
    sput-boolean v0, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    #@3
    .line 78
    sput-boolean v0, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 139
    iput-object v0, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@6
    .line 140
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    #@d
    const/4 v0, 0x2

    #@e
    .line 143
    iput v0, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    #@10
    .line 144
    iput v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    #@12
    const/4 v0, 0x1

    #@13
    .line 145
    iput v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    #@15
    .line 163
    iput-object p1, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    #@17
    return-void
.end method

.method static convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_4

    #@3
    return-object p0

    #@4
    .line 820
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result v0

    #@c
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@e
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@11
    move-result-object p1

    #@12
    .line 822
    new-instance v0, Landroid/graphics/Canvas;

    #@14
    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@17
    .line 823
    new-instance v1, Landroid/graphics/Paint;

    #@19
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@1c
    .line 824
    new-instance v2, Landroid/graphics/ColorMatrix;

    #@1e
    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    #@21
    const/4 v3, 0x0

    #@22
    .line 825
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    #@25
    .line 826
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    #@27
    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    #@2a
    .line 827
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@2d
    .line 828
    invoke-virtual {v0, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@30
    const/4 p0, 0x0

    #@31
    .line 829
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@34
    return-object p1
.end method

.method private static copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 3

    #@0
    .line 558
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    #@5
    .line 559
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@c
    move-result-object v0

    #@d
    .line 560
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    #@14
    move-result-object v0

    #@15
    .line 561
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    #@1c
    move-result-object v0

    #@1d
    .line 563
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2a

    #@23
    .line 564
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    #@2a
    .line 568
    :cond_2a
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_37

    #@30
    .line 569
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    #@33
    move-result p0

    #@34
    invoke-virtual {v0, p0}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    #@37
    :cond_37
    return-object v0
.end method

.method static getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 7

    #@0
    .line 589
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@5
    .line 592
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    #@8
    move-result v1

    #@9
    int-to-float p0, p0

    #@a
    div-float/2addr v1, p0

    #@b
    const/4 v2, 0x2

    #@c
    if-ne p3, v2, :cond_19

    #@e
    .line 594
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@11
    move-result p3

    #@12
    int-to-float v2, p1

    #@13
    div-float/2addr p3, v2

    #@14
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    #@17
    move-result p3

    #@18
    goto :goto_23

    #@19
    .line 596
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@1c
    move-result p3

    #@1d
    int-to-float v2, p1

    #@1e
    div-float/2addr p3, v2

    #@1f
    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    #@22
    move-result p3

    #@23
    .line 598
    :goto_23
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@26
    .line 601
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    #@29
    move-result v1

    #@2a
    mul-float/2addr p0, p3

    #@2b
    sub-float/2addr v1, p0

    #@2c
    const/high16 p0, 0x40000000    # 2.0f

    #@2e
    div-float/2addr v1, p0

    #@2f
    .line 603
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@32
    move-result p2

    #@33
    int-to-float p1, p1

    #@34
    mul-float/2addr p1, p3

    #@35
    sub-float/2addr p2, p1

    #@36
    div-float/2addr p2, p0

    #@37
    .line 605
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@3a
    return-object v0
.end method

.method static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 2

    #@0
    .line 546
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@7
    move-result p0

    #@8
    if-gt v0, p0, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p0, 0x0

    #@d
    :goto_d
    return p0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    const-string v0, "close fail "

    #@2
    const-string v1, "PrintHelper"

    #@4
    if-eqz p1, :cond_31

    #@6
    .line 796
    iget-object v2, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    #@8
    if-eqz v2, :cond_31

    #@a
    const/4 v3, 0x0

    #@b
    .line 801
    :try_start_b
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@12
    move-result-object p1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_25

    #@13
    .line 802
    :try_start_13
    invoke-static {p1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@16
    move-result-object p2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_22

    #@17
    if-eqz p1, :cond_21

    #@19
    .line 806
    :try_start_19
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    #@1c
    goto :goto_21

    #@1d
    :catch_1d
    move-exception p1

    #@1e
    .line 808
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    :cond_21
    :goto_21
    return-object p2

    #@22
    :catchall_22
    move-exception p2

    #@23
    move-object v3, p1

    #@24
    goto :goto_26

    #@25
    :catchall_25
    move-exception p2

    #@26
    :goto_26
    if-eqz v3, :cond_30

    #@28
    .line 806
    :try_start_28
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    #@2b
    goto :goto_30

    #@2c
    :catch_2c
    move-exception p1

    #@2d
    .line 808
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    .line 809
    :cond_30
    :goto_30
    throw p2

    #@31
    .line 797
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@33
    const-string p2, "bad argument to loadBitmap"

    #@35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw p1
.end method

.method public static systemSupportsPrint()Z
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    #@0
    .line 210
    iget v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    #@2
    return v0
.end method

.method public getOrientation()I
    .registers 2

    #@0
    .line 232
    iget v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    #@2
    if-nez v0, :cond_5

    #@4
    const/4 v0, 0x1

    #@5
    :cond_5
    return v0
.end method

.method public getScaleMode()I
    .registers 2

    #@0
    .line 187
    iget v0, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    #@2
    return v0
.end method

.method loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    if-eqz p1, :cond_63

    #@2
    .line 746
    iget-object v0, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    #@4
    if-eqz v0, :cond_63

    #@6
    .line 750
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@8
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@b
    const/4 v1, 0x1

    #@c
    .line 751
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@e
    .line 752
    invoke-direct {p0, p1, v0}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@11
    .line 754
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@13
    .line 755
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@15
    const/4 v3, 0x0

    #@16
    if-lez v2, :cond_62

    #@18
    if-gtz v0, :cond_1b

    #@1a
    goto :goto_62

    #@1b
    .line 763
    :cond_1b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v4

    #@1f
    move v5, v1

    #@20
    :goto_20
    const/16 v6, 0xdac

    #@22
    if-le v4, v6, :cond_29

    #@24
    ushr-int/lit8 v4, v4, 0x1

    #@26
    shl-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_20

    #@29
    :cond_29
    if-lez v5, :cond_62

    #@2b
    .line 772
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v0

    #@2f
    div-int/2addr v0, v5

    #@30
    if-gtz v0, :cond_33

    #@32
    goto :goto_62

    #@33
    .line 776
    :cond_33
    iget-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    #@35
    monitor-enter v0

    #@36
    .line 777
    :try_start_36
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    #@38
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@3b
    iput-object v2, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@3d
    .line 778
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    #@3f
    .line 779
    iget-object v1, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@41
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@43
    .line 780
    iget-object v1, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@45
    .line 781
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_5f

    #@46
    .line 783
    :try_start_46
    invoke-direct {p0, p1, v1}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@49
    move-result-object p1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_54

    #@4a
    .line 785
    iget-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    #@4c
    monitor-enter v0

    #@4d
    .line 786
    :try_start_4d
    iput-object v3, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@4f
    .line 787
    monitor-exit v0

    #@50
    return-object p1

    #@51
    :catchall_51
    move-exception p1

    #@52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    #@53
    throw p1

    #@54
    :catchall_54
    move-exception p1

    #@55
    .line 785
    iget-object v1, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    #@57
    monitor-enter v1

    #@58
    .line 786
    :try_start_58
    iput-object v3, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@5a
    .line 787
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    #@5b
    throw p1

    #@5c
    :catchall_5c
    move-exception p1

    #@5d
    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    #@5e
    throw p1

    #@5f
    :catchall_5f
    move-exception p1

    #@60
    .line 781
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    #@61
    throw p1

    #@62
    :cond_62
    :goto_62
    return-object v3

    #@63
    .line 747
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@65
    const-string v0, "bad argument to getScaledBitmap"

    #@67
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw p1
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 246
    invoke-virtual {p0, p1, p2, v0}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    #@4
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 13

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 262
    :cond_3
    iget-object v0, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    #@5
    const-string v1, "print"

    #@7
    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/print/PrintManager;

    #@d
    .line 265
    invoke-static {p2}, Landroidx/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_16

    #@13
    .line 266
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    #@15
    goto :goto_18

    #@16
    .line 268
    :cond_16
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    #@18
    .line 270
    :goto_18
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    #@1a
    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    #@1d
    .line 271
    invoke-virtual {v2, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroidx/print/PrintHelper;->mColorMode:I

    #@23
    .line 272
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    #@26
    move-result-object v1

    #@27
    .line 273
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    #@2a
    move-result-object v1

    #@2b
    .line 275
    new-instance v8, Landroidx/print/PrintHelper$PrintBitmapAdapter;

    #@2d
    iget v5, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    #@2f
    move-object v2, v8

    #@30
    move-object v3, p0

    #@31
    move-object v4, p1

    #@32
    move-object v6, p2

    #@33
    move-object v7, p3

    #@34
    invoke-direct/range {v2 .. v7}, Landroidx/print/PrintHelper$PrintBitmapAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    #@37
    invoke-virtual {v0, p1, v8, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    #@3a
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 340
    invoke-virtual {p0, p1, p2, v0}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    #@4
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .line 360
    new-instance v6, Landroidx/print/PrintHelper$PrintUriAdapter;

    #@2
    iget v5, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    #@4
    move-object v0, v6

    #@5
    move-object v1, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    invoke-direct/range {v0 .. v5}, Landroidx/print/PrintHelper$PrintUriAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;I)V

    #@c
    .line 363
    iget-object p2, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    #@e
    const-string p3, "print"

    #@10
    .line 364
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object p2

    #@14
    check-cast p2, Landroid/print/PrintManager;

    #@16
    .line 365
    new-instance p3, Landroid/print/PrintAttributes$Builder;

    #@18
    invoke-direct {p3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    #@1b
    .line 366
    iget v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    #@1d
    invoke-virtual {p3, v0}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    #@20
    .line 368
    iget v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    #@22
    const/4 v1, 0x1

    #@23
    if-eq v0, v1, :cond_31

    #@25
    if-nez v0, :cond_28

    #@27
    goto :goto_31

    #@28
    :cond_28
    const/4 v1, 0x2

    #@29
    if-ne v0, v1, :cond_36

    #@2b
    .line 371
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    #@2d
    invoke-virtual {p3, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@30
    goto :goto_36

    #@31
    .line 369
    :cond_31
    :goto_31
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    #@33
    invoke-virtual {p3, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@36
    .line 373
    :cond_36
    :goto_36
    invoke-virtual {p3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    #@39
    move-result-object p3

    #@3a
    .line 375
    invoke-virtual {p2, p1, v6, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    #@3d
    return-void
.end method

.method public setColorMode(I)V
    .registers 2

    #@0
    .line 199
    iput p1, p0, Landroidx/print/PrintHelper;->mColorMode:I

    #@2
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    #@0
    .line 221
    iput p1, p0, Landroidx/print/PrintHelper;->mOrientation:I

    #@2
    return-void
.end method

.method public setScaleMode(I)V
    .registers 2

    #@0
    .line 176
    iput p1, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    #@2
    return-void
.end method

.method writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 18

    #@0
    .line 626
    sget-boolean v0, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_7

    #@5
    move-object v5, p1

    #@6
    goto :goto_19

    #@7
    .line 631
    :cond_7
    invoke-static {p1}, Landroidx/print/PrintHelper;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    #@a
    move-result-object v0

    #@b
    new-instance v2, Landroid/print/PrintAttributes$Margins;

    #@d
    invoke-direct {v2, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    #@10
    .line 632
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    #@17
    move-result-object v0

    #@18
    move-object v5, v0

    #@19
    .line 635
    :goto_19
    new-instance v0, Landroidx/print/PrintHelper$1;

    #@1b
    move-object v2, v0

    #@1c
    move-object v3, p0

    #@1d
    move-object/from16 v4, p5

    #@1f
    move-object v6, p3

    #@20
    move-object v7, p1

    #@21
    move v8, p2

    #@22
    move-object v9, p4

    #@23
    move-object/from16 v10, p6

    #@25
    invoke-direct/range {v2 .. v10}, Landroidx/print/PrintHelper$1;-><init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    #@28
    new-array v1, v1, [Ljava/lang/Void;

    #@2a
    .line 734
    invoke-virtual {v0, v1}, Landroidx/print/PrintHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@2d
    return-void
.end method
