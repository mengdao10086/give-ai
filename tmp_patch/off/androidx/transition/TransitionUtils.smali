.class Landroidx/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static final HAS_IS_ATTACHED_TO_WINDOW:Z

.field private static final HAS_OVERLAY:Z

.field private static final HAS_PICTURE_BITMAP:Z

.field private static final MAX_IMAGE_SIZE:I = 0x100000


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 35
    sput-boolean v0, Landroidx/transition/TransitionUtils;->HAS_IS_ATTACHED_TO_WINDOW:Z

    #@3
    .line 37
    sput-boolean v0, Landroidx/transition/TransitionUtils;->HAS_OVERLAY:Z

    #@5
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v2, 0x1c

    #@9
    if-lt v1, v2, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    sput-boolean v0, Landroidx/transition/TransitionUtils;->HAS_PICTURE_BITMAP:Z

    #@f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 10

    #@0
    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@5
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    #@8
    move-result v1

    #@9
    neg-int v1, v1

    #@a
    int-to-float v1, v1

    #@b
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    #@e
    move-result p2

    #@f
    neg-int p2, p2

    #@10
    int-to-float p2, p2

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@14
    .line 53
    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@17
    .line 54
    invoke-static {p0, v0}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@1a
    .line 55
    new-instance p2, Landroid/graphics/RectF;

    #@1c
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@1f
    move-result v1

    #@20
    int-to-float v1, v1

    #@21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@24
    move-result v2

    #@25
    int-to-float v2, v2

    #@26
    const/4 v3, 0x0

    #@27
    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2a
    .line 56
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@2d
    .line 57
    iget v1, p2, Landroid/graphics/RectF;->left:F

    #@2f
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@32
    move-result v1

    #@33
    .line 58
    iget v2, p2, Landroid/graphics/RectF;->top:F

    #@35
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@38
    move-result v2

    #@39
    .line 59
    iget v3, p2, Landroid/graphics/RectF;->right:F

    #@3b
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result v3

    #@3f
    .line 60
    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    #@41
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@44
    move-result v4

    #@45
    .line 62
    new-instance v5, Landroid/widget/ImageView;

    #@47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4a
    move-result-object v6

    #@4b
    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@4e
    .line 63
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@50
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@53
    .line 64
    invoke-static {p1, v0, p2, p0}, Landroidx/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    #@56
    move-result-object p0

    #@57
    if-eqz p0, :cond_5c

    #@59
    .line 66
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@5c
    :cond_5c
    sub-int p0, v3, v1

    #@5e
    const/high16 p1, 0x40000000    # 2.0f

    #@60
    .line 68
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@63
    move-result p0

    #@64
    sub-int p2, v4, v2

    #@66
    .line 69
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@69
    move-result p1

    #@6a
    .line 70
    invoke-virtual {v5, p0, p1}, Landroid/widget/ImageView;->measure(II)V

    #@6d
    .line 71
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    #@70
    return-object v5
.end method

.method private static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .registers 12

    #@0
    .line 93
    sget-boolean v0, Landroidx/transition/TransitionUtils;->HAS_IS_ATTACHED_TO_WINDOW:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_14

    #@5
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    #@8
    move-result v0

    #@9
    xor-int/lit8 v0, v0, 0x1

    #@b
    if-nez p3, :cond_f

    #@d
    move v2, v1

    #@e
    goto :goto_16

    #@f
    .line 95
    :cond_f
    invoke-virtual {p3}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    #@12
    move-result v2

    #@13
    goto :goto_16

    #@14
    :cond_14
    move v0, v1

    #@15
    move v2, v0

    #@16
    .line 102
    :goto_16
    sget-boolean v3, Landroidx/transition/TransitionUtils;->HAS_OVERLAY:Z

    #@18
    const/4 v4, 0x0

    #@19
    if-eqz v3, :cond_32

    #@1b
    if-eqz v0, :cond_32

    #@1d
    if-nez v2, :cond_20

    #@1f
    return-object v4

    #@20
    .line 106
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/view/ViewGroup;

    #@26
    .line 107
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@29
    move-result v2

    #@2a
    .line 108
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@31
    goto :goto_34

    #@32
    :cond_32
    move v2, v1

    #@33
    move-object v1, v4

    #@34
    .line 111
    :goto_34
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    #@37
    move-result v5

    #@38
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@3b
    move-result v5

    #@3c
    .line 112
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@3f
    move-result v6

    #@40
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    #@43
    move-result v6

    #@44
    if-lez v5, :cond_98

    #@46
    if-lez v6, :cond_98

    #@48
    mul-int v4, v5, v6

    #@4a
    int-to-float v4, v4

    #@4b
    const/high16 v7, 0x49800000    # 1048576.0f

    #@4d
    div-float/2addr v7, v4

    #@4e
    const/high16 v4, 0x3f800000    # 1.0f

    #@50
    .line 114
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    #@53
    move-result v4

    #@54
    int-to-float v5, v5

    #@55
    mul-float/2addr v5, v4

    #@56
    .line 115
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@59
    move-result v5

    #@5a
    int-to-float v6, v6

    #@5b
    mul-float/2addr v6, v4

    #@5c
    .line 116
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    #@5f
    move-result v6

    #@60
    .line 117
    iget v7, p2, Landroid/graphics/RectF;->left:F

    #@62
    neg-float v7, v7

    #@63
    iget p2, p2, Landroid/graphics/RectF;->top:F

    #@65
    neg-float p2, p2

    #@66
    invoke-virtual {p1, v7, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@69
    .line 118
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@6c
    .line 120
    sget-boolean p2, Landroidx/transition/TransitionUtils;->HAS_PICTURE_BITMAP:Z

    #@6e
    if-eqz p2, :cond_87

    #@70
    .line 122
    new-instance p2, Landroid/graphics/Picture;

    #@72
    invoke-direct {p2}, Landroid/graphics/Picture;-><init>()V

    #@75
    .line 123
    invoke-virtual {p2, v5, v6}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    #@78
    move-result-object v4

    #@79
    .line 124
    invoke-virtual {v4, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@7c
    .line 125
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@7f
    .line 126
    invoke-virtual {p2}, Landroid/graphics/Picture;->endRecording()V

    #@82
    .line 127
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    #@85
    move-result-object v4

    #@86
    goto :goto_98

    #@87
    .line 130
    :cond_87
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@89
    invoke-static {v5, v6, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@8c
    move-result-object v4

    #@8d
    .line 131
    new-instance p2, Landroid/graphics/Canvas;

    #@8f
    invoke-direct {p2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@92
    .line 132
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@95
    .line 133
    invoke-virtual {p0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@98
    :cond_98
    :goto_98
    if-eqz v3, :cond_a6

    #@9a
    if-eqz v0, :cond_a6

    #@9c
    .line 137
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@9f
    move-result-object p1

    #@a0
    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@a3
    .line 138
    invoke-virtual {v1, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@a6
    :cond_a6
    return-object v4
.end method

.method static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-object p1

    #@3
    :cond_3
    if-nez p1, :cond_6

    #@5
    return-object p0

    #@6
    .line 149
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    #@8
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@b
    const/4 v1, 0x2

    #@c
    new-array v1, v1, [Landroid/animation/Animator;

    #@e
    const/4 v2, 0x0

    #@f
    aput-object p0, v1, v2

    #@11
    const/4 p0, 0x1

    #@12
    aput-object p1, v1, p0

    #@14
    .line 150
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@17
    return-object v0
.end method
