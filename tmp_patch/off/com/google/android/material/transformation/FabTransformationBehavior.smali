.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dependencyOriginalTranslationX:F

.field private dependencyOriginalTranslationY:F

.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    #@3
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    #@a
    .line 80
    new-instance v0, Landroid/graphics/RectF;

    #@c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@11
    .line 81
    new-instance v0, Landroid/graphics/RectF;

    #@13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    #@18
    const/4 v0, 0x2

    #@19
    new-array v0, v0, [I

    #@1b
    .line 82
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    #@1d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 79
    new-instance p1, Landroid/graphics/Rect;

    #@5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    #@a
    .line 80
    new-instance p1, Landroid/graphics/RectF;

    #@c
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@11
    .line 81
    new-instance p1, Landroid/graphics/RectF;

    #@13
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@16
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    #@18
    const/4 p1, 0x2

    #@19
    new-array p1, p1, [I

    #@1b
    .line 82
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    #@1d
    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    #@0
    .line 710
    sget v0, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 712
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 716
    :cond_d
    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildLayout;

    #@f
    if-nez v0, :cond_1b

    #@11
    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildCard;

    #@13
    if-eqz v0, :cond_16

    #@15
    goto :goto_1b

    #@16
    .line 722
    :cond_16
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    #@19
    move-result-object p1

    #@1a
    return-object p1

    #@1b
    .line 717
    :cond_1b
    :goto_1b
    check-cast p1, Landroid/view/ViewGroup;

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object p1

    #@22
    .line 718
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    #@25
    move-result-object p1

    #@26
    return-object p1
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .registers 10

    #@0
    .line 669
    invoke-direct {p0, p2, p3, p5, p7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    #@3
    move-result p3

    #@4
    .line 671
    invoke-direct {p0, p2, p4, p6, p8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    #@7
    move-result p2

    #@8
    .line 674
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    #@a
    .line 675
    invoke-virtual {p1, p4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@d
    .line 676
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@f
    .line 677
    invoke-virtual {p5, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@12
    .line 680
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    #@14
    .line 681
    invoke-direct {p0, p1, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@17
    .line 682
    invoke-virtual {p4, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    #@1a
    .line 683
    invoke-virtual {p4, p5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    #@1d
    .line 685
    invoke-virtual {p9, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@20
    return-void
.end method

.method private calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 4

    #@0
    .line 626
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@3
    .line 627
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    #@5
    iget v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    #@7
    invoke-virtual {p2, p1, v0}, Landroid/graphics/RectF;->offset(FF)V

    #@a
    return-void
.end method

.method private calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/material/animation/MotionTiming;",
            "Lcom/google/android/material/animation/MotionTiming;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float p1, p1, v0

    #@3
    if-eqz p1, :cond_36

    #@5
    cmpl-float p1, p2, v0

    #@7
    if-nez p1, :cond_a

    #@9
    goto :goto_36

    #@a
    :cond_a
    if-eqz p3, :cond_10

    #@c
    cmpg-float p2, p2, v0

    #@e
    if-ltz p2, :cond_14

    #@10
    :cond_10
    if-nez p3, :cond_25

    #@12
    if-lez p1, :cond_25

    #@14
    .line 548
    :cond_14
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@16
    const-string p2, "translationXCurveUpwards"

    #@18
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@1b
    move-result-object p1

    #@1c
    .line 549
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@1e
    const-string p3, "translationYCurveUpwards"

    #@20
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@23
    move-result-object p2

    #@24
    goto :goto_46

    #@25
    .line 552
    :cond_25
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@27
    const-string p2, "translationXCurveDownwards"

    #@29
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@2c
    move-result-object p1

    #@2d
    .line 553
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@2f
    const-string p3, "translationYCurveDownwards"

    #@31
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@34
    move-result-object p2

    #@35
    goto :goto_46

    #@36
    .line 544
    :cond_36
    :goto_36
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@38
    const-string p2, "translationXLinear"

    #@3a
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@3d
    move-result-object p1

    #@3e
    .line 545
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@40
    const-string p3, "translationYLinear"

    #@42
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@45
    move-result-object p2

    #@46
    .line 556
    :goto_46
    new-instance p3, Landroid/util/Pair;

    #@48
    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4b
    return-object p3
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .registers 6

    #@0
    .line 632
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@2
    .line 633
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    #@4
    .line 635
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@7
    .line 636
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@a
    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@d
    move-result p1

    #@e
    neg-float p1, p1

    #@f
    const/4 p2, 0x0

    #@10
    .line 639
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    #@13
    .line 641
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@16
    move-result p1

    #@17
    iget p2, v1, Landroid/graphics/RectF;->left:F

    #@19
    sub-float/2addr p1, p2

    #@1a
    return p1
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .registers 6

    #@0
    .line 646
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@2
    .line 647
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    #@4
    .line 649
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@7
    .line 650
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@a
    .line 652
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@d
    move-result p1

    #@e
    const/4 p2, 0x0

    #@f
    neg-float p1, p1

    #@10
    .line 653
    invoke-virtual {v1, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    #@13
    .line 655
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    #@16
    move-result p1

    #@17
    iget p2, v1, Landroid/graphics/RectF;->top:F

    #@19
    sub-float/2addr p1, p2

    #@1a
    return p1
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .registers 6

    #@0
    .line 561
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@2
    .line 562
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    #@4
    .line 564
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@7
    .line 565
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@a
    .line 568
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    #@c
    and-int/lit8 p1, p1, 0x7

    #@e
    const/4 p2, 0x1

    #@f
    if-eq p1, p2, :cond_23

    #@11
    const/4 p2, 0x3

    #@12
    if-eq p1, p2, :cond_1e

    #@14
    const/4 p2, 0x5

    #@15
    if-eq p1, p2, :cond_19

    #@17
    const/4 p1, 0x0

    #@18
    goto :goto_2c

    #@19
    .line 576
    :cond_19
    iget p1, v1, Landroid/graphics/RectF;->right:F

    #@1b
    iget p2, v0, Landroid/graphics/RectF;->right:F

    #@1d
    goto :goto_2b

    #@1e
    .line 570
    :cond_1e
    iget p1, v1, Landroid/graphics/RectF;->left:F

    #@20
    iget p2, v0, Landroid/graphics/RectF;->left:F

    #@22
    goto :goto_2b

    #@23
    .line 573
    :cond_23
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    #@26
    move-result p1

    #@27
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@2a
    move-result p2

    #@2b
    :goto_2b
    sub-float/2addr p1, p2

    #@2c
    .line 581
    :goto_2c
    iget p2, p3, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    #@2e
    add-float/2addr p1, p2

    #@2f
    return p1
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .registers 6

    #@0
    .line 587
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@2
    .line 588
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    #@4
    .line 590
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@7
    .line 591
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    #@a
    .line 594
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    #@c
    and-int/lit8 p1, p1, 0x70

    #@e
    const/16 p2, 0x10

    #@10
    if-eq p1, p2, :cond_26

    #@12
    const/16 p2, 0x30

    #@14
    if-eq p1, p2, :cond_21

    #@16
    const/16 p2, 0x50

    #@18
    if-eq p1, p2, :cond_1c

    #@1a
    const/4 p1, 0x0

    #@1b
    goto :goto_2f

    #@1c
    .line 602
    :cond_1c
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    #@1e
    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    #@20
    goto :goto_2e

    #@21
    .line 596
    :cond_21
    iget p1, v1, Landroid/graphics/RectF;->top:F

    #@23
    iget p2, v0, Landroid/graphics/RectF;->top:F

    #@25
    goto :goto_2e

    #@26
    .line 599
    :cond_26
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    #@29
    move-result p1

    #@2a
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    #@2d
    move-result p2

    #@2e
    :goto_2e
    sub-float/2addr p1, p2

    #@2f
    .line 607
    :goto_2f
    iget p2, p3, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    #@31
    add-float/2addr p1, p2

    #@32
    return p1
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F
    .registers 13

    #@0
    .line 690
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@3
    move-result-wide v0

    #@4
    .line 691
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@7
    move-result-wide v2

    #@8
    .line 694
    iget-object p1, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@a
    const-string v4, "expansion"

    #@c
    invoke-virtual {p1, v4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@f
    move-result-object p1

    #@10
    .line 695
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@13
    move-result-wide v4

    #@14
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@17
    move-result-wide v6

    #@18
    add-long/2addr v4, v6

    #@19
    const-wide/16 v6, 0x11

    #@1b
    add-long/2addr v4, v6

    #@1c
    sub-long/2addr v4, v0

    #@1d
    long-to-float p1, v4

    #@1e
    long-to-float v0, v2

    #@1f
    div-float/2addr p1, v0

    #@20
    .line 702
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@23
    move-result-object p2

    #@24
    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@27
    move-result p1

    #@28
    .line 703
    invoke-static {p3, p4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    #@2b
    move-result p1

    #@2c
    return p1
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 6

    #@0
    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@8
    move-result v1

    #@9
    int-to-float v1, v1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    #@e
    .line 615
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    #@10
    .line 616
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    #@13
    const/4 v1, 0x0

    #@14
    .line 618
    aget v1, v0, v1

    #@16
    int-to-float v1, v1

    #@17
    const/4 v2, 0x1

    #@18
    aget v0, v0, v2

    #@1a
    int-to-float v0, v0

    #@1b
    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    #@1e
    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@21
    move-result v0

    #@22
    neg-float v0, v0

    #@23
    float-to-int v0, v0

    #@24
    int-to-float v0, v0

    #@25
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@28
    move-result p1

    #@29
    neg-float p1, p1

    #@2a
    float-to-int p1, p1

    #@2b
    int-to-float p1, p1

    #@2c
    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    #@2f
    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 502
    instance-of p1, p2, Landroid/view/ViewGroup;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 505
    :cond_5
    instance-of p1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@7
    if-eqz p1, :cond_e

    #@9
    sget p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    #@b
    if-nez p1, :cond_e

    #@d
    return-void

    #@e
    .line 511
    :cond_e
    invoke-direct {p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    #@11
    move-result-object p1

    #@12
    if-nez p1, :cond_15

    #@14
    return-void

    #@15
    :cond_15
    const/4 p2, 0x0

    #@16
    const/4 p7, 0x0

    #@17
    const/4 v0, 0x1

    #@18
    if-eqz p3, :cond_32

    #@1a
    if-nez p4, :cond_25

    #@1c
    .line 520
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    #@1e
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@21
    move-result-object p2

    #@22
    invoke-virtual {p3, p1, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@25
    .line 522
    :cond_25
    sget-object p2, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    #@27
    new-array p3, v0, [F

    #@29
    const/high16 p4, 0x3f800000    # 1.0f

    #@2b
    aput p4, p3, p7

    #@2d
    .line 523
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@30
    move-result-object p1

    #@31
    goto :goto_3c

    #@32
    .line 525
    :cond_32
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    #@34
    new-array p4, v0, [F

    #@36
    aput p2, p4, p7

    #@38
    .line 526
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@3b
    move-result-object p1

    #@3c
    .line 529
    :goto_3c
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@3e
    const-string p3, "contentFade"

    #@40
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@43
    move-result-object p2

    #@44
    .line 530
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@47
    .line 531
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    return-void
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 462
    instance-of p7, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@2
    if-nez p7, :cond_5

    #@4
    return-void

    #@5
    .line 465
    :cond_5
    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@7
    .line 467
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    #@a
    move-result p1

    #@b
    const p7, 0xffffff

    #@e
    and-int/2addr p7, p1

    #@f
    const/4 v0, 0x0

    #@10
    const/4 v1, 0x1

    #@11
    if-eqz p3, :cond_23

    #@13
    if-nez p4, :cond_18

    #@15
    .line 473
    invoke-interface {p2, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    #@18
    .line 475
    :cond_18
    sget-object p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    #@1a
    new-array p3, v1, [I

    #@1c
    aput p7, p3, v0

    #@1e
    .line 476
    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    #@21
    move-result-object p1

    #@22
    goto :goto_2d

    #@23
    .line 481
    :cond_23
    sget-object p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    #@25
    new-array p4, v1, [I

    #@27
    aput p1, p4, v0

    #@29
    .line 482
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    #@2c
    move-result-object p1

    #@2d
    .line 488
    :goto_2d
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    #@30
    move-result-object p2

    #@31
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@34
    .line 489
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@36
    const-string p3, "color"

    #@38
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@3b
    move-result-object p2

    #@3c
    .line 490
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@3f
    .line 491
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@42
    return-void
.end method

.method private createDependencyTranslationAnimation(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Z",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 230
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@5
    move-result v0

    #@6
    .line 231
    iget-object v1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    #@8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@b
    move-result p2

    #@c
    .line 237
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    #@f
    move-result-object p4

    #@10
    .line 238
    iget-object v1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@12
    check-cast v1, Lcom/google/android/material/animation/MotionTiming;

    #@14
    .line 239
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@16
    check-cast p4, Lcom/google/android/material/animation/MotionTiming;

    #@18
    .line 241
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@1a
    const/4 v3, 0x1

    #@1b
    new-array v4, v3, [F

    #@1d
    if-eqz p3, :cond_20

    #@1f
    goto :goto_22

    #@20
    .line 245
    :cond_20
    iget v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    #@22
    :goto_22
    const/4 v5, 0x0

    #@23
    aput v0, v4, v5

    #@25
    .line 242
    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@28
    move-result-object v0

    #@29
    .line 246
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@2b
    new-array v3, v3, [F

    #@2d
    if-eqz p3, :cond_30

    #@2f
    goto :goto_32

    #@30
    .line 250
    :cond_30
    iget p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    #@32
    :goto_32
    aput p2, v3, v5

    #@34
    .line 247
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@37
    move-result-object p1

    #@38
    .line 252
    invoke-virtual {v1, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@3b
    .line 253
    invoke-virtual {p4, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@3e
    .line 254
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    .line 255
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    return-void
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 207
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@3
    move-result p7

    #@4
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@7
    move-result p1

    #@8
    sub-float/2addr p7, p1

    #@9
    const/4 p1, 0x0

    #@a
    const/4 v0, 0x1

    #@b
    if-eqz p3, :cond_1f

    #@d
    if-nez p4, :cond_13

    #@f
    neg-float p3, p7

    #@10
    .line 212
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationZ(F)V

    #@13
    .line 214
    :cond_13
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    #@15
    new-array p4, v0, [F

    #@17
    const/4 p7, 0x0

    #@18
    aput p7, p4, p1

    #@1a
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@1d
    move-result-object p1

    #@1e
    goto :goto_2a

    #@1f
    .line 216
    :cond_1f
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    #@21
    new-array p4, v0, [F

    #@23
    neg-float p7, p7

    #@24
    aput p7, p4, p1

    #@26
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@29
    move-result-object p1

    #@2a
    .line 219
    :goto_2a
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@2c
    const-string p3, "elevation"

    #@2e
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@31
    move-result-object p2

    #@32
    .line 220
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@35
    .line 221
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    return-void
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    #@0
    move-object/from16 v12, p0

    #@2
    move-object/from16 v0, p1

    #@4
    move-object/from16 v8, p2

    #@6
    move-object/from16 v9, p5

    #@8
    .line 377
    instance-of v1, v8, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@a
    if-nez v1, :cond_d

    #@c
    return-void

    #@d
    .line 380
    :cond_d
    move-object v13, v8

    #@e
    check-cast v13, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@10
    .line 382
    iget-object v1, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    #@12
    invoke-direct {v12, v0, v8, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@15
    move-result v1

    #@16
    .line 383
    iget-object v2, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    #@18
    invoke-direct {v12, v0, v8, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@1b
    move-result v10

    #@1c
    .line 384
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@1e
    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    #@23
    .line 385
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    #@25
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@28
    move-result v0

    #@29
    int-to-float v0, v0

    #@2a
    const/high16 v2, 0x40000000    # 2.0f

    #@2c
    div-float v11, v0, v2

    #@2e
    .line 388
    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@30
    const-string v2, "expansion"

    #@32
    invoke-virtual {v0, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@35
    move-result-object v14

    #@36
    if-eqz p3, :cond_74

    #@38
    if-nez p4, :cond_42

    #@3a
    .line 392
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@3c
    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    #@3f
    invoke-interface {v13, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    #@42
    :cond_42
    if-eqz p4, :cond_4b

    #@44
    .line 396
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@47
    move-result-object v0

    #@48
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@4a
    move v11, v0

    #@4b
    :cond_4b
    const/4 v4, 0x0

    #@4c
    const/4 v5, 0x0

    #@4d
    move v2, v1

    #@4e
    move v3, v10

    #@4f
    move/from16 v6, p6

    #@51
    move/from16 v7, p7

    #@53
    .line 398
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    #@56
    move-result v0

    #@57
    .line 402
    invoke-static {v13, v1, v10, v0}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    #@5a
    move-result-object v9

    #@5b
    .line 404
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    #@5d
    invoke-direct {v0, v12, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    #@60
    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@63
    .line 418
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@66
    move-result-wide v2

    #@67
    float-to-int v4, v1

    #@68
    float-to-int v5, v10

    #@69
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, p2

    #@6d
    move v6, v11

    #@6e
    move-object/from16 v7, p8

    #@70
    .line 416
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    #@73
    goto :goto_ab

    #@74
    .line 425
    :cond_74
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@77
    move-result-object v0

    #@78
    iget v6, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@7a
    .line 428
    invoke-static {v13, v1, v10, v11}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    #@7d
    move-result-object v15

    #@7e
    .line 433
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@81
    move-result-wide v2

    #@82
    float-to-int v7, v1

    #@83
    float-to-int v10, v10

    #@84
    move-object/from16 v0, p0

    #@86
    move-object/from16 v1, p2

    #@88
    move v4, v7

    #@89
    move v5, v10

    #@8a
    move/from16 v16, v7

    #@8c
    move-object/from16 v7, p8

    #@8e
    .line 431
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    #@91
    .line 440
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@94
    move-result-wide v2

    #@95
    .line 441
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@98
    move-result-wide v4

    #@99
    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@9b
    .line 442
    invoke-virtual {v0}, Lcom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    #@9e
    move-result-wide v6

    #@9f
    move-object/from16 v0, p0

    #@a1
    move/from16 v8, v16

    #@a3
    move v9, v10

    #@a4
    move v10, v11

    #@a5
    move-object/from16 v11, p8

    #@a7
    .line 438
    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    #@aa
    move-object v9, v15

    #@ab
    .line 449
    :goto_ab
    invoke-virtual {v14, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@ae
    move-object/from16 v0, p8

    #@b0
    .line 450
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b3
    .line 451
    invoke-static {v13}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    #@b6
    move-result-object v0

    #@b7
    move-object/from16 v1, p9

    #@b9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bc
    return-void
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 315
    instance-of v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@2
    if-eqz v0, :cond_56

    #@4
    instance-of v0, p1, Landroid/widget/ImageView;

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_56

    #@9
    .line 319
    :cond_9
    move-object v0, p2

    #@a
    check-cast v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@c
    .line 320
    check-cast p1, Landroid/widget/ImageView;

    #@e
    .line 321
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object p1

    #@12
    if-nez p1, :cond_15

    #@14
    return-void

    #@15
    .line 326
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@18
    const/16 v1, 0xff

    #@1a
    const/4 v2, 0x1

    #@1b
    const/4 v3, 0x0

    #@1c
    if-eqz p3, :cond_2e

    #@1e
    if-nez p4, :cond_23

    #@20
    .line 332
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@23
    .line 334
    :cond_23
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    #@25
    new-array p4, v2, [I

    #@27
    aput v3, p4, v3

    #@29
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    #@2c
    move-result-object p3

    #@2d
    goto :goto_38

    #@2e
    .line 336
    :cond_2e
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    #@30
    new-array p4, v2, [I

    #@32
    aput v1, p4, v3

    #@34
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    #@37
    move-result-object p3

    #@38
    .line 341
    :goto_38
    new-instance p4, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    #@3a
    invoke-direct {p4, p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    #@3d
    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@40
    .line 349
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@42
    const-string p4, "iconFade"

    #@44
    invoke-virtual {p2, p4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@47
    move-result-object p2

    #@48
    .line 350
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@4b
    .line 351
    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4e
    .line 352
    new-instance p2, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    #@50
    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    #@53
    invoke-interface {p7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@56
    :cond_56
    :goto_56
    return-void
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    add-long/2addr p2, p4

    #@1
    cmp-long p4, p2, p6

    #@3
    if-gez p4, :cond_13

    #@5
    .line 778
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    #@8
    move-result-object p1

    #@9
    .line 780
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    #@c
    sub-long/2addr p6, p2

    #@d
    .line 781
    invoke-virtual {p1, p6, p7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@10
    .line 782
    invoke-interface {p11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    :cond_13
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v2, p2, v0

    #@4
    if-lez v2, :cond_13

    #@6
    .line 755
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    #@9
    move-result-object p1

    #@a
    .line 757
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    #@d
    .line 758
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@10
    .line 759
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    :cond_13
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    #@0
    move-object/from16 v10, p0

    #@2
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p2

    #@6
    move/from16 v2, p3

    #@8
    move-object/from16 v3, p5

    #@a
    move-object/from16 v11, p6

    #@c
    .line 267
    iget-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    #@e
    invoke-direct {v10, v0, v1, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@11
    move-result v4

    #@12
    .line 268
    iget-object v5, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    #@14
    invoke-direct {v10, v0, v1, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    #@17
    move-result v0

    #@18
    .line 274
    invoke-direct {v10, v4, v0, v2, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    #@1b
    move-result-object v5

    #@1c
    .line 275
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1e
    move-object v12, v6

    #@1f
    check-cast v12, Lcom/google/android/material/animation/MotionTiming;

    #@21
    .line 276
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@23
    move-object v13, v5

    #@24
    check-cast v13, Lcom/google/android/material/animation/MotionTiming;

    #@26
    const/4 v5, 0x0

    #@27
    const/4 v6, 0x1

    #@28
    if-eqz v2, :cond_5a

    #@2a
    if-nez p4, :cond_34

    #@2c
    neg-float v2, v4

    #@2d
    .line 280
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    #@30
    neg-float v2, v0

    #@31
    .line 281
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    #@34
    .line 283
    :cond_34
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@36
    new-array v7, v6, [F

    #@38
    const/4 v8, 0x0

    #@39
    aput v8, v7, v5

    #@3b
    invoke-static {v1, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@3e
    move-result-object v14

    #@3f
    .line 284
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@41
    new-array v6, v6, [F

    #@43
    aput v8, v6, v5

    #@45
    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@48
    move-result-object v15

    #@49
    neg-float v5, v4

    #@4a
    neg-float v6, v0

    #@4b
    const/4 v7, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    move-object/from16 v1, p2

    #@50
    move-object/from16 v2, p5

    #@52
    move-object v3, v12

    #@53
    move-object v4, v13

    #@54
    move-object/from16 v9, p8

    #@56
    .line 286
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    #@59
    goto :goto_70

    #@5a
    .line 297
    :cond_5a
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@5c
    new-array v3, v6, [F

    #@5e
    neg-float v4, v4

    #@5f
    aput v4, v3, v5

    #@61
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@64
    move-result-object v14

    #@65
    .line 298
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@67
    new-array v3, v6, [F

    #@69
    neg-float v0, v0

    #@6a
    aput v0, v3, v5

    #@6c
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@6f
    move-result-object v15

    #@70
    .line 301
    :goto_70
    invoke-virtual {v12, v14}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@73
    .line 302
    invoke-virtual {v13, v15}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@76
    .line 303
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@79
    .line 304
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7c
    return-void
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .registers 4

    #@0
    .line 735
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    #@9
    move-result-object p1

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@11
    move-result p1

    #@12
    return p1

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    return p1
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    #@0
    .line 727
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 728
    check-cast p1, Landroid/view/ViewGroup;

    #@6
    return-object p1

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    return-object p1
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    #@0
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    #@3
    move-result p1

    #@4
    const/16 v0, 0x8

    #@6
    if-eq p1, v0, :cond_1d

    #@8
    .line 104
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@a
    const/4 v0, 0x0

    #@b
    if-eqz p1, :cond_1c

    #@d
    .line 105
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@f
    .line 106
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_1b

    #@15
    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@18
    move-result p2

    #@19
    if-ne p1, p2, :cond_1c

    #@1b
    :cond_1b
    const/4 v0, 0x1

    #@1c
    :cond_1c
    return v0

    #@1d
    .line 100
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1f
    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    #@21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw p1
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 3

    #@0
    .line 115
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    #@2
    if-nez v0, :cond_8

    #@4
    const/16 v0, 0x50

    #@6
    .line 118
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    #@8
    :cond_8
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .registers 20

    #@0
    move-object v10, p0

    #@1
    move/from16 v11, p3

    #@3
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    #@a
    move-result-object v12

    #@b
    if-eqz v11, :cond_19

    #@d
    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    #@10
    move-result v0

    #@11
    iput v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    #@13
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    #@16
    move-result v0

    #@17
    iput v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    #@19
    .line 136
    :cond_19
    new-instance v13, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 137
    new-instance v14, Ljava/util/ArrayList;

    #@20
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@23
    move-object v0, p0

    #@24
    move-object/from16 v1, p1

    #@26
    move-object/from16 v2, p2

    #@28
    move/from16 v3, p3

    #@2a
    move/from16 v4, p4

    #@2c
    move-object v5, v12

    #@2d
    move-object v6, v13

    #@2e
    move-object v7, v14

    #@2f
    .line 140
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    #@32
    .line 144
    iget-object v9, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    #@34
    move-object v0, p0

    #@35
    move-object/from16 v1, p1

    #@37
    move-object/from16 v2, p2

    #@39
    move/from16 v3, p3

    #@3b
    move/from16 v4, p4

    #@3d
    move-object v5, v12

    #@3e
    move-object v6, v13

    #@3f
    move-object v7, v14

    #@40
    move-object v8, v9

    #@41
    .line 145
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    #@44
    .line 147
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    #@47
    move-result v8

    #@48
    .line 148
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    #@4b
    move-result v9

    #@4c
    move-object v4, v12

    #@4d
    move-object v5, v13

    #@4e
    .line 150
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createDependencyTranslationAnimation(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V

    #@51
    move/from16 v4, p4

    #@53
    move-object v5, v12

    #@54
    .line 151
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    #@57
    move v6, v8

    #@58
    move v7, v9

    #@59
    move-object v8, v13

    #@5a
    move-object v9, v14

    #@5b
    .line 152
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    #@5e
    move-object v6, v13

    #@5f
    move-object v7, v14

    #@60
    .line 162
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    #@63
    .line 163
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    #@66
    .line 166
    new-instance v0, Landroid/animation/AnimatorSet;

    #@68
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@6b
    .line 167
    invoke-static {v0, v13}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    #@6e
    .line 168
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    #@70
    move-object/from16 v2, p1

    #@72
    move-object/from16 v3, p2

    #@74
    invoke-direct {v1, p0, v11, v3, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    #@77
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@7a
    .line 190
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@7d
    move-result v1

    #@7e
    const/4 v2, 0x0

    #@7f
    :goto_7f
    if-ge v2, v1, :cond_8d

    #@81
    .line 191
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@84
    move-result-object v3

    #@85
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@87
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@8a
    add-int/lit8 v2, v2, 0x1

    #@8c
    goto :goto_7f

    #@8d
    :cond_8d
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
