.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .registers 24

    #@0
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    #@5
    move-result v2

    #@6
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    #@9
    move-result v3

    #@a
    .line 58
    iget-object v4, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@c
    sget v5, Landroidx/transition/R$id;->transition_position:I

    #@e
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, [I

    #@14
    check-cast v4, [I

    #@16
    const/4 v5, 0x1

    #@17
    const/4 v6, 0x0

    #@18
    if-eqz v4, :cond_27

    #@1a
    .line 60
    aget v7, v4, v6

    #@1c
    sub-int v7, v7, p2

    #@1e
    int-to-float v7, v7

    #@1f
    add-float/2addr v7, v2

    #@20
    .line 61
    aget v4, v4, v5

    #@22
    sub-int v4, v4, p3

    #@24
    int-to-float v4, v4

    #@25
    add-float/2addr v4, v3

    #@26
    goto :goto_2b

    #@27
    :cond_27
    move/from16 v7, p4

    #@29
    move/from16 v4, p5

    #@2b
    :goto_2b
    sub-float v8, v7, v2

    #@2d
    .line 64
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@30
    move-result v8

    #@31
    add-int v8, p2, v8

    #@33
    sub-float v9, v4, v3

    #@35
    .line 65
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@38
    move-result v9

    #@39
    add-int v9, p3, v9

    #@3b
    .line 67
    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationX(F)V

    #@3e
    .line 68
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    #@41
    cmpl-float v10, v7, p6

    #@43
    if-nez v10, :cond_4b

    #@45
    cmpl-float v10, v4, p7

    #@47
    if-nez v10, :cond_4b

    #@49
    const/4 v0, 0x0

    #@4a
    return-object v0

    #@4b
    :cond_4b
    const/4 v10, 0x2

    #@4c
    new-array v11, v10, [Landroid/animation/PropertyValuesHolder;

    #@4e
    .line 72
    sget-object v12, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@50
    new-array v13, v10, [F

    #@52
    aput v7, v13, v6

    #@54
    aput p6, v13, v5

    #@56
    .line 73
    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@59
    move-result-object v7

    #@5a
    aput-object v7, v11, v6

    #@5c
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@5e
    new-array v10, v10, [F

    #@60
    aput v4, v10, v6

    #@62
    aput p7, v10, v5

    #@64
    .line 74
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@67
    move-result-object v4

    #@68
    aput-object v4, v11, v5

    #@6a
    .line 72
    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@6d
    move-result-object v4

    #@6e
    .line 76
    new-instance v5, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    #@70
    iget-object v1, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@72
    move-object p1, v5

    #@73
    move-object/from16 p2, p0

    #@75
    move-object/from16 p3, v1

    #@77
    move/from16 p4, v8

    #@79
    move/from16 p5, v9

    #@7b
    move/from16 p6, v2

    #@7d
    move/from16 p7, v3

    #@7f
    invoke-direct/range {p1 .. p7}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    #@82
    move-object/from16 v0, p9

    #@84
    .line 78
    invoke-virtual {v0, v5}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@87
    .line 79
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@8a
    .line 80
    invoke-static {v4, v5}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    #@8d
    move-object/from16 v0, p8

    #@8f
    .line 81
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@92
    return-object v4
.end method
