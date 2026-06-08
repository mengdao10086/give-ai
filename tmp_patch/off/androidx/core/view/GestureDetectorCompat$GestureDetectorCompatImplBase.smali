.class Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field mCurrentDownEvent:Landroid/view/MotionEvent;

.field mDeferConfirmSingleTap:Z

.field mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@3
    move-result v0

    #@4
    sput v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    #@6
    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@9
    move-result v0

    #@a
    sput v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    #@c
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5

    #@0
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p3, :cond_d

    #@5
    .line 157
    new-instance v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    #@7
    invoke-direct {v0, p0, p3}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V

    #@a
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@c
    goto :goto_14

    #@d
    .line 159
    :cond_d
    new-instance p3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    #@f
    invoke-direct {p3, p0}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    #@12
    iput-object p3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@14
    .line 161
    :goto_14
    iput-object p2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@16
    .line 162
    instance-of p3, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    #@18
    if-eqz p3, :cond_1f

    #@1a
    .line 163
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    #@1c
    invoke-virtual {p0, p2}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    #@1f
    .line 165
    :cond_1f
    invoke-direct {p0, p1}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->init(Landroid/content/Context;)V

    #@22
    return-void
.end method

.method private cancel()V
    .registers 3

    #@0
    .line 418
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 419
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 420
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@e
    const/4 v1, 0x3

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@12
    .line 421
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@14
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@17
    const/4 v0, 0x0

    #@18
    .line 422
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 423
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@1d
    .line 424
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    #@1f
    .line 425
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@21
    .line 426
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@23
    .line 427
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@25
    .line 428
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@27
    if-eqz v1, :cond_2b

    #@29
    .line 429
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@2b
    :cond_2b
    return-void
.end method

.method private cancelTaps()V
    .registers 3

    #@0
    .line 434
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 435
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 436
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@e
    const/4 v1, 0x3

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@12
    const/4 v0, 0x0

    #@13
    .line 437
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@15
    .line 438
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@17
    .line 439
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@19
    .line 440
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@1b
    .line 441
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@1d
    if-eqz v1, :cond_21

    #@1f
    .line 442
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@21
    :cond_21
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    #@0
    if-eqz p1, :cond_30

    #@2
    .line 172
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@4
    if-eqz v0, :cond_28

    #@6
    const/4 v0, 0x1

    #@7
    .line 175
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@9
    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@c
    move-result-object p1

    #@d
    .line 178
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@10
    move-result v0

    #@11
    .line 179
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@14
    move-result v1

    #@15
    .line 180
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@18
    move-result v2

    #@19
    iput v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    #@1b
    .line 181
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@1e
    move-result p1

    #@1f
    iput p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    #@21
    mul-int/2addr v0, v0

    #@22
    .line 183
    iput v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    #@24
    mul-int/2addr v1, v1

    #@25
    .line 184
    iput v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    #@27
    return-void

    #@28
    .line 173
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string v0, "OnGestureListener must not be null"

    #@2c
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw p1

    #@30
    .line 170
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@32
    const-string v0, "Context must not be null"

    #@34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw p1
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 10

    #@0
    .line 448
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 452
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    #@d
    move-result-wide v4

    #@e
    sub-long/2addr v2, v4

    #@f
    sget p2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    #@11
    int-to-long v4, p2

    #@12
    cmp-long p2, v2, v4

    #@14
    if-lez p2, :cond_17

    #@16
    return v1

    #@17
    .line 456
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1a
    move-result p2

    #@1b
    float-to-int p2, p2

    #@1c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@1f
    move-result v0

    #@20
    float-to-int v0, v0

    #@21
    sub-int/2addr p2, v0

    #@22
    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@25
    move-result p1

    #@26
    float-to-int p1, p1

    #@27
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@2a
    move-result p3

    #@2b
    float-to-int p3, p3

    #@2c
    sub-int/2addr p1, p3

    #@2d
    mul-int/2addr p2, p2

    #@2e
    mul-int/2addr p1, p1

    #@2f
    add-int/2addr p2, p1

    #@30
    .line 458
    iget p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    #@32
    if-ge p2, p1, :cond_35

    #@34
    const/4 v1, 0x1

    #@35
    :cond_35
    return v1
.end method


