.class public Lcom/google/android/material/animation/AnimatorSetCompat;
.super Ljava/lang/Object;
.source "AnimatorSetCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    const-wide/16 v1, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    move v4, v3

    #@8
    :goto_8
    if-ge v4, v0, :cond_20

    #@a
    .line 40
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    check-cast v5, Landroid/animation/Animator;

    #@10
    .line 41
    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    #@13
    move-result-wide v6

    #@14
    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    #@17
    move-result-wide v8

    #@18
    add-long/2addr v6, v8

    #@19
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@1c
    move-result-wide v1

    #@1d
    add-int/lit8 v4, v4, 0x1

    #@1f
    goto :goto_8

    #@20
    :cond_20
    const/4 v0, 0x2

    #@21
    new-array v0, v0, [I

    #@23
    .line 43
    fill-array-data v0, :array_34

    #@26
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    #@29
    move-result-object v0

    #@2a
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@2d
    .line 45
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@30
    .line 47
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    #@33
    return-void

    #@34
    :array_34
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
