.class public Landroidx/constraintlayout/helper/widget/Layer;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Layer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Layer"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z

.field protected mComputedCenterX:F

.field protected mComputedCenterY:F

.field protected mComputedMaxX:F

.field protected mComputedMaxY:F

.field protected mComputedMinX:F

.field protected mComputedMinY:F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGroupRotateAngle:F

.field mNeedBounds:Z

.field private mRotationCenterX:F

.field private mRotationCenterY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mShiftX:F

.field private mShiftY:F

.field mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 59
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    #@3
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@5
    .line 37
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@7
    .line 38
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@9
    .line 39
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@b
    const/high16 v0, 0x3f800000    # 1.0f

    #@d
    .line 41
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    #@f
    .line 42
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    #@11
    .line 43
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@13
    .line 44
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@15
    .line 46
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    #@17
    .line 47
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    #@19
    .line 48
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    #@1b
    .line 49
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    #@1d
    const/4 p1, 0x1

    #@1e
    .line 50
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    #@20
    const/4 p1, 0x0

    #@21
    .line 51
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@23
    const/4 p1, 0x0

    #@24
    .line 52
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    #@26
    .line 53
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    #@28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@5
    .line 37
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@7
    .line 38
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@9
    .line 39
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@b
    const/high16 p2, 0x3f800000    # 1.0f

    #@d
    .line 41
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    #@f
    .line 42
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    #@11
    .line 43
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@13
    .line 44
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@15
    .line 46
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    #@17
    .line 47
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    #@19
    .line 48
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    #@1b
    .line 49
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    #@1d
    const/4 p1, 0x1

    #@1e
    .line 50
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    #@20
    const/4 p1, 0x0

    #@21
    .line 51
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@23
    const/4 p1, 0x0

    #@24
    .line 52
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    #@26
    .line 53
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    #@28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    #@0
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@5
    .line 37
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@7
    .line 38
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@9
    .line 39
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@b
    const/high16 p2, 0x3f800000    # 1.0f

    #@d
    .line 41
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    #@f
    .line 42
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    #@11
    .line 43
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@13
    .line 44
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@15
    .line 46
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    #@17
    .line 47
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    #@19
    .line 48
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    #@1b
    .line 49
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    #@1d
    const/4 p1, 0x1

    #@1e
    .line 50
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    #@20
    const/4 p1, 0x0

    #@21
    .line 51
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@23
    const/4 p1, 0x0

    #@24
    .line 52
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    #@26
    .line 53
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    #@28
    return-void
.end method

