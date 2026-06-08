.class public abstract Landroidx/fragment/app/FragmentTransitionImpl;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .line 272
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 273
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_b

    #@a
    return-void

    #@b
    .line 276
    :cond_b
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_14

    #@11
    .line 277
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    :cond_14
    move p1, v0

    #@15
    .line 279
    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@18
    move-result v1

    #@19
    if-ge p1, v1, :cond_47

    #@1b
    .line 280
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/view/View;

    #@21
    .line 281
    instance-of v2, v1, Landroid/view/ViewGroup;

    #@23
    if-eqz v2, :cond_44

    #@25
    .line 282
    check-cast v1, Landroid/view/ViewGroup;

    #@27
    .line 283
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@2a
    move-result v2

    #@2b
    const/4 v3, 0x0

    #@2c
    :goto_2c
    if-ge v3, v2, :cond_44

    #@2e
    .line 285
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@31
    move-result-object v4

    #@32
    .line 286
    invoke-static {p0, v4, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@35
    move-result v5

    #@36
    if-nez v5, :cond_41

    #@38
    .line 287
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    if-eqz v5, :cond_41

    #@3e
    .line 288
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    :cond_41
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_2c

    #@44
    :cond_44
    add-int/lit8 p1, p1, 0x1

    #@46
    goto :goto_15

    #@47
    :cond_47
    return-void
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    if-ge v1, p2, :cond_f

    #@4
    .line 301
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    if-ne v2, p1, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    return p0

    #@c
    :cond_c
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_2

    #@f
    :cond_f
    return v0
.end method

.method protected static isNullOrEmpty(Ljava/util/List;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 312
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result p0

    #@6
    if-eqz p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method


# virtual methods
.method public abstract addTarget(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract canHandle(Ljava/lang/Object;)Z
.end method

.method public abstract cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    #@0
    .line 81
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 85
    :cond_7
    new-instance v0, Landroid/graphics/RectF;

    #@9
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@c
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@f
    move-result v1

    #@10
    int-to-float v1, v1

    #@11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@14
    move-result v2

    #@15
    int-to-float v2, v2

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    #@1a
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@21
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@24
    move-result v1

    #@25
    int-to-float v1, v1

    #@26
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@29
    move-result v2

    #@2a
    int-to-float v2, v2

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    #@2e
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@31
    move-result-object v1

    #@32
    .line 92
    :goto_32
    instance-of v2, v1, Landroid/view/View;

    #@34
    if-eqz v2, :cond_60

    #@36
    .line 93
    check-cast v1, Landroid/view/View;

    #@38
    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    #@3b
    move-result v2

    #@3c
    neg-int v2, v2

    #@3d
    int-to-float v2, v2

    #@3e
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    #@41
    move-result v3

    #@42
    neg-int v3, v3

    #@43
    int-to-float v3, v3

    #@44
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    #@47
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@4e
    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@51
    move-result v2

    #@52
    int-to-float v2, v2

    #@53
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@56
    move-result v3

    #@57
    int-to-float v3, v3

    #@58
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    #@5b
    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5e
    move-result-object v1

    #@5f
    goto :goto_32

    #@60
    :cond_60
    const/4 v1, 0x2

    #@61
    new-array v1, v1, [I

    #@63
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@66
    move-result-object p1

    #@67
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6a
    const/4 p1, 0x0

    #@6b
    aget p1, v1, p1

    #@6d
    int-to-float p1, p1

    #@6e
    const/4 v2, 0x1

    #@6f
    aget v1, v1, v2

    #@71
    int-to-float v1, v1

    #@72
    .line 104
    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    #@75
    .line 105
    iget p1, v0, Landroid/graphics/RectF;->left:F

    #@77
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@7a
    move-result p1

    #@7b
    iget v1, v0, Landroid/graphics/RectF;->top:F

    #@7d
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@80
    move-result v1

    #@81
    iget v2, v0, Landroid/graphics/RectF;->right:F

    #@83
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@86
    move-result v2

    #@87
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    #@89
    .line 106
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@8c
    move-result v0

    #@8d
    .line 105
    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@90
    return-void
.end method

.method public abstract mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v1, :cond_20

    #@c
    .line 162
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/view/View;

    #@12
    .line 163
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    const/4 v4, 0x0

    #@1a
    .line 164
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    #@1d
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_a

    #@20
    :cond_20
    return-object v0
.end method

.method public abstract removeTarget(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V
    .registers 5

    #@0
    .line 232
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    #@3
    return-void
.end method

.method setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 178
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 179
    new-instance v6, Ljava/util/ArrayList;

    #@6
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v2, :cond_44

    #@d
    .line 182
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/view/View;

    #@13
    .line 183
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 184
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    if-nez v4, :cond_1d

    #@1c
    goto :goto_41

    #@1d
    :cond_1d
    const/4 v5, 0x0

    #@1e
    .line 188
    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    #@21
    .line 189
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/String;

    #@27
    move v5, v0

    #@28
    :goto_28
    if-ge v5, v2, :cond_41

    #@2a
    .line 191
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_3e

    #@34
    .line 192
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/view/View;

    #@3a
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    #@3d
    goto :goto_41

    #@3e
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_28

    #@41
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_b

    #@44
    .line 198
    :cond_44
    new-instance p5, Landroidx/fragment/app/FragmentTransitionImpl$1;

    #@46
    move-object v0, p5

    #@47
    move-object v1, p0

    #@48
    move-object v3, p3

    #@49
    move-object v4, p4

    #@4a
    move-object v5, p2

    #@4b
    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/FragmentTransitionImpl$1;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@4e
    invoke-static {p1, p5}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    #@51
    return-void
.end method

.method public abstract setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
.end method
