.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .registers 2

    #@0
    .line 1750
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 11

    #@0
    .line 1754
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@2
    iput p2, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    #@4
    .line 1756
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@6
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@8
    const/4 v0, 0x0

    #@9
    if-eqz p1, :cond_14

    #@b
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@d
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@f
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@12
    move-result p1

    #@13
    goto :goto_15

    #@14
    :cond_14
    move p1, v0

    #@15
    .line 1758
    :goto_15
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@17
    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    #@1a
    move-result v1

    #@1b
    move v2, v0

    #@1c
    :goto_1c
    if-ge v2, v1, :cond_55

    #@1e
    .line 1759
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@20
    invoke-virtual {v3, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v3

    #@24
    .line 1760
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@2a
    .line 1761
    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    #@2d
    move-result-object v5

    #@2e
    .line 1763
    iget v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    #@30
    const/4 v7, 0x1

    #@31
    if-eq v6, v7, :cond_44

    #@33
    const/4 v3, 0x2

    #@34
    if-eq v6, v3, :cond_37

    #@36
    goto :goto_52

    #@37
    :cond_37
    neg-int v3, p2

    #@38
    int-to-float v3, v3

    #@39
    .line 1769
    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    #@3b
    mul-float/2addr v3, v4

    #@3c
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@3f
    move-result v3

    #@40
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    #@43
    goto :goto_52

    #@44
    :cond_44
    neg-int v4, p2

    #@45
    .line 1765
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@47
    .line 1766
    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    #@4a
    move-result v3

    #@4b
    invoke-static {v4, v0, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@4e
    move-result v3

    #@4f
    .line 1765
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    #@52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_1c

    #@55
    .line 1777
    :cond_55
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@57
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    #@5a
    .line 1779
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@5c
    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@5e
    if-eqz v0, :cond_67

    #@60
    if-lez p1, :cond_67

    #@62
    .line 1780
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@64
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@67
    .line 1784
    :cond_67
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@69
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    #@6c
    move-result v0

    #@6d
    .line 1785
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@6f
    .line 1786
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@72
    move-result v1

    #@73
    sub-int v1, v0, v1

    #@75
    sub-int/2addr v1, p1

    #@76
    .line 1787
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@78
    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    #@7b
    move-result p1

    #@7c
    sub-int/2addr v0, p1

    #@7d
    .line 1788
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@7f
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@81
    int-to-float v0, v0

    #@82
    int-to-float v2, v1

    #@83
    div-float/2addr v0, v2

    #@84
    const/high16 v3, 0x3f800000    # 1.0f

    #@86
    .line 1789
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    #@89
    move-result v0

    #@8a
    .line 1788
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeStartFraction(F)V

    #@8d
    .line 1790
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@8f
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@91
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@93
    iget v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    #@95
    add-int/2addr v0, v1

    #@96
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCurrentOffsetY(I)V

    #@99
    .line 1791
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    #@9b
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@9d
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@a0
    move-result p2

    #@a1
    int-to-float p2, p2

    #@a2
    div-float/2addr p2, v2

    #@a3
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    #@a6
    return-void
.end method
