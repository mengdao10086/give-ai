.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationScrimBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COLLAPSE_DELAY:J = 0x0L

.field public static final COLLAPSE_DURATION:J = 0x96L

.field public static final EXPAND_DELAY:J = 0x4bL

.field public static final EXPAND_DURATION:J = 0x96L


# instance fields
.field private final collapseTiming:Lcom/google/android/material/animation/MotionTiming;

.field private final expandTiming:Lcom/google/android/material/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .registers 6

    #@0
    .line 55
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    #@3
    .line 52
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    #@5
    const-wide/16 v1, 0x4b

    #@7
    const-wide/16 v3, 0x96

    #@9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    #@c
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    #@e
    .line 53
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    #@10
    const-wide/16 v1, 0x0

    #@12
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    #@15
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    #@17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    #@0
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 52
    new-instance p1, Lcom/google/android/material/animation/MotionTiming;

    #@5
    const-wide/16 v0, 0x4b

    #@7
    const-wide/16 v2, 0x96

    #@9
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    #@c
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    #@e
    .line 53
    new-instance p1, Lcom/google/android/material/animation/MotionTiming;

    #@10
    const-wide/16 v0, 0x0

    #@12
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    #@15
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    #@17
    return-void
.end method

.method private createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_5

    #@2
    .line 112
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    #@4
    goto :goto_7

    #@5
    :cond_5
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    #@7
    :goto_7
    const/4 v0, 0x0

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    if-eqz p2, :cond_1e

    #@c
    if-nez p3, :cond_11

    #@e
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@11
    .line 119
    :cond_11
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@13
    new-array p3, v2, [F

    #@15
    const/high16 v0, 0x3f800000    # 1.0f

    #@17
    aput v0, p3, v1

    #@19
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@1c
    move-result-object p1

    #@1d
    goto :goto_28

    #@1e
    .line 121
    :cond_1e
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@20
    new-array p3, v2, [F

    #@22
    aput v0, p3, v1

    #@24
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@27
    move-result-object p1

    #@28
    .line 124
    :goto_28
    invoke-virtual {p5, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@2b
    .line 125
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    #@0
    .line 63
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@2
    return p1
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .registers 11

    #@0
    .line 80
    new-instance p1, Ljava/util/ArrayList;

    #@2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 81
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    move-object v0, p0

    #@b
    move-object v1, p2

    #@c
    move v2, p3

    #@d
    move v3, p4

    #@e
    move-object v4, p1

    #@f
    .line 83
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V

    #@12
    .line 85
    new-instance p4, Landroid/animation/AnimatorSet;

    #@14
    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    #@17
    .line 86
    invoke-static {p4, p1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    #@1a
    .line 87
    new-instance p1, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;

    #@1c
    invoke-direct {p1, p0, p3, p2}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    #@1f
    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@22
    return-object p4
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method
