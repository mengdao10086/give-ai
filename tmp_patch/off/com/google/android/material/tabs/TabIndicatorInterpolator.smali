.class Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.super Ljava/lang/Object;
.source "TabIndicatorInterpolator.java"


# static fields
.field private static final MIN_INDICATOR_WIDTH:I = 0x18


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .registers 5

    #@0
    if-nez p1, :cond_8

    #@2
    .line 105
    new-instance p0, Landroid/graphics/RectF;

    #@4
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    #@7
    return-object p0

    #@8
    .line 109
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->isTabIndicatorFullWidth()Z

    #@b
    move-result p0

    #@c
    if-nez p0, :cond_1b

    #@e
    instance-of p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@10
    if-eqz p0, :cond_1b

    #@12
    .line 110
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@14
    const/16 p0, 0x18

    #@16
    invoke-static {p1, p0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;I)Landroid/graphics/RectF;

    #@19
    move-result-object p0

    #@1a
    return-object p0

    #@1b
    .line 114
    :cond_1b
    new-instance p0, Landroid/graphics/RectF;

    #@1d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@20
    move-result v0

    #@21
    int-to-float v0, v0

    #@22
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@25
    move-result v1

    #@26
    int-to-float v1, v1

    #@27
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@2a
    move-result v2

    #@2b
    int-to-float v2, v2

    #@2c
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@2f
    move-result p1

    #@30
    int-to-float p1, p1

    #@31
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@34
    return-object p0
.end method

.method static calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;I)Landroid/graphics/RectF;
    .registers 5

    #@0
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentWidth()I

    #@3
    move-result v0

    #@4
    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentHeight()I

    #@7
    move-result v1

    #@8
    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2, p1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@f
    move-result p1

    #@10
    float-to-int p1, p1

    #@11
    if-ge v0, p1, :cond_14

    #@13
    move v0, p1

    #@14
    .line 80
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    #@17
    move-result p1

    #@18
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    #@1b
    move-result v2

    #@1c
    add-int/2addr p1, v2

    #@1d
    div-int/lit8 p1, p1, 0x2

    #@1f
    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTop()I

    #@22
    move-result v2

    #@23
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getBottom()I

    #@26
    move-result p0

    #@27
    add-int/2addr v2, p0

    #@28
    div-int/lit8 v2, v2, 0x2

    #@2a
    .line 82
    div-int/lit8 v0, v0, 0x2

    #@2c
    sub-int p0, p1, v0

    #@2e
    .line 83
    div-int/lit8 v1, v1, 0x2

    #@30
    sub-int v1, v2, v1

    #@32
    add-int/2addr v0, p1

    #@33
    .line 85
    div-int/lit8 p1, p1, 0x2

    #@35
    add-int/2addr v2, p1

    #@36
    .line 87
    new-instance p1, Landroid/graphics/RectF;

    #@38
    int-to-float p0, p0

    #@39
    int-to-float v1, v1

    #@3a
    int-to-float v0, v0

    #@3b
    int-to-float v2, v2

    #@3c
    invoke-direct {p1, p0, v1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@3f
    return-object p1
.end method


# virtual methods
.method setIndicatorBoundsForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 129
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    #@3
    move-result-object p1

    #@4
    .line 130
    iget p2, p1, Landroid/graphics/RectF;->left:F

    #@6
    float-to-int p2, p2

    #@7
    .line 132
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@a
    move-result-object v0

    #@b
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@d
    iget p1, p1, Landroid/graphics/RectF;->right:F

    #@f
    float-to-int p1, p1

    #@10
    .line 134
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@13
    move-result-object v1

    #@14
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@16
    .line 130
    invoke-virtual {p3, p2, v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@19
    return-void
.end method

.method updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .registers 7

    #@0
    .line 161
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    #@3
    move-result-object p2

    #@4
    .line 164
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    #@7
    move-result-object p1

    #@8
    .line 165
    iget p3, p2, Landroid/graphics/RectF;->left:F

    #@a
    float-to-int p3, p3

    #@b
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@d
    float-to-int v0, v0

    #@e
    .line 166
    invoke-static {p3, v0, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    #@11
    move-result p3

    #@12
    .line 167
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@15
    move-result-object v0

    #@16
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@18
    iget p2, p2, Landroid/graphics/RectF;->right:F

    #@1a
    float-to-int p2, p2

    #@1b
    iget p1, p1, Landroid/graphics/RectF;->right:F

    #@1d
    float-to-int p1, p1

    #@1e
    .line 168
    invoke-static {p2, p1, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    #@21
    move-result p1

    #@22
    .line 169
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@25
    move-result-object p2

    #@26
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 165
    invoke-virtual {p5, p3, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2b
    return-void
.end method
