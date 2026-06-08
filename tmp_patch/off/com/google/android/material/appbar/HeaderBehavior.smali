.class abstract Lcom/google/android/material/appbar/HeaderBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/appbar/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private activePointerId:I

.field private flingRunnable:Ljava/lang/Runnable;

.field private isBeingDragged:Z

.field private lastMotionY:I

.field scroller:Landroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 45
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@6
    .line 47
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 45
    iput p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@6
    .line 47
    iput p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    #@8
    return-void
.end method

.method private ensureVelocityTracker()V
    .registers 2

    #@0
    .line 254
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_a

    #@4
    .line 255
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@a
    :cond_a
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method final fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    .line 202
    iget-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    #@4
    if-eqz v2, :cond_c

    #@6
    .line 203
    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    const/4 v2, 0x0

    #@a
    .line 204
    iput-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    #@c
    .line 207
    :cond_c
    iget-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    #@e
    if-nez v2, :cond_1b

    #@10
    .line 208
    new-instance v2, Landroid/widget/OverScroller;

    #@12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@19
    iput-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    #@1b
    .line 211
    :cond_1b
    iget-object v4, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    #@1d
    const/4 v5, 0x0

    #@1e
    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    #@21
    move-result v6

    #@22
    const/4 v7, 0x0

    #@23
    .line 215
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    #@26
    move-result v8

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v10, 0x0

    #@29
    move/from16 v11, p3

    #@2b
    move/from16 v12, p4

    #@2d
    .line 211
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@30
    .line 221
    iget-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    #@32
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_45

    #@38
    .line 222
    new-instance v2, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;

    #@3a
    move-object v3, p1

    #@3b
    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;-><init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    #@3e
    iput-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    #@40
    .line 223
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@43
    const/4 v1, 0x1

    #@44
    return v1

    #@45
    :cond_45
    move-object v3, p1

    #@46
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    #@49
    const/4 v1, 0x0

    #@4a
    return v1
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    #@0
    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@3
    move-result p1

    #@4
    neg-int p1, p1

    #@5
    return p1
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    #@0
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .registers 2

    #@0
    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
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
    .line 59
    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    #@2
    if-gez v0, :cond_12

    #@4
    .line 60
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    #@12
    .line 64
    :cond_12
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@15
    move-result v0

    #@16
    const/4 v1, 0x2

    #@17
    const/4 v2, 0x1

    #@18
    const/4 v3, -0x1

    #@19
    const/4 v4, 0x0

    #@1a
    if-ne v0, v1, :cond_40

    #@1c
    iget-boolean v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    #@1e
    if-eqz v0, :cond_40

    #@20
    .line 65
    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@22
    if-ne v0, v3, :cond_25

    #@24
    return v4

    #@25
    .line 69
    :cond_25
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@28
    move-result v0

    #@29
    if-ne v0, v3, :cond_2c

    #@2b
    return v4

    #@2c
    .line 74
    :cond_2c
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@2f
    move-result v0

    #@30
    float-to-int v0, v0

    #@31
    .line 75
    iget v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    #@33
    sub-int v1, v0, v1

    #@35
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@38
    move-result v1

    #@39
    .line 76
    iget v5, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    #@3b
    if-le v1, v5, :cond_40

    #@3d
    .line 77
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    #@3f
    return v2

    #@40
    .line 82
    :cond_40
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_80

    #@46
    .line 83
    iput v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@48
    .line 85
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@4b
    move-result v0

    #@4c
    float-to-int v0, v0

    #@4d
    .line 86
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@50
    move-result v1

    #@51
    float-to-int v1, v1

    #@52
    .line 87
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_60

    #@58
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    #@5b
    move-result p1

    #@5c
    if-eqz p1, :cond_60

    #@5e
    move p1, v2

    #@5f
    goto :goto_61

    #@60
    :cond_60
    move p1, v4

    #@61
    :goto_61
    iput-boolean p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    #@63
    if-eqz p1, :cond_80

    #@65
    .line 89
    iput v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    #@67
    .line 90
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@6a
    move-result p1

    #@6b
    iput p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@6d
    .line 91
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->ensureVelocityTracker()V

    #@70
    .line 94
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    #@72
    if-eqz p1, :cond_80

    #@74
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    #@77
    move-result p1

    #@78
    if-nez p1, :cond_80

    #@7a
    .line 95
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    #@7c
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    #@7f
    return v2

    #@80
    .line 101
    :cond_80
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@82
    if-eqz p1, :cond_87

    #@84
    .line 102
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@87
    :cond_87
    return v4
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
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
    .line 112
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x1

    #@6
    const/4 v3, 0x0

    #@7
    if-eq v0, v2, :cond_4e

    #@9
    const/4 v4, 0x2

    #@a
    if-eq v0, v4, :cond_2d

    #@c
    const/4 p1, 0x3

    #@d
    if-eq v0, p1, :cond_72

    #@f
    const/4 p1, 0x6

    #@10
    if-eq v0, p1, :cond_13

    #@12
    goto :goto_4c

    #@13
    .line 126
    :cond_13
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    #@16
    move-result p1

    #@17
    if-nez p1, :cond_1b

    #@19
    move p1, v2

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move p1, v3

    #@1c
    .line 127
    :goto_1c
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1f
    move-result p2

    #@20
    iput p2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@22
    .line 128
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    #@25
    move-result p1

    #@26
    const/high16 p2, 0x3f000000    # 0.5f

    #@28
    add-float/2addr p1, p2

    #@29
    float-to-int p1, p1

    #@2a
    iput p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    #@2c
    goto :goto_4c

    #@2d
    .line 114
    :cond_2d
    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@2f
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@32
    move-result v0

    #@33
    if-ne v0, v1, :cond_36

    #@35
    return v3

    #@36
    .line 119
    :cond_36
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@39
    move-result v0

    #@3a
    float-to-int v0, v0

    #@3b
    .line 120
    iget v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    #@3d
    sub-int v7, v1, v0

    #@3f
    .line 121
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    #@41
    .line 123
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    #@44
    move-result v8

    #@45
    const/4 v9, 0x0

    #@46
    move-object v4, p0

    #@47
    move-object v5, p1

    #@48
    move-object v6, p2

    #@49
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/material/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    #@4c
    :goto_4c
    move p1, v3

    #@4d
    goto :goto_81

    #@4e
    .line 131
    :cond_4e
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@50
    if-eqz v0, :cond_72

    #@52
    .line 133
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@55
    .line 134
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@57
    const/16 v4, 0x3e8

    #@59
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@5c
    .line 135
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@5e
    iget v4, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@60
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@63
    move-result v10

    #@64
    .line 136
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    #@67
    move-result v0

    #@68
    neg-int v8, v0

    #@69
    const/4 v9, 0x0

    #@6a
    move-object v5, p0

    #@6b
    move-object v6, p1

    #@6c
    move-object v7, p2

    #@6d
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/material/appbar/HeaderBehavior;->fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    #@70
    move p1, v2

    #@71
    goto :goto_73

    #@72
    :cond_72
    move p1, v3

    #@73
    .line 141
    :goto_73
    iput-boolean v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    #@75
    .line 142
    iput v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    #@77
    .line 143
    iget-object p2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@79
    if-eqz p2, :cond_81

    #@7b
    .line 144
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    #@7e
    const/4 p2, 0x0

    #@7f
    .line 145
    iput-object p2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@81
    .line 150
    :cond_81
    :goto_81
    iget-object p2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@83
    if-eqz p2, :cond_88

    #@85
    .line 151
    invoke-virtual {p2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@88
    .line 154
    :cond_88
    iget-boolean p2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    #@8a
    if-nez p2, :cond_90

    #@8c
    if-eqz p1, :cond_8f

    #@8e
    goto :goto_90

    #@8f
    :cond_8f
    move v2, v3

    #@90
    :cond_90
    :goto_90
    return v2
.end method

.method final scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    #@0
    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@3
    move-result v0

    #@4
    sub-int v4, v0, p3

    #@6
    move-object v1, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, p2

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    .line 188
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    #@e
    move-result p1

    #@f
    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    #@0
    const/high16 v4, -0x80000000

    #@2
    const v5, 0x7fffffff

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move v3, p3

    #@9
    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    #@0
    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    #@3
    move-result p1

    #@4
    if-eqz p4, :cond_15

    #@6
    if-lt p1, p4, :cond_15

    #@8
    if-gt p1, p5, :cond_15

    #@a
    .line 170
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@d
    move-result p2

    #@e
    if-eq p1, p2, :cond_15

    #@10
    .line 173
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->setTopAndBottomOffset(I)Z

    #@13
    sub-int/2addr p1, p2

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    return p1
.end method
