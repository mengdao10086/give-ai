.class public Lcom/google/android/material/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field public static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@7
    .line 37
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    #@9
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@e
    .line 39
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    #@10
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    #@13
    sput-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@15
    .line 41
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    #@17
    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    #@1a
    sput-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1c
    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@1e
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@21
    sput-object v0, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static lerp(FFF)F
    .registers 3

    #@0
    sub-float/2addr p1, p0

    #@1
    mul-float/2addr p2, p1

    #@2
    add-float/2addr p0, p2

    #@3
    return p0
.end method

.method public static lerp(FFFFF)F
    .registers 6

    #@0
    cmpg-float v0, p4, p2

    #@2
    if-gtz v0, :cond_5

    #@4
    return p0

    #@5
    :cond_5
    cmpl-float v0, p4, p3

    #@7
    if-ltz v0, :cond_a

    #@9
    return p1

    #@a
    :cond_a
    sub-float/2addr p4, p2

    #@b
    sub-float/2addr p3, p2

    #@c
    div-float/2addr p4, p3

    #@d
    .line 71
    invoke-static {p0, p1, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    #@10
    move-result p0

    #@11
    return p0
.end method

.method public static lerp(IIF)I
    .registers 3

    #@0
    sub-int/2addr p1, p0

    #@1
    int-to-float p1, p1

    #@2
    mul-float/2addr p2, p1

    #@3
    .line 52
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@6
    move-result p1

    #@7
    add-int/2addr p0, p1

    #@8
    return p0
.end method
