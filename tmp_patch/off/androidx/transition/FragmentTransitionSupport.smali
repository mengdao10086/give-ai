.class public Landroidx/transition/FragmentTransitionSupport;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    #@3
    return-void
.end method

.method private static hasSimpleTarget(Landroidx/transition/Transition;)Z
    .registers 2

    #@0
    .line 126
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTargetIds()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_21

    #@a
    .line 127
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTargetNames()Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_21

    #@14
    .line 128
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTargetTypes()Ljava/util/List;

    #@17
    move-result-object p0

    #@18
    invoke-static {p0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

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
    .line 284
    check-cast p1, Landroidx/transition/Transition;

    #@4
    .line 285
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

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
    .line 102
    check-cast p1, Landroidx/transition/Transition;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 106
    :cond_5
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 107
    check-cast p1, Landroidx/transition/TransitionSet;

    #@c
    .line 108
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    #@f
    move-result v0

    #@10
    :goto_10
    if-ge v1, v0, :cond_3e

    #@12
    .line 110
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    #@15
    move-result-object v2

    #@16
    .line 111
    invoke-virtual {p0, v2, p2}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_10

    #@1c
    .line 113
    :cond_1c
    invoke-static {p1}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_3e

    #@22
    .line 114
    invoke-virtual {p1}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    #@25
    move-result-object v0

    #@26
    .line 115
    invoke-static {v0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3e

    #@2c
    .line 117
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    :goto_30
    if-ge v1, v0, :cond_3e

    #@32
    .line 119
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Landroid/view/View;

    #@38
    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

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
    .line 213
    check-cast p2, Landroidx/transition/Transition;

    #@2
    invoke-static {p1, p2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@5
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 46
    instance-of p1, p1, Landroidx/transition/Transition;

    #@2
    return p1
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    if-eqz p1, :cond_9

    #@2
    .line 53
    check-cast p1, Landroidx/transition/Transition;

    #@4
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

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
    .line 186
    check-cast p1, Landroidx/transition/Transition;

    #@2
    .line 187
    check-cast p2, Landroidx/transition/Transition;

    #@4
    .line 188
    check-cast p3, Landroidx/transition/Transition;

    #@6
    if-eqz p1, :cond_1d

    #@8
    if-eqz p2, :cond_1d

    #@a
    .line 190
    new-instance v0, Landroidx/transition/TransitionSet;

    #@c
    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    #@f
    .line 191
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@12
    move-result-object p1

    #@13
    .line 192
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@16
    move-result-object p1

    #@17
    const/4 p2, 0x1

    #@18
    .line 193
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

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
    .line 200
    new-instance p2, Landroidx/transition/TransitionSet;

    #@29
    invoke-direct {p2}, Landroidx/transition/TransitionSet;-><init>()V

    #@2c
    if-eqz p1, :cond_31

    #@2e
    .line 202
    invoke-virtual {p2, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@31
    .line 204
    :cond_31
    invoke-virtual {p2, p3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@34
    return-object p2

    #@35
    :cond_35
    return-object p1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    #@0
    .line 134
    new-instance v0, Landroidx/transition/TransitionSet;

    #@2
    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    #@5
    if-eqz p1, :cond_c

    #@7
    .line 136
    check-cast p1, Landroidx/transition/Transition;

    #@9
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@c
    :cond_c
    if-eqz p2, :cond_13

    #@e
    .line 139
    check-cast p2, Landroidx/transition/Transition;

    #@10
    invoke-virtual {v0, p2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@13
    :cond_13
    if-eqz p3, :cond_1a

    #@15
    .line 142
    check-cast p3, Landroidx/transition/Transition;

    #@17
    invoke-virtual {v0, p3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@1a
    :cond_1a
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 292
    check-cast p1, Landroidx/transition/Transition;

    #@4
    .line 293
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

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
    .line 257
    check-cast p1, Landroidx/transition/Transition;

    #@2
    .line 258
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_19

    #@7
    .line 259
    check-cast p1, Landroidx/transition/TransitionSet;

    #@9
    .line 260
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    #@c
    move-result v0

    #@d
    :goto_d
    if-ge v1, v0, :cond_5d

    #@f
    .line 262
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    #@12
    move-result-object v2

    #@13
    .line 263
    invoke-virtual {p0, v2, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_d

    #@19
    .line 265
    :cond_19
    invoke-static {p1}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_5d

    #@1f
    .line 266
    invoke-virtual {p1}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@26
    move-result v2

    #@27
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v3

    #@2b
    if-ne v2, v3, :cond_5d

    #@2d
    .line 268
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_5d

    #@33
    if-nez p3, :cond_37

    #@35
    move v0, v1

    #@36
    goto :goto_3b

    #@37
    .line 270
    :cond_37
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v0

    #@3b
    :goto_3b
    if-ge v1, v0, :cond_49

    #@3d
    .line 272
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Landroid/view/View;

    #@43
    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    #@46
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_3b

    #@49
    .line 274
    :cond_49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result p3

    #@4d
    add-int/lit8 p3, p3, -0x1

    #@4f
    :goto_4f
    if-ltz p3, :cond_5d

    #@51
    .line 275
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Landroid/view/View;

    #@57
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    #@5a
    add-int/lit8 p3, p3, -0x1

    #@5c
    goto :goto_4f

    #@5d
    :cond_5d
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
    .line 150
    check-cast p1, Landroidx/transition/Transition;

    #@2
    .line 151
    new-instance v0, Landroidx/transition/FragmentTransitionSupport$2;

    #@4
    invoke-direct {v0, p0, p2, p3}, Landroidx/transition/FragmentTransitionSupport$2;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    #@7
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

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
    .line 221
    move-object v0, p1

    #@1
    check-cast v0, Landroidx/transition/Transition;

    #@3
    .line 222
    new-instance v9, Landroidx/transition/FragmentTransitionSupport$3;

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
    invoke-direct/range {v1 .. v8}, Landroidx/transition/FragmentTransitionSupport$3;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@12
    invoke-virtual {v0, v9}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@15
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    #@0
    if-eqz p1, :cond_c

    #@2
    .line 300
    check-cast p1, Landroidx/transition/Transition;

    #@4
    .line 301
    new-instance v0, Landroidx/transition/FragmentTransitionSupport$4;

    #@6
    invoke-direct {v0, p0, p2}, Landroidx/transition/FragmentTransitionSupport$4;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    #@9
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    #@c
    :cond_c
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    #@0
    if-eqz p2, :cond_14

    #@2
    .line 87
    check-cast p1, Landroidx/transition/Transition;

    #@4
    .line 88
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    .line 89
    invoke-virtual {p0, p2, v0}, Landroidx/transition/FragmentTransitionSupport;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 91
    new-instance p2, Landroidx/transition/FragmentTransitionSupport$1;

    #@e
    invoke-direct {p2, p0, v0}, Landroidx/transition/FragmentTransitionSupport$1;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    #@11
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    #@14
    :cond_14
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
    .line 71
    check-cast p1, Landroidx/transition/TransitionSet;

    #@2
    .line 72
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 73
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@9
    .line 74
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    :goto_e
    if-ge v2, v1, :cond_1c

    #@10
    .line 76
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/view/View;

    #@16
    .line 77
    invoke-static {v0, v3}, Landroidx/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_e

    #@1c
    .line 79
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 80
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 81
    invoke-virtual {p0, p1, p3}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

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
    .line 246
    check-cast p1, Landroidx/transition/TransitionSet;

    #@2
    if-eqz p1, :cond_15

    #@4
    .line 248
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@b
    .line 249
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@12
    .line 250
    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

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
    .line 63
    :cond_4
    new-instance v0, Landroidx/transition/TransitionSet;

    #@6
    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    #@9
    .line 64
    check-cast p1, Landroidx/transition/Transition;

    #@b
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@e
    return-object v0
.end method
