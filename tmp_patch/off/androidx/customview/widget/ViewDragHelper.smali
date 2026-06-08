.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private final mDefaultEdgeSize:I

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 334
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$1;

    #@2
    invoke-direct {v0}, Landroidx/customview/widget/ViewDragHelper$1;-><init>()V

    #@5
    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .registers 5

    #@0
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 120
    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@6
    .line 342
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$2;

    #@8
    invoke-direct {v0, p0}, Landroidx/customview/widget/ViewDragHelper$2;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    #@b
    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@d
    if-eqz p2, :cond_54

    #@f
    if-eqz p3, :cond_4c

    #@11
    .line 393
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@13
    .line 394
    iput-object p3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@15
    .line 396
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@18
    move-result-object p2

    #@19
    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object p3

    #@1d
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@20
    move-result-object p3

    #@21
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    #@23
    const/high16 v0, 0x41a00000    # 20.0f

    #@25
    mul-float/2addr p3, v0

    #@26
    const/high16 v0, 0x3f000000    # 0.5f

    #@28
    add-float/2addr p3, v0

    #@29
    float-to-int p3, p3

    #@2a
    .line 398
    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    #@2c
    .line 399
    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    #@2e
    .line 401
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@31
    move-result p3

    #@32
    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@34
    .line 402
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@37
    move-result p3

    #@38
    int-to-float p3, p3

    #@39
    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    #@3b
    .line 403
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@3e
    move-result p2

    #@3f
    int-to-float p2, p2

    #@40
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    #@42
    .line 404
    new-instance p2, Landroid/widget/OverScroller;

    #@44
    sget-object p3, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    #@46
    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@49
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@4b
    return-void

    #@4c
    .line 390
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@4e
    const-string p2, "Callback may not be null"

    #@50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw p1

    #@54
    .line 387
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@56
    const-string p2, "Parent view may not be null"

    #@58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw p1
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 8

    #@0
    .line 1305
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result p1

    #@4
    .line 1306
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@7
    move-result p2

    #@8
    .line 1308
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@a
    aget v0, v0, p3

    #@c
    and-int/2addr v0, p4

    #@d
    const/4 v1, 0x0

    #@e
    if-ne v0, p4, :cond_56

    #@10
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    #@12
    and-int/2addr v0, p4

    #@13
    if-eqz v0, :cond_56

    #@15
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@17
    aget v0, v0, p3

    #@19
    and-int/2addr v0, p4

    #@1a
    if-eq v0, p4, :cond_56

    #@1c
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@1e
    aget v0, v0, p3

    #@20
    and-int/2addr v0, p4

    #@21
    if-eq v0, p4, :cond_56

    #@23
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@25
    int-to-float v2, v0

    #@26
    cmpg-float v2, p1, v2

    #@28
    if-gtz v2, :cond_30

    #@2a
    int-to-float v0, v0

    #@2b
    cmpg-float v0, p2, v0

    #@2d
    if-gtz v0, :cond_30

    #@2f
    goto :goto_56

    #@30
    :cond_30
    const/high16 v0, 0x3f000000    # 0.5f

    #@32
    mul-float/2addr p2, v0

    #@33
    cmpg-float p2, p1, p2

    #@35
    if-gez p2, :cond_47

    #@37
    .line 1314
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@39
    invoke-virtual {p2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    #@3c
    move-result p2

    #@3d
    if-eqz p2, :cond_47

    #@3f
    .line 1315
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@41
    aget p2, p1, p3

    #@43
    or-int/2addr p2, p4

    #@44
    aput p2, p1, p3

    #@46
    return v1

    #@47
    .line 1318
    :cond_47
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@49
    aget p2, p2, p3

    #@4b
    and-int/2addr p2, p4

    #@4c
    if-nez p2, :cond_56

    #@4e
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@50
    int-to-float p2, p2

    #@51
    cmpl-float p1, p1, p2

    #@53
    if-lez p1, :cond_56

    #@55
    const/4 v1, 0x1

    #@56
    :cond_56
    :goto_56
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 1335
    :cond_4
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@6
    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    if-lez v1, :cond_f

    #@d
    move v1, v2

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v1, v0

    #@10
    .line 1336
    :goto_10
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@12
    invoke-virtual {v3, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@15
    move-result p1

    #@16
    if-lez p1, :cond_1a

    #@18
    move p1, v2

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move p1, v0

    #@1b
    :goto_1b
    if-eqz v1, :cond_2c

    #@1d
    if-eqz p1, :cond_2c

    #@1f
    mul-float/2addr p2, p2

    #@20
    mul-float/2addr p3, p3

    #@21
    add-float/2addr p2, p3

    #@22
    .line 1339
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@24
    mul-int/2addr p1, p1

    #@25
    int-to-float p1, p1

    #@26
    cmpl-float p1, p2, p1

    #@28
    if-lez p1, :cond_2b

    #@2a
    move v0, v2

    #@2b
    :cond_2b
    return v0

    #@2c
    :cond_2c
    if-eqz v1, :cond_3b

    #@2e
    .line 1341
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@31
    move-result p1

    #@32
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@34
    int-to-float p2, p2

    #@35
    cmpl-float p1, p1, p2

    #@37
    if-lez p1, :cond_3a

    #@39
    move v0, v2

    #@3a
    :cond_3a
    return v0

    #@3b
    :cond_3b
    if-eqz p1, :cond_49

    #@3d
    .line 1343
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@40
    move-result p1

    #@41
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@43
    int-to-float p2, p2

    #@44
    cmpl-float p1, p1, p2

    #@46
    if-lez p1, :cond_49

    #@48
    move v0, v2

    #@49
    :cond_49
    return v0
.end method

.method private clampMag(FFF)F
    .registers 6

    #@0
    .line 716
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result v0

    #@4
    cmpg-float p2, v0, p2

    #@6
    const/4 v1, 0x0

    #@7
    if-gez p2, :cond_a

    #@9
    return v1

    #@a
    :cond_a
    cmpl-float p2, v0, p3

    #@c
    if-lez p2, :cond_15

    #@e
    cmpl-float p1, p1, v1

    #@10
    if-lez p1, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    neg-float p3, p3

    #@14
    :goto_14
    return p3

    #@15
    :cond_15
    return p1
.end method

.method private clampMag(III)I
    .registers 5

    #@0
    .line 699
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    if-ge v0, p2, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    :cond_8
    if-le v0, p3, :cond_f

    #@a
    if-lez p1, :cond_d

    #@c
    goto :goto_e

    #@d
    :cond_d
    neg-int p3, p3

    #@e
    :goto_e
    return p3

    #@f
    :cond_f
    return p1
.end method

.method private clearMotionHistory()V
    .registers 3

    #@0
    .line 819
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v1, 0x0

    #@6
    .line 822
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@9
    .line 823
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@b
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@e
    .line 824
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@13
    .line 825
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@18
    .line 826
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@1e
    .line 827
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@23
    .line 828
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@28
    .line 829
    iput v1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    #@2a
    return-void
.end method

.method private clearMotionHistory(I)V
    .registers 4

    #@0
    .line 833
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2
    if-eqz v0, :cond_32

    #@4
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_32

    #@b
    .line 836
    :cond_b
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@d
    const/4 v1, 0x0

    #@e
    aput v1, v0, p1

    #@10
    .line 837
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@12
    aput v1, v0, p1

    #@14
    .line 838
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@16
    aput v1, v0, p1

    #@18
    .line 839
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@1a
    aput v1, v0, p1

    #@1c
    .line 840
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@1e
    const/4 v1, 0x0

    #@1f
    aput v1, v0, p1

    #@21
    .line 841
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@23
    aput v1, v0, p1

    #@25
    .line 842
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@27
    aput v1, v0, p1

    #@29
    .line 843
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    #@2b
    const/4 v1, 0x1

    #@2c
    shl-int p1, v1, p1

    #@2e
    not-int p1, p1

    #@2f
    and-int/2addr p1, v0

    #@30
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    #@32
    :cond_32
    :goto_32
    return-void
.end method

.method private computeAxisDuration(III)I
    .registers 7

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return p1

    #@4
    .line 671
    :cond_4
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    #@9
    move-result v0

    #@a
    .line 672
    div-int/lit8 v1, v0, 0x2

    #@c
    .line 673
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@f
    move-result v2

    #@10
    int-to-float v2, v2

    #@11
    int-to-float v0, v0

    #@12
    div-float/2addr v2, v0

    #@13
    const/high16 v0, 0x3f800000    # 1.0f

    #@15
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@18
    move-result v2

    #@19
    int-to-float v1, v1

    #@1a
    .line 675
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    #@1d
    move-result v2

    #@1e
    mul-float/2addr v2, v1

    #@1f
    add-float/2addr v1, v2

    #@20
    .line 678
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result p2

    #@24
    if-lez p2, :cond_36

    #@26
    int-to-float p1, p2

    #@27
    div-float/2addr v1, p1

    #@28
    .line 680
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@2b
    move-result p1

    #@2c
    const/high16 p2, 0x447a0000    # 1000.0f

    #@2e
    mul-float/2addr p1, p2

    #@2f
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@32
    move-result p1

    #@33
    mul-int/lit8 p1, p1, 0x4

    #@35
    goto :goto_42

    #@36
    .line 682
    :cond_36
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@39
    move-result p1

    #@3a
    int-to-float p1, p1

    #@3b
    int-to-float p2, p3

    #@3c
    div-float/2addr p1, p2

    #@3d
    add-float/2addr p1, v0

    #@3e
    const/high16 p2, 0x43800000    # 256.0f

    #@40
    mul-float/2addr p1, p2

    #@41
    float-to-int p1, p1

    #@42
    :goto_42
    const/16 p2, 0x258

    #@44
    .line 685
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@47
    move-result p1

    #@48
    return p1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 12

    #@0
    .line 646
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    float-to-int v0, v0

    #@3
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    #@5
    float-to-int v1, v1

    #@6
    invoke-direct {p0, p4, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    #@9
    move-result p4

    #@a
    .line 647
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    #@c
    float-to-int v0, v0

    #@d
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    #@f
    float-to-int v1, v1

    #@10
    invoke-direct {p0, p5, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    #@13
    move-result p5

    #@14
    .line 648
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@17
    move-result v0

    #@18
    .line 649
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result v1

    #@1c
    .line 650
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    #@1f
    move-result v2

    #@20
    .line 651
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result v3

    #@24
    add-int v4, v2, v3

    #@26
    add-int v5, v0, v1

    #@28
    if-eqz p4, :cond_2d

    #@2a
    int-to-float v0, v2

    #@2b
    int-to-float v2, v4

    #@2c
    goto :goto_2f

    #@2d
    :cond_2d
    int-to-float v0, v0

    #@2e
    int-to-float v2, v5

    #@2f
    :goto_2f
    div-float/2addr v0, v2

    #@30
    if-eqz p5, :cond_35

    #@32
    int-to-float v1, v3

    #@33
    int-to-float v2, v4

    #@34
    goto :goto_37

    #@35
    :cond_35
    int-to-float v1, v1

    #@36
    int-to-float v2, v5

    #@37
    :goto_37
    div-float/2addr v1, v2

    #@38
    .line 660
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@3a
    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@3d
    move-result v2

    #@3e
    invoke-direct {p0, p2, p4, v2}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    #@41
    move-result p2

    #@42
    .line 661
    iget-object p4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@44
    invoke-virtual {p4, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@47
    move-result p1

    #@48
    invoke-direct {p0, p3, p5, p1}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    #@4b
    move-result p1

    #@4c
    int-to-float p2, p2

    #@4d
    mul-float/2addr p2, v0

    #@4e
    int-to-float p1, p1

    #@4f
    mul-float/2addr p1, v1

    #@50
    add-float/2addr p2, p1

    #@51
    float-to-int p1, p2

    #@52
    return p1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .registers 4

    #@0
    .line 371
    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    #@3
    move-result-object p0

    #@4
    .line 372
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@6
    int-to-float p2, p2

    #@7
    const/high16 v0, 0x3f800000    # 1.0f

    #@9
    div-float/2addr v0, p1

    #@a
    mul-float/2addr p2, v0

    #@b
    float-to-int p1, p2

    #@c
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@e
    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .registers 4

    #@0
    .line 357
    new-instance v0, Landroidx/customview/widget/ViewDragHelper;

    #@2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0, p1}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    #@9
    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 808
    iput-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@3
    .line 809
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@5
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@7
    invoke-virtual {v1, v2, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    #@a
    const/4 p1, 0x0

    #@b
    .line 810
    iput-boolean p1, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@d
    .line 812
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@f
    if-ne p2, v0, :cond_14

    #@11
    .line 814
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    #@14
    :cond_14
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 4

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr p1, v0

    #@3
    const v0, 0x3ef1463b

    #@6
    mul-float/2addr p1, v0

    #@7
    float-to-double v0, p1

    #@8
    .line 725
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@b
    move-result-wide v0

    #@c
    double-to-float p1, v0

    #@d
    return p1
.end method

.method private dragTo(IIII)V
    .registers 15

    #@0
    .line 1455
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@5
    move-result v0

    #@6
    .line 1456
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@8
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@b
    move-result v1

    #@c
    if-eqz p3, :cond_1d

    #@e
    .line 1458
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@10
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@12
    invoke-virtual {v2, v3, p1, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    #@15
    move-result p1

    #@16
    .line 1459
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@18
    sub-int v3, p1, v0

    #@1a
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@1d
    :cond_1d
    move v6, p1

    #@1e
    if-eqz p4, :cond_2f

    #@20
    .line 1462
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@22
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@24
    invoke-virtual {p1, v2, p2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    #@27
    move-result p2

    #@28
    .line 1463
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2a
    sub-int v2, p2, v1

    #@2c
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@2f
    :cond_2f
    move v7, p2

    #@30
    if-nez p3, :cond_34

    #@32
    if-eqz p4, :cond_3f

    #@34
    :cond_34
    sub-int v8, v6, v0

    #@36
    sub-int v9, v7, v1

    #@38
    .line 1469
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@3a
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3c
    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@3f
    :cond_3f
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 11

    #@0
    .line 847
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2
    if-eqz v0, :cond_7

    #@4
    array-length v1, v0

    #@5
    if-gt v1, p1, :cond_50

    #@7
    :cond_7
    add-int/lit8 p1, p1, 0x1

    #@9
    .line 848
    new-array v1, p1, [F

    #@b
    .line 849
    new-array v2, p1, [F

    #@d
    .line 850
    new-array v3, p1, [F

    #@f
    .line 851
    new-array v4, p1, [F

    #@11
    .line 852
    new-array v5, p1, [I

    #@13
    .line 853
    new-array v6, p1, [I

    #@15
    .line 854
    new-array p1, p1, [I

    #@17
    if-eqz v0, :cond_42

    #@19
    .line 857
    array-length v7, v0

    #@1a
    const/4 v8, 0x0

    #@1b
    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 858
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@20
    array-length v7, v0

    #@21
    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 859
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@26
    array-length v7, v0

    #@27
    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2a
    .line 860
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@2c
    array-length v7, v0

    #@2d
    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 861
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@32
    array-length v7, v0

    #@33
    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    .line 862
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@38
    array-length v7, v0

    #@39
    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c
    .line 863
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@3e
    array-length v7, v0

    #@3f
    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@42
    .line 866
    :cond_42
    iput-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@44
    .line 867
    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@46
    .line 868
    iput-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@48
    .line 869
    iput-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@4a
    .line 870
    iput-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@4c
    .line 871
    iput-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@4e
    .line 872
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@50
    :cond_50
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 15

    #@0
    .line 626
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@5
    move-result v2

    #@6
    .line 627
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@b
    move-result v3

    #@c
    sub-int/2addr p1, v2

    #@d
    sub-int/2addr p2, v3

    #@e
    if-nez p1, :cond_1c

    #@10
    if-nez p2, :cond_1c

    #@12
    .line 633
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@14
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    #@17
    const/4 p1, 0x0

    #@18
    .line 634
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    #@1b
    return p1

    #@1c
    .line 638
    :cond_1c
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@1e
    move-object v4, p0

    #@1f
    move v6, p1

    #@20
    move v7, p2

    #@21
    move v8, p3

    #@22
    move v9, p4

    #@23
    invoke-direct/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    #@26
    move-result v6

    #@27
    .line 639
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@29
    move v4, p1

    #@2a
    move v5, p2

    #@2b
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@2e
    const/4 p1, 0x2

    #@2f
    .line 641
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    #@32
    const/4 p1, 0x1

    #@33
    return p1
.end method

.method private getEdgesTouched(II)I
    .registers 6

    #@0
    .line 1530
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    #@8
    add-int/2addr v0, v1

    #@9
    if-ge p1, v0, :cond_d

    #@b
    const/4 v0, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    .line 1531
    :goto_e
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    #@13
    move-result v1

    #@14
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    #@16
    add-int/2addr v1, v2

    #@17
    if-ge p2, v1, :cond_1b

    #@19
    or-int/lit8 v0, v0, 0x4

    #@1b
    .line 1532
    :cond_1b
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@1d
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    #@20
    move-result v1

    #@21
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    #@23
    sub-int/2addr v1, v2

    #@24
    if-le p1, v1, :cond_28

    #@26
    or-int/lit8 v0, v0, 0x2

    #@28
    .line 1533
    :cond_28
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@2a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    #@2d
    move-result p1

    #@2e
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    #@30
    sub-int/2addr p1, v1

    #@31
    if-le p2, p1, :cond_35

    #@33
    or-int/lit8 v0, v0, 0x8

    #@35
    :cond_35
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .registers 4

    #@0
    .line 1539
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_22

    #@6
    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    const-string v1, "Ignoring pointerId="

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object p1

    #@11
    const-string v0, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    const-string v0, "ViewDragHelper"

    #@1d
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    const/4 p1, 0x0

    #@21
    return p1

    #@22
    :cond_22
    const/4 p1, 0x1

    #@23
    return p1
.end method

.method private releaseViewForPointerUp()V
    .registers 5

    #@0
    .line 1442
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    const/16 v1, 0x3e8

    #@4
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@9
    .line 1443
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@d
    .line 1444
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@10
    move-result v0

    #@11
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    #@13
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    #@15
    .line 1443
    invoke-direct {p0, v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    #@18
    move-result v0

    #@19
    .line 1446
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@1d
    .line 1447
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@20
    move-result v1

    #@21
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    #@23
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    #@25
    .line 1446
    invoke-direct {p0, v1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    #@28
    move-result v1

    #@29
    .line 1449
    invoke-direct {p0, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    #@2c
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 1285
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@4
    move-result v0

    #@5
    const/4 v1, 0x4

    #@6
    .line 1288
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_e

    #@c
    or-int/lit8 v0, v0, 0x4

    #@e
    :cond_e
    const/4 v1, 0x2

    #@f
    .line 1291
    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_17

    #@15
    or-int/lit8 v0, v0, 0x2

    #@17
    :cond_17
    const/16 v1, 0x8

    #@19
    .line 1294
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@1c
    move-result p1

    #@1d
    if-eqz p1, :cond_21

    #@1f
    or-int/lit8 v0, v0, 0x8

    #@21
    :cond_21
    if-eqz v0, :cond_2f

    #@23
    .line 1299
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@25
    aget p2, p1, p3

    #@27
    or-int/2addr p2, v0

    #@28
    aput p2, p1, p3

    #@2a
    .line 1300
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@2c
    invoke-virtual {p1, v0, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    #@2f
    :cond_2f
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .registers 6

    #@0
    .line 877
    invoke-direct {p0, p3}, Landroidx/customview/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    #@3
    .line 878
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@5
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@7
    aput p1, v1, p3

    #@9
    aput p1, v0, p3

    #@b
    .line 879
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@d
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@f
    aput p2, v1, p3

    #@11
    aput p2, v0, p3

    #@13
    .line 880
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@15
    float-to-int p1, p1

    #@16
    float-to-int p2, p2

    #@17
    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->getEdgesTouched(II)I

    #@1a
    move-result p1

    #@1b
    aput p1, v0, p3

    #@1d
    .line 881
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    #@1f
    const/4 p2, 0x1

    #@20
    shl-int/2addr p2, p3

    #@21
    or-int/2addr p1, p2

    #@22
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    #@24
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8

    #@0
    .line 885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_25

    #@7
    .line 887
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@a
    move-result v2

    #@b
    .line 889
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_12

    #@11
    goto :goto_22

    #@12
    .line 892
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@15
    move-result v3

    #@16
    .line 893
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@19
    move-result v4

    #@1a
    .line 894
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@1c
    aput v3, v5, v2

    #@1e
    .line 895
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@20
    aput v4, v3, v2

    #@22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_5

    #@25
    :cond_25
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 10

    #@0
    .line 554
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    #@3
    .line 555
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_30

    #@8
    .line 556
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@a
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    #@d
    move-result v0

    #@e
    .line 557
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@10
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    #@13
    move-result v1

    #@14
    .line 558
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@16
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    #@19
    .line 559
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@1b
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    #@1e
    move-result v5

    #@1f
    .line 560
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@21
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    #@24
    move-result v6

    #@25
    .line 561
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@27
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@29
    sub-int v7, v5, v0

    #@2b
    sub-int v8, v6, v1

    #@2d
    invoke-virtual/range {v3 .. v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    .line 563
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    #@34
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .registers 20

    #@0
    move-object v0, p1

    #@1
    .line 962
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v1, :cond_55

    #@6
    .line 963
    move-object v1, v0

    #@7
    check-cast v1, Landroid/view/ViewGroup;

    #@9
    .line 964
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@c
    move-result v3

    #@d
    .line 965
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@10
    move-result v4

    #@11
    .line 966
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@14
    move-result v5

    #@15
    sub-int/2addr v5, v2

    #@16
    :goto_16
    if-ltz v5, :cond_55

    #@18
    .line 971
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v7

    #@1c
    add-int v6, p5, v3

    #@1e
    .line 972
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@21
    move-result v8

    #@22
    if-lt v6, v8, :cond_52

    #@24
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@27
    move-result v8

    #@28
    if-ge v6, v8, :cond_52

    #@2a
    add-int v8, p6, v4

    #@2c
    .line 973
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@2f
    move-result v9

    #@30
    if-lt v8, v9, :cond_52

    #@32
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@35
    move-result v9

    #@36
    if-ge v8, v9, :cond_52

    #@38
    const/4 v9, 0x1

    #@39
    .line 974
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@3c
    move-result v10

    #@3d
    sub-int v11, v6, v10

    #@3f
    .line 975
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@42
    move-result v6

    #@43
    sub-int v12, v8, v6

    #@45
    move-object v6, p0

    #@46
    move v8, v9

    #@47
    move/from16 v9, p3

    #@49
    move/from16 v10, p4

    #@4b
    .line 974
    invoke-virtual/range {v6 .. v12}, Landroidx/customview/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    #@4e
    move-result v6

    #@4f
    if-eqz v6, :cond_52

    #@51
    return v2

    #@52
    :cond_52
    add-int/lit8 v5, v5, -0x1

    #@54
    goto :goto_16

    #@55
    :cond_55
    if-eqz p2, :cond_6a

    #@57
    move/from16 v1, p3

    #@59
    neg-int v1, v1

    #@5a
    .line 981
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@5d
    move-result v1

    #@5e
    if-nez v1, :cond_6b

    #@60
    move/from16 v1, p4

    #@62
    neg-int v1, v1

    #@63
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_6a

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    const/4 v2, 0x0

    #@6b
    :cond_6b
    :goto_6b
    return v2
.end method

.method public cancel()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 540
    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@3
    .line 541
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory()V

    #@6
    .line 543
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    if-eqz v0, :cond_10

    #@a
    .line 544
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@d
    const/4 v0, 0x0

    #@e
    .line 545
    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@10
    :cond_10
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@6
    if-ne v0, v1, :cond_16

    #@8
    .line 505
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@a
    .line 506
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@c
    .line 507
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@e
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    #@11
    const/4 p1, 0x1

    #@12
    .line 508
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    #@15
    return-void

    #@16
    .line 501
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance p2, Ljava/lang/StringBuilder;

    #@1a
    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    #@1c
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p2

    #@25
    const-string v0, ")"

    #@27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p2

    #@2b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p2

    #@2f
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw p1
.end method

.method public checkTouchSlop(I)Z
    .registers 6

    #@0
    .line 1363
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2
    array-length v0, v0

    #@3
    const/4 v1, 0x0

    #@4
    move v2, v1

    #@5
    :goto_5
    if-ge v2, v0, :cond_12

    #@7
    .line 1365
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_f

    #@d
    const/4 p1, 0x1

    #@e
    return p1

    #@f
    :cond_f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_5

    #@12
    :cond_12
    return v1
.end method

.method public checkTouchSlop(II)Z
    .registers 9

    #@0
    .line 1388
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    and-int/lit8 v0, p1, 0x1

    #@a
    const/4 v2, 0x1

    #@b
    if-ne v0, v2, :cond_f

    #@d
    move v0, v2

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v0, v1

    #@10
    :goto_10
    const/4 v3, 0x2

    #@11
    and-int/2addr p1, v3

    #@12
    if-ne p1, v3, :cond_16

    #@14
    move p1, v2

    #@15
    goto :goto_17

    #@16
    :cond_16
    move p1, v1

    #@17
    .line 1395
    :goto_17
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@19
    aget v3, v3, p2

    #@1b
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@1d
    aget v4, v4, p2

    #@1f
    sub-float/2addr v3, v4

    #@20
    .line 1396
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@22
    aget v4, v4, p2

    #@24
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@26
    aget p2, v5, p2

    #@28
    sub-float/2addr v4, p2

    #@29
    if-eqz v0, :cond_3a

    #@2b
    if-eqz p1, :cond_3a

    #@2d
    mul-float/2addr v3, v3

    #@2e
    mul-float/2addr v4, v4

    #@2f
    add-float/2addr v3, v4

    #@30
    .line 1399
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@32
    mul-int/2addr p1, p1

    #@33
    int-to-float p1, p1

    #@34
    cmpl-float p1, v3, p1

    #@36
    if-lez p1, :cond_39

    #@38
    move v1, v2

    #@39
    :cond_39
    return v1

    #@3a
    :cond_3a
    if-eqz v0, :cond_49

    #@3c
    .line 1401
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@3f
    move-result p1

    #@40
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@42
    int-to-float p2, p2

    #@43
    cmpl-float p1, p1, p2

    #@45
    if-lez p1, :cond_48

    #@47
    move v1, v2

    #@48
    :cond_48
    return v1

    #@49
    :cond_49
    if-eqz p1, :cond_57

    #@4b
    .line 1403
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@4e
    move-result p1

    #@4f
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@51
    int-to-float p2, p2

    #@52
    cmpl-float p1, p1, p2

    #@54
    if-lez p1, :cond_57

    #@56
    move v1, v2

    #@57
    :cond_57
    return v1
.end method

.method public continueSettling(Z)Z
    .registers 13

    #@0
    .line 764
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x2

    #@4
    if-ne v0, v2, :cond_6a

    #@6
    .line 765
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@8
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@b
    move-result v0

    #@c
    .line 766
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@e
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    #@11
    move-result v3

    #@12
    .line 767
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@14
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    #@17
    move-result v10

    #@18
    .line 768
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@1a
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@1d
    move-result v4

    #@1e
    sub-int v8, v3, v4

    #@20
    .line 769
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@22
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@25
    move-result v4

    #@26
    sub-int v9, v10, v4

    #@28
    if-eqz v8, :cond_2f

    #@2a
    .line 772
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2c
    invoke-static {v4, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@2f
    :cond_2f
    if-eqz v9, :cond_36

    #@31
    .line 775
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@33
    invoke-static {v4, v9}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@36
    :cond_36
    if-nez v8, :cond_3a

    #@38
    if-eqz v9, :cond_43

    #@3a
    .line 779
    :cond_3a
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@3c
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3e
    move v6, v3

    #@3f
    move v7, v10

    #@40
    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@43
    :cond_43
    if-eqz v0, :cond_5b

    #@45
    .line 782
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@47
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    #@4a
    move-result v4

    #@4b
    if-ne v3, v4, :cond_5b

    #@4d
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@4f
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    #@52
    move-result v3

    #@53
    if-ne v10, v3, :cond_5b

    #@55
    .line 785
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@57
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5a
    move v0, v1

    #@5b
    :cond_5b
    if-nez v0, :cond_6a

    #@5d
    if-eqz p1, :cond_67

    #@5f
    .line 791
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@61
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@66
    goto :goto_6a

    #@67
    .line 793
    :cond_67
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    #@6a
    .line 798
    :cond_6a
    :goto_6a
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@6c
    if-ne p1, v2, :cond_6f

    #@6e
    const/4 v1, 0x1

    #@6f
    :cond_6f
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 6

    #@0
    .line 1516
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_32

    #@a
    .line 1518
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@c
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@e
    invoke-virtual {v2, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 1519
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@19
    move-result v2

    #@1a
    if-lt p1, v2, :cond_2f

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@1f
    move-result v2

    #@20
    if-ge p1, v2, :cond_2f

    #@22
    .line 1520
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@25
    move-result v2

    #@26
    if-lt p2, v2, :cond_2f

    #@28
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@2b
    move-result v2

    #@2c
    if-ge p2, v2, :cond_2f

    #@2e
    return-object v1

    #@2f
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    #@31
    goto :goto_8

    #@32
    :cond_32
    const/4 p1, 0x0

    #@33
    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .registers 15

    #@0
    .line 739
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@2
    if-eqz v0, :cond_30

    #@4
    .line 744
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    #@6
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@b
    move-result v2

    #@c
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@11
    move-result v3

    #@12
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@14
    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@16
    .line 745
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@19
    move-result v0

    #@1a
    float-to-int v4, v0

    #@1b
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@1f
    .line 746
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@22
    move-result v0

    #@23
    float-to-int v5, v0

    #@24
    move v6, p1

    #@25
    move v7, p3

    #@26
    move v8, p2

    #@27
    move v9, p4

    #@28
    .line 744
    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@2b
    const/4 p1, 0x2

    #@2c
    .line 749
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    #@2f
    return-void

    #@30
    .line 740
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    #@32
    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    #@34
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw p1
.end method

.method public getActivePointerId()I
    .registers 2

    #@0
    .line 524
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@2
    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 2

    #@0
    .line 516
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getDefaultEdgeSize()I
    .registers 2

    #@0
    .line 488
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    #@2
    return v0
.end method

.method public getEdgeSize()I
    .registers 2

    #@0
    .line 462
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    #@2
    return v0
.end method

.method public getMinVelocity()F
    .registers 2

    #@0
    .line 425
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    #@0
    .line 532
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    #@2
    return v0
.end method

.method public getViewDragState()I
    .registers 2

    #@0
    .line 434
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@2
    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4

    #@0
    .line 1484
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public isEdgeTouched(I)Z
    .registers 6

    #@0
    .line 1418
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@2
    array-length v0, v0

    #@3
    const/4 v1, 0x0

    #@4
    move v2, v1

    #@5
    :goto_5
    if-ge v2, v0, :cond_12

    #@7
    .line 1420
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_f

    #@d
    const/4 p1, 0x1

    #@e
    return p1

    #@f
    :cond_f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_5

    #@12
    :cond_12
    return v1
.end method

.method public isEdgeTouched(II)Z
    .registers 4

    #@0
    .line 1438
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@8
    aget p2, v0, p2

    #@a
    and-int/2addr p1, p2

    #@b
    if-eqz p1, :cond_f

    #@d
    const/4 p1, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    :goto_10
    return p1
.end method

.method public isPointerDown(I)Z
    .registers 4

    #@0
    .line 913
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    #@2
    const/4 v1, 0x1

    #@3
    shl-int p1, v1, p1

    #@5
    and-int/2addr p1, v0

    #@6
    if-eqz p1, :cond_9

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v1, 0x0

    #@a
    :goto_a
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 1500
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@7
    move-result v1

    #@8
    if-lt p2, v1, :cond_1d

    #@a
    .line 1501
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@d
    move-result v1

    #@e
    if-ge p2, v1, :cond_1d

    #@10
    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@13
    move-result p2

    #@14
    if-lt p3, p2, :cond_1d

    #@16
    .line 1503
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@19
    move-result p1

    #@1a
    if-ge p3, p1, :cond_1d

    #@1c
    const/4 v0, 0x1

    #@1d
    :cond_1d
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    #@0
    .line 1126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    .line 1127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@7
    move-result v1

    #@8
    if-nez v0, :cond_d

    #@a
    .line 1132
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    #@d
    .line 1135
    :cond_d
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    if-nez v2, :cond_17

    #@11
    .line 1136
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17
    .line 1138
    :cond_17
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@19
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@1c
    const/4 v2, 0x0

    #@1d
    if-eqz v0, :cond_151

    #@1f
    const/4 v3, 0x1

    #@20
    if-eq v0, v3, :cond_146

    #@22
    const/4 v4, 0x2

    #@23
    if-eq v0, v4, :cond_bf

    #@25
    const/4 v4, 0x3

    #@26
    if-eq v0, v4, :cond_b2

    #@28
    const/4 v4, 0x5

    #@29
    if-eq v0, v4, :cond_75

    #@2b
    const/4 v4, 0x6

    #@2c
    if-eq v0, v4, :cond_30

    #@2e
    goto/16 :goto_179

    #@30
    .line 1235
    :cond_30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@33
    move-result v0

    #@34
    .line 1236
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@36
    if-ne v1, v3, :cond_70

    #@38
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@3a
    if-ne v0, v1, :cond_70

    #@3c
    .line 1239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3f
    move-result v1

    #@40
    :goto_40
    const/4 v3, -0x1

    #@41
    if-ge v2, v1, :cond_6a

    #@43
    .line 1241
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@46
    move-result v4

    #@47
    .line 1242
    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@49
    if-ne v4, v5, :cond_4c

    #@4b
    goto :goto_67

    #@4c
    .line 1247
    :cond_4c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@4f
    move-result v5

    #@50
    .line 1248
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@53
    move-result v6

    #@54
    float-to-int v5, v5

    #@55
    float-to-int v6, v6

    #@56
    .line 1249
    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@59
    move-result-object v5

    #@5a
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@5c
    if-ne v5, v6, :cond_67

    #@5e
    .line 1250
    invoke-virtual {p0, v6, v4}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_67

    #@64
    .line 1251
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@66
    goto :goto_6b

    #@67
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_40

    #@6a
    :cond_6a
    move p1, v3

    #@6b
    :goto_6b
    if-ne p1, v3, :cond_70

    #@6d
    .line 1258
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    #@70
    .line 1261
    :cond_70
    invoke-direct {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    #@73
    goto/16 :goto_179

    #@75
    .line 1162
    :cond_75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@78
    move-result v0

    #@79
    .line 1163
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@7c
    move-result v2

    #@7d
    .line 1164
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@80
    move-result p1

    #@81
    .line 1166
    invoke-direct {p0, v2, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@84
    .line 1169
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@86
    if-nez v1, :cond_a3

    #@88
    float-to-int v1, v2

    #@89
    float-to-int p1, p1

    #@8a
    .line 1172
    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@8d
    move-result-object p1

    #@8e
    .line 1173
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@91
    .line 1175
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@93
    aget p1, p1, v0

    #@95
    .line 1176
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    #@97
    and-int v2, p1, v1

    #@99
    if-eqz v2, :cond_179

    #@9b
    .line 1177
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@9d
    and-int/2addr p1, v1

    #@9e
    invoke-virtual {v2, p1, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@a1
    goto/16 :goto_179

    #@a3
    :cond_a3
    float-to-int v1, v2

    #@a4
    float-to-int p1, p1

    #@a5
    .line 1179
    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    #@a8
    move-result p1

    #@a9
    if-eqz p1, :cond_179

    #@ab
    .line 1184
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@ad
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@b0
    goto/16 :goto_179

    #@b2
    .line 1274
    :cond_b2
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@b4
    if-ne p1, v3, :cond_ba

    #@b6
    const/4 p1, 0x0

    #@b7
    .line 1275
    invoke-direct {p0, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    #@ba
    .line 1277
    :cond_ba
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    #@bd
    goto/16 :goto_179

    #@bf
    .line 1190
    :cond_bf
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@c1
    if-ne v0, v3, :cond_ff

    #@c3
    .line 1192
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@c5
    invoke-direct {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    #@c8
    move-result v0

    #@c9
    if-nez v0, :cond_cd

    #@cb
    goto/16 :goto_179

    #@cd
    .line 1194
    :cond_cd
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@cf
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@d2
    move-result v0

    #@d3
    .line 1195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@d6
    move-result v1

    #@d7
    .line 1196
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@da
    move-result v0

    #@db
    .line 1197
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    #@dd
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@df
    aget v2, v2, v3

    #@e1
    sub-float/2addr v1, v2

    #@e2
    float-to-int v1, v1

    #@e3
    .line 1198
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    #@e5
    aget v2, v2, v3

    #@e7
    sub-float/2addr v0, v2

    #@e8
    float-to-int v0, v0

    #@e9
    .line 1200
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@eb
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@ee
    move-result v2

    #@ef
    add-int/2addr v2, v1

    #@f0
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@f2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@f5
    move-result v3

    #@f6
    add-int/2addr v3, v0

    #@f7
    invoke-direct {p0, v2, v3, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->dragTo(IIII)V

    #@fa
    .line 1202
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@fd
    goto/16 :goto_179

    #@ff
    .line 1205
    :cond_ff
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@102
    move-result v0

    #@103
    :goto_103
    if-ge v2, v0, :cond_142

    #@105
    .line 1207
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@108
    move-result v1

    #@109
    .line 1210
    invoke-direct {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    #@10c
    move-result v4

    #@10d
    if-nez v4, :cond_110

    #@10f
    goto :goto_13f

    #@110
    .line 1212
    :cond_110
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@113
    move-result v4

    #@114
    .line 1213
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@117
    move-result v5

    #@118
    .line 1214
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@11a
    aget v6, v6, v1

    #@11c
    sub-float v6, v4, v6

    #@11e
    .line 1215
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@120
    aget v7, v7, v1

    #@122
    sub-float v7, v5, v7

    #@124
    .line 1217
    invoke-direct {p0, v6, v7, v1}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    #@127
    .line 1218
    iget v8, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@129
    if-ne v8, v3, :cond_12c

    #@12b
    goto :goto_142

    #@12c
    :cond_12c
    float-to-int v4, v4

    #@12d
    float-to-int v5, v5

    #@12e
    .line 1223
    invoke-virtual {p0, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@131
    move-result-object v4

    #@132
    .line 1224
    invoke-direct {p0, v4, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    #@135
    move-result v5

    #@136
    if-eqz v5, :cond_13f

    #@138
    .line 1225
    invoke-virtual {p0, v4, v1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@13b
    move-result v1

    #@13c
    if-eqz v1, :cond_13f

    #@13e
    goto :goto_142

    #@13f
    :cond_13f
    :goto_13f
    add-int/lit8 v2, v2, 0x1

    #@141
    goto :goto_103

    #@142
    .line 1229
    :cond_142
    :goto_142
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@145
    goto :goto_179

    #@146
    .line 1266
    :cond_146
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@148
    if-ne p1, v3, :cond_14d

    #@14a
    .line 1267
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    #@14d
    .line 1269
    :cond_14d
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    #@150
    goto :goto_179

    #@151
    .line 1142
    :cond_151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@154
    move-result v0

    #@155
    .line 1143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@158
    move-result v1

    #@159
    .line 1144
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@15c
    move-result p1

    #@15d
    float-to-int v2, v0

    #@15e
    float-to-int v3, v1

    #@15f
    .line 1145
    invoke-virtual {p0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@162
    move-result-object v2

    #@163
    .line 1147
    invoke-direct {p0, v0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@166
    .line 1152
    invoke-virtual {p0, v2, p1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@169
    .line 1154
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@16b
    aget v0, v0, p1

    #@16d
    .line 1155
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    #@16f
    and-int v2, v0, v1

    #@171
    if-eqz v2, :cond_179

    #@173
    .line 1156
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@175
    and-int/2addr v0, v1

    #@176
    invoke-virtual {v2, v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@179
    :cond_179
    :goto_179
    return-void
.end method

.method setDragState(I)V
    .registers 4

    #@0
    .line 917
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@2
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 918
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@9
    if-eq v0, p1, :cond_19

    #@b
    .line 919
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@d
    .line 920
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@f
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    #@12
    .line 921
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@14
    if-nez p1, :cond_19

    #@16
    const/4 p1, 0x0

    #@17
    .line 922
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@19
    :cond_19
    return-void
.end method

.method public setEdgeSize(I)V
    .registers 2

    #@0
    .line 475
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    #@2
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2

    #@0
    .line 450
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    #@2
    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2

    #@0
    .line 414
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6

    #@0
    .line 606
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@2
    if-eqz v0, :cond_1b

    #@4
    .line 611
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@6
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@8
    .line 612
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@b
    move-result v0

    #@c
    float-to-int v0, v0

    #@d
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@11
    .line 613
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@14
    move-result v1

    #@15
    float-to-int v1, v1

    #@16
    .line 611
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    #@19
    move-result p1

    #@1a
    return p1

    #@1b
    .line 607
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1d
    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    #@1f
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 992
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v2

    #@8
    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@b
    move-result v3

    #@c
    if-nez v2, :cond_11

    #@e
    .line 998
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    #@11
    .line 1001
    :cond_11
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@13
    if-nez v4, :cond_1b

    #@15
    .line 1002
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v4

    #@19
    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    .line 1004
    :cond_1b
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@20
    const/4 v4, 0x2

    #@21
    const/4 v6, 0x1

    #@22
    if-eqz v2, :cond_104

    #@24
    if-eq v2, v6, :cond_ff

    #@26
    if-eq v2, v4, :cond_70

    #@28
    const/4 v7, 0x3

    #@29
    if-eq v2, v7, :cond_ff

    #@2b
    const/4 v7, 0x5

    #@2c
    if-eq v2, v7, :cond_3c

    #@2e
    const/4 v4, 0x6

    #@2f
    if-eq v2, v4, :cond_34

    #@31
    :cond_31
    :goto_31
    const/4 v5, 0x0

    #@32
    goto/16 :goto_135

    #@34
    .line 1104
    :cond_34
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@37
    move-result v1

    #@38
    .line 1105
    invoke-direct {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    #@3b
    goto :goto_31

    #@3c
    .line 1028
    :cond_3c
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@3f
    move-result v2

    #@40
    .line 1029
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    #@43
    move-result v7

    #@44
    .line 1030
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    #@47
    move-result v1

    #@48
    .line 1032
    invoke-direct {v0, v7, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@4b
    .line 1035
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@4d
    if-nez v3, :cond_60

    #@4f
    .line 1036
    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@51
    aget v1, v1, v2

    #@53
    .line 1037
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    #@55
    and-int v4, v1, v3

    #@57
    if-eqz v4, :cond_31

    #@59
    .line 1038
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@5b
    and-int/2addr v1, v3

    #@5c
    invoke-virtual {v4, v1, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@5f
    goto :goto_31

    #@60
    :cond_60
    if-ne v3, v4, :cond_31

    #@62
    float-to-int v3, v7

    #@63
    float-to-int v1, v1

    #@64
    .line 1042
    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@67
    move-result-object v1

    #@68
    .line 1043
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@6a
    if-ne v1, v3, :cond_31

    #@6c
    .line 1044
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@6f
    goto :goto_31

    #@70
    .line 1051
    :cond_70
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@72
    if-eqz v2, :cond_31

    #@74
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@76
    if-nez v2, :cond_79

    #@78
    goto :goto_31

    #@79
    .line 1054
    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7c
    move-result v2

    #@7d
    const/4 v3, 0x0

    #@7e
    :goto_7e
    if-ge v3, v2, :cond_fa

    #@80
    .line 1056
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@83
    move-result v4

    #@84
    .line 1059
    invoke-direct {v0, v4}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    #@87
    move-result v7

    #@88
    if-nez v7, :cond_8c

    #@8a
    goto/16 :goto_f7

    #@8c
    .line 1061
    :cond_8c
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    #@8f
    move-result v7

    #@90
    .line 1062
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    #@93
    move-result v8

    #@94
    .line 1063
    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    #@96
    aget v9, v9, v4

    #@98
    sub-float v9, v7, v9

    #@9a
    .line 1064
    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    #@9c
    aget v10, v10, v4

    #@9e
    sub-float v10, v8, v10

    #@a0
    float-to-int v7, v7

    #@a1
    float-to-int v8, v8

    #@a2
    .line 1066
    invoke-virtual {v0, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@a5
    move-result-object v7

    #@a6
    if-eqz v7, :cond_b0

    #@a8
    .line 1067
    invoke-direct {v0, v7, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    #@ab
    move-result v8

    #@ac
    if-eqz v8, :cond_b0

    #@ae
    move v8, v6

    #@af
    goto :goto_b1

    #@b0
    :cond_b0
    const/4 v8, 0x0

    #@b1
    :goto_b1
    if-eqz v8, :cond_e6

    #@b3
    .line 1074
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@b6
    move-result v11

    #@b7
    float-to-int v12, v9

    #@b8
    add-int v13, v11, v12

    #@ba
    .line 1076
    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@bc
    invoke-virtual {v14, v7, v13, v12}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    #@bf
    move-result v12

    #@c0
    .line 1078
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@c3
    move-result v13

    #@c4
    float-to-int v14, v10

    #@c5
    add-int v15, v13, v14

    #@c7
    .line 1080
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@c9
    invoke-virtual {v5, v7, v15, v14}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    #@cc
    move-result v5

    #@cd
    .line 1082
    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@cf
    invoke-virtual {v14, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@d2
    move-result v14

    #@d3
    .line 1083
    iget-object v15, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@d5
    invoke-virtual {v15, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@d8
    move-result v15

    #@d9
    if-eqz v14, :cond_df

    #@db
    if-lez v14, :cond_e6

    #@dd
    if-ne v12, v11, :cond_e6

    #@df
    :cond_df
    if-eqz v15, :cond_fa

    #@e1
    if-lez v15, :cond_e6

    #@e3
    if-ne v5, v13, :cond_e6

    #@e5
    goto :goto_fa

    #@e6
    .line 1089
    :cond_e6
    invoke-direct {v0, v9, v10, v4}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    #@e9
    .line 1090
    iget v5, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@eb
    if-ne v5, v6, :cond_ee

    #@ed
    goto :goto_fa

    #@ee
    :cond_ee
    if-eqz v8, :cond_f7

    #@f0
    .line 1095
    invoke-virtual {v0, v7, v4}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_f7

    #@f6
    goto :goto_fa

    #@f7
    :cond_f7
    :goto_f7
    add-int/lit8 v3, v3, 0x1

    #@f9
    goto :goto_7e

    #@fa
    .line 1099
    :cond_fa
    :goto_fa
    invoke-direct/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@fd
    goto/16 :goto_31

    #@ff
    .line 1111
    :cond_ff
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    #@102
    goto/16 :goto_31

    #@104
    .line 1008
    :cond_104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@107
    move-result v2

    #@108
    .line 1009
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@10b
    move-result v3

    #@10c
    const/4 v5, 0x0

    #@10d
    .line 1010
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@110
    move-result v1

    #@111
    .line 1011
    invoke-direct {v0, v2, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@114
    float-to-int v2, v2

    #@115
    float-to-int v3, v3

    #@116
    .line 1013
    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@119
    move-result-object v2

    #@11a
    .line 1016
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@11c
    if-ne v2, v3, :cond_125

    #@11e
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@120
    if-ne v3, v4, :cond_125

    #@122
    .line 1017
    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@125
    .line 1020
    :cond_125
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@127
    aget v2, v2, v1

    #@129
    .line 1021
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    #@12b
    and-int v4, v2, v3

    #@12d
    if-eqz v4, :cond_135

    #@12f
    .line 1022
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@131
    and-int/2addr v2, v3

    #@132
    invoke-virtual {v4, v2, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@135
    .line 1116
    :cond_135
    :goto_135
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@137
    if-ne v1, v6, :cond_13a

    #@139
    move v5, v6

    #@13a
    :cond_13a
    return v5
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 4

    #@0
    .line 581
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    const/4 p1, -0x1

    #@3
    .line 582
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@5
    const/4 p1, 0x0

    #@6
    .line 584
    invoke-direct {p0, p2, p3, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_17

    #@c
    .line 585
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    #@e
    if-nez p2, :cond_17

    #@10
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@12
    if-eqz p2, :cond_17

    #@14
    const/4 p2, 0x0

    #@15
    .line 588
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@17
    :cond_17
    return p1
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 5

    #@0
    .line 937
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    const/4 v1, 0x1

    #@3
    if-ne p1, v0, :cond_a

    #@5
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@7
    if-ne v0, p2, :cond_a

    #@9
    return v1

    #@a
    :cond_a
    if-eqz p1, :cond_1a

    #@c
    .line 941
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@e
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1a

    #@14
    .line 942
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    #@16
    .line 943
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@19
    return v1

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    return p1
.end method