# virtual methods
.method dispatchLongPress()V
    .registers 3

    #@0
    .line 462
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    const/4 v0, 0x0

    #@7
    .line 463
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@9
    const/4 v0, 0x1

    #@a
    .line 464
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@c
    .line 465
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@e
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@10
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    #@13
    return-void
.end method

.method public isLongpressEnabled()Z
    .registers 2

    #@0
    .line 218
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@2
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    #@0
    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    .line 234
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@6
    if-nez v1, :cond_e

    #@8
    .line 235
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@e
    .line 237
    :cond_e
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@10
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@13
    and-int/lit16 v0, v0, 0xff

    #@15
    const/4 v1, 0x6

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    if-ne v0, v1, :cond_1c

    #@1a
    move v4, v2

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v4, v3

    #@1d
    :goto_1d
    if-eqz v4, :cond_24

    #@1f
    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@22
    move-result v5

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 v5, -0x1

    #@25
    .line 245
    :goto_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@28
    move-result v6

    #@29
    const/4 v7, 0x0

    #@2a
    move v8, v3

    #@2b
    move v9, v7

    #@2c
    move v10, v9

    #@2d
    :goto_2d
    if-ge v8, v6, :cond_3f

    #@2f
    if-ne v5, v8, :cond_32

    #@31
    goto :goto_3c

    #@32
    .line 248
    :cond_32
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    #@35
    move-result v11

    #@36
    add-float/2addr v9, v11

    #@37
    .line 249
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    #@3a
    move-result v11

    #@3b
    add-float/2addr v10, v11

    #@3c
    :goto_3c
    add-int/lit8 v8, v8, 0x1

    #@3e
    goto :goto_2d

    #@3f
    :cond_3f
    if-eqz v4, :cond_44

    #@41
    add-int/lit8 v4, v6, -0x1

    #@43
    goto :goto_45

    #@44
    :cond_44
    move v4, v6

    #@45
    :goto_45
    int-to-float v4, v4

    #@46
    div-float/2addr v9, v4

    #@47
    div-float/2addr v10, v4

    #@48
    const/4 v4, 0x2

    #@49
    const/4 v5, 0x3

    #@4a
    if-eqz v0, :cond_1bb

    #@4c
    const/16 v8, 0x3e8

    #@4e
    if-eq v0, v2, :cond_12d

    #@50
    if-eq v0, v4, :cond_b8

    #@52
    if-eq v0, v5, :cond_b3

    #@54
    const/4 v2, 0x5

    #@55
    if-eq v0, v2, :cond_a6

    #@57
    if-eq v0, v1, :cond_5b

    #@59
    goto/16 :goto_24c

    #@5b
    .line 266
    :cond_5b
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@5d
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@5f
    .line 267
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@61
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@63
    .line 271
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@65
    iget v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    #@67
    int-to-float v1, v1

    #@68
    invoke-virtual {v0, v8, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@6b
    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@6e
    move-result v0

    #@6f
    .line 273
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@72
    move-result v1

    #@73
    .line 274
    iget-object v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@75
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@78
    move-result v2

    #@79
    .line 275
    iget-object v4, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7b
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@7e
    move-result v1

    #@7f
    move v4, v3

    #@80
    :goto_80
    if-ge v4, v6, :cond_24c

    #@82
    if-ne v4, v0, :cond_85

    #@84
    goto :goto_a3

    #@85
    .line 279
    :cond_85
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@88
    move-result v5

    #@89
    .line 280
    iget-object v8, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8b
    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@8e
    move-result v8

    #@8f
    mul-float/2addr v8, v2

    #@90
    .line 281
    iget-object v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@92
    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@95
    move-result v5

    #@96
    mul-float/2addr v5, v1

    #@97
    add-float/2addr v8, v5

    #@98
    cmpg-float v5, v8, v7

    #@9a
    if-gez v5, :cond_a3

    #@9c
    .line 285
    iget-object p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@9e
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    #@a1
    goto/16 :goto_24c

    #@a3
    :cond_a3
    :goto_a3
    add-int/lit8 v4, v4, 0x1

    #@a5
    goto :goto_80

    #@a6
    .line 259
    :cond_a6
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@a8
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@aa
    .line 260
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@ac
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@ae
    .line 262
    invoke-direct {p0}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancelTaps()V

    #@b1
    goto/16 :goto_24c

    #@b3
    .line 410
    :cond_b3
    invoke-direct {p0}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancel()V

    #@b6
    goto/16 :goto_24c

    #@b8
    .line 333
    :cond_b8
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@ba
    if-eqz v0, :cond_be

    #@bc
    goto/16 :goto_24c

    #@be
    .line 336
    :cond_be
    iget v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@c0
    sub-float/2addr v0, v9

    #@c1
    .line 337
    iget v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@c3
    sub-float/2addr v1, v10

    #@c4
    .line 338
    iget-boolean v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@c6
    if-eqz v6, :cond_d1

    #@c8
    .line 340
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@ca
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@cd
    move-result p1

    #@ce
    or-int/2addr v3, p1

    #@cf
    goto/16 :goto_24c

    #@d1
    .line 341
    :cond_d1
    iget-boolean v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@d3
    if-eqz v6, :cond_10d

    #@d5
    .line 342
    iget v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@d7
    sub-float v6, v9, v6

    #@d9
    float-to-int v6, v6

    #@da
    .line 343
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@dc
    sub-float v7, v10, v7

    #@de
    float-to-int v7, v7

    #@df
    mul-int/2addr v6, v6

    #@e0
    mul-int/2addr v7, v7

    #@e1
    add-int/2addr v6, v7

    #@e2
    .line 345
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    #@e4
    if-le v6, v7, :cond_104

    #@e6
    .line 346
    iget-object v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@e8
    iget-object v8, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@ea
    invoke-interface {v7, v8, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@ed
    move-result p1

    #@ee
    .line 347
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@f0
    .line 348
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@f2
    .line 349
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@f4
    .line 350
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@f6
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    #@f9
    .line 351
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@fb
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@fe
    .line 352
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@100
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@103
    goto :goto_105

    #@104
    :cond_104
    move p1, v3

    #@105
    .line 354
    :goto_105
    iget v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    #@107
    if-le v6, v0, :cond_1b8

    #@109
    .line 355
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@10b
    goto/16 :goto_1b8

    #@10d
    .line 357
    :cond_10d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@110
    move-result v2

    #@111
    const/high16 v4, 0x3f800000    # 1.0f

    #@113
    cmpl-float v2, v2, v4

    #@115
    if-gez v2, :cond_11f

    #@117
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@11a
    move-result v2

    #@11b
    cmpl-float v2, v2, v4

    #@11d
    if-ltz v2, :cond_24c

    #@11f
    .line 358
    :cond_11f
    iget-object v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@121
    iget-object v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@123
    invoke-interface {v2, v3, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@126
    move-result v3

    #@127
    .line 359
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@129
    .line 360
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@12b
    goto/16 :goto_24c

    #@12d
    .line 365
    :cond_12d
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    #@12f
    .line 366
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@132
    move-result-object v0

    #@133
    .line 367
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@135
    if-eqz v1, :cond_13f

    #@137
    .line 369
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@139
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@13c
    move-result p1

    #@13d
    or-int/2addr p1, v3

    #@13e
    goto :goto_197

    #@13f
    .line 370
    :cond_13f
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@141
    if-eqz v1, :cond_14b

    #@143
    .line 371
    iget-object p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@145
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    #@148
    .line 372
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@14a
    goto :goto_18d

    #@14b
    .line 373
    :cond_14b
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@14d
    if-eqz v1, :cond_162

    #@14f
    .line 374
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@151
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    #@154
    move-result v1

    #@155
    .line 375
    iget-boolean v5, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@157
    if-eqz v5, :cond_160

    #@159
    iget-object v5, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@15b
    if-eqz v5, :cond_160

    #@15d
    .line 376
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    #@160
    :cond_160
    move p1, v1

    #@161
    goto :goto_197

    #@162
    .line 380
    :cond_162
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@164
    .line 381
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@167
    move-result v5

    #@168
    .line 382
    iget v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    #@16a
    int-to-float v6, v6

    #@16b
    invoke-virtual {v1, v8, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@16e
    .line 383
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@171
    move-result v6

    #@172
    .line 384
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@175
    move-result v1

    #@176
    .line 386
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@179
    move-result v5

    #@17a
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    #@17c
    int-to-float v7, v7

    #@17d
    cmpl-float v5, v5, v7

    #@17f
    if-gtz v5, :cond_18f

    #@181
    .line 387
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@184
    move-result v5

    #@185
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    #@187
    int-to-float v7, v7

    #@188
    cmpl-float v5, v5, v7

    #@18a
    if-lez v5, :cond_18d

    #@18c
    goto :goto_18f

    #@18d
    :cond_18d
    :goto_18d
    move p1, v3

    #@18e
    goto :goto_197

    #@18f
    .line 388
    :cond_18f
    :goto_18f
    iget-object v5, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@191
    iget-object v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@193
    invoke-interface {v5, v7, p1, v1, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@196
    move-result p1

    #@197
    .line 392
    :goto_197
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@199
    if-eqz v1, :cond_19e

    #@19b
    .line 393
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@19e
    .line 396
    :cond_19e
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@1a0
    .line 397
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1a2
    if-eqz v0, :cond_1aa

    #@1a4
    .line 400
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@1a7
    const/4 v0, 0x0

    #@1a8
    .line 401
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1aa
    .line 403
    :cond_1aa
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@1ac
    .line 404
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@1ae
    .line 405
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@1b0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@1b3
    .line 406
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@1b5
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@1b8
    :cond_1b8
    :goto_1b8
    move v3, p1

    #@1b9
    goto/16 :goto_24c

    #@1bb
    .line 292
    :cond_1bb
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@1bd
    if-eqz v0, :cond_1f7

    #@1bf
    .line 293
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@1c1
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    #@1c4
    move-result v0

    #@1c5
    if-eqz v0, :cond_1cc

    #@1c7
    .line 294
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@1c9
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    #@1cc
    .line 295
    :cond_1cc
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1ce
    if-eqz v1, :cond_1ef

    #@1d0
    iget-object v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@1d2
    if-eqz v6, :cond_1ef

    #@1d4
    if-eqz v0, :cond_1ef

    #@1d6
    .line 296
    invoke-direct {p0, v1, v6, p1}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    #@1d9
    move-result v0

    #@1da
    if-eqz v0, :cond_1ef

    #@1dc
    .line 299
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@1de
    .line 301
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@1e0
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1e2
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    #@1e5
    move-result v0

    #@1e6
    or-int/2addr v0, v3

    #@1e7
    .line 303
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@1e9
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@1ec
    move-result v1

    #@1ed
    or-int/2addr v0, v1

    #@1ee
    goto :goto_1f8

    #@1ef
    .line 306
    :cond_1ef
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@1f1
    sget v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    #@1f3
    int-to-long v6, v1

    #@1f4
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@1f7
    :cond_1f7
    move v0, v3

    #@1f8
    .line 310
    :goto_1f8
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@1fa
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@1fc
    .line 311
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@1fe
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@200
    .line 312
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@202
    if-eqz v1, :cond_207

    #@204
    .line 313
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@207
    .line 315
    :cond_207
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@20a
    move-result-object v1

    #@20b
    iput-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@20d
    .line 316
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@20f
    .line 317
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@211
    .line 318
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    #@213
    .line 319
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@215
    .line 320
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@217
    .line 322
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@219
    if-eqz v1, :cond_235

    #@21b
    .line 323
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@21d
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@220
    .line 324
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@222
    iget-object v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@224
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    #@227
    move-result-wide v5

    #@228
    sget v3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    #@22a
    int-to-long v7, v3

    #@22b
    add-long/2addr v5, v7

    #@22c
    .line 325
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@22f
    move-result v3

    #@230
    int-to-long v7, v3

    #@231
    add-long/2addr v5, v7

    #@232
    .line 324
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@235
    .line 327
    :cond_235
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@237
    iget-object v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@239
    .line 328
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    #@23c
    move-result-wide v3

    #@23d
    sget v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    #@23f
    int-to-long v5, v5

    #@240
    add-long/2addr v3, v5

    #@241
    .line 327
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@244
    .line 329
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@246
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    #@249
    move-result p1

    #@24a
    or-int v3, v0, p1

    #@24c
    :cond_24c
    :goto_24c
    return v3
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2

    #@0
    .line 210
    iput-boolean p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@2
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2

    #@0
    .line 196
    iput-object p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@2
    return-void
.end method
