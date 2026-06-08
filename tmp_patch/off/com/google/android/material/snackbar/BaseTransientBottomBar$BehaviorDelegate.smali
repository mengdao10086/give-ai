.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BehaviorDelegate"
.end annotation


# instance fields
.field private managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x3dcccccd    # 0.1f

    #@6
    .line 1416
    invoke-virtual {p1, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setStartAlphaSwipeDistance(F)V

    #@9
    const v0, 0x3f19999a    # 0.6f

    #@c
    .line 1417
    invoke-virtual {p1, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setEndAlphaSwipeDistance(F)V

    #@f
    const/4 v0, 0x0

    #@10
    .line 1418
    invoke-virtual {p1, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setSwipeDirection(I)V

    #@13
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 1427
    instance-of p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    #@2
    return p1
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5

    #@0
    .line 1432
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_17

    #@6
    const/4 p1, 0x1

    #@7
    if-eq v0, p1, :cond_d

    #@9
    const/4 p1, 0x3

    #@a
    if-eq v0, p1, :cond_d

    #@c
    goto :goto_30

    #@d
    .line 1442
    :cond_d
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    #@10
    move-result-object p1

    #@11
    iget-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    #@13
    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    #@16
    goto :goto_30

    #@17
    .line 1436
    :cond_17
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@1a
    move-result v0

    #@1b
    float-to-int v0, v0

    #@1c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@1f
    move-result p3

    #@20
    float-to-int p3, p3

    #@21
    invoke-virtual {p1, p2, v0, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    #@24
    move-result p1

    #@25
    if-eqz p1, :cond_30

    #@27
    .line 1437
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    #@2a
    move-result-object p1

    #@2b
    iget-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    #@2d
    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->pauseTimeout(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    #@30
    :cond_30
    :goto_30
    return-void
.end method

.method public setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 1423
    iget-object p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    #@2
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    #@4
    return-void
.end method
