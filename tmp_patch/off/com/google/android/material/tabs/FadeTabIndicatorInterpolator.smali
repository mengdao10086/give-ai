.class Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;
.super Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.source "FadeTabIndicatorInterpolator.java"


# static fields
.field private static final FADE_THRESHOLD:F = 0.5f


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .registers 8

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    cmpg-float v1, p4, v0

    #@4
    if-gez v1, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    move-object p2, p3

    #@8
    .line 44
    :goto_8
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    #@b
    move-result-object p1

    #@c
    const/high16 p2, 0x3f800000    # 1.0f

    #@e
    const/4 p3, 0x0

    #@f
    if-gez v1, :cond_16

    #@11
    .line 46
    invoke-static {p2, p3, p3, v0, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    #@14
    move-result p2

    #@15
    goto :goto_1a

    #@16
    .line 47
    :cond_16
    invoke-static {p3, p2, v0, p2, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    #@19
    move-result p2

    #@1a
    .line 49
    :goto_1a
    iget p3, p1, Landroid/graphics/RectF;->left:F

    #@1c
    float-to-int p3, p3

    #@1d
    .line 51
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@20
    move-result-object p4

    #@21
    iget p4, p4, Landroid/graphics/Rect;->top:I

    #@23
    iget p1, p1, Landroid/graphics/RectF;->right:F

    #@25
    float-to-int p1, p1

    #@26
    .line 53
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@29
    move-result-object v0

    #@2a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2c
    .line 49
    invoke-virtual {p5, p3, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2f
    const/high16 p1, 0x437f0000    # 255.0f

    #@31
    mul-float/2addr p2, p1

    #@32
    float-to-int p1, p2

    #@33
    .line 55
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@36
    return-void
.end method
