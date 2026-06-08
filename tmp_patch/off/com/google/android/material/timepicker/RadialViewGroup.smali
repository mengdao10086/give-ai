.class Lcom/google/android/material/timepicker/RadialViewGroup;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RadialViewGroup.java"


# static fields
.field static final LEVEL_1:I = 0x1

.field static final LEVEL_2:I = 0x2

.field static final LEVEL_RADIUS_RATIO:F = 0.66f

.field private static final SKIP_TAG:Ljava/lang/String; = "skip"


# instance fields
.field private background:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private radius:I

.field private final updateLayoutParametersRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@6
    move-result-object v0

    #@7
    sget v1, Lcom/google/android/material/R$layout;->material_radial_view_group:I

    #@9
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@c
    .line 83
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->createBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 85
    sget-object v0, Lcom/google/android/material/R$styleable;->RadialViewGroup:[I

    #@15
    const/4 v1, 0x0

    #@16
    .line 86
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@19
    move-result-object p1

    #@1a
    .line 87
    sget p2, Lcom/google/android/material/R$styleable;->RadialViewGroup_materialCircleRadius:I

    #@1c
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1f
    move-result p2

    #@20
    iput p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    #@22
    .line 88
    new-instance p2, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    #@24
    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V

    #@27
    iput-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    #@29
    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    return-void
.end method

.method private addConstraints(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "I)V"
        }
    .end annotation

    #@0
    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_24

    #@b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/View;

    #@11
    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@14
    move-result v2

    #@15
    sget v3, Lcom/google/android/material/R$id;->circle_center:I

    #@17
    invoke-virtual {p2, v2, v3, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainCircle(IIIF)V

    #@1a
    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1d
    move-result v2

    #@1e
    int-to-float v2, v2

    #@1f
    const/high16 v3, 0x43b40000    # 360.0f

    #@21
    div-float/2addr v3, v2

    #@22
    add-float/2addr v1, v3

    #@23
    goto :goto_5

    #@24
    :cond_24
    return-void
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 93
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@5
    iput-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    .line 94
    new-instance v1, Lcom/google/android/material/shape/RelativeCornerSize;

    #@9
    const/high16 v2, 0x3f000000    # 0.5f

    #@b
    invoke-direct {v1, v2}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(Lcom/google/android/material/shape/CornerSize;)V

    #@11
    .line 95
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@13
    const/4 v1, -0x1

    #@14
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@1b
    .line 96
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1d
    return-object v0
.end method

.method private static shouldSkipView(Landroid/view/View;)Z
    .registers 2

    #@0
    const-string v0, "skip"

    #@2
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result p0

    #@a
    return p0
.end method

.method private updateLayoutParamsAsync()V
    .registers 3

    #@0
    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 125
    iget-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 126
    iget-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    :cond_10
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@6
    move-result p2

    #@7
    const/4 p3, -0x1

    #@8
    if-ne p2, p3, :cond_11

    #@a
    .line 109
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    #@d
    move-result p2

    #@e
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    #@11
    .line 111
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParamsAsync()V

    #@14
    return-void
.end method

.method getLeveledRadius(I)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_f

    #@3
    .line 184
    iget p1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    #@5
    int-to-float p1, p1

    #@6
    const v0, 0x3f28f5c3    # 0.66f

    #@9
    mul-float/2addr p1, v0

    #@a
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@d
    move-result p1

    #@e
    goto :goto_11

    #@f
    :cond_f
    iget p1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    #@11
    :goto_11
    return p1
.end method

.method public getRadius()I
    .registers 2

    #@0
    .line 179
    iget v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    #@2
    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    #@0
    .line 132
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    #@3
    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    #@6
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 2

    #@0
    .line 116
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 118
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParamsAsync()V

    #@6
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    .line 102
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method public setRadius(I)V
    .registers 2

    #@0
    .line 173
    iput p1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    #@2
    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    #@5
    return-void
.end method

.method protected updateLayoutParams()V
    .registers 7

    #@0
    .line 137
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@5
    .line 138
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@8
    .line 139
    new-instance v1, Ljava/util/HashMap;

    #@a
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@d
    const/4 v2, 0x0

    #@e
    .line 140
    :goto_e
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildCount()I

    #@11
    move-result v3

    #@12
    if-ge v2, v3, :cond_50

    #@14
    .line 141
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v3

    #@18
    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@1b
    move-result v4

    #@1c
    sget v5, Lcom/google/android/material/R$id;->circle_center:I

    #@1e
    if-eq v4, v5, :cond_4d

    #@20
    invoke-static {v3}, Lcom/google/android/material/timepicker/RadialViewGroup;->shouldSkipView(Landroid/view/View;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_27

    #@26
    goto :goto_4d

    #@27
    .line 146
    :cond_27
    sget v4, Lcom/google/android/material/R$id;->material_clock_level:I

    #@29
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Ljava/lang/Integer;

    #@2f
    if-nez v4, :cond_36

    #@31
    const/4 v4, 0x1

    #@32
    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v4

    #@36
    .line 150
    :cond_36
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@39
    move-result v5

    #@3a
    if-nez v5, :cond_44

    #@3c
    .line 151
    new-instance v5, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@41
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 153
    :cond_44
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Ljava/util/List;

    #@4a
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4d
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_e

    #@50
    .line 156
    :cond_50
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@53
    move-result-object v1

    #@54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v1

    #@58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_7c

    #@5e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Ljava/util/Map$Entry;

    #@64
    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    check-cast v3, Ljava/util/List;

    #@6a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Ljava/lang/Integer;

    #@70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@73
    move-result v2

    #@74
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/RadialViewGroup;->getLeveledRadius(I)I

    #@77
    move-result v2

    #@78
    invoke-direct {p0, v3, v0, v2}, Lcom/google/android/material/timepicker/RadialViewGroup;->addConstraints(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    #@7b
    goto :goto_58

    #@7c
    .line 160
    :cond_7c
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@7f
    return-void
.end method
