.class public abstract Landroidx/core/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field private static final MAX_IMAGE_SIZE:I = 0x100000


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3
    move-result v0

    #@4
    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@7
    move-result v1

    #@8
    if-lez v0, :cond_50

    #@a
    if-gtz v1, :cond_d

    #@c
    goto :goto_50

    #@d
    :cond_d
    mul-int v2, v0, v1

    #@f
    int-to-float v2, v2

    #@10
    const/high16 v3, 0x49800000    # 1048576.0f

    #@12
    div-float/2addr v3, v2

    #@13
    const/high16 v2, 0x3f800000    # 1.0f

    #@15
    .line 219
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@18
    move-result v3

    #@19
    .line 220
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@1b
    if-eqz v4, :cond_28

    #@1d
    cmpl-float v2, v3, v2

    #@1f
    if-nez v2, :cond_28

    #@21
    .line 222
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    #@23
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@26
    move-result-object p0

    #@27
    return-object p0

    #@28
    :cond_28
    int-to-float v0, v0

    #@29
    mul-float/2addr v0, v3

    #@2a
    float-to-int v0, v0

    #@2b
    int-to-float v1, v1

    #@2c
    mul-float/2addr v1, v3

    #@2d
    float-to-int v1, v1

    #@2e
    .line 226
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@30
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@33
    move-result-object v2

    #@34
    .line 227
    new-instance v3, Landroid/graphics/Canvas;

    #@36
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@39
    .line 228
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3c
    move-result-object v4

    #@3d
    .line 229
    iget v5, v4, Landroid/graphics/Rect;->left:I

    #@3f
    .line 230
    iget v6, v4, Landroid/graphics/Rect;->top:I

    #@41
    .line 231
    iget v7, v4, Landroid/graphics/Rect;->right:I

    #@43
    .line 232
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@45
    const/4 v8, 0x0

    #@46
    .line 233
    invoke-virtual {p0, v8, v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@49
    .line 234
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@4c
    .line 235
    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@4f
    return-object v2

    #@50
    :cond_50
    :goto_50
    const/4 p0, 0x0

    #@51
    return-object p0
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 8

    #@0
    .line 168
    instance-of v0, p1, Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_49

    #@4
    .line 169
    move-object v0, p1

    #@5
    check-cast v0, Landroid/widget/ImageView;

    #@7
    .line 170
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v1

    #@b
    .line 171
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v2

    #@f
    if-eqz v1, :cond_49

    #@11
    if-nez v2, :cond_49

    #@13
    .line 173
    invoke-static {v1}, Landroidx/core/app/SharedElementCallback;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_49

    #@19
    .line 175
    new-instance p1, Landroid/os/Bundle;

    #@1b
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    #@1e
    const-string p2, "sharedElement:snapshot:bitmap"

    #@20
    .line 176
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@23
    .line 178
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@26
    move-result-object p2

    #@27
    invoke-virtual {p2}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    #@2a
    move-result-object p2

    #@2b
    const-string p3, "sharedElement:snapshot:imageScaleType"

    #@2d
    .line 177
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 179
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@33
    move-result-object p2

    #@34
    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@36
    if-ne p2, p3, :cond_48

    #@38
    .line 180
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@3b
    move-result-object p2

    #@3c
    const/16 p3, 0x9

    #@3e
    new-array p3, p3, [F

    #@40
    .line 182
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    #@43
    const-string p2, "sharedElement:snapshot:imageMatrix"

    #@45
    .line 183
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@48
    :cond_48
    return-object p1

    #@49
    .line 189
    :cond_49
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    #@4c
    move-result v0

    #@4d
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@50
    move-result v0

    #@51
    .line 190
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@54
    move-result v1

    #@55
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@58
    move-result v1

    #@59
    if-lez v0, :cond_a3

    #@5b
    if-lez v1, :cond_a3

    #@5d
    mul-int v2, v0, v1

    #@5f
    int-to-float v2, v2

    #@60
    const/high16 v3, 0x49800000    # 1048576.0f

    #@62
    div-float/2addr v3, v2

    #@63
    const/high16 v2, 0x3f800000    # 1.0f

    #@65
    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@68
    move-result v2

    #@69
    int-to-float v0, v0

    #@6a
    mul-float/2addr v0, v2

    #@6b
    float-to-int v0, v0

    #@6c
    int-to-float v1, v1

    #@6d
    mul-float/2addr v1, v2

    #@6e
    float-to-int v1, v1

    #@6f
    .line 196
    iget-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@71
    if-nez v3, :cond_7a

    #@73
    .line 197
    new-instance v3, Landroid/graphics/Matrix;

    #@75
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@78
    iput-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@7a
    .line 199
    :cond_7a
    iget-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@7c
    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@7f
    .line 200
    iget-object p2, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@81
    iget v3, p3, Landroid/graphics/RectF;->left:F

    #@83
    neg-float v3, v3

    #@84
    iget p3, p3, Landroid/graphics/RectF;->top:F

    #@86
    neg-float p3, p3

    #@87
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@8a
    .line 201
    iget-object p2, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@8c
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@8f
    .line 202
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@91
    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@94
    move-result-object p2

    #@95
    .line 203
    new-instance p3, Landroid/graphics/Canvas;

    #@97
    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@9a
    .line 204
    iget-object v0, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@9c
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@9f
    .line 205
    invoke-virtual {p1, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@a2
    goto :goto_a4

    #@a3
    :cond_a3
    const/4 p2, 0x0

    #@a4
    :goto_a4
    return-object p2
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 5

    #@0
    .line 259
    instance-of v0, p2, Landroid/os/Bundle;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_41

    #@5
    .line 260
    check-cast p2, Landroid/os/Bundle;

    #@7
    const-string v0, "sharedElement:snapshot:bitmap"

    #@9
    .line 261
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/graphics/Bitmap;

    #@f
    if-nez v0, :cond_12

    #@11
    return-object v1

    #@12
    .line 265
    :cond_12
    new-instance v1, Landroid/widget/ImageView;

    #@14
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@17
    .line 267
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@1a
    const-string p1, "sharedElement:snapshot:imageScaleType"

    #@1c
    .line 269
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-static {p1}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    #@23
    move-result-object p1

    #@24
    .line 268
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@27
    .line 270
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@2a
    move-result-object p1

    #@2b
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@2d
    if-ne p1, v0, :cond_4f

    #@2f
    const-string p1, "sharedElement:snapshot:imageMatrix"

    #@31
    .line 271
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    #@34
    move-result-object p1

    #@35
    .line 272
    new-instance p2, Landroid/graphics/Matrix;

    #@37
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    #@3a
    .line 273
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    #@3d
    .line 274
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    #@40
    goto :goto_4f

    #@41
    .line 276
    :cond_41
    instance-of v0, p2, Landroid/graphics/Bitmap;

    #@43
    if-eqz v0, :cond_4f

    #@45
    .line 277
    check-cast p2, Landroid/graphics/Bitmap;

    #@47
    .line 278
    new-instance v1, Landroid/widget/ImageView;

    #@49
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@4c
    .line 279
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@4f
    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    #@0
    .line 302
    invoke-interface {p3}, Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    #@3
    return-void
.end method
