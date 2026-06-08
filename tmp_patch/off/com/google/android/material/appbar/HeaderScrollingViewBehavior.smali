.class abstract Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field final tempRect1:Landroid/graphics/Rect;

.field final tempRect2:Landroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 47
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    #@3
    .line 41
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    #@a
    .line 42
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    #@11
    const/4 v0, 0x0

    #@12
    .line 44
    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    #@14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 41
    new-instance p1, Landroid/graphics/Rect;

    #@5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    #@a
    .line 42
    new-instance p1, Landroid/graphics/Rect;

    #@c
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    #@11
    const/4 p1, 0x0

    #@12
    .line 44
    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    #@14
    return-void
.end method

.method private static resolveGravity(I)I
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const p0, 0x800033

    #@5
    :cond_5
    return p0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .registers 5

    #@0
    .line 167
    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_13

    #@6
    .line 169
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    #@9
    move-result p1

    #@a
    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    #@c
    int-to-float v2, v0

    #@d
    mul-float/2addr p1, v2

    #@e
    float-to-int p1, p1

    #@f
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@12
    move-result v1

    #@13
    :goto_13
    return v1
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 2

    #@0
    const/high16 p1, 0x3f800000    # 1.0f

    #@2
    return p1
.end method

.method public final getOverlayTop()I
    .registers 2

    #@0
    .line 205
    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    #@2
    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .registers 2

    #@0
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method final getVerticalLayoutGap()I
    .registers 2

    #@0
    .line 187
    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    #@2
    return v0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .registers 12

    #@0
    .line 114
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_94

    #@a
    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@10
    .line 120
    iget-object v5, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    #@12
    .line 122
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@15
    move-result v2

    #@16
    iget v3, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@18
    add-int/2addr v2, v3

    #@19
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@1c
    move-result v3

    #@1d
    iget v4, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    #@1f
    add-int/2addr v3, v4

    #@20
    .line 124
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@23
    move-result v4

    #@24
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@27
    move-result v6

    #@28
    sub-int/2addr v4, v6

    #@29
    iget v6, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@2b
    sub-int/2addr v4, v6

    #@2c
    .line 125
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@2f
    move-result v6

    #@30
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@33
    move-result v7

    #@34
    add-int/2addr v6, v7

    #@35
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@38
    move-result v7

    #@39
    sub-int/2addr v6, v7

    #@3a
    iget v7, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@3c
    sub-int/2addr v6, v7

    #@3d
    .line 121
    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    #@40
    .line 127
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    #@43
    move-result-object v2

    #@44
    if-eqz v2, :cond_64

    #@46
    .line 129
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@49
    move-result p1

    #@4a
    if-eqz p1, :cond_64

    #@4c
    .line 130
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@4f
    move-result p1

    #@50
    if-nez p1, :cond_64

    #@52
    .line 134
    iget p1, v5, Landroid/graphics/Rect;->left:I

    #@54
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@57
    move-result v3

    #@58
    add-int/2addr p1, v3

    #@59
    iput p1, v5, Landroid/graphics/Rect;->left:I

    #@5b
    .line 135
    iget p1, v5, Landroid/graphics/Rect;->right:I

    #@5d
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@60
    move-result v2

    #@61
    sub-int/2addr p1, v2

    #@62
    iput p1, v5, Landroid/graphics/Rect;->right:I

    #@64
    .line 138
    :cond_64
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    #@66
    .line 139
    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    #@68
    .line 140
    invoke-static {v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    #@6b
    move-result v2

    #@6c
    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    #@6f
    move-result v3

    #@70
    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    #@73
    move-result v4

    #@74
    move-object v6, p1

    #@75
    move v7, p3

    #@76
    .line 139
    invoke-static/range {v2 .. v7}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@79
    .line 147
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    #@7c
    move-result p3

    #@7d
    .line 149
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@7f
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@81
    sub-int/2addr v2, p3

    #@82
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@84
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@86
    sub-int/2addr v4, p3

    #@87
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@8a
    .line 150
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@8c
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@8f
    move-result p2

    #@90
    sub-int/2addr p1, p2

    #@91
    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    #@93
    goto :goto_9a

    #@94
    .line 153
    :cond_94
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    #@97
    const/4 p1, 0x0

    #@98
    .line 154
    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    #@9a
    :goto_9a
    return-void
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 14

    #@0
    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_c

    #@9
    const/4 v2, -0x2

    #@a
    if-ne v0, v2, :cond_66

    #@c
    .line 67
    :cond_c
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    #@f
    move-result-object v2

    #@10
    .line 68
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    #@13
    move-result-object v2

    #@14
    if-eqz v2, :cond_66

    #@16
    .line 70
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@19
    move-result p5

    #@1a
    if-lez p5, :cond_33

    #@1c
    .line 72
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_37

    #@22
    .line 73
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    #@25
    move-result-object v3

    #@26
    if-eqz v3, :cond_37

    #@28
    .line 75
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@2b
    move-result v4

    #@2c
    .line 76
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@2f
    move-result v3

    #@30
    add-int/2addr v4, v3

    #@31
    add-int/2addr p5, v4

    #@32
    goto :goto_37

    #@33
    .line 81
    :cond_33
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@36
    move-result p5

    #@37
    .line 84
    :cond_37
    :goto_37
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    #@3a
    move-result v3

    #@3b
    add-int/2addr p5, v3

    #@3c
    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@3f
    move-result v2

    #@40
    .line 86
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->shouldHeaderOverlapScrollingChild()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_4c

    #@46
    neg-int v2, v2

    #@47
    int-to-float v2, v2

    #@48
    .line 87
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    #@4b
    goto :goto_51

    #@4c
    :cond_4c
    const/4 v3, 0x0

    #@4d
    .line 89
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    #@50
    sub-int/2addr p5, v2

    #@51
    :goto_51
    if-ne v0, v1, :cond_56

    #@53
    const/high16 v0, 0x40000000    # 2.0f

    #@55
    goto :goto_58

    #@56
    :cond_56
    const/high16 v0, -0x80000000

    #@58
    .line 93
    :goto_58
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5b
    move-result v5

    #@5c
    move-object v1, p1

    #@5d
    move-object v2, p2

    #@5e
    move v3, p3

    #@5f
    move v4, p4

    #@60
    move v6, p6

    #@61
    .line 100
    invoke-virtual/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    #@64
    const/4 p1, 0x1

    #@65
    return p1

    #@66
    :cond_66
    const/4 p1, 0x0

    #@67
    return p1
.end method

.method public final setOverlayTop(I)V
    .registers 2

    #@0
    .line 197
    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    #@2
    return-void
.end method

.method protected shouldHeaderOverlapScrollingChild()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
