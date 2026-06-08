.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcom/google/android/material/appbar/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lcom/google/android/material/appbar/HeaderBehavior<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EXPAND_BY_KEY_EVENT_THRESHOLD_PERCENTAGE:D = 0.1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private coordinatorLayoutA11yScrollable:Z

.field private lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedType:I

.field private offsetAnimator:Landroid/animation/ValueAnimator;

.field private offsetDelta:I

.field private onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

.field private savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 1477
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 1480
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)Z
    .registers 1

    #@0
    .line 1446
    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->coordinatorLayoutA11yScrollable:Z

    #@2
    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I
    .registers 1

    #@0
    .line 1446
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    #@2
    return p0
.end method

.method private addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    #@0
    .line 1952
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@7
    move-result v1

    #@8
    neg-int v1, v1

    #@9
    const/4 v2, 0x1

    #@a
    const/4 v3, 0x0

    #@b
    if-eq v0, v1, :cond_13

    #@d
    .line 1955
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@f
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Z)V

    #@12
    move v3, v2

    #@13
    .line 1960
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_3e

    #@19
    const/4 v0, -0x1

    #@1a
    .line 1961
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_38

    #@20
    .line 1964
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    #@23
    move-result v0

    #@24
    neg-int v9, v0

    #@25
    if-eqz v9, :cond_3e

    #@27
    .line 1967
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@29
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;

    #@2b
    move-object v4, v1

    #@2c
    move-object v5, p0

    #@2d
    move-object v6, p1

    #@2e
    move-object v7, p2

    #@2f
    move-object v8, p3

    #@30
    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    #@33
    const/4 p2, 0x0

    #@34
    invoke-static {p1, v0, p2, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    #@37
    goto :goto_3f

    #@38
    .line 1990
    :cond_38
    sget-object p3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@3a
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Z)V

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    move v2, v3

    #@3f
    :goto_3f
    return v2
.end method

