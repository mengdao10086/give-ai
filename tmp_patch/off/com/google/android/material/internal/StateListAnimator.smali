.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

.field runningAnimator:Landroid/animation/ValueAnimator;

.field private final tuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    #@a
    const/4 v0, 0x0

    #@b
    .line 41
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    #@d
    .line 42
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    #@f
    .line 44
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$1;

    #@11
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/StateListAnimator$1;-><init>(Lcom/google/android/material/internal/StateListAnimator;)V

    #@14
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    #@16
    return-void
.end method

.method private cancel()V
    .registers 2

    #@0
    .line 98
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 99
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 100
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    #@a
    :cond_a
    return-void
.end method

.method private start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V
    .registers 2

    #@0
    .line 93
    iget-object p1, p1, Lcom/google/android/material/internal/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    #@2
    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    #@4
    .line 94
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@7
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .registers 4

    #@0
    .line 62
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    #@5
    .line 63
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    #@7
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@a
    .line 64
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    #@c
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    return-void
.end method

.method public jumpToCurrentState()V
    .registers 2

    #@0
    .line 110
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 111
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 112
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    #@a
    :cond_a
    return-void
.end method

.method public setState([I)V
    .registers 6

    #@0
    .line 70
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_1d

    #@9
    .line 72
    iget-object v2, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    #@11
    .line 73
    iget-object v3, v2, Lcom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    #@13
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1a

    #@19
    goto :goto_1e

    #@1a
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_7

    #@1d
    :cond_1d
    const/4 v2, 0x0

    #@1e
    .line 78
    :goto_1e
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    #@20
    if-ne v2, p1, :cond_23

    #@22
    return-void

    #@23
    :cond_23
    if-eqz p1, :cond_28

    #@25
    .line 82
    invoke-direct {p0}, Lcom/google/android/material/internal/StateListAnimator;->cancel()V

    #@28
    .line 85
    :cond_28
    iput-object v2, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    #@2a
    if-eqz v2, :cond_2f

    #@2c
    .line 88
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/StateListAnimator;->start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V

    #@2f
    :cond_2f
    return-void
.end method
