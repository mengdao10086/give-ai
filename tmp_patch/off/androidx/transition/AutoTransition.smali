.class public Landroidx/transition/AutoTransition;
.super Landroidx/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Landroidx/transition/TransitionSet;-><init>()V

    #@3
    .line 38
    invoke-direct {p0}, Landroidx/transition/AutoTransition;->init()V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 43
    invoke-direct {p0}, Landroidx/transition/AutoTransition;->init()V

    #@6
    return-void
.end method

.method private init()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 47
    invoke-virtual {p0, v0}, Landroidx/transition/AutoTransition;->setOrdering(I)Landroidx/transition/TransitionSet;

    #@4
    .line 48
    new-instance v1, Landroidx/transition/Fade;

    #@6
    const/4 v2, 0x2

    #@7
    invoke-direct {v1, v2}, Landroidx/transition/Fade;-><init>(I)V

    #@a
    invoke-virtual {p0, v1}, Landroidx/transition/AutoTransition;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@d
    move-result-object v1

    #@e
    new-instance v2, Landroidx/transition/ChangeBounds;

    #@10
    invoke-direct {v2}, Landroidx/transition/ChangeBounds;-><init>()V

    #@13
    .line 49
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@16
    move-result-object v1

    #@17
    new-instance v2, Landroidx/transition/Fade;

    #@19
    invoke-direct {v2, v0}, Landroidx/transition/Fade;-><init>(I)V

    #@1c
    .line 50
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@1f
    return-void
.end method
