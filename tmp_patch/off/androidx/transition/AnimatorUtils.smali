.class Landroidx/transition/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    #@0
    .line 32
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    #@3
    return-void
.end method

.method static pause(Landroid/animation/Animator;)V
    .registers 1

    #@0
    .line 38
    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    #@3
    return-void
.end method

.method static resume(Landroid/animation/Animator;)V
    .registers 1

    #@0
    .line 54
    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    #@3
    return-void
.end method