.method private reCacheViews()V
    .registers 5

    #@0
    .line 253
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 256
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    #@7
    if-nez v0, :cond_a

    #@9
    return-void

    #@a
    .line 260
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@c
    if-eqz v0, :cond_13

    #@e
    array-length v0, v0

    #@f
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    #@11
    if-eq v0, v1, :cond_19

    #@13
    .line 261
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    #@15
    new-array v0, v0, [Landroid/view/View;

    #@17
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    .line 263
    :goto_1a
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    #@1c
    if-ge v0, v1, :cond_2f

    #@1e
    .line 264
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    #@20
    aget v1, v1, v0

    #@22
    .line 265
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@24
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@26
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@29
    move-result-object v1

    #@2a
    aput-object v1, v2, v0

    #@2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1a

    #@2f
    :cond_2f
    return-void
.end method

.method private transform()V
    .registers 11

    #@0
    .line 319
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 322
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@7
    if-nez v0, :cond_c

    #@9
    .line 323
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->reCacheViews()V

    #@c
    .line 325
    :cond_c
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    #@f
    .line 327
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1a

    #@17
    const-wide/16 v0, 0x0

    #@19
    goto :goto_21

    #@1a
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@1c
    float-to-double v0, v0

    #@1d
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@20
    move-result-wide v0

    #@21
    .line 328
    :goto_21
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@24
    move-result-wide v2

    #@25
    double-to-float v2, v2

    #@26
    .line 329
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@29
    move-result-wide v0

    #@2a
    double-to-float v0, v0

    #@2b
    .line 330
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    #@2d
    mul-float v3, v1, v0

    #@2f
    .line 331
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    #@31
    neg-float v5, v4

    #@32
    mul-float/2addr v5, v2

    #@33
    mul-float/2addr v1, v2

    #@34
    mul-float/2addr v4, v0

    #@35
    const/4 v0, 0x0

    #@36
    .line 335
    :goto_36
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    #@38
    if-ge v0, v2, :cond_8d

    #@3a
    .line 336
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    #@3c
    aget-object v2, v2, v0

    #@3e
    .line 337
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@41
    move-result v6

    #@42
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@45
    move-result v7

    #@46
    add-int/2addr v6, v7

    #@47
    div-int/lit8 v6, v6, 0x2

    #@49
    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@4c
    move-result v7

    #@4d
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@50
    move-result v8

    #@51
    add-int/2addr v7, v8

    #@52
    div-int/lit8 v7, v7, 0x2

    #@54
    int-to-float v6, v6

    #@55
    .line 339
    iget v8, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@57
    sub-float/2addr v6, v8

    #@58
    int-to-float v7, v7

    #@59
    .line 340
    iget v8, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@5b
    sub-float/2addr v7, v8

    #@5c
    mul-float v8, v3, v6

    #@5e
    mul-float v9, v5, v7

    #@60
    add-float/2addr v8, v9

    #@61
    sub-float/2addr v8, v6

    #@62
    .line 341
    iget v9, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    #@64
    add-float/2addr v8, v9

    #@65
    mul-float/2addr v6, v1

    #@66
    mul-float v9, v4, v7

    #@68
    add-float/2addr v6, v9

    #@69
    sub-float/2addr v6, v7

    #@6a
    .line 342
    iget v7, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    #@6c
    add-float/2addr v6, v7

    #@6d
    .line 344
    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationX(F)V

    #@70
    .line 345
    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    #@73
    .line 346
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    #@75
    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    #@78
    .line 347
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    #@7a
    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    #@7d
    .line 348
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@7f
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@82
    move-result v6

    #@83
    if-nez v6, :cond_8a

    #@85
    .line 349
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@87
    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    #@8a
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    #@8c
    goto :goto_36

    #@8d
    :cond_8d
    return-void
.end method


# virtual methods
.method protected applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 360
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@3
    return-void
.end method

.method protected calcCenters()V
    .registers 9

    #@0
    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 273
    :cond_5
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    #@7
    if-nez v0, :cond_1a

    #@9
    .line 274
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1a

    #@11
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@13
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1a

    #@19
    return-void

    #@1a
    .line 278
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@1c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_35

    #@22
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@24
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2b

    #@2a
    goto :goto_35

    #@2b
    .line 312
    :cond_2b
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@2d
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@2f
    .line 313
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@31
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@33
    goto/16 :goto_af

    #@35
    .line 279
    :cond_35
    :goto_35
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@37
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/Layer;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    #@3a
    move-result-object v0

    #@3b
    const/4 v1, 0x0

    #@3c
    .line 281
    aget-object v2, v0, v1

    #@3e
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@41
    move-result v2

    #@42
    .line 282
    aget-object v3, v0, v1

    #@44
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@47
    move-result v3

    #@48
    .line 283
    aget-object v4, v0, v1

    #@4a
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@4d
    move-result v4

    #@4e
    .line 284
    aget-object v5, v0, v1

    #@50
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@53
    move-result v5

    #@54
    .line 286
    :goto_54
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    #@56
    if-ge v1, v6, :cond_7d

    #@58
    .line 287
    aget-object v6, v0, v1

    #@5a
    .line 288
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@5d
    move-result v7

    #@5e
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    #@61
    move-result v2

    #@62
    .line 289
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@65
    move-result v7

    #@66
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@69
    move-result v3

    #@6a
    .line 290
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@6d
    move-result v7

    #@6e
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    #@71
    move-result v4

    #@72
    .line 291
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@75
    move-result v6

    #@76
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@79
    move-result v5

    #@7a
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_54

    #@7d
    :cond_7d
    int-to-float v0, v4

    #@7e
    .line 294
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    #@80
    int-to-float v0, v5

    #@81
    .line 295
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    #@83
    int-to-float v0, v2

    #@84
    .line 296
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    #@86
    int-to-float v0, v3

    #@87
    .line 297
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    #@89
    .line 299
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@8b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_98

    #@91
    add-int/2addr v2, v4

    #@92
    .line 300
    div-int/lit8 v2, v2, 0x2

    #@94
    int-to-float v0, v2

    #@95
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@97
    goto :goto_9c

    #@98
    .line 302
    :cond_98
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@9a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@9c
    .line 304
    :goto_9c
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@9e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@a1
    move-result v0

    #@a2
    if-eqz v0, :cond_ab

    #@a4
    add-int/2addr v3, v5

    #@a5
    .line 305
    div-int/lit8 v3, v3, 0x2

    #@a7
    int-to-float v0, v3

    #@a8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@aa
    goto :goto_af

    #@ab
    .line 308
    :cond_ab
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@ad
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@af
    :goto_af
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 75
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 76
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mUseViewMeasure:Z

    #@6
    if-eqz p1, :cond_30

    #@8
    .line 78
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    #@e
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@11
    move-result-object p1

    #@12
    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@15
    move-result v1

    #@16
    :goto_16
    if-ge v0, v1, :cond_2d

    #@18
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1b
    move-result v2

    #@1c
    .line 82
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    #@1e
    const/4 v4, 0x1

    #@1f
    if-ne v2, v3, :cond_24

    #@21
    .line 83
    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    #@23
    goto :goto_2a

    #@24
    .line 84
    :cond_24
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    #@26
    if-ne v2, v3, :cond_2a

    #@28
    .line 85
    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    #@2a
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_16

    #@2d
    .line 88
    :cond_2d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@30
    :cond_30
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    #@0
    .line 94
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    #@3
    .line 95
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@b
    .line 96
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    #@d
    if-nez v0, :cond_13

    #@f
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    #@11
    if-eqz v0, :cond_47

    #@13
    .line 97
    :cond_13
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    #@16
    move-result v0

    #@17
    .line 100
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getElevation()F

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x0

    #@1c
    .line 102
    :goto_1c
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    #@1e
    if-ge v2, v3, :cond_47

    #@20
    .line 103
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    #@22
    aget v3, v3, v2

    #@24
    .line 104
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@26
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@29
    move-result-object v3

    #@2a
    if-eqz v3, :cond_44

    #@2c
    .line 106
    iget-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    #@2e
    if-eqz v4, :cond_33

    #@30
    .line 107
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    #@33
    .line 109
    :cond_33
    iget-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    #@35
    if-eqz v4, :cond_44

    #@37
    const/4 v4, 0x0

    #@38
    cmpl-float v4, v1, v4

    #@3a
    if-lez v4, :cond_44

    #@3c
    .line 111
    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    #@3f
    move-result v4

    #@40
    add-float/2addr v4, v1

    #@41
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationZ(F)V

    #@44
    :cond_44
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_1c

    #@47
    :cond_47
    return-void
.end method

.method public setElevation(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elevation"
        }
    .end annotation

    #@0
    .line 225
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    #@3
    .line 226
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    #@6
    return-void
.end method

.method public setPivotX(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotX"
        }
    .end annotation

    #@0
    .line 176
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    #@2
    .line 177
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@5
    return-void
.end method

.method public setPivotY(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotY"
        }
    .end annotation

    #@0
    .line 187
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    #@2
    .line 188
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@5
    return-void
.end method

.method public setRotation(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    #@0
    .line 144
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@2
    .line 145
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@5
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleX"
        }
    .end annotation

    #@0
    .line 154
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    #@2
    .line 155
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@5
    return-void
.end method

.method public setScaleY(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleY"
        }
    .end annotation

    #@0
    .line 165
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    #@2
    .line 166
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@5
    return-void
.end method

.method public setTranslationX(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dx"
        }
    .end annotation

    #@0
    .line 197
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    #@2
    .line 198
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@5
    return-void
.end method

.method public setTranslationY(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dy"
        }
    .end annotation

    #@0
    .line 207
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    #@2
    .line 208
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@5
    return-void
.end method

.method public setVisibility(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    #@0
    .line 216
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    #@3
    .line 217
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    #@6
    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 235
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->reCacheViews()V

    #@3
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@5
    .line 237
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    #@7
    .line 238
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    #@9
    .line 239
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@f
    .line 240
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12
    move-result-object p1

    #@13
    const/4 v0, 0x0

    #@14
    .line 241
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@17
    .line 242
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@1a
    .line 243
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    #@1d
    .line 244
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    #@1f
    float-to-int p1, p1

    #@20
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingLeft()I

    #@23
    move-result v0

    #@24
    sub-int/2addr p1, v0

    #@25
    .line 245
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    #@27
    float-to-int v0, v0

    #@28
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingTop()I

    #@2b
    move-result v1

    #@2c
    sub-int/2addr v0, v1

    #@2d
    .line 246
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    #@2f
    float-to-int v1, v1

    #@30
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingRight()I

    #@33
    move-result v2

    #@34
    add-int/2addr v1, v2

    #@35
    .line 247
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    #@37
    float-to-int v2, v2

    #@38
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingBottom()I

    #@3b
    move-result v3

    #@3c
    add-int/2addr v2, v3

    #@3d
    .line 248
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/constraintlayout/helper/widget/Layer;->layout(IIII)V

    #@40
    .line 249
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    #@43
    return-void
.end method

.method public updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 126
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2
    .line 127
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getRotation()F

    #@5
    move-result p1

    #@6
    const/4 v0, 0x0

    #@7
    cmpl-float v0, p1, v0

    #@9
    if-nez v0, :cond_16

    #@b
    .line 129
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_18

    #@13
    .line 130
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@15
    goto :goto_18

    #@16
    .line 133
    :cond_16
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    #@18
    :cond_18
    :goto_18
    return-void
.end method
