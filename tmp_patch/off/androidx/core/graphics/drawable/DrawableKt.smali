.class public final Landroidx/core/graphics/drawable/DrawableKt;
.super Ljava/lang/Object;
.source "Drawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,118:1\n38#2:119\n49#2:120\n60#2:121\n71#2:122\n*S KotlinDebug\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n*L\n66#1:119\n66#1:120\n66#1:121\n66#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a,\u0010\u0008\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\t\u001a\u00020\n*\u00020\u00022\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0003\u0010\r\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "toBitmap",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/Drawable;",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "toBitmapOrNull",
        "updateBounds",
        "",
        "left",
        "top",
        "right",
        "bottom",
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
.method public static final toBitmap(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 51
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@7
    const-string v1, "bitmap"

    #@9
    if-eqz v0, :cond_53

    #@b
    .line 52
    move-object v0, p0

    #@c
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@11
    move-result-object v2

    #@12
    if-eqz v2, :cond_4b

    #@14
    if-eqz p3, :cond_20

    #@16
    .line 56
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@1d
    move-result-object v2

    #@1e
    if-ne v2, p3, :cond_53

    #@20
    .line 59
    :cond_20
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@23
    move-result-object p0

    #@24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@27
    move-result p0

    #@28
    if-ne p1, p0, :cond_3c

    #@2a
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@31
    move-result p0

    #@32
    if-ne p2, p0, :cond_3c

    #@34
    .line 60
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@37
    move-result-object p0

    #@38
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@3b
    return-object p0

    #@3c
    .line 62
    :cond_3c
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@3f
    move-result-object p0

    #@40
    const/4 p3, 0x1

    #@41
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@44
    move-result-object p0

    #@45
    const-string p1, "createScaledBitmap(bitmap, width, height, true)"

    #@47
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@4a
    return-object p0

    #@4b
    .line 54
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string p1, "bitmap is null"

    #@4f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw p0

    #@53
    .line 66
    :cond_53
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@56
    move-result-object v0

    #@57
    const-string v2, "bounds"

    #@59
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@5c
    .line 119
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@5e
    .line 120
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@60
    .line 121
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@62
    .line 122
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@64
    if-nez p3, :cond_68

    #@66
    .line 68
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@68
    :cond_68
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@6b
    move-result-object p3

    #@6c
    const/4 v5, 0x0

    #@6d
    .line 69
    invoke-virtual {p0, v5, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@70
    .line 70
    new-instance p1, Landroid/graphics/Canvas;

    #@72
    invoke-direct {p1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@75
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@78
    .line 72
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@7b
    .line 73
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@7e
    return-object p3
.end method

.method public static synthetic toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    and-int/lit8 p5, p4, 0x1

    #@2
    if-eqz p5, :cond_8

    #@4
    .line 47
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result p1

    #@8
    :cond_8
    and-int/lit8 p5, p4, 0x2

    #@a
    if-eqz p5, :cond_10

    #@c
    .line 48
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@f
    move-result p2

    #@10
    :cond_10
    and-int/lit8 p4, p4, 0x4

    #@12
    if-eqz p4, :cond_15

    #@14
    const/4 p3, 0x0

    #@15
    .line 46
    :cond_15
    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@18
    move-result-object p0

    #@19
    return-object p0
.end method

.method public static final toBitmapOrNull(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 98
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@7
    if-eqz v0, :cond_14

    #@9
    move-object v0, p0

    #@a
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@c
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_14

    #@12
    const/4 p0, 0x0

    #@13
    return-object p0

    #@14
    .line 101
    :cond_14
    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@17
    move-result-object p0

    #@18
    return-object p0
.end method

.method public static synthetic toBitmapOrNull$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    and-int/lit8 p5, p4, 0x1

    #@2
    if-eqz p5, :cond_8

    #@4
    .line 94
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result p1

    #@8
    :cond_8
    and-int/lit8 p5, p4, 0x2

    #@a
    if-eqz p5, :cond_10

    #@c
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@f
    move-result p2

    #@10
    :cond_10
    and-int/lit8 p4, p4, 0x4

    #@12
    if-eqz p4, :cond_15

    #@14
    const/4 p3, 0x0

    #@15
    .line 93
    :cond_15
    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmapOrNull(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@18
    move-result-object p0

    #@19
    return-object p0
.end method

.method public static final updateBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 6

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 116
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@8
    return-void
.end method

.method public static synthetic updateBounds$default(Landroid/graphics/drawable/Drawable;IIIIILjava/lang/Object;)V
    .registers 7

    #@0
    and-int/lit8 p6, p5, 0x1

    #@2
    if-eqz p6, :cond_a

    #@4
    .line 111
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object p1

    #@8
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@a
    :cond_a
    and-int/lit8 p6, p5, 0x2

    #@c
    if-eqz p6, :cond_14

    #@e
    .line 112
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@11
    move-result-object p2

    #@12
    iget p2, p2, Landroid/graphics/Rect;->top:I

    #@14
    :cond_14
    and-int/lit8 p6, p5, 0x4

    #@16
    if-eqz p6, :cond_1e

    #@18
    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@1b
    move-result-object p3

    #@1c
    iget p3, p3, Landroid/graphics/Rect;->right:I

    #@1e
    :cond_1e
    and-int/lit8 p5, p5, 0x8

    #@20
    if-eqz p5, :cond_28

    #@22
    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@25
    move-result-object p4

    #@26
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 110
    :cond_28
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableKt;->updateBounds(Landroid/graphics/drawable/Drawable;IIII)V

    #@2b
    return-void
.end method
