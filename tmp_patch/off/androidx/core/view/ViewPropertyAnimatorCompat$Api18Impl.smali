.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api18Impl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getInterpolator(Landroid/view/ViewPropertyAnimator;)Landroid/view/animation/Interpolator;
    .registers 1

    #@0
    .line 871
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/view/animation/Interpolator;

    #@6
    return-object p0
.end method