.method private addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "Z)V"
        }
    .end annotation

    #@0
    .line 2002
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;

    #@2
    invoke-direct {v0, p0, p2, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    #@5
    const/4 p2, 0x0

    #@6
    invoke-static {p1, p3, p2, v0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    #@9
    return-void
.end method

.method private animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    #@0
    .line 1606
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@3
    move-result v0

    #@4
    sub-int/2addr v0, p3

    #@5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@8
    move-result v0

    #@9
    .line 1609
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    #@c
    move-result p4

    #@d
    const/4 v1, 0x0

    #@e
    cmpl-float v1, p4, v1

    #@10
    if-lez v1, :cond_1e

    #@12
    int-to-float v0, v0

    #@13
    div-float/2addr v0, p4

    #@14
    const/high16 p4, 0x447a0000    # 1000.0f

    #@16
    mul-float/2addr v0, p4

    #@17
    .line 1611
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@1a
    move-result p4

    #@1b
    mul-int/lit8 p4, p4, 0x3

    #@1d
    goto :goto_2c

    #@1e
    :cond_1e
    int-to-float p4, v0

    #@1f
    .line 1613
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    #@22
    move-result v0

    #@23
    int-to-float v0, v0

    #@24
    div-float/2addr p4, v0

    #@25
    const/high16 v0, 0x3f800000    # 1.0f

    #@27
    add-float/2addr p4, v0

    #@28
    const/high16 v0, 0x43160000    # 150.0f

    #@2a
    mul-float/2addr p4, v0

    #@2b
    float-to-int p4, p4

    #@2c
    .line 1617
    :goto_2c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    #@2f
    return-void
.end method

.method private animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    #@0
    .line 1625
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@3
    move-result v0

    #@4
    if-ne v0, p3, :cond_16

    #@6
    .line 1627
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@8
    if-eqz p1, :cond_15

    #@a
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_15

    #@10
    .line 1628
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    #@15
    :cond_15
    return-void

    #@16
    .line 1633
    :cond_16
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@18
    if-nez v1, :cond_31

    #@1a
    .line 1634
    new-instance v1, Landroid/animation/ValueAnimator;

    #@1c
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@21
    .line 1635
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@23
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@26
    .line 1636
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@28
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;

    #@2a
    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@2d
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@30
    goto :goto_34

    #@31
    .line 1645
    :cond_31
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    #@34
    .line 1648
    :goto_34
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@36
    const/16 p2, 0x258

    #@38
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    #@3b
    move-result p2

    #@3c
    int-to-long v1, p2

    #@3d
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@40
    .line 1649
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@42
    const/4 p2, 0x2

    #@43
    new-array p2, p2, [I

    #@45
    const/4 p4, 0x0

    #@46
    aput v0, p2, p4

    #@48
    const/4 p4, 0x1

    #@49
    aput p3, p2, p4

    #@4b
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@4e
    .line 1650
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@53
    return-void
.end method

.method private calculateSnapOffset(III)I
    .registers 5

    #@0
    add-int v0, p2, p3

    #@2
    .line 1729
    div-int/lit8 v0, v0, 0x2

    #@4
    if-ge p1, v0, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    move p2, p3

    #@8
    :goto_8
    return p2
.end method

.method private canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    #@0
    .line 1514
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasScrollableChildren()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 1515
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@9
    move-result p1

    #@a
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    #@d
    move-result p3

    #@e
    sub-int/2addr p1, p3

    #@f
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    #@12
    move-result p2

    #@13
    if-gt p1, p2, :cond_17

    #@15
    const/4 p1, 0x1

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    :goto_18
    return p1
.end method

.method private static checkFlag(II)Z
    .registers 2

    #@0
    and-int/2addr p0, p1

    #@1
    if-ne p0, p1, :cond_5

    #@3
    const/4 p0, 0x1

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 p0, 0x0

    #@6
    :goto_6
    return p0
.end method

.method private childrenHaveScrollFlags(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 6

    #@0
    .line 1934
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_1b

    #@8
    .line 1936
    invoke-virtual {p1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    .line 1937
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@12
    .line 1938
    iget v3, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    #@14
    if-eqz v3, :cond_18

    #@16
    const/4 p1, 0x1

    #@17
    return p1

    #@18
    :cond_18
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_6

    #@1b
    :cond_1b
    return v1
.end method

.method private controlExpansionOnKeyPress(Landroid/view/KeyEvent;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 10

    #@0
    .line 1860
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_d

    #@7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@a
    move-result v0

    #@b
    if-ne v0, v1, :cond_4c

    #@d
    .line 1861
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@10
    move-result p1

    #@11
    const/16 v0, 0x13

    #@13
    if-eq p1, v0, :cond_35

    #@15
    const/16 v0, 0x118

    #@17
    if-eq p1, v0, :cond_35

    #@19
    const/16 v0, 0x5c

    #@1b
    if-ne p1, v0, :cond_1e

    #@1d
    goto :goto_35

    #@1e
    :cond_1e
    const/16 v0, 0x14

    #@20
    if-eq p1, v0, :cond_2a

    #@22
    const/16 v0, 0x119

    #@24
    if-eq p1, v0, :cond_2a

    #@26
    const/16 v0, 0x5d

    #@28
    if-ne p1, v0, :cond_4c

    #@2a
    .line 1873
    :cond_2a
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    #@2d
    move-result p1

    #@2e
    if-lez p1, :cond_4c

    #@30
    const/4 p1, 0x0

    #@31
    .line 1874
    invoke-virtual {p3, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    #@34
    goto :goto_4c

    #@35
    .line 1866
    :cond_35
    :goto_35
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    #@38
    move-result p1

    #@39
    int-to-double v2, p1

    #@3a
    .line 1867
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    #@3d
    move-result p1

    #@3e
    int-to-double p1, p1

    #@3f
    const-wide v4, 0x3fb999999999999aL    # 0.1

    #@44
    mul-double/2addr p1, v4

    #@45
    cmpg-double p1, v2, p1

    #@47
    if-gez p1, :cond_4c

    #@49
    .line 1868
    invoke-virtual {p3, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    #@4c
    :cond_4c
    :goto_4c
    return-void
.end method

.method private findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .registers 6

    #@0
    .line 2253
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1c

    #@7
    .line 2254
    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 2255
    instance-of v3, v2, Landroidx/core/view/NestedScrollingChild;

    #@d
    if-nez v3, :cond_1b

    #@f
    instance-of v3, v2, Landroid/widget/ListView;

    #@11
    if-nez v3, :cond_1b

    #@13
    instance-of v3, v2, Landroid/widget/ScrollView;

    #@15
    if-eqz v3, :cond_18

    #@17
    goto :goto_1b

    #@18
    :cond_18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    :goto_1b
    return-object v2

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    return-object p1
.end method

.method private static getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;
    .registers 6

    #@0
    .line 2241
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result p1

    #@4
    .line 2242
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_9
    if-ge v1, v0, :cond_1f

    #@b
    .line 2243
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 2244
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@12
    move-result v3

    #@13
    if-lt p1, v3, :cond_1c

    #@15
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@18
    move-result v3

    #@19
    if-gt p1, v3, :cond_1c

    #@1b
    return-object v2

    #@1c
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_9

    #@1f
    :cond_1f
    const/4 p0, 0x0

    #@20
    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .line 1654
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_34

    #@7
    .line 1655
    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 1656
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@e
    move-result v3

    #@f
    .line 1657
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@12
    move-result v4

    #@13
    .line 1659
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@19
    .line 1660
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    #@1c
    move-result v5

    #@1d
    const/16 v6, 0x20

    #@1f
    invoke-static {v5, v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2b

    #@25
    .line 1662
    iget v5, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    #@27
    sub-int/2addr v3, v5

    #@28
    .line 1663
    iget v2, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    #@2a
    add-int/2addr v4, v2

    #@2b
    :cond_2b
    neg-int v2, p2

    #@2c
    if-gt v3, v2, :cond_31

    #@2e
    if-lt v4, v2, :cond_31

    #@30
    return v1

    #@31
    :cond_31
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_5

    #@34
    :cond_34
    const/4 p1, -0x1

    #@35
    return p1
.end method

.method private getChildWithScrollingBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .registers 6

    #@0
    .line 1920
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1d

    #@7
    .line 1922
    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 1925
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@11
    .line 1926
    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@14
    move-result-object v3

    #@15
    instance-of v3, v3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    #@17
    if-eqz v3, :cond_1a

    #@19
    return-object v2

    #@1a
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_5

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    return-object p1
.end method

.method private interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .line 2128
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    .line 2130
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ge v3, v1, :cond_70

    #@c
    .line 2131
    invoke-virtual {p1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v4

    #@10
    .line 2132
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@16
    .line 2133
    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    #@19
    move-result-object v6

    #@1a
    .line 2135
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@1d
    move-result v7

    #@1e
    if-lt v0, v7, :cond_6d

    #@20
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@23
    move-result v7

    #@24
    if-gt v0, v7, :cond_6d

    #@26
    if-eqz v6, :cond_70

    #@28
    .line 2138
    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    #@2b
    move-result v1

    #@2c
    and-int/lit8 v3, v1, 0x1

    #@2e
    if-eqz v3, :cond_44

    #@30
    .line 2141
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@33
    move-result v3

    #@34
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    #@36
    add-int/2addr v3, v7

    #@37
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    #@39
    add-int/2addr v3, v5

    #@3a
    add-int/2addr v2, v3

    #@3b
    and-int/lit8 v1, v1, 0x2

    #@3d
    if-eqz v1, :cond_44

    #@3f
    .line 2146
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@42
    move-result v1

    #@43
    sub-int/2addr v2, v1

    #@44
    .line 2150
    :cond_44
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4f

    #@4a
    .line 2151
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@4d
    move-result p1

    #@4e
    sub-int/2addr v2, p1

    #@4f
    :cond_4f
    if-lez v2, :cond_70

    #@51
    .line 2155
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@54
    move-result p1

    #@55
    sub-int/2addr v0, p1

    #@56
    int-to-float p1, v2

    #@57
    int-to-float v0, v0

    #@58
    div-float/2addr v0, p1

    #@59
    .line 2159
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@5c
    move-result v0

    #@5d
    mul-float/2addr p1, v0

    #@5e
    .line 2157
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@61
    move-result p1

    #@62
    .line 2162
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    #@65
    move-result p2

    #@66
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@69
    move-result v0

    #@6a
    add-int/2addr v0, p1

    #@6b
    mul-int/2addr p2, v0

    #@6c
    return p2

    #@6d
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    #@6f
    goto :goto_a

    #@70
    :cond_70
    return p2
.end method

.method private shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    #@0
    .line 2224
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    .line 2225
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result p2

    #@8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ge v1, p2, :cond_2d

    #@c
    .line 2226
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/view/View;

    #@12
    .line 2228
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@18
    .line 2229
    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@1b
    move-result-object v2

    #@1c
    .line 2231
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    #@1e
    if-eqz v3, :cond_2a

    #@20
    .line 2232
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    #@22
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    #@25
    move-result p1

    #@26
    if-eqz p1, :cond_29

    #@28
    const/4 v0, 0x1

    #@29
    :cond_29
    return v0

    #@2a
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_a

    #@2d
    :cond_2d
    return v0
.end method

.method private snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    #@0
    .line 1674
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPaddingTop()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    .line 1678
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v1, v0

    #@e
    .line 1679
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    #@11
    move-result v2

    #@12
    if-ltz v2, :cond_84

    #@14
    .line 1681
    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v3

    #@18
    .line 1682
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@1e
    .line 1683
    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    #@21
    move-result v5

    #@22
    and-int/lit8 v6, v5, 0x11

    #@24
    const/16 v7, 0x11

    #@26
    if-ne v6, v7, :cond_84

    #@28
    .line 1687
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@2b
    move-result v6

    #@2c
    neg-int v6, v6

    #@2d
    .line 1688
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@30
    move-result v7

    #@31
    neg-int v7, v7

    #@32
    if-nez v2, :cond_45

    #@34
    .line 1693
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_45

    #@3a
    .line 1694
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_45

    #@40
    .line 1695
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@43
    move-result v2

    #@44
    sub-int/2addr v6, v2

    #@45
    :cond_45
    const/4 v2, 0x2

    #@46
    .line 1698
    invoke-static {v5, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_52

    #@4c
    .line 1700
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@4f
    move-result v2

    #@50
    add-int/2addr v7, v2

    #@51
    goto :goto_63

    #@52
    :cond_52
    const/4 v2, 0x5

    #@53
    .line 1701
    invoke-static {v5, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_63

    #@59
    .line 1705
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@5c
    move-result v2

    #@5d
    add-int/2addr v2, v7

    #@5e
    if-ge v1, v2, :cond_62

    #@60
    move v6, v2

    #@61
    goto :goto_63

    #@62
    :cond_62
    move v7, v2

    #@63
    :cond_63
    :goto_63
    const/16 v2, 0x20

    #@65
    .line 1713
    invoke-static {v5, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    #@68
    move-result v2

    #@69
    if-eqz v2, :cond_71

    #@6b
    .line 1715
    iget v2, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    #@6d
    add-int/2addr v6, v2

    #@6e
    .line 1716
    iget v2, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    #@70
    sub-int/2addr v7, v2

    #@71
    .line 1721
    :cond_71
    invoke-direct {p0, v1, v7, v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->calculateSnapOffset(III)I

    #@74
    move-result v1

    #@75
    add-int/2addr v1, v0

    #@76
    .line 1723
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@79
    move-result v0

    #@7a
    neg-int v0, v0

    #@7b
    const/4 v2, 0x0

    #@7c
    invoke-static {v1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@7f
    move-result v0

    #@80
    const/4 v1, 0x0

    #@81
    .line 1722
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    #@84
    :cond_84
    return-void
.end method

.method private updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    #@0
    .line 1882
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@5
    move-result v0

    #@6
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@9
    .line 1883
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@b
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@e
    move-result v0

    #@f
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@12
    .line 1885
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_19

    #@18
    return-void

    #@19
    .line 1890
    :cond_19
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getChildWithScrollingBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_20

    #@1f
    return-void

    #@20
    .line 1896
    :cond_20
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->childrenHaveScrollFlags(Lcom/google/android/material/appbar/AppBarLayout;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_27

    #@26
    return-void

    #@27
    .line 1900
    :cond_27
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_35

    #@2d
    .line 1901
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;

    #@2f
    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)V

    #@32
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@35
    .line 1915
    :cond_35
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    #@38
    move-result p1

    #@39
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->coordinatorLayoutA11yScrollable:Z

    #@3b
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    #@0
    .line 2181
    invoke-static {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_41

    #@7
    .line 2184
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@d
    .line 2185
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    #@10
    move-result v2

    #@11
    and-int/lit8 v3, v2, 0x1

    #@13
    if-eqz v3, :cond_41

    #@15
    .line 2188
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@18
    move-result v3

    #@19
    const/4 v4, 0x1

    #@1a
    if-lez p4, :cond_2f

    #@1c
    and-int/lit8 p4, v2, 0xc

    #@1e
    if-eqz p4, :cond_2f

    #@20
    neg-int p3, p3

    #@21
    .line 2197
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@24
    move-result p4

    #@25
    sub-int/2addr p4, v3

    #@26
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@29
    move-result v0

    #@2a
    sub-int/2addr p4, v0

    #@2b
    if-lt p3, p4, :cond_41

    #@2d
    :goto_2d
    move v1, v4

    #@2e
    goto :goto_41

    #@2f
    :cond_2f
    and-int/lit8 p4, v2, 0x2

    #@31
    if-eqz p4, :cond_41

    #@33
    neg-int p3, p3

    #@34
    .line 2201
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@37
    move-result p4

    #@38
    sub-int/2addr p4, v3

    #@39
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@3c
    move-result v0

    #@3d
    sub-int/2addr p4, v0

    #@3e
    if-lt p3, p4, :cond_41

    #@40
    goto :goto_2d

    #@41
    .line 2206
    :cond_41
    :goto_41
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    #@44
    move-result p3

    #@45
    if-eqz p3, :cond_4f

    #@47
    .line 2209
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    #@4a
    move-result-object p3

    #@4b
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    #@4e
    move-result v1

    #@4f
    .line 2212
    :cond_4f
    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    #@52
    move-result p3

    #@53
    if-nez p5, :cond_5d

    #@55
    if-eqz p3, :cond_60

    #@57
    .line 2214
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z

    #@5a
    move-result p1

    #@5b
    if-eqz p1, :cond_60

    #@5d
    .line 2217
    :cond_5d
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->jumpDrawablesToCurrentState()V

    #@60
    :cond_60
    return-void
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 1446
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 2017
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 2019
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 2023
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@b
    const/4 v0, 0x1

    #@c
    if-eqz p1, :cond_25

    #@e
    .line 2025
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object p1

    #@12
    check-cast p1, Landroid/view/View;

    #@14
    if-eqz p1, :cond_24

    #@16
    .line 2027
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_24

    #@1c
    const/4 v1, -0x1

    #@1d
    .line 2028
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_24

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 v0, 0x0

    #@25
    :cond_25
    :goto_25
    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .registers 2

    #@0
    .line 1446
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .line 2046
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    #@3
    move-result p1

    #@4
    neg-int p1, p1

    #@5
    return p1
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2

    #@0
    .line 1446
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .line 2051
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .registers 3

    #@0
    .line 2266
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .registers 2

    #@0
    .line 2124
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method synthetic lambda$onLayoutChild$0$com-google-android-material-appbar-AppBarLayout$BaseBehavior(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 5

    #@0
    .line 1837
    invoke-direct {p0, p4, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->controlExpansionOnKeyPress(Landroid/view/KeyEvent;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@3
    const/4 p1, 0x0

    #@4
    return p1
.end method

.method synthetic lambda$onLayoutChild$1$com-google-android-material-appbar-AppBarLayout$BaseBehavior(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    .line 1848
    invoke-direct {p0, p5, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->controlExpansionOnKeyPress(Landroid/view/KeyEvent;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@3
    const/4 p1, 0x0

    #@4
    return p1
.end method

.method bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@5
    return-void
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    #@0
    .line 2038
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@3
    .line 2039
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_14

    #@9
    .line 2040
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    #@10
    move-result p1

    #@11
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    #@14
    :cond_14
    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    #@0
    .line 1768
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    #@3
    move-result p3

    #@4
    .line 1774
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    #@7
    move-result v0

    #@8
    .line 1775
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@a
    const/4 v2, 0x0

    #@b
    if-eqz v1, :cond_59

    #@d
    and-int/lit8 v3, v0, 0x8

    #@f
    if-nez v3, :cond_59

    #@11
    .line 1776
    iget-boolean v0, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    #@13
    if-eqz v0, :cond_1f

    #@15
    .line 1778
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@18
    move-result v0

    #@19
    neg-int v0, v0

    #@1a
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    #@1d
    goto/16 :goto_83

    #@1f
    .line 1779
    :cond_1f
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@21
    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    #@23
    if-eqz v0, :cond_29

    #@25
    .line 1781
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    #@28
    goto :goto_83

    #@29
    .line 1784
    :cond_29
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@2b
    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    #@2d
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@30
    move-result-object v0

    #@31
    .line 1785
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@34
    move-result v1

    #@35
    neg-int v1, v1

    #@36
    .line 1786
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@38
    iget-boolean v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    #@3a
    if-eqz v3, :cond_46

    #@3c
    .line 1787
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@3f
    move-result v0

    #@40
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@43
    move-result v3

    #@44
    add-int/2addr v0, v3

    #@45
    goto :goto_54

    #@46
    .line 1789
    :cond_46
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@49
    move-result v0

    #@4a
    int-to-float v0, v0

    #@4b
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@4d
    iget v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    #@4f
    mul-float/2addr v0, v3

    #@50
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@53
    move-result v0

    #@54
    :goto_54
    add-int/2addr v1, v0

    #@55
    .line 1791
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    #@58
    goto :goto_83

    #@59
    :cond_59
    if-eqz v0, :cond_83

    #@5b
    and-int/lit8 v1, v0, 0x4

    #@5d
    const/4 v3, 0x1

    #@5e
    if-eqz v1, :cond_62

    #@60
    move v1, v3

    #@61
    goto :goto_63

    #@62
    :cond_62
    move v1, v2

    #@63
    :goto_63
    and-int/lit8 v4, v0, 0x2

    #@65
    const/4 v5, 0x0

    #@66
    if-eqz v4, :cond_77

    #@68
    .line 1796
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    #@6b
    move-result v0

    #@6c
    neg-int v0, v0

    #@6d
    if-eqz v1, :cond_73

    #@6f
    .line 1798
    invoke-direct {p0, p1, p2, v0, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    #@72
    goto :goto_83

    #@73
    .line 1800
    :cond_73
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    #@76
    goto :goto_83

    #@77
    :cond_77
    and-int/2addr v0, v3

    #@78
    if-eqz v0, :cond_83

    #@7a
    if-eqz v1, :cond_80

    #@7c
    .line 1804
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    #@7f
    goto :goto_83

    #@80
    .line 1806
    :cond_80
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    #@83
    .line 1812
    :cond_83
    :goto_83
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->resetPendingAction()V

    #@86
    const/4 v0, 0x0

    #@87
    .line 1813
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@89
    .line 1818
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    #@8c
    move-result v0

    #@8d
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@90
    move-result v1

    #@91
    neg-int v1, v1

    #@92
    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@95
    move-result v0

    #@96
    .line 1817
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    #@99
    .line 1824
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    #@9c
    move-result v4

    #@9d
    const/4 v5, 0x0

    #@9e
    const/4 v6, 0x1

    #@9f
    move-object v1, p0

    #@a0
    move-object v2, p1

    #@a1
    move-object v3, p2

    #@a2
    .line 1823
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    #@a5
    .line 1827
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    #@a8
    move-result v0

    #@a9
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    #@ac
    .line 1829
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@af
    .line 1832
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    #@b2
    move-result-object p1

    #@b3
    if-eqz p1, :cond_cc

    #@b5
    .line 1834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@b7
    const/16 v1, 0x1c

    #@b9
    if-lt v0, v1, :cond_c4

    #@bb
    .line 1835
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda0;

    #@bd
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@c0
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    #@c3
    goto :goto_cc

    #@c4
    .line 1846
    :cond_c4
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda1;

    #@c6
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@c9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@cc
    :cond_cc
    :goto_cc
    return p3
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    #@0
    .line 1745
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 1746
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    #@8
    const/4 v1, -0x2

    #@9
    if-ne v0, v1, :cond_1a

    #@b
    const/4 p5, 0x0

    #@c
    .line 1755
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f
    move-result v4

    #@10
    move-object v0, p1

    #@11
    move-object v1, p2

    #@12
    move v2, p3

    #@13
    move v3, p4

    #@14
    move v5, p6

    #@15
    .line 1751
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    #@18
    const/4 p1, 0x1

    #@19
    return p1

    #@1a
    .line 1761
    :cond_1a
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/HeaderBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    #@1d
    move-result p1

    #@1e
    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    #@5
    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    #@0
    if-eqz p5, :cond_24

    #@2
    if-gez p5, :cond_f

    #@4
    .line 1532
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@7
    move-result p4

    #@8
    neg-int p4, p4

    #@9
    .line 1533
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    #@c
    move-result p7

    #@d
    add-int/2addr p7, p4

    #@e
    goto :goto_15

    #@f
    .line 1536
    :cond_f
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    #@12
    move-result p4

    #@13
    neg-int p4, p4

    #@14
    const/4 p7, 0x0

    #@15
    :goto_15
    move v4, p4

    #@16
    move v5, p7

    #@17
    if-eq v4, v5, :cond_24

    #@19
    const/4 p4, 0x1

    #@1a
    move-object v0, p0

    #@1b
    move-object v1, p1

    #@1c
    move-object v2, p2

    #@1d
    move v3, p5

    #@1e
    .line 1540
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    #@21
    move-result p1

    #@22
    aput p1, p6, p4

    #@24
    .line 1543
    :cond_24
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    #@27
    move-result p1

    #@28
    if-eqz p1, :cond_31

    #@2a
    .line 1544
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    #@2d
    move-result p1

    #@2e
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    #@31
    :cond_31
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    #@5
    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    #@0
    if-gez p7, :cond_13

    #@2
    .line 1563
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    #@5
    move-result p3

    #@6
    neg-int v4, p3

    #@7
    const/4 v5, 0x0

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move v3, p7

    #@c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    #@f
    move-result p3

    #@10
    const/4 p4, 0x1

    #@11
    aput p3, p9, p4

    #@13
    :cond_13
    if-nez p7, :cond_18

    #@15
    .line 1569
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@18
    :cond_18
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 4

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    #@5
    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    #@0
    .line 2279
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@2
    if-eqz v0, :cond_14

    #@4
    .line 2280
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@6
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, p3, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->restoreScrollState(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;Z)V

    #@a
    .line 2281
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@c
    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@f
    move-result-object p3

    #@10
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    #@13
    goto :goto_1a

    #@14
    .line 2283
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    #@17
    const/4 p1, 0x0

    #@18
    .line 2284
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@1a
    :goto_1a
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    #@0
    .line 2271
    invoke-super {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    #@3
    move-result-object p1

    #@4
    .line 2272
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@7
    move-result-object p2

    #@8
    if-nez p2, :cond_b

    #@a
    goto :goto_c

    #@b
    :cond_b
    move-object p1, p2

    #@c
    :goto_c
    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    #@0
    and-int/lit8 p4, p5, 0x2

    #@2
    if-eqz p4, :cond_12

    #@4
    .line 1495
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    #@7
    move-result p4

    #@8
    if-nez p4, :cond_10

    #@a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_12

    #@10
    :cond_10
    const/4 p1, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    :goto_13
    if-eqz p1, :cond_1c

    #@15
    .line 1497
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    #@17
    if-eqz p2, :cond_1c

    #@19
    .line 1499
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    #@1c
    :cond_1c
    const/4 p2, 0x0

    #@1d
    .line 1503
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@1f
    .line 1506
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    #@21
    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    #@5
    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    #@0
    .line 1580
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    #@2
    if-eqz v0, :cond_7

    #@4
    const/4 v0, 0x1

    #@5
    if-ne p4, v0, :cond_17

    #@7
    .line 1582
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@a
    .line 1583
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_17

    #@10
    .line 1584
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    #@13
    move-result p1

    #@14
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    #@17
    .line 1589
    :cond_17
    new-instance p1, Ljava/lang/ref/WeakReference;

    #@19
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1c
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@1e
    return-void
.end method

.method restoreScrollState(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;Z)V
    .registers 4

    #@0
    .line 2313
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@2
    if-eqz v0, :cond_6

    #@4
    if-eqz p2, :cond_8

    #@6
    .line 2314
    :cond_6
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@8
    :cond_8
    return-void
.end method

.method saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "TT;)",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;"
        }
    .end annotation

    #@0
    .line 2290
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    #@3
    move-result v0

    #@4
    .line 2293
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ge v3, v1, :cond_5c

    #@c
    .line 2294
    invoke-virtual {p2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v4

    #@10
    .line 2295
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@13
    move-result v5

    #@14
    add-int/2addr v5, v0

    #@15
    .line 2297
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@18
    move-result v6

    #@19
    add-int/2addr v6, v0

    #@1a
    if-gtz v6, :cond_59

    #@1c
    if-ltz v5, :cond_59

    #@1e
    .line 2298
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@20
    if-nez p1, :cond_24

    #@22
    .line 2299
    sget-object p1, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    #@24
    :cond_24
    invoke-direct {v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@27
    const/4 p1, 0x1

    #@28
    if-nez v0, :cond_2c

    #@2a
    move v6, p1

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v6, v2

    #@2d
    .line 2300
    :goto_2d
    iput-boolean v6, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    #@2f
    .line 2301
    iget-boolean v6, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    #@31
    if-nez v6, :cond_3c

    #@33
    neg-int v0, v0

    #@34
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@37
    move-result v6

    #@38
    if-lt v0, v6, :cond_3c

    #@3a
    move v0, p1

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move v0, v2

    #@3d
    :goto_3d
    iput-boolean v0, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    #@3f
    .line 2302
    iput v3, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    #@41
    .line 2304
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@44
    move-result v0

    #@45
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@48
    move-result p2

    #@49
    add-int/2addr v0, p2

    #@4a
    if-ne v5, v0, :cond_4d

    #@4c
    move v2, p1

    #@4d
    :cond_4d
    iput-boolean v2, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    #@4f
    int-to-float p1, v5

    #@50
    .line 2305
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@53
    move-result p2

    #@54
    int-to-float p2, p2

    #@55
    div-float/2addr p1, p2

    #@56
    iput p1, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    #@58
    return-object v1

    #@59
    :cond_59
    add-int/lit8 v3, v3, 0x1

    #@5b
    goto :goto_a

    #@5c
    :cond_5c
    const/4 p1, 0x0

    #@5d
    return-object p1
.end method

.method public setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .registers 2

    #@0
    .line 1598
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    #@2
    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6

    #@0
    .line 1446
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    #@0
    .line 2061
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz p4, :cond_75

    #@7
    if-lt v0, p4, :cond_75

    #@9
    if-gt v0, p5, :cond_75

    #@b
    .line 2067
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@e
    move-result v5

    #@f
    if-eq v0, v5, :cond_77

    #@11
    .line 2070
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    #@14
    move-result p3

    #@15
    if-eqz p3, :cond_1c

    #@17
    .line 2071
    invoke-direct {p0, p2, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    #@1a
    move-result p3

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move p3, v5

    #@1d
    .line 2074
    :goto_1d
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    #@20
    move-result p4

    #@21
    sub-int p5, v0, v5

    #@23
    sub-int p3, v5, p3

    #@25
    .line 2079
    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    #@27
    const/4 p3, 0x1

    #@28
    if-eqz p4, :cond_56

    #@2a
    .line 2083
    :goto_2a
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@2d
    move-result v2

    #@2e
    if-ge v1, v2, :cond_56

    #@30
    .line 2084
    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3a
    .line 2085
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollEffect()Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;

    #@3d
    move-result-object v3

    #@3e
    if-eqz v3, :cond_53

    #@40
    .line 2087
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    #@43
    move-result v2

    #@44
    and-int/2addr v2, p3

    #@45
    if-eqz v2, :cond_53

    #@47
    .line 2089
    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    #@4e
    move-result v4

    #@4f
    int-to-float v4, v4

    #@50
    .line 2088
    invoke-virtual {v3, p2, v2, v4}, Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;F)V

    #@53
    :cond_53
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_2a

    #@56
    :cond_56
    if-nez p4, :cond_61

    #@58
    .line 2094
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    #@5b
    move-result p4

    #@5c
    if-eqz p4, :cond_61

    #@5e
    .line 2099
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    #@61
    .line 2103
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    #@64
    move-result p4

    #@65
    invoke-virtual {p2, p4}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    #@68
    if-ge v5, v0, :cond_6b

    #@6a
    const/4 p3, -0x1

    #@6b
    :cond_6b
    move v6, p3

    #@6c
    const/4 v7, 0x0

    #@6d
    move-object v2, p0

    #@6e
    move-object v3, p1

    #@6f
    move-object v4, p2

    #@70
    .line 2106
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    #@73
    move v1, p5

    #@74
    goto :goto_77

    #@75
    .line 2115
    :cond_75
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    #@77
    .line 2118
    :cond_77
    :goto_77
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    #@7a
    return v1
.end method
