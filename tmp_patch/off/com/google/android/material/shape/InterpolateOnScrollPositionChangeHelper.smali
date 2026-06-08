.class public Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"


# instance fields
.field private final containerLocation:[I

.field private containingScrollView:Landroid/widget/ScrollView;

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final scrollLocation:[I

.field private shapedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/widget/ScrollView;)V
    .registers 6

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v1, v0, [I

    #@6
    .line 31
    iput-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    #@8
    new-array v0, v0, [I

    #@a
    .line 32
    iput-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    #@c
    .line 33
    new-instance v0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;

    #@e
    invoke-direct {v0, p0}, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;-><init>(Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;)V

    #@11
    iput-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@13
    .line 53
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    #@15
    .line 54
    iput-object p2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@17
    .line 55
    iput-object p3, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    #@19
    return-void
.end method


# virtual methods
.method public setContainingScrollView(Landroid/widget/ScrollView;)V
    .registers 2

    #@0
    .line 73
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    #@2
    return-void
.end method

.method public setMaterialShapeDrawable(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 2

    #@0
    .line 64
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    return-void
.end method

.method public startListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .registers 3

    #@0
    .line 83
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@2
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@5
    return-void
.end method

.method public stopListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .registers 3

    #@0
    .line 93
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@2
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@5
    return-void
.end method

.method public updateInterpolationForScreenPosition()V
    .registers 6

    #@0
    .line 101
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 105
    :cond_5
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_88

    #@b
    .line 111
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    #@d
    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    #@12
    .line 112
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    #@1b
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    #@1e
    .line 113
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    #@20
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@23
    move-result v0

    #@24
    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    #@26
    const/4 v2, 0x1

    #@27
    aget v1, v1, v2

    #@29
    sub-int/2addr v0, v1

    #@2a
    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    #@2c
    aget v1, v1, v2

    #@2e
    add-int/2addr v0, v1

    #@2f
    .line 114
    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    #@31
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@34
    move-result v1

    #@35
    .line 115
    iget-object v2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    #@37
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    #@3a
    move-result v2

    #@3b
    const/4 v3, 0x0

    #@3c
    const/high16 v4, 0x3f800000    # 1.0f

    #@3e
    if-gez v0, :cond_57

    #@40
    .line 119
    iget-object v2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@42
    int-to-float v0, v0

    #@43
    int-to-float v1, v1

    #@44
    div-float/2addr v0, v1

    #@45
    add-float/2addr v0, v4

    #@46
    .line 120
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    #@49
    move-result v0

    #@4a
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    #@4d
    move-result v0

    #@4e
    .line 119
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@51
    .line 121
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    #@53
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@56
    goto :goto_87

    #@57
    :cond_57
    add-int/2addr v0, v1

    #@58
    if-le v0, v2, :cond_73

    #@5a
    sub-int/2addr v0, v2

    #@5b
    .line 124
    iget-object v2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@5d
    int-to-float v0, v0

    #@5e
    int-to-float v1, v1

    #@5f
    div-float/2addr v0, v1

    #@60
    sub-float v0, v4, v0

    #@62
    .line 125
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    #@65
    move-result v0

    #@66
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    #@69
    move-result v0

    #@6a
    .line 124
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@6d
    .line 126
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    #@6f
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@72
    goto :goto_87

    #@73
    .line 127
    :cond_73
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@75
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    #@78
    move-result v0

    #@79
    cmpl-float v0, v0, v4

    #@7b
    if-eqz v0, :cond_87

    #@7d
    .line 128
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7f
    invoke-virtual {v0, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@82
    .line 129
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    #@84
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@87
    :cond_87
    :goto_87
    return-void

    #@88
    .line 107
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8a
    const-string v1, "Scroll bar must contain a child to calculate interpolation."

    #@8c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v0
.end method
