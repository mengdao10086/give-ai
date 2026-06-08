.class public Landroidx/constraintlayout/utils/widget/ImageFilterView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
    }
.end annotation


# instance fields
.field private mAltDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrossfade:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field mLayer:Landroid/graphics/drawable/LayerDrawable;

.field mLayers:[Landroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field mPanX:F

.field mPanY:F

.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field mRotate:F

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field mZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 483
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    #@3
    .line 287
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@a
    const/4 v0, 0x1

    #@b
    .line 288
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    #@d
    const/4 v0, 0x0

    #@e
    .line 289
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 290
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    const/4 v1, 0x0

    #@13
    .line 291
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@15
    .line 292
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@17
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@19
    .line 293
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@1b
    const/4 v2, 0x2

    #@1c
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    #@1e
    .line 298
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@20
    .line 308
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@22
    .line 309
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@24
    .line 310
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@26
    .line 311
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@28
    .line 484
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@2b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
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
    .line 488
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 287
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@a
    const/4 v0, 0x1

    #@b
    .line 288
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    #@d
    const/4 v0, 0x0

    #@e
    .line 289
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 290
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    const/4 v0, 0x0

    #@13
    .line 291
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@15
    .line 292
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@17
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@19
    .line 293
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@1b
    const/4 v1, 0x2

    #@1c
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@1e
    .line 298
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@20
    .line 308
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@22
    .line 309
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@24
    .line 310
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@26
    .line 311
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@28
    .line 489
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@2b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
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
    .line 493
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 287
    new-instance p3, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@5
    invoke-direct {p3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    #@8
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@a
    const/4 p3, 0x1

    #@b
    .line 288
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    #@d
    const/4 p3, 0x0

    #@e
    .line 289
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 290
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    const/4 p3, 0x0

    #@13
    .line 291
    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@15
    .line 292
    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@17
    const/high16 p3, 0x7fc00000    # Float.NaN

    #@19
    .line 293
    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@1b
    const/4 v0, 0x2

    #@1c
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    #@1e
    .line 298
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@20
    .line 308
    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@22
    .line 309
    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@24
    .line 310
    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@26
    .line 311
    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@28
    .line 494
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@2b
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .registers 1

    #@0
    .line 88
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@2
    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .registers 1

    #@0
    .line 88
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@2
    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
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
    if-eqz p2, :cond_12b

    #@2
    .line 499
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    #@8
    .line 500
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object p1

    #@c
    .line 501
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@f
    move-result p2

    #@10
    .line 502
    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_altSrc:I

    #@12
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@18
    const/4 v0, 0x0

    #@19
    move v1, v0

    #@1a
    :goto_1a
    if-ge v1, p2, :cond_c1

    #@1c
    .line 505
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1f
    move-result v2

    #@20
    .line 506
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_crossfade:I

    #@22
    const/4 v4, 0x0

    #@23
    if-ne v2, v3, :cond_2d

    #@25
    .line 507
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@28
    move-result v2

    #@29
    iput v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@2b
    goto/16 :goto_bd

    #@2d
    .line 508
    :cond_2d
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_warmth:I

    #@2f
    if-ne v2, v3, :cond_3a

    #@31
    .line 509
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@34
    move-result v2

    #@35
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setWarmth(F)V

    #@38
    goto/16 :goto_bd

    #@3a
    .line 510
    :cond_3a
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_saturation:I

    #@3c
    if-ne v2, v3, :cond_47

    #@3e
    .line 511
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@41
    move-result v2

    #@42
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setSaturation(F)V

    #@45
    goto/16 :goto_bd

    #@47
    .line 512
    :cond_47
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_contrast:I

    #@49
    if-ne v2, v3, :cond_54

    #@4b
    .line 513
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4e
    move-result v2

    #@4f
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setContrast(F)V

    #@52
    goto/16 :goto_bd

    #@54
    .line 514
    :cond_54
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_brightness:I

    #@56
    if-ne v2, v3, :cond_60

    #@58
    .line 515
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5b
    move-result v2

    #@5c
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setBrightness(F)V

    #@5f
    goto :goto_bd

    #@60
    .line 516
    :cond_60
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    #@62
    if-ne v2, v3, :cond_6c

    #@64
    .line 518
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@67
    move-result v2

    #@68
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V

    #@6b
    goto :goto_bd

    #@6c
    .line 520
    :cond_6c
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    #@6e
    if-ne v2, v3, :cond_78

    #@70
    .line 522
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@73
    move-result v2

    #@74
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    #@77
    goto :goto_bd

    #@78
    .line 524
    :cond_78
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_overlay:I

    #@7a
    if-ne v2, v3, :cond_86

    #@7c
    .line 525
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    #@7e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@81
    move-result v2

    #@82
    invoke-direct {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOverlay(Z)V

    #@85
    goto :goto_bd

    #@86
    .line 526
    :cond_86
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanX:I

    #@88
    if-ne v2, v3, :cond_94

    #@8a
    .line 527
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@8c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@8f
    move-result v2

    #@90
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImagePanX(F)V

    #@93
    goto :goto_bd

    #@94
    .line 528
    :cond_94
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanY:I

    #@96
    if-ne v2, v3, :cond_a2

    #@98
    .line 529
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@9a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@9d
    move-result v2

    #@9e
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImagePanY(F)V

    #@a1
    goto :goto_bd

    #@a2
    .line 530
    :cond_a2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageRotate:I

    #@a4
    if-ne v2, v3, :cond_b0

    #@a6
    .line 531
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@a8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@ab
    move-result v2

    #@ac
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImageRotate(F)V

    #@af
    goto :goto_bd

    #@b0
    .line 532
    :cond_b0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageZoom:I

    #@b2
    if-ne v2, v3, :cond_bd

    #@b4
    .line 533
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@b6
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@b9
    move-result v2

    #@ba
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImageZoom(F)V

    #@bd
    :cond_bd
    :goto_bd
    add-int/lit8 v1, v1, 0x1

    #@bf
    goto/16 :goto_1a

    #@c1
    .line 536
    :cond_c1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@c4
    .line 538
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@c7
    move-result-object p1

    #@c8
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@ca
    .line 539
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@cc
    if-eqz p2, :cond_119

    #@ce
    if-eqz p1, :cond_119

    #@d0
    .line 541
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@d2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@d5
    move-result-object p2

    #@d6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@d9
    move-result-object p2

    #@da
    iput-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@dc
    aput-object p2, p1, v0

    #@de
    .line 542
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@e0
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@e2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@e5
    move-result-object p2

    #@e6
    const/4 v1, 0x1

    #@e7
    aput-object p2, p1, v1

    #@e9
    .line 544
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    #@eb
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@ed
    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@f0
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@f2
    .line 545
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f5
    move-result-object p1

    #@f6
    iget p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@f8
    const/high16 v1, 0x437f0000    # 255.0f

    #@fa
    mul-float/2addr p2, v1

    #@fb
    float-to-int p2, p2

    #@fc
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@ff
    .line 546
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    #@101
    if-nez p1, :cond_113

    #@103
    .line 547
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@105
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@108
    move-result-object p1

    #@109
    const/high16 p2, 0x3f800000    # 1.0f

    #@10b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@10d
    sub-float/2addr p2, v0

    #@10e
    mul-float/2addr p2, v1

    #@10f
    float-to-int p2, p2

    #@110
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@113
    .line 549
    :cond_113
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@115
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@118
    goto :goto_12b

    #@119
    .line 551
    :cond_119
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@11c
    move-result-object p1

    #@11d
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@11f
    if-eqz p1, :cond_12b

    #@121
    .line 553
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@123
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@126
    move-result-object p1

    #@127
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@129
    aput-object p1, p2, v0

    #@12b
    :cond_12b
    :goto_12b
    return-void
.end method

.method private setMatrix()V
    .registers 12

    #@0
    .line 455
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_21

    #@8
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@a
    .line 456
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_21

    #@10
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@12
    .line 457
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_21

    #@18
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@1a
    .line 458
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_21

    #@20
    return-void

    #@21
    .line 462
    :cond_21
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@23
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@26
    move-result v0

    #@27
    const/4 v1, 0x0

    #@28
    if-eqz v0, :cond_2c

    #@2a
    move v0, v1

    #@2b
    goto :goto_2e

    #@2c
    :cond_2c
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@2e
    .line 463
    :goto_2e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@30
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_38

    #@36
    move v2, v1

    #@37
    goto :goto_3a

    #@38
    :cond_38
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@3a
    .line 464
    :goto_3a
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@3c
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_45

    #@42
    const/high16 v3, 0x3f800000    # 1.0f

    #@44
    goto :goto_47

    #@45
    :cond_45
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@47
    .line 465
    :goto_47
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@49
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_50

    #@4f
    goto :goto_52

    #@50
    :cond_50
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@52
    .line 466
    :goto_52
    new-instance v4, Landroid/graphics/Matrix;

    #@54
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@57
    .line 467
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    #@5a
    .line 468
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@61
    move-result v5

    #@62
    int-to-float v5, v5

    #@63
    .line 469
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@6a
    move-result v6

    #@6b
    int-to-float v6, v6

    #@6c
    .line 470
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    #@6f
    move-result v7

    #@70
    int-to-float v7, v7

    #@71
    .line 471
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    #@74
    move-result v8

    #@75
    int-to-float v8, v8

    #@76
    mul-float v9, v5, v8

    #@78
    mul-float v10, v6, v7

    #@7a
    cmpg-float v9, v9, v10

    #@7c
    if-gez v9, :cond_81

    #@7e
    div-float v9, v7, v5

    #@80
    goto :goto_83

    #@81
    :cond_81
    div-float v9, v8, v6

    #@83
    :goto_83
    mul-float/2addr v3, v9

    #@84
    .line 473
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@87
    mul-float/2addr v5, v3

    #@88
    sub-float v9, v7, v5

    #@8a
    mul-float/2addr v0, v9

    #@8b
    add-float/2addr v0, v7

    #@8c
    sub-float/2addr v0, v5

    #@8d
    const/high16 v5, 0x3f000000    # 0.5f

    #@8f
    mul-float/2addr v0, v5

    #@90
    mul-float/2addr v3, v6

    #@91
    sub-float v6, v8, v3

    #@93
    mul-float/2addr v2, v6

    #@94
    add-float/2addr v2, v8

    #@95
    sub-float/2addr v2, v3

    #@96
    mul-float/2addr v2, v5

    #@97
    .line 476
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@9a
    const/high16 v0, 0x40000000    # 2.0f

    #@9c
    div-float/2addr v7, v0

    #@9d
    div-float/2addr v8, v0

    #@9e
    .line 477
    invoke-virtual {v4, v1, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    #@a1
    .line 478
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImageMatrix(Landroid/graphics/Matrix;)V

    #@a4
    .line 479
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@a6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@a9
    return-void
.end method

.method private setOverlay(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlay"
        }
    .end annotation

    #@0
    .line 566
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    #@2
    return-void
.end method

.method private updateViewMatrix()V
    .registers 2

    #@0
    .line 443
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_26

    #@8
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@a
    .line 444
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_26

    #@10
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@12
    .line 445
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_26

    #@18
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@1a
    .line 446
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_26

    #@20
    .line 448
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@22
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@25
    return-void

    #@26
    .line 451
    :cond_26
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setMatrix()V

    #@29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 810
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    #@3
    return-void
.end method

.method public getBrightness()F
    .registers 2

    #@0
    .line 671
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    #@4
    return v0
.end method

.method public getContrast()F
    .registers 2

    #@0
    .line 606
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    #@4
    return v0
.end method

.method public getCrossfade()F
    .registers 2

    #@0
    .line 650
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@2
    return v0
.end method

.method public getImagePanX()F
    .registers 2

    #@0
    .line 323
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@2
    return v0
.end method

.method public getImagePanY()F
    .registers 2

    #@0
    .line 336
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@2
    return v0
.end method

.method public getImageRotate()F
    .registers 2

    #@0
    .line 354
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@2
    return v0
.end method

.method public getImageZoom()F
    .registers 2

    #@0
    .line 345
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@2
    return v0
.end method

.method public getRound()F
    .registers 2

    #@0
    .line 797
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@2
    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    #@0
    .line 788
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@2
    return v0
.end method

.method public getSaturation()F
    .registers 2

    #@0
    .line 587
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    #@4
    return v0
.end method

.method public getWarmth()F
    .registers 2

    #@0
    .line 625
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    #@4
    return v0
.end method

.method public layout(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    #@0
    .line 818
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->layout(IIII)V

    #@3
    .line 819
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setMatrix()V

    #@6
    return-void
.end method

.method public setAltImageResource(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    #@0
    .line 434
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    .line 435
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@10
    const/4 v1, 0x0

    #@11
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x1

    #@16
    .line 436
    aput-object p1, v0, v1

    #@18
    .line 437
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    #@1a
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@1f
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@21
    .line 438
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@24
    .line 439
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@26
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setCrossfade(F)V

    #@29
    return-void
.end method

.method public setBrightness(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    #@0
    .line 661
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    #@4
    .line 662
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@6
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    #@9
    return-void
.end method

.method public setContrast(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contrast"
        }
    .end annotation

    #@0
    .line 596
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    #@4
    .line 597
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@6
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    #@9
    return-void
.end method

.method public setCrossfade(F)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossfade"
        }
    .end annotation

    #@0
    .line 634
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@2
    .line 635
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz p1, :cond_30

    #@6
    .line 636
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    #@8
    const/high16 v0, 0x437f0000    # 255.0f

    #@a
    if-nez p1, :cond_1d

    #@c
    .line 637
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object p1

    #@13
    const/high16 v1, 0x3f800000    # 1.0f

    #@15
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@17
    sub-float/2addr v1, v2

    #@18
    mul-float/2addr v1, v0

    #@19
    float-to-int v1, v1

    #@1a
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1d
    .line 639
    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object p1

    #@24
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@26
    mul-float/2addr v1, v0

    #@27
    float-to-int v0, v1

    #@28
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@2b
    .line 640
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@2d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@30
    :cond_30
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    #@0
    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_28

    #@4
    if-eqz p1, :cond_28

    #@6
    .line 408
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@e
    const/4 v1, 0x0

    #@f
    aput-object p1, v0, v1

    #@11
    const/4 p1, 0x1

    #@12
    .line 410
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    aput-object v1, v0, p1

    #@16
    .line 411
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    #@18
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@1d
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@1f
    .line 412
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 413
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@24
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setCrossfade(F)V

    #@27
    goto :goto_2b

    #@28
    .line 415
    :cond_28
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2b
    :goto_2b
    return-void
.end method

.method public setImagePanX(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    #@0
    .line 367
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    #@2
    .line 368
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->updateViewMatrix()V

    #@5
    return-void
.end method

.method public setImagePanY(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    #@0
    .line 381
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    #@2
    .line 382
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->updateViewMatrix()V

    #@5
    return-void
.end method

.method public setImageResource(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    #@0
    .line 421
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_2e

    #@4
    .line 422
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p1

    #@10
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    .line 423
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@14
    const/4 v1, 0x0

    #@15
    aput-object p1, v0, v1

    #@17
    const/4 p1, 0x1

    #@18
    .line 424
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    aput-object v1, v0, p1

    #@1c
    .line 425
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    #@1e
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    #@20
    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@23
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    #@25
    .line 426
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@28
    .line 427
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    #@2a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setCrossfade(F)V

    #@2d
    goto :goto_31

    #@2e
    .line 429
    :cond_2e
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    #@31
    :goto_31
    return-void
.end method

.method public setImageRotate(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    #@0
    .line 401
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    #@2
    .line 402
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->updateViewMatrix()V

    #@5
    return-void
.end method

.method public setImageZoom(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoom"
        }
    .end annotation

    #@0
    .line 391
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    #@2
    .line 392
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->updateViewMatrix()V

    #@5
    return-void
.end method

.method public setRound(F)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    #@0
    .line 733
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 734
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@8
    .line 735
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@a
    const/high16 v0, -0x40800000    # -1.0f

    #@c
    .line 736
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@e
    .line 737
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    #@11
    return-void

    #@12
    .line 740
    :cond_12
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@14
    cmpl-float v0, v0, p1

    #@16
    const/4 v1, 0x1

    #@17
    const/4 v2, 0x0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    move v0, v1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v0, v2

    #@1d
    .line 741
    :goto_1d
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@1f
    const/4 v3, 0x0

    #@20
    cmpl-float p1, p1, v3

    #@22
    if-eqz p1, :cond_6b

    #@24
    .line 744
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@26
    if-nez p1, :cond_2f

    #@28
    .line 745
    new-instance p1, Landroid/graphics/Path;

    #@2a
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@2d
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@2f
    .line 747
    :cond_2f
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@31
    if-nez p1, :cond_3a

    #@33
    .line 748
    new-instance p1, Landroid/graphics/RectF;

    #@35
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@38
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@3a
    .line 751
    :cond_3a
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@3c
    if-nez p1, :cond_48

    #@3e
    .line 752
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;

    #@40
    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    #@43
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@45
    .line 760
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@48
    .line 762
    :cond_48
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    #@4b
    .line 764
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    #@4e
    move-result p1

    #@4f
    .line 765
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    #@52
    move-result v1

    #@53
    .line 766
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@55
    int-to-float p1, p1

    #@56
    int-to-float v1, v1

    #@57
    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    #@5a
    .line 767
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@5c
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    #@5f
    .line 768
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@61
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@63
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    #@65
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@67
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    #@6a
    goto :goto_6e

    #@6b
    .line 771
    :cond_6b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    #@6e
    :goto_6e
    if-eqz v0, :cond_73

    #@70
    .line 776
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    #@73
    :cond_73
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    #@0
    .line 682
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v0, :cond_a

    #@8
    move v0, v1

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v0, v2

    #@b
    .line 683
    :goto_b
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@d
    const/4 v3, 0x0

    #@e
    cmpl-float p1, p1, v3

    #@10
    if-eqz p1, :cond_62

    #@12
    .line 685
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@14
    if-nez p1, :cond_1d

    #@16
    .line 686
    new-instance p1, Landroid/graphics/Path;

    #@18
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@1b
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@1d
    .line 688
    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@1f
    if-nez p1, :cond_28

    #@21
    .line 689
    new-instance p1, Landroid/graphics/RectF;

    #@23
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@26
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@28
    .line 692
    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@2a
    if-nez p1, :cond_36

    #@2c
    .line 693
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;

    #@2e
    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    #@31
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@33
    .line 702
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@36
    .line 704
    :cond_36
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    #@39
    .line 707
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    #@3c
    move-result p1

    #@3d
    .line 708
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    #@40
    move-result v1

    #@41
    .line 709
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v2

    #@45
    int-to-float v2, v2

    #@46
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    #@48
    mul-float/2addr v2, v4

    #@49
    const/high16 v4, 0x40000000    # 2.0f

    #@4b
    div-float/2addr v2, v4

    #@4c
    .line 710
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@4e
    int-to-float p1, p1

    #@4f
    int-to-float v1, v1

    #@50
    invoke-virtual {v4, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    #@53
    .line 711
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@55
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    #@58
    .line 712
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    #@5a
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    #@5c
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@5e
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    #@61
    goto :goto_65

    #@62
    .line 715
    :cond_62
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    #@65
    :goto_65
    if-eqz v0, :cond_6a

    #@67
    .line 720
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    #@6a
    :cond_6a
    return-void
.end method

.method public setSaturation(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturation"
        }
    .end annotation

    #@0
    .line 577
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    #@4
    .line 578
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@6
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    #@9
    return-void
.end method

.method public setWarmth(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmth"
        }
    .end annotation

    #@0
    .line 615
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@2
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    #@4
    .line 616
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    #@6
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    #@9
    return-void
.end method
