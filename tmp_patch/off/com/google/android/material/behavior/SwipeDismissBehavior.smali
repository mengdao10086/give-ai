.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field alphaEndSwipeDistance:F

.field alphaStartSwipeDistance:F

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field dragDismissThreshold:F

.field private interceptingEvents:Z

.field listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

.field private requestingDisallowInterceptTouchEvent:Z

.field private sensitivity:F

.field private sensitivitySet:Z

.field swipeDirection:I

.field viewDragHelper:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 43
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 90
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    #@6
    const/4 v1, 0x2

    #@7
    .line 93
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@9
    const/high16 v1, 0x3f000000    # 0.5f

    #@b
    .line 94
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    #@d
    .line 95
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    #@f
    .line 96
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    #@11
    .line 237
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;

    #@13
    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    #@16
    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@18
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/behavior/SwipeDismissBehavior;Z)Z
    .registers 2

    #@0
    .line 43
    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->requestingDisallowInterceptTouchEvent:Z

    #@2
    return p1
.end method

.method static clamp(FFF)F
    .registers 3

    #@0
    .line 451
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    #@3
    move-result p0

    #@4
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    #@7
    move-result p0

    #@8
    return p0
.end method

.method static clamp(III)I
    .registers 3

    #@0
    .line 455
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    #@3
    move-result p0

    #@4
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .registers 4

    #@0
    .line 391
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2
    if-nez v0, :cond_19

    #@4
    .line 393
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 394
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    #@a
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@c
    invoke-static {p1, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    #@f
    move-result-object p1

    #@10
    goto :goto_17

    #@11
    .line 395
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@13
    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    #@16
    move-result-object p1

    #@17
    :goto_17
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@19
    :cond_19
    return-void
.end method

.method static fraction(FFF)F
    .registers 3

    #@0
    sub-float/2addr p2, p0

    #@1
    sub-float/2addr p1, p0

    #@2
    div-float/2addr p2, p1

    #@3
    return p2
.end method

.method private updateAccessibilityActions(Landroid/view/View;)V
    .registers 5

    #@0
    const/high16 v0, 0x100000

    #@2
    .line 421
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@5
    .line 422
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_16

    #@b
    .line 423
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@d
    new-instance v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;

    #@f
    invoke-direct {v1, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    #@12
    const/4 v2, 0x0

    #@13
    invoke-static {p1, v0, v2, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    #@16
    :cond_16
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

.method public getDragState()I
    .registers 2

    #@0
    .line 465
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getListener()Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@2
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    #@0
    .line 191
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    #@2
    .line 193
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    if-eqz v1, :cond_13

    #@a
    if-eq v1, v2, :cond_10

    #@c
    const/4 p2, 0x3

    #@d
    if-eq v1, p2, :cond_10

    #@f
    goto :goto_23

    #@10
    .line 202
    :cond_10
    iput-boolean v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    #@12
    goto :goto_23

    #@13
    .line 196
    :cond_13
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@16
    move-result v0

    #@17
    float-to-int v0, v0

    #@18
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@1b
    move-result v1

    #@1c
    float-to-int v1, v1

    #@1d
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    #@20
    move-result v0

    #@21
    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    #@23
    :goto_23
    if-eqz v0, :cond_37

    #@25
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    #@28
    .line 208
    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->requestingDisallowInterceptTouchEvent:Z

    #@2a
    if-nez p1, :cond_35

    #@2c
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2e
    .line 209
    invoke-virtual {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@31
    move-result p1

    #@32
    if-eqz p1, :cond_35

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v2, v3

    #@36
    :goto_36
    return v2

    #@37
    :cond_37
    return v3
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    #@0
    .line 179
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    #@3
    move-result p1

    #@4
    .line 180
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@7
    move-result p3

    #@8
    if-nez p3, :cond_11

    #@a
    const/4 p3, 0x1

    #@b
    .line 182
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@e
    .line 183
    invoke-direct {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Landroid/view/View;)V

    #@11
    :cond_11
    return p1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    #@0
    .line 216
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2
    if-eqz p1, :cond_16

    #@4
    .line 218
    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->requestingDisallowInterceptTouchEvent:Z

    #@6
    if-eqz p1, :cond_f

    #@8
    .line 219
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result p1

    #@c
    const/4 p2, 0x3

    #@d
    if-eq p1, p2, :cond_14

    #@f
    .line 220
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@11
    invoke-virtual {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@14
    :cond_14
    const/4 p1, 0x1

    #@15
    return p1

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    return p1
.end method

.method public setDragDismissDistance(F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    .line 143
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    #@6
    move-result p1

    #@7
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    #@9
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    .line 161
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    #@6
    move-result p1

    #@7
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    #@9
    return-void
.end method

.method public setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V
    .registers 2

    #@0
    .line 118
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@2
    return-void
.end method

.method public setSensitivity(F)V
    .registers 2

    #@0
    .line 172
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    #@2
    const/4 p1, 0x1

    #@3
    .line 173
    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    #@5
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    .line 152
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    #@6
    move-result p1

    #@7
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    #@9
    return-void
.end method

.method public setSwipeDirection(I)V
    .registers 2

    #@0
    .line 134
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@2
    return-void
.end method
