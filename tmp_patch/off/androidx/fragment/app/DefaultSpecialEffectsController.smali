.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    #@3
    return-void
.end method

.method private startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 161
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@3
    move-result-object v7

    #@4
    .line 162
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@7
    move-result-object v8

    #@8
    .line 163
    new-instance v9, Ljava/util/ArrayList;

    #@a
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 167
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v10

    #@11
    const/4 v6, 0x0

    #@12
    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    const-string v12, " has started."

    #@18
    const-string v13, "FragmentManager"

    #@1a
    const/4 v14, 0x2

    #@1b
    if-eqz v0, :cond_e8

    #@1d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    move-object v15, v0

    #@22
    check-cast v15, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    #@24
    .line 168
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isVisibilityUnchanged()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_30

    #@2a
    .line 170
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    #@2d
    :goto_2d
    move-object/from16 v3, p4

    #@2f
    goto :goto_12

    #@30
    .line 173
    :cond_30
    invoke-virtual {v15, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@33
    move-result-object v0

    #@34
    if-nez v0, :cond_3a

    #@36
    .line 176
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    #@39
    goto :goto_2d

    #@3a
    .line 179
    :cond_3a
    iget-object v5, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    #@3c
    if-nez v5, :cond_42

    #@3e
    .line 182
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_2d

    #@42
    .line 187
    :cond_42
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@45
    move-result-object v4

    #@46
    .line 188
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@49
    move-result-object v0

    #@4a
    .line 189
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4c
    move-object/from16 v3, p4

    #@4e
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_7a

    #@58
    .line 191
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_76

    #@5e
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    const-string v2, "Ignoring Animator set on "

    #@62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    const-string v1, " as this Fragment was involved in a Transition."

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 195
    :cond_76
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    #@79
    goto :goto_12

    #@7a
    .line 201
    :cond_7a
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@7d
    move-result-object v1

    #@7e
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@80
    const/16 v16, 0x1

    #@82
    if-ne v1, v2, :cond_87

    #@84
    move/from16 v6, v16

    #@86
    goto :goto_88

    #@87
    :cond_87
    const/4 v6, 0x0

    #@88
    :goto_88
    move-object/from16 v2, p2

    #@8a
    if-eqz v6, :cond_8f

    #@8c
    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@8f
    .line 208
    :cond_8f
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@91
    .line 209
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    #@94
    .line 210
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    #@96
    move-object/from16 p1, v0

    #@98
    move-object/from16 v17, v1

    #@9a
    move-object/from16 v1, p0

    #@9c
    move-object v2, v7

    #@9d
    move-object/from16 v3, v17

    #@9f
    move-object/from16 v18, v4

    #@a1
    move v4, v6

    #@a2
    move-object v6, v5

    #@a3
    move-object/from16 v5, v18

    #@a5
    move-object v11, v6

    #@a6
    move-object v6, v15

    #@a7
    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    #@aa
    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@ad
    move-object/from16 v0, v17

    #@af
    .line 226
    invoke-virtual {v11, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@b2
    .line 227
    invoke-virtual {v11}, Landroid/animation/Animator;->start()V

    #@b5
    .line 228
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@b8
    move-result v0

    #@b9
    if-eqz v0, :cond_d4

    #@bb
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    #@bd
    const-string v1, "Animator from operation "

    #@bf
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c2
    move-object/from16 v1, v18

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v0

    #@cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v0

    #@d0
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    goto :goto_d6

    #@d4
    :cond_d4
    move-object/from16 v1, v18

    #@d6
    .line 233
    :goto_d6
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    #@d9
    move-result-object v0

    #@da
    .line 234
    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    #@dc
    move-object/from16 v15, p0

    #@de
    invoke-direct {v2, v15, v11, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    #@e1
    invoke-virtual {v0, v2}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    #@e4
    move/from16 v6, v16

    #@e6
    goto/16 :goto_12

    #@e8
    :cond_e8
    move-object/from16 v15, p0

    #@ea
    .line 247
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@ed
    move-result-object v9

    #@ee
    :goto_ee
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@f1
    move-result v0

    #@f2
    if-eqz v0, :cond_1cb

    #@f4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f7
    move-result-object v0

    #@f8
    move-object v10, v0

    #@f9
    check-cast v10, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    #@fb
    .line 249
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@fe
    move-result-object v11

    #@ff
    .line 250
    invoke-virtual {v11}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@102
    move-result-object v0

    #@103
    const-string v1, "Ignoring Animation set on "

    #@105
    if-eqz p3, :cond_127

    #@107
    .line 252
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@10a
    move-result v2

    #@10b
    if-eqz v2, :cond_123

    #@10d
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v0

    #@116
    const-string v1, " as Animations cannot run alongside Transitions."

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v0

    #@11c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v0

    #@120
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@123
    .line 256
    :cond_123
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    #@126
    goto :goto_ee

    #@127
    :cond_127
    if-eqz v6, :cond_149

    #@129
    .line 261
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@12c
    move-result v2

    #@12d
    if-eqz v2, :cond_145

    #@12f
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v0

    #@138
    const-string v1, " as Animations cannot run alongside Animators."

    #@13a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v0

    #@13e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v0

    #@142
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@145
    .line 265
    :cond_145
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    #@148
    goto :goto_ee

    #@149
    .line 270
    :cond_149
    iget-object v5, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@14b
    .line 272
    invoke-virtual {v10, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@14e
    move-result-object v0

    #@14f
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    move-result-object v0

    #@153
    check-cast v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@155
    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    #@157
    .line 271
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@15a
    move-result-object v0

    #@15b
    check-cast v0, Landroid/view/animation/Animation;

    #@15d
    .line 273
    invoke-virtual {v11}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@160
    move-result-object v1

    #@161
    .line 274
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@163
    if-eq v1, v2, :cond_172

    #@165
    .line 277
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@168
    .line 281
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    #@16b
    move/from16 v16, v6

    #@16d
    move-object/from16 v17, v8

    #@16f
    move v6, v14

    #@170
    move-object v8, v5

    #@171
    goto :goto_1b0

    #@172
    .line 283
    :cond_172
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    #@175
    .line 284
    new-instance v4, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    #@177
    invoke-direct {v4, v0, v7, v5}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@17a
    .line 286
    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    #@17c
    move-object v0, v3

    #@17d
    move-object/from16 v1, p0

    #@17f
    move-object v2, v11

    #@180
    move-object v14, v3

    #@181
    move-object v3, v7

    #@182
    move/from16 v16, v6

    #@184
    move-object v6, v4

    #@185
    move-object v4, v5

    #@186
    move-object/from16 v17, v8

    #@188
    move-object v8, v5

    #@189
    move-object v5, v10

    #@18a
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    #@18d
    invoke-virtual {v6, v14}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@190
    .line 317
    invoke-virtual {v8, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@193
    const/4 v6, 0x2

    #@194
    .line 318
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@197
    move-result v0

    #@198
    if-eqz v0, :cond_1b0

    #@19a
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    #@19c
    const-string v1, "Animation from operation "

    #@19e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v0

    #@1a5
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v0

    #@1a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v0

    #@1ad
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b0
    .line 324
    :cond_1b0
    :goto_1b0
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    #@1b3
    move-result-object v14

    #@1b4
    .line 325
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    #@1b6
    move-object v0, v5

    #@1b7
    move-object/from16 v1, p0

    #@1b9
    move-object v2, v8

    #@1ba
    move-object v3, v7

    #@1bb
    move-object v4, v10

    #@1bc
    move-object v8, v5

    #@1bd
    move-object v5, v11

    #@1be
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    #@1c1
    invoke-virtual {v14, v8}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    #@1c4
    move v14, v6

    #@1c5
    move/from16 v6, v16

    #@1c7
    move-object/from16 v8, v17

    #@1c9
    goto/16 :goto_ee

    #@1cb
    :cond_1cb
    return-void
.end method

.method private startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    move/from16 v7, p3

    #@4
    move-object/from16 v8, p4

    #@6
    move-object/from16 v9, p5

    #@8
    .line 345
    new-instance v10, Ljava/util/HashMap;

    #@a
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 348
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    const/4 v15, 0x0

    #@12
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_63

    #@18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    #@1e
    .line 349
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_25

    #@24
    goto :goto_12

    #@25
    .line 353
    :cond_25
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    #@28
    move-result-object v2

    #@29
    if-nez v15, :cond_2d

    #@2b
    move-object v15, v2

    #@2c
    goto :goto_12

    #@2d
    :cond_2d
    if-eqz v2, :cond_12

    #@2f
    if-ne v15, v2, :cond_32

    #@31
    goto :goto_12

    #@32
    .line 357
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    #@38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    .line 359
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string v3, " returned Transition "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 360
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string v2, " which uses a different Transition  type than other Fragments."

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    :cond_63
    const/4 v14, 0x0

    #@64
    if-nez v15, :cond_86

    #@66
    .line 366
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v0

    #@6a
    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_85

    #@70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v1

    #@74
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    #@76
    .line 367
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7d
    move-result-object v3

    #@7e
    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 368
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    #@84
    goto :goto_6a

    #@85
    :cond_85
    return-object v10

    #@86
    .line 376
    :cond_86
    new-instance v13, Landroid/view/View;

    #@88
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@8f
    move-result-object v0

    #@90
    invoke-direct {v13, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@93
    .line 382
    new-instance v12, Landroid/graphics/Rect;

    #@95
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@98
    .line 383
    new-instance v5, Ljava/util/ArrayList;

    #@9a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@9d
    .line 384
    new-instance v4, Ljava/util/ArrayList;

    #@9f
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a2
    .line 385
    new-instance v3, Landroidx/collection/ArrayMap;

    #@a4
    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    #@a7
    .line 386
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@aa
    move-result-object v20

    #@ab
    move/from16 v21, v14

    #@ad
    const/4 v0, 0x0

    #@ae
    const/4 v2, 0x0

    #@af
    :goto_af
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@b2
    move-result v1

    #@b3
    const/16 v22, 0x2

    #@b5
    const-string v14, "FragmentManager"

    #@b7
    if-eqz v1, :cond_3a1

    #@b9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bc
    move-result-object v1

    #@bd
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    #@bf
    .line 387
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->hasSharedElementTransition()Z

    #@c2
    move-result v17

    #@c3
    if-eqz v17, :cond_387

    #@c5
    if-eqz v8, :cond_387

    #@c7
    if-eqz v9, :cond_387

    #@c9
    .line 393
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSharedElementTransition()Ljava/lang/Object;

    #@cc
    move-result-object v0

    #@cd
    .line 392
    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    #@d0
    move-result-object v0

    #@d1
    .line 391
    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    move-result-object v1

    #@d5
    .line 396
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@d8
    move-result-object v0

    #@d9
    .line 397
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    #@dc
    move-result-object v0

    #@dd
    .line 400
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@e0
    move-result-object v17

    #@e1
    .line 401
    invoke-virtual/range {v17 .. v17}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    #@e4
    move-result-object v11

    #@e5
    .line 402
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@e8
    move-result-object v17

    #@e9
    move-object/from16 v18, v1

    #@eb
    .line 403
    invoke-virtual/range {v17 .. v17}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    #@ee
    move-result-object v1

    #@ef
    move-object/from16 v17, v2

    #@f1
    move-object/from16 v23, v10

    #@f3
    const/4 v2, 0x0

    #@f4
    .line 406
    :goto_f4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f7
    move-result v10

    #@f8
    if-ge v2, v10, :cond_115

    #@fa
    .line 407
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fd
    move-result-object v10

    #@fe
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@101
    move-result v10

    #@102
    move-object/from16 v19, v1

    #@104
    const/4 v1, -0x1

    #@105
    if-eq v10, v1, :cond_110

    #@107
    .line 411
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10a
    move-result-object v1

    #@10b
    check-cast v1, Ljava/lang/String;

    #@10d
    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@110
    :cond_110
    add-int/lit8 v2, v2, 0x1

    #@112
    move-object/from16 v1, v19

    #@114
    goto :goto_f4

    #@115
    .line 414
    :cond_115
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@118
    move-result-object v1

    #@119
    .line 415
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    #@11c
    move-result-object v10

    #@11d
    if-nez v7, :cond_130

    #@11f
    .line 421
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    #@126
    move-result-object v1

    #@127
    .line 422
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@12a
    move-result-object v2

    #@12b
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    #@12e
    move-result-object v2

    #@12f
    goto :goto_140

    #@130
    .line 426
    :cond_130
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@133
    move-result-object v1

    #@134
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    #@137
    move-result-object v1

    #@138
    .line 427
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    #@13f
    move-result-object v2

    #@140
    .line 429
    :goto_140
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@143
    move-result v11

    #@144
    move-object/from16 v19, v13

    #@146
    const/4 v13, 0x0

    #@147
    :goto_147
    if-ge v13, v11, :cond_167

    #@149
    .line 431
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14c
    move-result-object v24

    #@14d
    move/from16 v25, v11

    #@14f
    move-object/from16 v11, v24

    #@151
    check-cast v11, Ljava/lang/String;

    #@153
    .line 432
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@156
    move-result-object v24

    #@157
    move-object/from16 v26, v12

    #@159
    move-object/from16 v12, v24

    #@15b
    check-cast v12, Ljava/lang/String;

    #@15d
    .line 433
    invoke-virtual {v3, v11, v12}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@160
    add-int/lit8 v13, v13, 0x1

    #@162
    move/from16 v11, v25

    #@164
    move-object/from16 v12, v26

    #@166
    goto :goto_147

    #@167
    :cond_167
    move-object/from16 v26, v12

    #@169
    .line 436
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@16c
    move-result v11

    #@16d
    if-eqz v11, :cond_1c5

    #@16f
    const-string v11, ">>> entering view names <<<"

    #@171
    .line 437
    invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@174
    .line 438
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@177
    move-result-object v11

    #@178
    :goto_178
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@17b
    move-result v12

    #@17c
    const-string v13, "Name: "

    #@17e
    if-eqz v12, :cond_19b

    #@180
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@183
    move-result-object v12

    #@184
    check-cast v12, Ljava/lang/String;

    #@186
    move-object/from16 v24, v11

    #@188
    .line 439
    new-instance v11, Ljava/lang/StringBuilder;

    #@18a
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v11

    #@191
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v11

    #@195
    invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@198
    move-object/from16 v11, v24

    #@19a
    goto :goto_178

    #@19b
    :cond_19b
    const-string v11, ">>> exiting view names <<<"

    #@19d
    .line 441
    invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a0
    .line 442
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1a3
    move-result-object v11

    #@1a4
    :goto_1a4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1a7
    move-result v12

    #@1a8
    if-eqz v12, :cond_1c5

    #@1aa
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ad
    move-result-object v12

    #@1ae
    check-cast v12, Ljava/lang/String;

    #@1b0
    move-object/from16 v24, v11

    #@1b2
    .line 443
    new-instance v11, Ljava/lang/StringBuilder;

    #@1b4
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v11

    #@1bb
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v11

    #@1bf
    invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c2
    move-object/from16 v11, v24

    #@1c4
    goto :goto_1a4

    #@1c5
    .line 449
    :cond_1c5
    new-instance v11, Landroidx/collection/ArrayMap;

    #@1c7
    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    #@1ca
    .line 450
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@1cd
    move-result-object v12

    #@1ce
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1d0
    invoke-virtual {v6, v11, v12}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    #@1d3
    .line 451
    invoke-virtual {v11, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@1d6
    if-eqz v1, :cond_230

    #@1d8
    .line 453
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@1db
    move-result v12

    #@1dc
    if-eqz v12, :cond_1f0

    #@1de
    .line 454
    new-instance v12, Ljava/lang/StringBuilder;

    #@1e0
    const-string v13, "Executing exit callback for operation "

    #@1e2
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e5
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v12

    #@1e9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ec
    move-result-object v12

    #@1ed
    invoke-static {v14, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f0
    .line 458
    :cond_1f0
    invoke-virtual {v1, v0, v11}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@1f3
    .line 459
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f6
    move-result v1

    #@1f7
    const/4 v12, 0x1

    #@1f8
    sub-int/2addr v1, v12

    #@1f9
    :goto_1f9
    if-ltz v1, :cond_22d

    #@1fb
    .line 460
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1fe
    move-result-object v12

    #@1ff
    check-cast v12, Ljava/lang/String;

    #@201
    .line 461
    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@204
    move-result-object v13

    #@205
    check-cast v13, Landroid/view/View;

    #@207
    if-nez v13, :cond_20f

    #@209
    .line 463
    invoke-virtual {v3, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20c
    move-object/from16 v24, v0

    #@20e
    goto :goto_228

    #@20f
    :cond_20f
    move-object/from16 v24, v0

    #@211
    .line 464
    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@214
    move-result-object v0

    #@215
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@218
    move-result v0

    #@219
    if-nez v0, :cond_228

    #@21b
    .line 465
    invoke-virtual {v3, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21e
    move-result-object v0

    #@21f
    check-cast v0, Ljava/lang/String;

    #@221
    .line 466
    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@224
    move-result-object v12

    #@225
    invoke-virtual {v3, v12, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@228
    :cond_228
    :goto_228
    add-int/lit8 v1, v1, -0x1

    #@22a
    move-object/from16 v0, v24

    #@22c
    goto :goto_1f9

    #@22d
    :cond_22d
    move-object/from16 v24, v0

    #@22f
    goto :goto_239

    #@230
    :cond_230
    move-object/from16 v24, v0

    #@232
    .line 472
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    #@235
    move-result-object v0

    #@236
    invoke-virtual {v3, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@239
    .line 477
    :goto_239
    new-instance v12, Landroidx/collection/ArrayMap;

    #@23b
    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    #@23e
    .line 478
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@241
    move-result-object v0

    #@242
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@244
    invoke-virtual {v6, v12, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    #@247
    .line 479
    invoke-virtual {v12, v10}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@24a
    .line 480
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    #@24d
    move-result-object v0

    #@24e
    invoke-virtual {v12, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@251
    if-eqz v2, :cond_2a8

    #@253
    .line 482
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@256
    move-result v0

    #@257
    if-eqz v0, :cond_26b

    #@259
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    #@25b
    const-string v1, "Executing enter callback for operation "

    #@25d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@260
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v0

    #@264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@267
    move-result-object v0

    #@268
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@26b
    .line 487
    :cond_26b
    invoke-virtual {v2, v10, v12}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@26e
    .line 488
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@271
    move-result v0

    #@272
    const/4 v1, 0x1

    #@273
    sub-int/2addr v0, v1

    #@274
    :goto_274
    if-ltz v0, :cond_2ab

    #@276
    .line 489
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@279
    move-result-object v1

    #@27a
    check-cast v1, Ljava/lang/String;

    #@27c
    .line 490
    invoke-virtual {v12, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27f
    move-result-object v2

    #@280
    check-cast v2, Landroid/view/View;

    #@282
    if-nez v2, :cond_28e

    #@284
    .line 492
    invoke-static {v3, v1}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    #@287
    move-result-object v1

    #@288
    if-eqz v1, :cond_2a5

    #@28a
    .line 495
    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@28d
    goto :goto_2a5

    #@28e
    .line 497
    :cond_28e
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@291
    move-result-object v13

    #@292
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@295
    move-result v13

    #@296
    if-nez v13, :cond_2a5

    #@298
    .line 498
    invoke-static {v3, v1}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    #@29b
    move-result-object v1

    #@29c
    if-eqz v1, :cond_2a5

    #@29e
    .line 502
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@2a1
    move-result-object v2

    #@2a2
    .line 501
    invoke-virtual {v3, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a5
    :cond_2a5
    :goto_2a5
    add-int/lit8 v0, v0, -0x1

    #@2a7
    goto :goto_274

    #@2a8
    .line 508
    :cond_2a8
    invoke-static {v3, v12}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@2ab
    .line 513
    :cond_2ab
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    #@2ae
    move-result-object v0

    #@2af
    invoke-virtual {v6, v11, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    #@2b2
    .line 514
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    #@2b5
    move-result-object v0

    #@2b6
    invoke-virtual {v6, v12, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    #@2b9
    .line 516
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    #@2bc
    move-result v0

    #@2bd
    if-eqz v0, :cond_2d7

    #@2bf
    .line 520
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@2c2
    .line 521
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@2c5
    move-object/from16 v25, v3

    #@2c7
    move-object v3, v9

    #@2c8
    move-object v11, v15

    #@2c9
    move-object/from16 v2, v17

    #@2cb
    move-object/from16 v10, v23

    #@2cd
    const/4 v0, 0x0

    #@2ce
    const/4 v1, 0x0

    #@2cf
    move-object v9, v4

    #@2d0
    move-object v15, v5

    #@2d1
    move-object/from16 v5, v19

    #@2d3
    move-object/from16 v4, v26

    #@2d5
    goto/16 :goto_394

    #@2d7
    .line 526
    :cond_2d7
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@2da
    move-result-object v0

    #@2db
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@2de
    move-result-object v1

    #@2df
    const/4 v2, 0x1

    #@2e0
    .line 525
    invoke-static {v0, v1, v7, v11, v2}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    #@2e3
    .line 530
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@2e6
    move-result-object v13

    #@2e7
    new-instance v14, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    #@2e9
    move-object/from16 v2, v24

    #@2eb
    move-object v0, v14

    #@2ec
    move-object/from16 v7, v18

    #@2ee
    move-object/from16 v1, p0

    #@2f0
    move-object/from16 v27, v17

    #@2f2
    move-object/from16 v2, p5

    #@2f4
    move-object/from16 v25, v3

    #@2f6
    move-object/from16 v3, p4

    #@2f8
    move-object v9, v4

    #@2f9
    move/from16 v4, p3

    #@2fb
    move-object v8, v5

    #@2fc
    move-object v5, v12

    #@2fd
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    #@300
    invoke-static {v13, v14}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    #@303
    .line 539
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    #@306
    move-result-object v0

    #@307
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@30a
    .line 542
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    #@30d
    move-result v0

    #@30e
    if-nez v0, :cond_324

    #@310
    move-object/from16 v0, v24

    #@312
    const/4 v1, 0x0

    #@313
    .line 543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@316
    move-result-object v0

    #@317
    check-cast v0, Ljava/lang/String;

    #@319
    .line 544
    invoke-virtual {v11, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31c
    move-result-object v0

    #@31d
    check-cast v0, Landroid/view/View;

    #@31f
    .line 545
    invoke-virtual {v15, v7, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    #@322
    move-object v2, v0

    #@323
    goto :goto_327

    #@324
    :cond_324
    const/4 v1, 0x0

    #@325
    move-object/from16 v2, v27

    #@327
    .line 549
    :goto_327
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    #@32a
    move-result-object v0

    #@32b
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@32e
    .line 552
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    #@331
    move-result v0

    #@332
    if-nez v0, :cond_355

    #@334
    .line 553
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@337
    move-result-object v0

    #@338
    check-cast v0, Ljava/lang/String;

    #@33a
    .line 554
    invoke-virtual {v12, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33d
    move-result-object v0

    #@33e
    check-cast v0, Landroid/view/View;

    #@340
    if-eqz v0, :cond_355

    #@342
    .line 561
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@345
    move-result-object v3

    #@346
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    #@348
    move-object/from16 v5, v26

    #@34a
    invoke-direct {v4, v6, v15, v0, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    #@34d
    invoke-static {v3, v4}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    #@350
    move-object/from16 v0, v19

    #@352
    const/16 v21, 0x1

    #@354
    goto :goto_359

    #@355
    :cond_355
    move-object/from16 v5, v26

    #@357
    move-object/from16 v0, v19

    #@359
    .line 574
    :goto_359
    invoke-virtual {v15, v7, v0, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    #@35c
    const/4 v14, 0x0

    #@35d
    const/4 v3, 0x0

    #@35e
    const/16 v16, 0x0

    #@360
    const/16 v17, 0x0

    #@362
    move-object v4, v5

    #@363
    move-object v12, v15

    #@364
    move-object v5, v0

    #@365
    move-object v13, v7

    #@366
    move-object v11, v15

    #@367
    move-object v15, v3

    #@368
    move-object/from16 v18, v7

    #@36a
    move-object/from16 v19, v9

    #@36c
    .line 579
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@36f
    const/4 v0, 0x1

    #@370
    .line 584
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@373
    move-result-object v3

    #@374
    move-object v15, v8

    #@375
    move-object/from16 v10, v23

    #@377
    move-object/from16 v8, p4

    #@379
    invoke-interface {v10, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37c
    .line 585
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@37f
    move-result-object v0

    #@380
    move-object/from16 v3, p5

    #@382
    invoke-interface {v10, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@385
    move-object v0, v7

    #@386
    goto :goto_394

    #@387
    :cond_387
    move-object/from16 v27, v2

    #@389
    move-object/from16 v25, v3

    #@38b
    move-object v3, v9

    #@38c
    move-object v11, v15

    #@38d
    const/4 v1, 0x0

    #@38e
    move-object v9, v4

    #@38f
    move-object v15, v5

    #@390
    move-object v4, v12

    #@391
    move-object v5, v13

    #@392
    move-object/from16 v2, v27

    #@394
    :goto_394
    move/from16 v7, p3

    #@396
    move v14, v1

    #@397
    move-object v12, v4

    #@398
    move-object v13, v5

    #@399
    move-object v4, v9

    #@39a
    move-object v5, v15

    #@39b
    move-object v9, v3

    #@39c
    move-object v15, v11

    #@39d
    move-object/from16 v3, v25

    #@39f
    goto/16 :goto_af

    #@3a1
    :cond_3a1
    move-object/from16 v27, v2

    #@3a3
    move-object/from16 v25, v3

    #@3a5
    move-object v3, v9

    #@3a6
    move-object v11, v15

    #@3a7
    const/4 v1, 0x0

    #@3a8
    move-object v9, v4

    #@3a9
    move-object v15, v5

    #@3aa
    move-object v4, v12

    #@3ab
    move-object v5, v13

    #@3ac
    .line 589
    new-instance v2, Ljava/util/ArrayList;

    #@3ae
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@3b1
    .line 595
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3b4
    move-result-object v7

    #@3b5
    const/4 v12, 0x0

    #@3b6
    const/4 v13, 0x0

    #@3b7
    :goto_3b7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@3ba
    move-result v16

    #@3bb
    if-eqz v16, :cond_4f7

    #@3bd
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c0
    move-result-object v16

    #@3c1
    move-object/from16 v20, v16

    #@3c3
    check-cast v20, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    #@3c5
    .line 596
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    #@3c8
    move-result v16

    #@3c9
    if-eqz v16, :cond_3e2

    #@3cb
    move-object/from16 p3, v7

    #@3cd
    .line 598
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@3d0
    move-result-object v7

    #@3d1
    move-object/from16 v16, v12

    #@3d3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3d6
    move-result-object v12

    #@3d7
    invoke-interface {v10, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3da
    .line 599
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    #@3dd
    move-object/from16 v7, p3

    #@3df
    move-object/from16 v12, v16

    #@3e1
    goto :goto_3b7

    #@3e2
    :cond_3e2
    move-object/from16 p3, v7

    #@3e4
    move-object/from16 v16, v12

    #@3e6
    .line 602
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    #@3e9
    move-result-object v7

    #@3ea
    invoke-virtual {v11, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    #@3ed
    move-result-object v7

    #@3ee
    .line 603
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@3f1
    move-result-object v12

    #@3f2
    if-eqz v0, :cond_3fb

    #@3f4
    if-eq v12, v8, :cond_3f8

    #@3f6
    if-ne v12, v3, :cond_3fb

    #@3f8
    :cond_3f8
    const/16 v17, 0x1

    #@3fa
    goto :goto_3fd

    #@3fb
    :cond_3fb
    move/from16 v17, v1

    #@3fd
    :goto_3fd
    if-nez v7, :cond_41c

    #@3ff
    if-nez v17, :cond_40b

    #@401
    .line 612
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@404
    move-result-object v7

    #@405
    invoke-interface {v10, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@408
    .line 613
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    #@40b
    :cond_40b
    move-object/from16 v12, p2

    #@40d
    move-object/from16 v29, v5

    #@40f
    move-object/from16 v30, v9

    #@411
    move-object v5, v13

    #@412
    move-object/from16 v31, v14

    #@414
    move-object/from16 v32, v15

    #@416
    move-object/from16 v1, v27

    #@418
    const/4 v13, 0x0

    #@419
    const/4 v14, 0x1

    #@41a
    goto/16 :goto_4e5

    #@41c
    .line 617
    :cond_41c
    new-instance v1, Ljava/util/ArrayList;

    #@41e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@421
    move-object/from16 v18, v13

    #@423
    .line 619
    invoke-virtual {v12}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@426
    move-result-object v13

    #@427
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@429
    .line 618
    invoke-virtual {v6, v1, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    #@42c
    if-eqz v17, :cond_437

    #@42e
    if-ne v12, v8, :cond_434

    #@430
    .line 623
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@433
    goto :goto_437

    #@434
    .line 625
    :cond_434
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@437
    .line 628
    :cond_437
    :goto_437
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@43a
    move-result v13

    #@43b
    if-eqz v13, :cond_450

    #@43d
    .line 629
    invoke-virtual {v11, v7, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    #@440
    move-object/from16 v29, v5

    #@442
    move-object/from16 v30, v9

    #@444
    move-object v13, v12

    #@445
    move-object/from16 v31, v14

    #@447
    move-object/from16 v32, v15

    #@449
    move-object/from16 v9, v16

    #@44b
    move-object/from16 v5, v18

    #@44d
    move-object/from16 v12, p2

    #@44f
    goto :goto_4b0

    #@450
    .line 631
    :cond_450
    invoke-virtual {v11, v7, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@453
    const/16 v17, 0x0

    #@455
    const/16 v19, 0x0

    #@457
    const/16 v24, 0x0

    #@459
    const/16 v26, 0x0

    #@45b
    move-object/from16 v28, v12

    #@45d
    move-object/from16 v13, v16

    #@45f
    move-object v12, v11

    #@460
    move-object/from16 v29, v5

    #@462
    move-object/from16 v30, v9

    #@464
    move-object v9, v13

    #@465
    move-object/from16 v5, v18

    #@467
    move-object v13, v7

    #@468
    move-object/from16 v31, v14

    #@46a
    move-object v14, v7

    #@46b
    move-object/from16 v32, v15

    #@46d
    move-object v15, v1

    #@46e
    move-object/from16 v16, v17

    #@470
    move-object/from16 v17, v19

    #@472
    move-object/from16 v18, v24

    #@474
    move-object/from16 v19, v26

    #@476
    .line 632
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@479
    .line 635
    invoke-virtual/range {v28 .. v28}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@47c
    move-result-object v12

    #@47d
    sget-object v13, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@47f
    if-ne v12, v13, :cond_4ac

    #@481
    move-object/from16 v12, p2

    #@483
    move-object/from16 v13, v28

    #@485
    .line 639
    invoke-interface {v12, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@488
    .line 642
    new-instance v14, Ljava/util/ArrayList;

    #@48a
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@48d
    .line 644
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@490
    move-result-object v15

    #@491
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@493
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@496
    .line 646
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@499
    move-result-object v15

    #@49a
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@49c
    .line 645
    invoke-virtual {v11, v7, v15, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    #@49f
    .line 653
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@4a2
    move-result-object v14

    #@4a3
    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    #@4a5
    invoke-direct {v15, v6, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    #@4a8
    invoke-static {v14, v15}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    #@4ab
    goto :goto_4b0

    #@4ac
    :cond_4ac
    move-object/from16 v12, p2

    #@4ae
    move-object/from16 v13, v28

    #@4b0
    .line 662
    :goto_4b0
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@4b3
    move-result-object v14

    #@4b4
    sget-object v15, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@4b6
    if-ne v14, v15, :cond_4c3

    #@4b8
    .line 663
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@4bb
    if-eqz v21, :cond_4c0

    #@4bd
    .line 665
    invoke-virtual {v11, v7, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    #@4c0
    :cond_4c0
    move-object/from16 v1, v27

    #@4c2
    goto :goto_4c8

    #@4c3
    :cond_4c3
    move-object/from16 v1, v27

    #@4c5
    .line 668
    invoke-virtual {v11, v7, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    #@4c8
    :goto_4c8
    const/4 v14, 0x1

    #@4c9
    .line 670
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4cc
    move-result-object v15

    #@4cd
    invoke-interface {v10, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d0
    .line 672
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed()Z

    #@4d3
    move-result v13

    #@4d4
    if-eqz v13, :cond_4de

    #@4d6
    const/4 v13, 0x0

    #@4d7
    .line 674
    invoke-virtual {v11, v5, v7, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4da
    move-result-object v5

    #@4db
    move-object/from16 v16, v9

    #@4dd
    goto :goto_4e5

    #@4de
    :cond_4de
    const/4 v13, 0x0

    #@4df
    .line 678
    invoke-virtual {v11, v9, v7, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e2
    move-result-object v7

    #@4e3
    move-object/from16 v16, v7

    #@4e5
    :goto_4e5
    move-object/from16 v7, p3

    #@4e7
    move-object/from16 v27, v1

    #@4e9
    move-object v13, v5

    #@4ea
    move-object/from16 v12, v16

    #@4ec
    move-object/from16 v5, v29

    #@4ee
    move-object/from16 v9, v30

    #@4f0
    move-object/from16 v14, v31

    #@4f2
    move-object/from16 v15, v32

    #@4f4
    const/4 v1, 0x0

    #@4f5
    goto/16 :goto_3b7

    #@4f7
    :cond_4f7
    move-object/from16 v30, v9

    #@4f9
    move-object v9, v12

    #@4fa
    move-object v5, v13

    #@4fb
    move-object/from16 v31, v14

    #@4fd
    move-object/from16 v32, v15

    #@4ff
    const/4 v14, 0x1

    #@500
    .line 686
    invoke-virtual {v11, v5, v9, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@503
    move-result-object v1

    #@504
    if-nez v1, :cond_507

    #@506
    return-object v10

    #@507
    .line 697
    :cond_507
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@50a
    move-result-object v4

    #@50b
    :goto_50b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@50e
    move-result v5

    #@50f
    if-eqz v5, :cond_589

    #@511
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@514
    move-result-object v5

    #@515
    check-cast v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    #@517
    .line 698
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    #@51a
    move-result v7

    #@51b
    if-eqz v7, :cond_51e

    #@51d
    goto :goto_50b

    #@51e
    .line 702
    :cond_51e
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    #@521
    move-result-object v7

    #@522
    .line 703
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@525
    move-result-object v9

    #@526
    if-eqz v0, :cond_52e

    #@528
    if-eq v9, v8, :cond_52c

    #@52a
    if-ne v9, v3, :cond_52e

    #@52c
    :cond_52c
    move v12, v14

    #@52d
    goto :goto_52f

    #@52e
    :cond_52e
    const/4 v12, 0x0

    #@52f
    :goto_52f
    if-nez v7, :cond_537

    #@531
    if-eqz v12, :cond_534

    #@533
    goto :goto_537

    #@534
    :cond_534
    move-object/from16 v12, v31

    #@536
    goto :goto_586

    #@537
    .line 709
    :cond_537
    :goto_537
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@53a
    move-result-object v7

    #@53b
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@53e
    move-result v7

    #@53f
    if-nez v7, :cond_570

    #@541
    .line 710
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@544
    move-result v7

    #@545
    if-eqz v7, :cond_56a

    #@547
    .line 711
    new-instance v7, Ljava/lang/StringBuilder;

    #@549
    const-string v12, "SpecialEffectsController: Container "

    #@54b
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@54e
    .line 712
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@551
    move-result-object v12

    #@552
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@555
    move-result-object v7

    #@556
    const-string v12, " has not been laid out. Completing operation "

    #@558
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55b
    move-result-object v7

    #@55c
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55f
    move-result-object v7

    #@560
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@563
    move-result-object v7

    #@564
    move-object/from16 v12, v31

    #@566
    .line 711
    invoke-static {v12, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@569
    goto :goto_56c

    #@56a
    :cond_56a
    move-object/from16 v12, v31

    #@56c
    .line 716
    :goto_56c
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    #@56f
    goto :goto_586

    #@570
    :cond_570
    move-object/from16 v12, v31

    #@572
    .line 719
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@575
    move-result-object v7

    #@576
    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@579
    move-result-object v7

    #@57a
    .line 721
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    #@57d
    move-result-object v13

    #@57e
    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    #@580
    invoke-direct {v15, v6, v5, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    #@583
    .line 718
    invoke-virtual {v11, v7, v1, v13, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    #@586
    :goto_586
    move-object/from16 v31, v12

    #@588
    goto :goto_50b

    #@589
    :cond_589
    move-object/from16 v12, v31

    #@58b
    .line 738
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@58e
    move-result-object v3

    #@58f
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@592
    move-result v3

    #@593
    if-nez v3, :cond_596

    #@595
    return-object v10

    #@596
    :cond_596
    const/4 v3, 0x4

    #@597
    .line 743
    invoke-static {v2, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    #@59a
    move-object/from16 v3, v30

    #@59c
    .line 745
    invoke-virtual {v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@59f
    move-result-object v16

    #@5a0
    .line 746
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@5a3
    move-result v4

    #@5a4
    if-eqz v4, :cond_613

    #@5a6
    const-string v4, ">>>>> Beginning transition <<<<<"

    #@5a8
    .line 747
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5ab
    const-string v4, ">>>>> SharedElementFirstOutViews <<<<<"

    #@5ad
    .line 748
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5b0
    .line 749
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5b3
    move-result-object v4

    #@5b4
    :goto_5b4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5b7
    move-result v5

    #@5b8
    const-string v7, " Name: "

    #@5ba
    const-string v8, "View: "

    #@5bc
    if-eqz v5, :cond_5e1

    #@5be
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c1
    move-result-object v5

    #@5c2
    check-cast v5, Landroid/view/View;

    #@5c4
    .line 750
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c6
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5c9
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5cc
    move-result-object v8

    #@5cd
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d0
    move-result-object v7

    #@5d1
    .line 751
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@5d4
    move-result-object v5

    #@5d5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d8
    move-result-object v5

    #@5d9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5dc
    move-result-object v5

    #@5dd
    .line 750
    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e0
    goto :goto_5b4

    #@5e1
    :cond_5e1
    const-string v4, ">>>>> SharedElementLastInViews <<<<<"

    #@5e3
    .line 753
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e6
    .line 754
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5e9
    move-result-object v4

    #@5ea
    :goto_5ea
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5ed
    move-result v5

    #@5ee
    if-eqz v5, :cond_613

    #@5f0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f3
    move-result-object v5

    #@5f4
    check-cast v5, Landroid/view/View;

    #@5f6
    .line 755
    new-instance v9, Ljava/lang/StringBuilder;

    #@5f8
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5fb
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5fe
    move-result-object v9

    #@5ff
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@602
    move-result-object v9

    #@603
    .line 756
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@606
    move-result-object v5

    #@607
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60a
    move-result-object v5

    #@60b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60e
    move-result-object v5

    #@60f
    .line 755
    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@612
    goto :goto_5ea

    #@613
    .line 760
    :cond_613
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@616
    move-result-object v4

    #@617
    invoke-virtual {v11, v4, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    #@61a
    .line 761
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    #@61d
    move-result-object v13

    #@61e
    move-object v12, v11

    #@61f
    move-object/from16 v14, v32

    #@621
    move-object v15, v3

    #@622
    move-object/from16 v17, v25

    #@624
    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    #@627
    const/4 v1, 0x0

    #@628
    .line 765
    invoke-static {v2, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    #@62b
    move-object/from16 v1, v32

    #@62d
    .line 766
    invoke-virtual {v11, v0, v1, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@630
    return-object v10
.end method

.method private syncAnimations(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@c
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@f
    move-result-object v0

    #@10
    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object p1

    #@14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_51

    #@1a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@20
    .line 147
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@23
    move-result-object v2

    #@24
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@26
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@28
    iget v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    #@2a
    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    #@2c
    .line 149
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@2f
    move-result-object v2

    #@30
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@32
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@34
    iget v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    #@36
    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    #@38
    .line 151
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@3b
    move-result-object v2

    #@3c
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3e
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@40
    iget v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    #@42
    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    #@44
    .line 153
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@47
    move-result-object v1

    #@48
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@4a
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@4c
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    #@4e
    iput v2, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    #@50
    goto :goto_14

    #@51
    :cond_51
    return-void
.end method


# virtual methods
.method applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 3

    #@0
    .line 843
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@6
    .line 844
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    #@d
    return-void
.end method

.method captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .line 798
    instance-of v0, p2, Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_2e

    #@4
    .line 799
    move-object v0, p2

    #@5
    check-cast v0, Landroid/view/ViewGroup;

    #@7
    .line 800
    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_17

    #@d
    .line 801
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result p2

    #@11
    if-nez p2, :cond_37

    #@13
    .line 802
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    goto :goto_37

    #@17
    .line 805
    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1a
    move-result p2

    #@1b
    const/4 v1, 0x0

    #@1c
    :goto_1c
    if-ge v1, p2, :cond_37

    #@1e
    .line 807
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v2

    #@22
    .line 808
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2b

    #@28
    .line 809
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    #@2b
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1c

    #@2e
    .line 814
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_37

    #@34
    .line 815
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    :cond_37
    :goto_37
    return-void
.end method

.method executeOperations(Ljava/util/List;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    move/from16 v3, p2

    #@4
    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    move-object v7, v1

    #@a
    move-object v8, v7

    #@b
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    const/4 v9, 0x2

    #@10
    const/4 v10, 0x1

    #@11
    if-eqz v1, :cond_48

    #@13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@19
    .line 62
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@1c
    move-result-object v2

    #@1d
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1f
    invoke-static {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@22
    move-result-object v2

    #@23
    .line 63
    sget-object v4, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    #@25
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    #@2c
    move-result v5

    #@2d
    aget v4, v4, v5

    #@2f
    if-eq v4, v10, :cond_40

    #@31
    if-eq v4, v9, :cond_40

    #@33
    const/4 v5, 0x3

    #@34
    if-eq v4, v5, :cond_40

    #@36
    const/4 v5, 0x4

    #@37
    if-eq v4, v5, :cond_3a

    #@39
    goto :goto_b

    #@3a
    .line 73
    :cond_3a
    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@3c
    if-eq v2, v4, :cond_b

    #@3e
    move-object v8, v1

    #@3f
    goto :goto_b

    #@40
    .line 67
    :cond_40
    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@42
    if-ne v2, v4, :cond_b

    #@44
    if-nez v7, :cond_b

    #@46
    move-object v7, v1

    #@47
    goto :goto_b

    #@48
    .line 80
    :cond_48
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4b
    move-result v0

    #@4c
    const-string v11, " to "

    #@4e
    const-string v12, "FragmentManager"

    #@50
    if-eqz v0, :cond_6c

    #@52
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    const-string v1, "Executing operations from "

    #@56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@59
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 86
    :cond_6c
    new-instance v13, Ljava/util/ArrayList;

    #@6e
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@71
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    #@73
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@76
    .line 88
    new-instance v14, Ljava/util/ArrayList;

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7d
    .line 91
    invoke-direct/range {p0 .. p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->syncAnimations(Ljava/util/List;)V

    #@80
    .line 93
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@83
    move-result-object v0

    #@84
    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v2

    #@88
    if-eqz v2, :cond_c2

    #@8a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8d
    move-result-object v2

    #@8e
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@90
    .line 95
    new-instance v4, Landroidx/core/os/CancellationSignal;

    #@92
    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;-><init>()V

    #@95
    .line 96
    invoke-virtual {v2, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    #@98
    .line 98
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    #@9a
    invoke-direct {v5, v2, v4, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    #@9d
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a0
    .line 101
    new-instance v4, Landroidx/core/os/CancellationSignal;

    #@a2
    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;-><init>()V

    #@a5
    .line 102
    invoke-virtual {v2, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    #@a8
    .line 104
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    #@aa
    const/4 v15, 0x0

    #@ab
    if-eqz v3, :cond_b0

    #@ad
    if-ne v2, v7, :cond_b3

    #@af
    goto :goto_b2

    #@b0
    :cond_b0
    if-ne v2, v8, :cond_b3

    #@b2
    :goto_b2
    move v15, v10

    #@b3
    .line 105
    :cond_b3
    invoke-direct {v5, v2, v4, v3, v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    #@b6
    .line 104
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b9
    .line 109
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    #@bb
    invoke-direct {v4, v6, v14, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    #@be
    invoke-virtual {v2, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    #@c1
    goto :goto_84

    #@c2
    :cond_c2
    move-object/from16 v0, p0

    #@c4
    move-object v2, v14

    #@c5
    move/from16 v3, p2

    #@c7
    move-object v4, v7

    #@c8
    move-object v5, v8

    #@c9
    .line 121
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;

    #@cc
    move-result-object v0

    #@cd
    .line 123
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d0
    move-result-object v1

    #@d1
    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@d4
    move-result v1

    #@d5
    .line 126
    invoke-direct {v6, v13, v14, v1, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    #@d8
    .line 129
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@db
    move-result-object v0

    #@dc
    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@df
    move-result v1

    #@e0
    if-eqz v1, :cond_ec

    #@e2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e5
    move-result-object v1

    #@e6
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@e8
    .line 130
    invoke-virtual {v6, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    #@eb
    goto :goto_dc

    #@ec
    .line 132
    :cond_ec
    invoke-interface {v14}, Ljava/util/List;->clear()V

    #@ef
    .line 133
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@f2
    move-result v0

    #@f3
    if-eqz v0, :cond_10f

    #@f5
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    #@f7
    const-string v1, "Completed executing operations from "

    #@f9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@fc
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v0

    #@100
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    :cond_10f
    return-void
.end method

.method findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .line 825
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 827
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 829
    :cond_9
    instance-of v0, p2, Landroid/view/ViewGroup;

    #@b
    if-eqz v0, :cond_26

    #@d
    .line 830
    check-cast p2, Landroid/view/ViewGroup;

    #@f
    .line 831
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ge v1, v0, :cond_26

    #@16
    .line 833
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v2

    #@1a
    .line 834
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_23

    #@20
    .line 835
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    #@23
    :cond_23
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_14

    #@26
    :cond_26
    return-void
.end method

.method retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 780
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object p1

    #@4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object p1

    #@8
    .line 781
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_28

    #@e
    .line 782
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 783
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/View;

    #@1a
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_8

    #@24
    .line 784
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    #@27
    goto :goto_8

    #@28
    :cond_28
    return-void
.end method
