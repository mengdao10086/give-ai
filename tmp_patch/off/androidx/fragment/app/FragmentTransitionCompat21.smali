.class Landroidx/fragment/app/FragmentTransitionCompat21;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransitionCompat21$Api19Impl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    #@3
    return-void
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .registers 2

    #@0
    .line 121
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_21

    #@a
    .line 122
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_21

    #@14
    .line 123
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    #@17
    move-result-object p0

    #@18
    invoke-static {p0}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@1b
    move-result p0

    #@1c
    if-nez p0, :cond_1f

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    const/4 p0, 0x0

    #@20
    goto :goto_22

    #@21
    :cond_21
    :goto_21
    const/4 p0, 0x1

    #@22
    :goto_22
    return p0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 332
    check-cast p1, Landroid/transition/Transition;

    #@4
    .line 333
    invoke-virtual {p1, p2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@7
    :cond_7
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 94
    check-cast p1, Landroid/transition/Transition;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 98
    :cond_5
    instance-of v0, p1, Landroid/transition/TransitionSet;

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 99
    check-cast p1, Landroid/transition/TransitionSet;

    #@c
    .line 100
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@f
    move-result v0

    #@10
    :goto_10
    if-ge v1, v0, :cond_3e

    #@12
    .line 102
    invoke-virtual {p1, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@15
    move-result-object v2

    #@16
    .line 103
    invoke-virtual {p0, v2, p2}, Landroidx/fragment/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_10

    #@1c
    .line 105
    :cond_1c
    invoke-static {p1}, Landroidx/fragment/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_3e

    #@22
    .line 106
    invoke-virtual {p1}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@25
    move-result-object v0

    #@26
    .line 107
    invoke-static {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3e

    #@2c
    .line 109
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    :goto_30
    if-ge v1, v0, :cond_3e

    #@32
    .line 111
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Landroid/view/View;

    #@38
    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@3b
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_30

    #@3e
    :cond_3e
    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 216
    check-cast p2, Landroid/transition/Transition;

    #@2
    invoke-static {p1, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@5
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 38
    instance-of p1, p1, Landroid/transition/Transition;

    #@2
    return p1
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    if-eqz p1, :cond_9

    #@2
    .line 45
    check-cast p1, Landroid/transition/Transition;

    #@4
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@7
    move-result-object p1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return-object p1
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    #@0
    .line 189
    check-cast p1, Landroid/transition/Transition;

    #@2
    .line 190
    check-cast p2, Landroid/transition/Transition;

    #@4
    .line 191
    check-cast p3, Landroid/transition/Transition;

    #@6
    if-eqz p1, :cond_1d

    #@8
    if-eqz p2, :cond_1d

    #@a
    .line 193
    new-instance v0, Landroid/transition/TransitionSet;

    #@c
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@f
    .line 194
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@12
    move-result-object p1

    #@13
    .line 195
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@16
    move-result-object p1

    #@17
    const/4 p2, 0x1

    #@18
    .line 196
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    #@1b
    move-result-object p1

    #@1c
    goto :goto_25

    #@1d
    :cond_1d
    if-eqz p1, :cond_20

    #@1f
    goto :goto_25

    #@20
    :cond_20
    if-eqz p2, :cond_24

    #@22
    move-object p1, p2

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    :goto_25
    if-eqz p3, :cond_35

    #@27
    .line 203
    new-instance p2, Landroid/transition/TransitionSet;

    #@29
    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    #@2c
    if-eqz p1, :cond_31

    #@2e
    .line 205
    invoke-virtual {p2, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@31
    .line 207
    :cond_31
    invoke-virtual {p2, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@34
    return-object p2

    #@35
    :cond_35
    return-object p1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    #@0
    .line 129
    new-instance v0, Landroid/transition/TransitionSet;

    #@2
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@5
    if-eqz p1, :cond_c

    #@7
    .line 131
    check-cast p1, Landroid/transition/Transition;

    #@9
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@c
    :cond_c
    if-eqz p2, :cond_13

    #@e
    .line 134
    check-cast p2, Landroid/transition/Transition;

    #@10
    invoke-virtual {v0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@13
    :cond_13
    if-eqz p3, :cond_1a

    #@15
    .line 137
    check-cast p3, Landroid/transition/Transition;

    #@17
    invoke-virtual {v0, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@1a
    :cond_1a
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 340
    check-cast p1, Landroid/transition/Transition;

    #@4
    .line 341
    invoke-virtual {p1, p2}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@7
    :cond_7
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
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

    #@0
    .line 305
    check-cast p1, Landroid/transition/Transition;

    #@2
    .line 306
    instance-of v0, p1, Landroid/transition/TransitionSet;

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_19

    #@7
    .line 307
    check-cast p1, Landroid/transition/TransitionSet;

    #@9
    .line 308
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@c
    move-result v0

    #@d
    :goto_d
    if-ge v1, v0, :cond_5f

    #@f
    .line 310
    invoke-virtual {p1, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@12
    move-result-object v2

    #@13
    .line 311
    invoke-virtual {p0, v2, p2, p3}, Landroidx/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_d

    #@19
    .line 313
    :cond_19
    invoke-static {p1}, Landroidx/fragment/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_5f

    #@1f
    .line 314
    invoke-virtual {p1}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    if-eqz v0, :cond_5f

    #@25
    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@28
    move-result v2

    #@29
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v3

    #@2d
    if-ne v2, v3, :cond_5f

    #@2f
    .line 316
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_5f

    #@35
    if-nez p3, :cond_39

    #@37
    move v0, v1

    #@38
    goto :goto_3d

    #@39
    .line 318
    :cond_39
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v0

    #@3d
    :goto_3d
    if-ge v1, v0, :cond_4b

    #@3f
    .line 320
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Landroid/view/View;

    #@45
    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@48
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_3d

    #@4b
    .line 322
    :cond_4b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result p3

    #@4f
    add-int/lit8 p3, p3, -0x1

    #@51
    :goto_51
    if-ltz p3, :cond_5f

    #@53
    .line 323
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Landroid/view/View;

    #@59
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@5c
    add-int/lit8 p3, p3, -0x1

    #@5e
    goto :goto_51

    #@5f
    :cond_5f
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 5
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

    #@0
    .line 145
    check-cast p1, Landroid/transition/Transition;

    #@2
    .line 146
    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21$2;

    #@4
    invoke-direct {v0, p0, p2, p3}, Landroidx/fragment/app/FragmentTransitionCompat21$2;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/view/View;Ljava/util/ArrayList;)V

    #@7
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@a
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
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

    #@0
    .line 224
    move-object v0, p1

    #@1
    check-cast v0, Landroid/transition/Transition;

    #@3
    .line 225
    new-instance v9, Landroidx/fragment/app/FragmentTransitionCompat21$3;

    #@5
    move-object v1, v9

    #@6
    move-object v2, p0

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    move-object/from16 v7, p6

    #@d
    move-object/from16 v8, p7

    #@f
    invoke-direct/range {v1 .. v8}, Landroidx/fragment/app/FragmentTransitionCompat21$3;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@12
    invoke-virtual {v0, v9}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@15
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    #@0
    if-eqz p1, :cond_c

    #@2
    .line 348
    check-cast p1, Landroid/transition/Transition;

    #@4
    .line 349
    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21$5;

    #@6
    invoke-direct {v0, p0, p2}, Landroidx/fragment/app/FragmentTransitionCompat21$5;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/graphics/Rect;)V

    #@9
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@c
    :cond_c
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    #@0
    if-eqz p2, :cond_14

    #@2
    .line 79
    check-cast p1, Landroid/transition/Transition;

    #@4
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    .line 81
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 83
    new-instance p2, Landroidx/fragment/app/FragmentTransitionCompat21$1;

    #@e
    invoke-direct {p2, p0, v0}, Landroidx/fragment/app/FragmentTransitionCompat21$1;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/graphics/Rect;)V

    #@11
    invoke-virtual {p1, p2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@14
    :cond_14
    return-void
.end method

.method public setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V
    .registers 5

    #@0
    .line 271
    check-cast p2, Landroid/transition/Transition;

    #@2
    new-instance p1, Landroidx/fragment/app/FragmentTransitionCompat21$4;

    #@4
    invoke-direct {p1, p0, p4}, Landroidx/fragment/app/FragmentTransitionCompat21$4;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Ljava/lang/Runnable;)V

    #@7
    invoke-virtual {p2, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@a
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 8
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

    #@0
    .line 63
    check-cast p1, Landroid/transition/TransitionSet;

    #@2
    .line 64
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 65
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@9
    .line 66
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    :goto_e
    if-ge v2, v1, :cond_1c

    #@10
    .line 68
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/view/View;

    #@16
    .line 69
    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_e

    #@1c
    .line 71
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 72
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 73
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@25
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
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

    #@0
    .line 294
    check-cast p1, Landroid/transition/TransitionSet;

    #@2
    if-eqz p1, :cond_15

    #@4
    .line 296
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@b
    .line 297
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@12
    .line 298
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@15
    :cond_15
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 55
    :cond_4
    new-instance v0, Landroid/transition/TransitionSet;

    #@6
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@9
    .line 56
    check-cast p1, Landroid/transition/Transition;

    #@b
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@e
    return-object v0
.end method
