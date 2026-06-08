.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Impl;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .registers 5

    #@0
    .line 589
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>(ILandroid/view/animation/Interpolator;J)V

    #@3
    return-void
.end method

.method static buildAnimationMask(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    :goto_2
    const/16 v2, 0x100

    #@4
    if-gt v1, v2, :cond_18

    #@6
    .line 651
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_15

    #@14
    or-int/2addr v0, v1

    #@15
    :cond_15
    shl-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_2

    #@18
    :cond_18
    return v0
.end method

.method static computeAnimationBounds(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .registers 7

    #@0
    .line 628
    invoke-virtual {p0, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@3
    move-result-object p0

    #@4
    .line 629
    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@7
    move-result-object p1

    #@8
    .line 630
    iget p2, p0, Landroidx/core/graphics/Insets;->left:I

    #@a
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    #@c
    .line 631
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p2

    #@10
    iget v0, p0, Landroidx/core/graphics/Insets;->top:I

    #@12
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    #@14
    .line 632
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v0

    #@18
    iget v1, p0, Landroidx/core/graphics/Insets;->right:I

    #@1a
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    #@1c
    .line 633
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v1

    #@20
    iget v2, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@22
    iget v3, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@24
    .line 634
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v2

    #@28
    .line 630
    invoke-static {p2, v0, v1, v2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@2b
    move-result-object p2

    #@2c
    .line 636
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2e
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    #@30
    .line 637
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v0

    #@34
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@36
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    #@38
    .line 638
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v1

    #@3c
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@3e
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    #@40
    .line 639
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@43
    move-result v2

    #@44
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@46
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@48
    .line 640
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    #@4b
    move-result p0

    #@4c
    .line 636
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@4f
    move-result-object p0

    #@50
    .line 642
    new-instance p1, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    #@52
    invoke-direct {p1, p2, p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    #@55
    return-object p1
.end method

.method private static createProxyListener(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)Landroid/view/View$OnApplyWindowInsetsListener;
    .registers 3

    #@0
    .line 621
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;-><init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    #@5
    return-object v0
.end method

.method static dispatchOnEnd(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .registers 4

    #@0
    .line 888
    invoke-static {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 890
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    #@9
    .line 891
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_10

    #@f
    return-void

    #@10
    .line 895
    :cond_10
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@12
    if-eqz v0, :cond_27

    #@14
    .line 896
    check-cast p0, Landroid/view/ViewGroup;

    #@16
    const/4 v0, 0x0

    #@17
    .line 897
    :goto_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1a
    move-result v1

    #@1b
    if-ge v0, v1, :cond_27

    #@1d
    .line 898
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    .line 899
    invoke-static {v1, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnEnd(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_17

    #@27
    :cond_27
    return-void
.end method

.method static dispatchOnPrepare(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroid/view/WindowInsets;Z)V
    .registers 6

    #@0
    .line 827
    invoke-static {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_17

    #@7
    .line 829
    iput-object p2, v0, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->mDispachedInsets:Landroid/view/WindowInsets;

    #@9
    if-nez p3, :cond_17

    #@b
    .line 831
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    #@e
    .line 832
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    #@11
    move-result p3

    #@12
    if-nez p3, :cond_16

    #@14
    const/4 p3, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    move p3, v1

    #@17
    .line 838
    :cond_17
    :goto_17
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@19
    if-eqz v0, :cond_2d

    #@1b
    .line 839
    check-cast p0, Landroid/view/ViewGroup;

    #@1d
    .line 840
    :goto_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@20
    move-result v0

    #@21
    if-ge v1, v0, :cond_2d

    #@23
    .line 841
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    .line 842
    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnPrepare(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroid/view/WindowInsets;Z)V

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_1d

    #@2d
    :cond_2d
    return-void
.end method

.method static dispatchOnProgress(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 869
    invoke-static {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 872
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;

    #@9
    move-result-object p1

    #@a
    .line 873
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    return-void

    #@11
    .line 877
    :cond_11
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@13
    if-eqz v0, :cond_28

    #@15
    .line 878
    check-cast p0, Landroid/view/ViewGroup;

    #@17
    const/4 v0, 0x0

    #@18
    .line 879
    :goto_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1b
    move-result v1

    #@1c
    if-ge v0, v1, :cond_28

    #@1e
    .line 880
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v1

    #@22
    .line 881
    invoke-static {v1, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnProgress(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_18

    #@28
    :cond_28
    return-void
.end method

.method static dispatchOnStart(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)V
    .registers 5

    #@0
    .line 850
    invoke-static {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 852
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    #@9
    .line 853
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_10

    #@f
    return-void

    #@10
    .line 857
    :cond_10
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@12
    if-eqz v0, :cond_27

    #@14
    .line 858
    check-cast p0, Landroid/view/ViewGroup;

    #@16
    const/4 v0, 0x0

    #@17
    .line 859
    :goto_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1a
    move-result v1

    #@1b
    if-ge v0, v1, :cond_27

    #@1d
    .line 860
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    .line 861
    invoke-static {v1, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnStart(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)V

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_17

    #@27
    :cond_27
    return-void
.end method

.method static forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    #@0
    .line 819
    sget v0, Landroidx/core/R$id;->tag_on_apply_window_listener:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object p1

    #@9
    .line 822
    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method static getCallback(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
    .registers 2

    #@0
    .line 906
    sget v0, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    .line 909
    instance-of v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 910
    check-cast p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    #@c
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mCallback:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    :goto_10
    return-object p0
.end method

.method static interpolateInsets(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;FI)Landroidx/core/view/WindowInsetsCompat;
    .registers 16

    #@0
    .line 662
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@5
    const/4 v1, 0x1

    #@6
    :goto_6
    const/16 v2, 0x100

    #@8
    if-gt v1, v2, :cond_55

    #@a
    and-int v2, p3, v1

    #@c
    if-nez v2, :cond_16

    #@e
    .line 666
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@15
    goto :goto_52

    #@16
    .line 669
    :cond_16
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@19
    move-result-object v2

    #@1a
    .line 670
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@1d
    move-result-object v3

    #@1e
    .line 671
    iget v4, v2, Landroidx/core/graphics/Insets;->left:I

    #@20
    iget v5, v3, Landroidx/core/graphics/Insets;->left:I

    #@22
    sub-int/2addr v4, v5

    #@23
    int-to-float v4, v4

    #@24
    const/high16 v5, 0x3f800000    # 1.0f

    #@26
    sub-float/2addr v5, p2

    #@27
    mul-float/2addr v4, v5

    #@28
    float-to-double v6, v4

    #@29
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    #@2b
    add-double/2addr v6, v8

    #@2c
    double-to-int v4, v6

    #@2d
    iget v6, v2, Landroidx/core/graphics/Insets;->top:I

    #@2f
    iget v7, v3, Landroidx/core/graphics/Insets;->top:I

    #@31
    sub-int/2addr v6, v7

    #@32
    int-to-float v6, v6

    #@33
    mul-float/2addr v6, v5

    #@34
    float-to-double v6, v6

    #@35
    add-double/2addr v6, v8

    #@36
    double-to-int v6, v6

    #@37
    iget v7, v2, Landroidx/core/graphics/Insets;->right:I

    #@39
    iget v10, v3, Landroidx/core/graphics/Insets;->right:I

    #@3b
    sub-int/2addr v7, v10

    #@3c
    int-to-float v7, v7

    #@3d
    mul-float/2addr v7, v5

    #@3e
    float-to-double v10, v7

    #@3f
    add-double/2addr v10, v8

    #@40
    double-to-int v7, v10

    #@41
    iget v10, v2, Landroidx/core/graphics/Insets;->bottom:I

    #@43
    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    #@45
    sub-int/2addr v10, v3

    #@46
    int-to-float v3, v10

    #@47
    mul-float/2addr v3, v5

    #@48
    float-to-double v10, v3

    #@49
    add-double/2addr v10, v8

    #@4a
    double-to-int v3, v10

    #@4b
    invoke-static {v2, v4, v6, v7, v3}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    #@4e
    move-result-object v2

    #@4f
    .line 679
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@52
    :goto_52
    shl-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_6

    #@55
    .line 682
    :cond_55
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    #@58
    move-result-object p0

    #@59
    return-object p0
.end method

.method static setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .registers 4

    #@0
    .line 595
    sget v0, Landroidx/core/R$id;->tag_on_apply_window_listener:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez p1, :cond_14

    #@8
    .line 597
    sget p1, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@e
    if-nez v0, :cond_22

    #@10
    .line 601
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@13
    goto :goto_22

    #@14
    .line 605
    :cond_14
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->createProxyListener(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)Landroid/view/View$OnApplyWindowInsetsListener;

    #@17
    move-result-object p1

    #@18
    .line 606
    sget v1, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    #@1a
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@1d
    if-nez v0, :cond_22

    #@1f
    .line 613
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@22
    :cond_22
    :goto_22
    return-void
.end method
