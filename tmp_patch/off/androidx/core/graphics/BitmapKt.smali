.class public final Landroidx/core/graphics/BitmapKt;
.super Ljava/lang/Object;
.source "Bitmap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0086\u0008\u001a7\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a)\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u0010H\u0086\u0008\u00f8\u0001\u0000\u001a\u0015\u0010\u0011\u001a\u00020\u0008*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\u0008*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0014H\u0086\n\u001a\u001d\u0010\u0015\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0086\n\u001a\'\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0008H\u0086\u0008\u001a\'\u0010\u001a\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u0003H\u0086\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "createBitmap",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "hasAlpha",
        "",
        "colorSpace",
        "Landroid/graphics/ColorSpace;",
        "applyCanvas",
        "block",
        "Lkotlin/Function1;",
        "Landroid/graphics/Canvas;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "contains",
        "p",
        "Landroid/graphics/Point;",
        "Landroid/graphics/PointF;",
        "get",
        "x",
        "y",
        "scale",
        "filter",
        "set",
        "color",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final applyCanvas(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "block"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 43
    new-instance v0, Landroid/graphics/Canvas;

    #@c
    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@f
    .line 44
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    return-object p0
.end method

.method public static final contains(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Z
    .registers 6

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "p"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@d
    move-result v0

    #@e
    iget v1, p1, Landroid/graphics/Point;->x:I

    #@10
    const/4 v2, 0x1

    #@11
    const/4 v3, 0x0

    #@12
    if-ltz v1, :cond_18

    #@14
    if-ge v1, v0, :cond_18

    #@16
    move v0, v2

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v0, v3

    #@19
    :goto_19
    if-eqz v0, :cond_28

    #@1b
    iget v0, p1, Landroid/graphics/Point;->y:I

    #@1d
    if-ltz v0, :cond_28

    #@1f
    iget p1, p1, Landroid/graphics/Point;->y:I

    #@21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@24
    move-result p0

    #@25
    if-ge p1, p0, :cond_28

    #@27
    goto :goto_29

    #@28
    :cond_28
    move v2, v3

    #@29
    :goto_29
    return v2
.end method

.method public static final contains(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Z
    .registers 5

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "p"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 139
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@c
    const/4 v1, 0x0

    #@d
    cmpl-float v0, v0, v1

    #@f
    if-ltz v0, :cond_2f

    #@11
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@16
    move-result v2

    #@17
    int-to-float v2, v2

    #@18
    cmpg-float v0, v0, v2

    #@1a
    if-gez v0, :cond_2f

    #@1c
    iget v0, p1, Landroid/graphics/PointF;->y:F

    #@1e
    cmpl-float v0, v0, v1

    #@20
    if-ltz v0, :cond_2f

    #@22
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@27
    move-result p0

    #@28
    int-to-float p0, p0

    #@29
    cmpg-float p0, p1, p0

    #@2b
    if-gez p0, :cond_2f

    #@2d
    const/4 p0, 0x1

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 p0, 0x0

    #@30
    :goto_30
    return p0
.end method

.method public static final createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const-string v0, "config"

    #@2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 95
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@8
    move-result-object p0

    #@9
    const-string p1, "createBitmap(width, height, config)"

    #@b
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@e
    return-object p0
.end method

.method public static final createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    const-string v0, "config"

    #@2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "colorSpace"

    #@7
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 120
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    #@d
    move-result-object p0

    #@e
    const-string p1, "createBitmap(width, heig\u2026ig, hasAlpha, colorSpace)"

    #@10
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    return-object p0
.end method

.method public static synthetic createBitmap$default(IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    and-int/lit8 p3, p3, 0x4

    #@2
    if-eqz p3, :cond_6

    #@4
    .line 93
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@6
    :cond_6
    const-string p3, "config"

    #@8
    .line 90
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@b
    .line 95
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@e
    move-result-object p0

    #@f
    const-string p1, "createBitmap(width, height, config)"

    #@11
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    return-object p0
.end method

.method public static synthetic createBitmap$default(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    and-int/lit8 p6, p5, 0x4

    #@2
    if-eqz p6, :cond_6

    #@4
    .line 116
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@6
    :cond_6
    and-int/lit8 p6, p5, 0x8

    #@8
    if-eqz p6, :cond_b

    #@a
    const/4 p3, 0x1

    #@b
    :cond_b
    and-int/lit8 p5, p5, 0x10

    #@d
    if-eqz p5, :cond_1a

    #@f
    .line 118
    sget-object p4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    #@11
    invoke-static {p4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    #@14
    move-result-object p4

    #@15
    const-string p5, "get(ColorSpace.Named.SRGB)"

    #@17
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    :cond_1a
    const-string p5, "config"

    #@1c
    .line 113
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@1f
    const-string p5, "colorSpace"

    #@21
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@24
    .line 120
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    #@27
    move-result-object p0

    #@28
    const-string p1, "createBitmap(width, heig\u2026ig, hasAlpha, colorSpace)"

    #@2a
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@2d
    return-object p0
.end method

.method public static final get(Landroid/graphics/Bitmap;II)I
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static final scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 77
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@8
    move-result-object p0

    #@9
    const-string p1, "createScaledBitmap(this, width, height, filter)"

    #@b
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@e
    return-object p0
.end method

.method public static synthetic scale$default(Landroid/graphics/Bitmap;IIZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    and-int/lit8 p4, p4, 0x4

    #@2
    if-eqz p4, :cond_5

    #@4
    const/4 p3, 0x1

    #@5
    :cond_5
    const-string p4, "<this>"

    #@7
    .line 76
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 77
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@d
    move-result-object p0

    #@e
    const-string p1, "createScaledBitmap(this, width, height, filter)"

    #@10
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    return-object p0
.end method

.method public static final set(Landroid/graphics/Bitmap;III)V
    .registers 5

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 63
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->setPixel(III)V

    #@8
    return-void
.end method
