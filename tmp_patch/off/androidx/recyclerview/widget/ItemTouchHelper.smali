.class public Landroidx/recyclerview/widget/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$Callback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field private mActionState:I

.field mActivePointerId:I

.field mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field private mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field private mSelectedStartX:F

.field private mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .registers 5

    #@0
    .line 446
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    #@3
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    #@a
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [F

    #@d
    .line 172
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    #@f
    const/4 v0, 0x0

    #@10
    .line 177
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    const/4 v1, -0x1

    #@13
    .line 217
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@15
    const/4 v2, 0x0

    #@16
    .line 229
    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@18
    .line 246
    new-instance v2, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@1f
    .line 256
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper$1;

    #@21
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    #@24
    iput-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    #@26
    .line 284
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    #@28
    .line 291
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    #@2a
    .line 299
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    #@2c
    .line 313
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$2;

    #@2e
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    #@31
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@33
    .line 447
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@35
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .registers 1

    #@0
    return-void
.end method

.method private checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 10

    #@0
    and-int/lit8 v0, p2, 0xc

    #@2
    if-eqz v0, :cond_79

    #@4
    .line 1238
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    const/16 v2, 0x8

    #@b
    const/4 v3, 0x4

    #@c
    if-lez v0, :cond_10

    #@e
    move v0, v2

    #@f
    goto :goto_11

    #@10
    :cond_10
    move v0, v3

    #@11
    .line 1239
    :goto_11
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@13
    if-eqz v4, :cond_5c

    #@15
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@17
    const/4 v6, -0x1

    #@18
    if-le v5, v6, :cond_5c

    #@1a
    .line 1240
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@1c
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    #@1e
    .line 1241
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    #@21
    move-result v5

    #@22
    const/16 v6, 0x3e8

    #@24
    .line 1240
    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@27
    .line 1242
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@29
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@2b
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@2e
    move-result v4

    #@2f
    .line 1243
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@31
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@33
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@36
    move-result v5

    #@37
    cmpl-float v1, v4, v1

    #@39
    if-lez v1, :cond_3c

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move v2, v3

    #@3d
    .line 1245
    :goto_3d
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@40
    move-result v1

    #@41
    and-int v3, v2, p2

    #@43
    if-eqz v3, :cond_5c

    #@45
    if-ne v0, v2, :cond_5c

    #@47
    .line 1246
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@49
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    #@4b
    .line 1247
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    #@4e
    move-result v3

    #@4f
    cmpl-float v3, v1, v3

    #@51
    if-ltz v3, :cond_5c

    #@53
    .line 1248
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@56
    move-result v3

    #@57
    cmpl-float v1, v1, v3

    #@59
    if-lez v1, :cond_5c

    #@5b
    return v2

    #@5c
    .line 1253
    :cond_5c
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5e
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@61
    move-result v1

    #@62
    int-to-float v1, v1

    #@63
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@65
    .line 1254
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    #@68
    move-result p1

    #@69
    mul-float/2addr v1, p1

    #@6a
    and-int p1, p2, v0

    #@6c
    if-eqz p1, :cond_79

    #@6e
    .line 1256
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@70
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@73
    move-result p1

    #@74
    cmpl-float p1, p1, v1

    #@76
    if-lez p1, :cond_79

    #@78
    return v0

    #@79
    :cond_79
    const/4 p1, 0x0

    #@7a
    return p1
.end method

.method private checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 10

    #@0
    and-int/lit8 v0, p2, 0x3

    #@2
    if-eqz v0, :cond_78

    #@4
    .line 1265
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    const/4 v2, 0x2

    #@a
    const/4 v3, 0x1

    #@b
    if-lez v0, :cond_f

    #@d
    move v0, v2

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v0, v3

    #@10
    .line 1266
    :goto_10
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@12
    if-eqz v4, :cond_5b

    #@14
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@16
    const/4 v6, -0x1

    #@17
    if-le v5, v6, :cond_5b

    #@19
    .line 1267
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@1b
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    #@1d
    .line 1268
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    #@20
    move-result v5

    #@21
    const/16 v6, 0x3e8

    #@23
    .line 1267
    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@26
    .line 1269
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@28
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@2a
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@2d
    move-result v4

    #@2e
    .line 1270
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@30
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@32
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@35
    move-result v5

    #@36
    cmpl-float v1, v5, v1

    #@38
    if-lez v1, :cond_3b

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move v2, v3

    #@3c
    .line 1272
    :goto_3c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@3f
    move-result v1

    #@40
    and-int v3, v2, p2

    #@42
    if-eqz v3, :cond_5b

    #@44
    if-ne v2, v0, :cond_5b

    #@46
    .line 1273
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@48
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    #@4a
    .line 1274
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    #@4d
    move-result v3

    #@4e
    cmpl-float v3, v1, v3

    #@50
    if-ltz v3, :cond_5b

    #@52
    .line 1275
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@55
    move-result v3

    #@56
    cmpl-float v1, v1, v3

    #@58
    if-lez v1, :cond_5b

    #@5a
    return v2

    #@5b
    .line 1280
    :cond_5b
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@60
    move-result v1

    #@61
    int-to-float v1, v1

    #@62
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@64
    .line 1281
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    #@67
    move-result p1

    #@68
    mul-float/2addr v1, p1

    #@69
    and-int p1, p2, v0

    #@6b
    if-eqz p1, :cond_78

    #@6d
    .line 1282
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@6f
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@72
    move-result p1

    #@73
    cmpl-float p1, p1, v1

    #@75
    if-lez p1, :cond_78

    #@77
    return v0

    #@78
    :cond_78
    const/4 p1, 0x0

    #@79
    return p1
.end method

.method private destroyCallbacks()V
    .registers 5

    #@0
    .line 494
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@5
    .line 495
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    #@c
    .line 496
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@e
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    #@11
    .line 498
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v0

    #@17
    add-int/lit8 v0, v0, -0x1

    #@19
    :goto_19
    if-ltz v0, :cond_30

    #@1b
    .line 500
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@24
    .line 501
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@26
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@28
    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2a
    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@2d
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_19

    #@30
    .line 503
    :cond_30
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@35
    const/4 v0, 0x0

    #@36
    .line 504
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    #@38
    const/4 v0, -0x1

    #@39
    .line 505
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    #@3b
    .line 506
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    #@3e
    .line 507
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->stopGestureDetection()V

    #@41
    return-void
.end method

.method private findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 800
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    #@6
    if-nez v2, :cond_17

    #@8
    .line 801
    new-instance v2, Ljava/util/ArrayList;

    #@a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    #@f
    .line 802
    new-instance v2, Ljava/util/ArrayList;

    #@11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    #@16
    goto :goto_1f

    #@17
    .line 804
    :cond_17
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1a
    .line 805
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    #@1c
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1f
    .line 807
    :goto_1f
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@21
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    #@24
    move-result v2

    #@25
    .line 808
    iget v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    #@27
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@29
    add-float/2addr v3, v4

    #@2a
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@2d
    move-result v3

    #@2e
    sub-int/2addr v3, v2

    #@2f
    .line 809
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    #@31
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@33
    add-float/2addr v4, v5

    #@34
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@37
    move-result v4

    #@38
    sub-int/2addr v4, v2

    #@39
    .line 810
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@3b
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@3e
    move-result v5

    #@3f
    add-int/2addr v5, v3

    #@40
    mul-int/lit8 v2, v2, 0x2

    #@42
    add-int/2addr v5, v2

    #@43
    .line 811
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@45
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@48
    move-result v6

    #@49
    add-int/2addr v6, v4

    #@4a
    add-int/2addr v6, v2

    #@4b
    add-int v2, v3, v5

    #@4d
    .line 812
    div-int/lit8 v2, v2, 0x2

    #@4f
    add-int v7, v4, v6

    #@51
    .line 813
    div-int/lit8 v7, v7, 0x2

    #@53
    .line 814
    iget-object v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@55
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@58
    move-result-object v8

    #@59
    .line 815
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@5c
    move-result v9

    #@5d
    const/4 v11, 0x0

    #@5e
    :goto_5e
    if-ge v11, v9, :cond_ed

    #@60
    .line 817
    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@63
    move-result-object v12

    #@64
    .line 818
    iget-object v13, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@66
    if-ne v12, v13, :cond_6a

    #@68
    goto/16 :goto_e7

    #@6a
    .line 821
    :cond_6a
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    #@6d
    move-result v13

    #@6e
    if-lt v13, v4, :cond_e7

    #@70
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    #@73
    move-result v13

    #@74
    if-gt v13, v6, :cond_e7

    #@76
    .line 822
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    #@79
    move-result v13

    #@7a
    if-lt v13, v3, :cond_e7

    #@7c
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    #@7f
    move-result v13

    #@80
    if-le v13, v5, :cond_83

    #@82
    goto :goto_e7

    #@83
    .line 825
    :cond_83
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@85
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@88
    move-result-object v13

    #@89
    .line 826
    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@8b
    iget-object v15, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@8d
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@8f
    invoke-virtual {v14, v15, v10, v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@92
    move-result v10

    #@93
    if-eqz v10, :cond_e7

    #@95
    .line 828
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    #@98
    move-result v10

    #@99
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    #@9c
    move-result v14

    #@9d
    add-int/2addr v10, v14

    #@9e
    div-int/lit8 v10, v10, 0x2

    #@a0
    sub-int v10, v2, v10

    #@a2
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@a5
    move-result v10

    #@a6
    .line 829
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    #@a9
    move-result v14

    #@aa
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    #@ad
    move-result v12

    #@ae
    add-int/2addr v14, v12

    #@af
    div-int/lit8 v14, v14, 0x2

    #@b1
    sub-int v12, v7, v14

    #@b3
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    #@b6
    move-result v12

    #@b7
    mul-int/2addr v10, v10

    #@b8
    mul-int/2addr v12, v12

    #@b9
    add-int/2addr v10, v12

    #@ba
    .line 833
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    #@bc
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@bf
    move-result v12

    #@c0
    const/4 v14, 0x0

    #@c1
    const/4 v15, 0x0

    #@c2
    :goto_c2
    if-ge v14, v12, :cond_d9

    #@c4
    .line 835
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    #@c6
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c9
    move-result-object v1

    #@ca
    check-cast v1, Ljava/lang/Integer;

    #@cc
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@cf
    move-result v1

    #@d0
    if-le v10, v1, :cond_d9

    #@d2
    add-int/lit8 v15, v15, 0x1

    #@d4
    add-int/lit8 v14, v14, 0x1

    #@d6
    move-object/from16 v1, p1

    #@d8
    goto :goto_c2

    #@d9
    .line 841
    :cond_d9
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    #@db
    invoke-interface {v1, v15, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@de
    .line 842
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    #@e0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e3
    move-result-object v10

    #@e4
    invoke-interface {v1, v15, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@e7
    :cond_e7
    :goto_e7
    add-int/lit8 v11, v11, 0x1

    #@e9
    move-object/from16 v1, p1

    #@eb
    goto/16 :goto_5e

    #@ed
    .line 845
    :cond_ed
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    #@ef
    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 8

    #@0
    .line 950
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@5
    move-result-object v0

    #@6
    .line 951
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@8
    const/4 v2, -0x1

    #@9
    const/4 v3, 0x0

    #@a
    if-ne v1, v2, :cond_d

    #@c
    return-object v3

    #@d
    .line 954
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@10
    move-result v1

    #@11
    .line 955
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@14
    move-result v2

    #@15
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    #@17
    sub-float/2addr v2, v4

    #@18
    .line 956
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@1b
    move-result v1

    #@1c
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    #@1e
    sub-float/2addr v1, v4

    #@1f
    .line 957
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@22
    move-result v2

    #@23
    .line 958
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@26
    move-result v1

    #@27
    .line 960
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    #@29
    int-to-float v5, v4

    #@2a
    cmpg-float v5, v2, v5

    #@2c
    if-gez v5, :cond_34

    #@2e
    int-to-float v4, v4

    #@2f
    cmpg-float v4, v1, v4

    #@31
    if-gez v4, :cond_34

    #@33
    return-object v3

    #@34
    :cond_34
    cmpl-float v4, v2, v1

    #@36
    if-lez v4, :cond_3f

    #@38
    .line 963
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3f

    #@3e
    return-object v3

    #@3f
    :cond_3f
    cmpl-float v1, v1, v2

    #@41
    if-lez v1, :cond_4a

    #@43
    .line 965
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_4a

    #@49
    return-object v3

    #@4a
    .line 968
    :cond_4a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    #@4d
    move-result-object p1

    #@4e
    if-nez p1, :cond_51

    #@50
    return-object v3

    #@51
    .line 972
    :cond_51
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@53
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@56
    move-result-object p1

    #@57
    return-object p1
.end method

.method private getSelectedDxDy([F)V
    .registers 5

    #@0
    .line 527
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    #@2
    and-int/lit8 v0, v0, 0xc

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_19

    #@7
    .line 528
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    #@9
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@b
    add-float/2addr v0, v2

    #@c
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@e
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@10
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    sub-float/2addr v0, v2

    #@16
    aput v0, p1, v1

    #@18
    goto :goto_23

    #@19
    .line 530
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1b
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1d
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    #@20
    move-result v0

    #@21
    aput v0, p1, v1

    #@23
    .line 532
    :goto_23
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    #@25
    and-int/lit8 v0, v0, 0x3

    #@27
    const/4 v1, 0x1

    #@28
    if-eqz v0, :cond_3c

    #@2a
    .line 533
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    #@2c
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@2e
    add-float/2addr v0, v2

    #@2f
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@31
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@33
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@36
    move-result v2

    #@37
    int-to-float v2, v2

    #@38
    sub-float/2addr v0, v2

    #@39
    aput v0, p1, v1

    #@3b
    goto :goto_46

    #@3c
    .line 535
    :cond_3c
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3e
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@40
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    #@43
    move-result v0

    #@44
    aput v0, p1, v1

    #@46
    :goto_46
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .registers 6

    #@0
    cmpl-float v0, p1, p3

    #@2
    if-ltz v0, :cond_1e

    #@4
    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@7
    move-result v0

    #@8
    int-to-float v0, v0

    #@9
    add-float/2addr p3, v0

    #@a
    cmpg-float p1, p1, p3

    #@c
    if-gtz p1, :cond_1e

    #@e
    cmpl-float p1, p2, p4

    #@10
    if-ltz p1, :cond_1e

    #@12
    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@15
    move-result p0

    #@16
    int-to-float p0, p0

    #@17
    add-float/2addr p4, p0

    #@18
    cmpg-float p0, p2, p4

    #@1a
    if-gtz p0, :cond_1e

    #@1c
    const/4 p0, 0x1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 p0, 0x0

    #@1f
    :goto_1f
    return p0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    #@0
    .line 943
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 944
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 945
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    :cond_a
    return-void
.end method

.method private setupCallbacks()V
    .registers 3

    #@0
    .line 485
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 486
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    #@10
    .line 487
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@12
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@15
    .line 488
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@17
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    #@1c
    .line 489
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1e
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    #@21
    .line 490
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startGestureDetection()V

    #@24
    return-void
.end method

.method private startGestureDetection()V
    .registers 4

    #@0
    .line 511
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    #@2
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    #@5
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    #@7
    .line 512
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    #@9
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    #@11
    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@14
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    #@16
    return-void
.end method

.method private stopGestureDetection()V
    .registers 3

    #@0
    .line 517
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_a

    #@5
    .line 518
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->doNotReactToLongPress()V

    #@8
    .line 519
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    #@a
    .line 521
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    #@c
    if-eqz v0, :cond_10

    #@e
    .line 522
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    #@10
    :cond_10
    return-void
.end method

.method private swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 7

    #@0
    .line 1191
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    if-ne v0, v1, :cond_7

    #@6
    return v2

    #@7
    .line 1194
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@9
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@b
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@e
    move-result v0

    #@f
    .line 1195
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@11
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@13
    .line 1197
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@16
    move-result v3

    #@17
    .line 1195
    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    #@1a
    move-result v1

    #@1b
    const v3, 0xff00

    #@1e
    and-int/2addr v1, v3

    #@1f
    shr-int/lit8 v1, v1, 0x8

    #@21
    if-nez v1, :cond_24

    #@23
    return v2

    #@24
    :cond_24
    and-int/2addr v0, v3

    #@25
    shr-int/lit8 v0, v0, 0x8

    #@27
    .line 1206
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@29
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@2c
    move-result v3

    #@2d
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@2f
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@32
    move-result v4

    #@33
    cmpl-float v3, v3, v4

    #@35
    if-lez v3, :cond_54

    #@37
    .line 1207
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    #@3a
    move-result v3

    #@3b
    if-lez v3, :cond_4d

    #@3d
    and-int p1, v0, v3

    #@3f
    if-nez p1, :cond_4c

    #@41
    .line 1211
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@43
    .line 1212
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@46
    move-result p1

    #@47
    .line 1211
    invoke-static {v3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    #@4a
    move-result p1

    #@4b
    return p1

    #@4c
    :cond_4c
    return v3

    #@4d
    .line 1216
    :cond_4d
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    #@50
    move-result p1

    #@51
    if-lez p1, :cond_6f

    #@53
    return p1

    #@54
    .line 1220
    :cond_54
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    #@57
    move-result v3

    #@58
    if-lez v3, :cond_5b

    #@5a
    return v3

    #@5b
    .line 1223
    :cond_5b
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    #@5e
    move-result p1

    #@5f
    if-lez p1, :cond_6f

    #@61
    and-int/2addr v0, p1

    #@62
    if-nez v0, :cond_6e

    #@64
    .line 1227
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@66
    .line 1228
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@69
    move-result v0

    #@6a
    .line 1227
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    #@6d
    move-result p1

    #@6e
    :cond_6e
    return p1

    #@6f
    :cond_6f
    return v2
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    .line 467
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    if-eqz v0, :cond_a

    #@7
    .line 471
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->destroyCallbacks()V

    #@a
    .line 473
    :cond_a
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    if-eqz p1, :cond_25

    #@e
    .line 475
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object p1

    #@12
    .line 476
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    #@14
    .line 477
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    #@1a
    .line 478
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    #@1c
    .line 479
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    #@1f
    move-result p1

    #@20
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    #@22
    .line 480
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->setupCallbacks()V

    #@25
    :cond_25
    return-void
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)V
    .registers 12

    #@0
    .line 980
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2
    if-nez v0, :cond_91

    #@4
    const/4 v0, 0x2

    #@5
    if-ne p1, v0, :cond_91

    #@7
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@9
    if-eq p1, v0, :cond_91

    #@b
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@d
    .line 981
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    #@10
    move-result p1

    #@11
    if-nez p1, :cond_15

    #@13
    goto/16 :goto_91

    #@15
    .line 984
    :cond_15
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    #@1a
    move-result p1

    #@1b
    const/4 v1, 0x1

    #@1c
    if-ne p1, v1, :cond_1f

    #@1e
    return-void

    #@1f
    .line 987
    :cond_1f
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@22
    move-result-object p1

    #@23
    if-nez p1, :cond_26

    #@25
    return-void

    #@26
    .line 991
    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@28
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2a
    invoke-virtual {v2, v3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@2d
    move-result v2

    #@2e
    const v3, 0xff00

    #@31
    and-int/2addr v2, v3

    #@32
    shr-int/lit8 v2, v2, 0x8

    #@34
    if-nez v2, :cond_37

    #@36
    return-void

    #@37
    .line 1002
    :cond_37
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    #@3a
    move-result v3

    #@3b
    .line 1003
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    #@3e
    move-result p3

    #@3f
    .line 1006
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    #@41
    sub-float/2addr v3, v4

    #@42
    .line 1007
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    #@44
    sub-float/2addr p3, v4

    #@45
    .line 1010
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@48
    move-result v4

    #@49
    .line 1011
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@4c
    move-result v5

    #@4d
    .line 1013
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    #@4f
    int-to-float v7, v6

    #@50
    cmpg-float v7, v4, v7

    #@52
    if-gez v7, :cond_5a

    #@54
    int-to-float v6, v6

    #@55
    cmpg-float v6, v5, v6

    #@57
    if-gez v6, :cond_5a

    #@59
    return-void

    #@5a
    :cond_5a
    cmpl-float v4, v4, v5

    #@5c
    const/4 v5, 0x0

    #@5d
    if-lez v4, :cond_71

    #@5f
    cmpg-float p3, v3, v5

    #@61
    if-gez p3, :cond_68

    #@63
    and-int/lit8 p3, v2, 0x4

    #@65
    if-nez p3, :cond_68

    #@67
    return-void

    #@68
    :cond_68
    cmpl-float p3, v3, v5

    #@6a
    if-lez p3, :cond_83

    #@6c
    and-int/lit8 p3, v2, 0x8

    #@6e
    if-nez p3, :cond_83

    #@70
    return-void

    #@71
    :cond_71
    cmpg-float v3, p3, v5

    #@73
    if-gez v3, :cond_7a

    #@75
    and-int/lit8 v3, v2, 0x1

    #@77
    if-nez v3, :cond_7a

    #@79
    return-void

    #@7a
    :cond_7a
    cmpl-float p3, p3, v5

    #@7c
    if-lez p3, :cond_83

    #@7e
    and-int/lit8 p3, v2, 0x2

    #@80
    if-nez p3, :cond_83

    #@82
    return-void

    #@83
    .line 1031
    :cond_83
    iput v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@85
    iput v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@87
    const/4 p3, 0x0

    #@88
    .line 1032
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@8b
    move-result p2

    #@8c
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    #@8e
    .line 1033
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    #@91
    :cond_91
    :goto_91
    return-void
.end method

.method endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 6

    #@0
    .line 914
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_2b

    #@a
    .line 916
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@12
    .line 917
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@14
    if-ne v2, p1, :cond_28

    #@16
    .line 918
    iget-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    #@18
    or-int/2addr p1, p2

    #@19
    iput-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    #@1b
    .line 919
    iget-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    #@1d
    if-nez p1, :cond_22

    #@1f
    .line 920
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->cancel()V

    #@22
    .line 922
    :cond_22
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@24
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@27
    return-void

    #@28
    :cond_28
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_8

    #@2b
    :cond_2b
    return-void
.end method

.method findAnimation(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .registers 6

    #@0
    .line 1155
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_a

    #@9
    return-object v1

    #@a
    .line 1158
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    #@d
    move-result-object p1

    #@e
    .line 1159
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    :goto_16
    if-ltz v0, :cond_2a

    #@18
    .line 1160
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@1a
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@20
    .line 1161
    iget-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@22
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@24
    if-ne v3, p1, :cond_27

    #@26
    return-object v2

    #@27
    :cond_27
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_16

    #@2a
    :cond_2a
    return-object v1
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 7

    #@0
    .line 1039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@7
    move-result p1

    #@8
    .line 1041
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@a
    if-eqz v1, :cond_1f

    #@c
    .line 1042
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@e
    .line 1043
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    #@10
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@12
    add-float/2addr v2, v3

    #@13
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    #@15
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@17
    add-float/2addr v3, v4

    #@18
    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1f

    #@1e
    return-object v1

    #@1f
    .line 1047
    :cond_1f
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@21
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@24
    move-result v1

    #@25
    add-int/lit8 v1, v1, -0x1

    #@27
    :goto_27
    if-ltz v1, :cond_43

    #@29
    .line 1048
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@2b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@31
    .line 1049
    iget-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@33
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@35
    .line 1050
    iget v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    #@37
    iget v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    #@39
    invoke-static {v3, v0, p1, v4, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_40

    #@3f
    return-object v3

    #@40
    :cond_40
    add-int/lit8 v1, v1, -0x1

    #@42
    goto :goto_27

    #@43
    .line 1054
    :cond_43
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@45
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    #@48
    move-result-object p1

    #@49
    return-object p1
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    #@0
    .line 931
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@3
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .registers 5

    #@0
    .line 723
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1b

    #@a
    .line 725
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@c
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@12
    iget-boolean v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    #@14
    if-nez v3, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    :cond_18
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    return v1
.end method

.method moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 12

    #@0
    .line 853
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 856
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@b
    const/4 v1, 0x2

    #@c
    if-eq v0, v1, :cond_f

    #@e
    return-void

    #@f
    .line 860
    :cond_f
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    #@14
    move-result v0

    #@15
    .line 861
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    #@17
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@19
    add-float/2addr v1, v2

    #@1a
    float-to-int v8, v1

    #@1b
    .line 862
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    #@1d
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@1f
    add-float/2addr v1, v2

    #@20
    float-to-int v9, v1

    #@21
    .line 863
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@23
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@26
    move-result v1

    #@27
    sub-int v1, v9, v1

    #@29
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@2c
    move-result v1

    #@2d
    int-to-float v1, v1

    #@2e
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@30
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    #@33
    move-result v2

    #@34
    int-to-float v2, v2

    #@35
    mul-float/2addr v2, v0

    #@36
    cmpg-float v1, v1, v2

    #@38
    if-gez v1, :cond_54

    #@3a
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@3c
    .line 864
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@3f
    move-result v1

    #@40
    sub-int v1, v8, v1

    #@42
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@45
    move-result v1

    #@46
    int-to-float v1, v1

    #@47
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@49
    .line 865
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@4c
    move-result v2

    #@4d
    int-to-float v2, v2

    #@4e
    mul-float/2addr v2, v0

    #@4f
    cmpg-float v0, v1, v2

    #@51
    if-gez v0, :cond_54

    #@53
    return-void

    #@54
    .line 868
    :cond_54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    #@57
    move-result-object v0

    #@58
    .line 869
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5b
    move-result v1

    #@5c
    if-nez v1, :cond_5f

    #@5e
    return-void

    #@5f
    .line 873
    :cond_5f
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@61
    invoke-virtual {v1, p1, v0, v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@64
    move-result-object v6

    #@65
    if-nez v6, :cond_72

    #@67
    .line 875
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    #@69
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@6c
    .line 876
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    #@6e
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@71
    return-void

    #@72
    .line 879
    :cond_72
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    #@75
    move-result v7

    #@76
    .line 880
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    #@79
    move-result v5

    #@7a
    .line 881
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@7c
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7e
    invoke-virtual {v0, v1, p1, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_8c

    #@84
    .line 883
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@86
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@88
    move-object v4, p1

    #@89
    invoke-virtual/range {v2 .. v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    #@8c
    :cond_8c
    return-void
.end method

.method obtainVelocityTracker()V
    .registers 2

    #@0
    .line 936
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 937
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@7
    .line 939
    :cond_7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    #@0
    .line 894
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    #@3
    .line 895
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@8
    move-result-object p1

    #@9
    if-nez p1, :cond_c

    #@b
    return-void

    #@c
    .line 899
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@e
    const/4 v1, 0x0

    #@f
    if-eqz v0, :cond_18

    #@11
    if-ne p1, v0, :cond_18

    #@13
    const/4 p1, 0x0

    #@14
    .line 900
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    #@17
    goto :goto_2c

    #@18
    .line 902
    :cond_18
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    #@1b
    .line 903
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    #@1d
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1f
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2c

    #@25
    .line 904
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@27
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@29
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@2c
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 13

    #@0
    const/4 p3, -0x1

    #@1
    .line 554
    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    #@3
    .line 556
    iget-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@5
    if-eqz p3, :cond_17

    #@7
    .line 557
    iget-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    #@9
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    #@c
    .line 558
    iget-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    #@e
    const/4 v0, 0x0

    #@f
    aget v0, p3, v0

    #@11
    const/4 v1, 0x1

    #@12
    .line 559
    aget p3, p3, v1

    #@14
    move v8, p3

    #@15
    move v7, v0

    #@16
    goto :goto_1a

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    move v7, v0

    #@19
    move v8, v7

    #@1a
    .line 561
    :goto_1a
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@1c
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1e
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@20
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@22
    move-object v2, p1

    #@23
    move-object v3, p2

    #@24
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    #@27
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 13

    #@0
    .line 542
    iget-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2
    if-eqz p3, :cond_14

    #@4
    .line 543
    iget-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    #@6
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    #@9
    .line 544
    iget-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    #@b
    const/4 v0, 0x0

    #@c
    aget v0, p3, v0

    #@e
    const/4 v1, 0x1

    #@f
    .line 545
    aget p3, p3, v1

    #@11
    move v8, p3

    #@12
    move v7, v0

    #@13
    goto :goto_17

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    move v7, v0

    #@16
    move v8, v7

    #@17
    .line 547
    :goto_17
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@19
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1b
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@1d
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@1f
    move-object v2, p1

    #@20
    move-object v3, p2

    #@21
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    #@24
    return-void
.end method

.method postDispatchSwipe(Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
    .registers 5

    #@0
    .line 700
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper$4;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$4;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    #@7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    #@a
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .registers 3

    #@0
    .line 1317
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    #@2
    if-ne p1, v0, :cond_10

    #@4
    const/4 p1, 0x0

    #@5
    .line 1318
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    #@7
    .line 1320
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    #@9
    if-eqz v0, :cond_10

    #@b
    .line 1321
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@d
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    #@10
    :cond_10
    return-void
.end method

.method scrollIfNecessary()Z
    .registers 17

    #@0
    move-object/from16 v0, p0

    #@2
    .line 737
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@4
    const/4 v2, 0x0

    #@5
    const-wide/high16 v3, -0x8000000000000000L

    #@7
    if-nez v1, :cond_c

    #@9
    .line 738
    iput-wide v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    #@b
    return v2

    #@c
    .line 741
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v5

    #@10
    .line 742
    iget-wide v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    #@12
    cmp-long v1, v7, v3

    #@14
    if-nez v1, :cond_19

    #@16
    const-wide/16 v7, 0x0

    #@18
    goto :goto_1b

    #@19
    :cond_19
    sub-long v7, v5, v7

    #@1b
    .line 744
    :goto_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@20
    move-result-object v1

    #@21
    .line 745
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    #@23
    if-nez v9, :cond_2c

    #@25
    .line 746
    new-instance v9, Landroid/graphics/Rect;

    #@27
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    #@2c
    .line 750
    :cond_2c
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2e
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@30
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v1, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    #@35
    .line 751
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@38
    move-result v9

    #@39
    const/4 v10, 0x0

    #@3a
    if-eqz v9, :cond_7d

    #@3c
    .line 752
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    #@3e
    iget v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@40
    add-float/2addr v9, v11

    #@41
    float-to-int v9, v9

    #@42
    .line 753
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    #@44
    iget v11, v11, Landroid/graphics/Rect;->left:I

    #@46
    sub-int v11, v9, v11

    #@48
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4a
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@4d
    move-result v12

    #@4e
    sub-int/2addr v11, v12

    #@4f
    .line 754
    iget v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@51
    cmpg-float v13, v12, v10

    #@53
    if-gez v13, :cond_59

    #@55
    if-gez v11, :cond_59

    #@57
    move v12, v11

    #@58
    goto :goto_7e

    #@59
    :cond_59
    cmpl-float v11, v12, v10

    #@5b
    if-lez v11, :cond_7d

    #@5d
    .line 757
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@5f
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@61
    .line 758
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    #@64
    move-result v11

    #@65
    add-int/2addr v9, v11

    #@66
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    #@68
    iget v11, v11, Landroid/graphics/Rect;->right:I

    #@6a
    add-int/2addr v9, v11

    #@6b
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6d
    .line 759
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@70
    move-result v11

    #@71
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@73
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@76
    move-result v12

    #@77
    sub-int/2addr v11, v12

    #@78
    sub-int/2addr v9, v11

    #@79
    if-lez v9, :cond_7d

    #@7b
    move v12, v9

    #@7c
    goto :goto_7e

    #@7d
    :cond_7d
    move v12, v2

    #@7e
    .line 765
    :goto_7e
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@81
    move-result v1

    #@82
    if-eqz v1, :cond_c4

    #@84
    .line 766
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    #@86
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@88
    add-float/2addr v1, v9

    #@89
    float-to-int v1, v1

    #@8a
    .line 767
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    #@8c
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@8e
    sub-int v9, v1, v9

    #@90
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@92
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@95
    move-result v11

    #@96
    sub-int/2addr v9, v11

    #@97
    .line 768
    iget v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@99
    cmpg-float v13, v11, v10

    #@9b
    if-gez v13, :cond_a1

    #@9d
    if-gez v9, :cond_a1

    #@9f
    move v1, v9

    #@a0
    goto :goto_c5

    #@a1
    :cond_a1
    cmpl-float v9, v11, v10

    #@a3
    if-lez v9, :cond_c4

    #@a5
    .line 771
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@a7
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@a9
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    #@ac
    move-result v9

    #@ad
    add-int/2addr v1, v9

    #@ae
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    #@b0
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@b2
    add-int/2addr v1, v9

    #@b3
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@b5
    .line 772
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@b8
    move-result v9

    #@b9
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@bb
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@be
    move-result v10

    #@bf
    sub-int/2addr v9, v10

    #@c0
    sub-int/2addr v1, v9

    #@c1
    if-lez v1, :cond_c4

    #@c3
    goto :goto_c5

    #@c4
    :cond_c4
    move v1, v2

    #@c5
    :goto_c5
    if-eqz v12, :cond_de

    #@c7
    .line 779
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@c9
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@cb
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@cd
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@cf
    .line 780
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    #@d2
    move-result v11

    #@d3
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@d5
    .line 781
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@d8
    move-result v13

    #@d9
    move-wide v14, v7

    #@da
    .line 779
    invoke-virtual/range {v9 .. v15}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    #@dd
    move-result v12

    #@de
    :cond_de
    move v14, v12

    #@df
    if-eqz v1, :cond_fd

    #@e1
    .line 784
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@e3
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@e5
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@e7
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@e9
    .line 785
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    #@ec
    move-result v11

    #@ed
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@ef
    .line 786
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@f2
    move-result v13

    #@f3
    move v12, v1

    #@f4
    move v1, v14

    #@f5
    move-wide v14, v7

    #@f6
    .line 784
    invoke-virtual/range {v9 .. v15}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    #@f9
    move-result v7

    #@fa
    move v12, v1

    #@fb
    move v1, v7

    #@fc
    goto :goto_fe

    #@fd
    :cond_fd
    move v12, v14

    #@fe
    :goto_fe
    if-nez v12, :cond_106

    #@100
    if-eqz v1, :cond_103

    #@102
    goto :goto_106

    #@103
    .line 795
    :cond_103
    iput-wide v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    #@105
    return v2

    #@106
    .line 789
    :cond_106
    :goto_106
    iget-wide v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    #@108
    cmp-long v2, v7, v3

    #@10a
    if-nez v2, :cond_10e

    #@10c
    .line 790
    iput-wide v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    #@10e
    .line 792
    :cond_10e
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@110
    invoke-virtual {v2, v12, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    #@113
    const/4 v1, 0x1

    #@114
    return v1
.end method

.method select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 26

    #@0
    move-object/from16 v11, p0

    #@2
    move-object/from16 v12, p1

    #@4
    move/from16 v13, p2

    #@6
    .line 574
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@8
    if-ne v12, v0, :cond_f

    #@a
    iget v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@c
    if-ne v13, v0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    #@11
    .line 577
    iput-wide v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    #@13
    .line 578
    iget v4, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@15
    const/4 v14, 0x1

    #@16
    .line 580
    invoke-virtual {v11, v12, v14}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    #@19
    .line 581
    iput v13, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@1b
    const/4 v15, 0x2

    #@1c
    if-ne v13, v15, :cond_30

    #@1e
    if-eqz v12, :cond_28

    #@20
    .line 590
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@22
    iput-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    #@24
    .line 591
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V

    #@27
    goto :goto_30

    #@28
    .line 584
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string v1, "Must pass a ViewHolder when dragging"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    :cond_30
    :goto_30
    mul-int/lit8 v0, v13, 0x8

    #@32
    const/16 v10, 0x8

    #@34
    add-int/2addr v0, v10

    #@35
    shl-int v0, v14, v0

    #@37
    add-int/lit8 v16, v0, -0x1

    #@39
    .line 597
    iget-object v9, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3b
    const/4 v8, 0x0

    #@3c
    if-eqz v9, :cond_ed

    #@3e
    .line 599
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@40
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object v0

    #@44
    if-eqz v0, :cond_d9

    #@46
    if-ne v4, v15, :cond_4a

    #@48
    move v7, v8

    #@49
    goto :goto_4f

    #@4a
    .line 601
    :cond_4a
    invoke-direct {v11, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@4d
    move-result v0

    #@4e
    move v7, v0

    #@4f
    .line 602
    :goto_4f
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    #@52
    const/4 v0, 0x4

    #@53
    const/4 v1, 0x0

    #@54
    if-eq v7, v14, :cond_7c

    #@56
    if-eq v7, v15, :cond_7c

    #@58
    if-eq v7, v0, :cond_69

    #@5a
    if-eq v7, v10, :cond_69

    #@5c
    const/16 v2, 0x10

    #@5e
    if-eq v7, v2, :cond_69

    #@60
    const/16 v2, 0x20

    #@62
    if-eq v7, v2, :cond_69

    #@64
    move/from16 v17, v1

    #@66
    move/from16 v18, v17

    #@68
    goto :goto_8e

    #@69
    .line 612
    :cond_69
    iget v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@6b
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    #@6e
    move-result v2

    #@6f
    iget-object v3, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@71
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@74
    move-result v3

    #@75
    int-to-float v3, v3

    #@76
    mul-float/2addr v2, v3

    #@77
    move/from16 v18, v1

    #@79
    move/from16 v17, v2

    #@7b
    goto :goto_8e

    #@7c
    .line 617
    :cond_7c
    iget v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@7e
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    #@81
    move-result v2

    #@82
    iget-object v3, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@84
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@87
    move-result v3

    #@88
    int-to-float v3, v3

    #@89
    mul-float/2addr v2, v3

    #@8a
    move/from16 v17, v1

    #@8c
    move/from16 v18, v2

    #@8e
    :goto_8e
    if-ne v4, v15, :cond_92

    #@90
    move v6, v10

    #@91
    goto :goto_97

    #@92
    :cond_92
    if-lez v7, :cond_96

    #@94
    move v6, v15

    #@95
    goto :goto_97

    #@96
    :cond_96
    move v6, v0

    #@97
    .line 630
    :goto_97
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    #@99
    invoke-direct {v11, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    #@9c
    .line 631
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    #@9e
    aget v19, v0, v8

    #@a0
    .line 632
    aget v20, v0, v14

    #@a2
    .line 633
    new-instance v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    #@a4
    move-object v0, v5

    #@a5
    move-object/from16 v1, p0

    #@a7
    move-object v2, v9

    #@a8
    move v3, v6

    #@a9
    move-object v14, v5

    #@aa
    move/from16 v5, v19

    #@ac
    move v15, v6

    #@ad
    move/from16 v6, v20

    #@af
    move/from16 v21, v7

    #@b1
    move/from16 v7, v17

    #@b3
    move/from16 v8, v18

    #@b5
    move-object/from16 v22, v9

    #@b7
    move/from16 v9, v21

    #@b9
    move/from16 v21, v10

    #@bb
    move-object/from16 v10, v22

    #@bd
    invoke-direct/range {v0 .. v10}, Landroidx/recyclerview/widget/ItemTouchHelper$3;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@c0
    .line 662
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@c2
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c4
    sub-float v2, v17, v19

    #@c6
    sub-float v3, v18, v20

    #@c8
    invoke-virtual {v0, v1, v15, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    #@cb
    move-result-wide v0

    #@cc
    .line 664
    invoke-virtual {v14, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    #@cf
    .line 665
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    #@d1
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d4
    .line 666
    invoke-virtual {v14}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->start()V

    #@d7
    const/4 v8, 0x1

    #@d8
    goto :goto_e9

    #@d9
    :cond_d9
    move-object v0, v9

    #@da
    move/from16 v21, v10

    #@dc
    .line 669
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@de
    invoke-virtual {v11, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    #@e1
    .line 670
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@e3
    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@e5
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@e8
    const/4 v8, 0x0

    #@e9
    :goto_e9
    const/4 v0, 0x0

    #@ea
    .line 672
    iput-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@ec
    goto :goto_f0

    #@ed
    :cond_ed
    move/from16 v21, v10

    #@ef
    const/4 v8, 0x0

    #@f0
    :goto_f0
    if-eqz v12, :cond_121

    #@f2
    .line 675
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@f4
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@f6
    .line 676
    invoke-virtual {v0, v1, v12}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@f9
    move-result v0

    #@fa
    and-int v0, v0, v16

    #@fc
    iget v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@fe
    mul-int/lit8 v1, v1, 0x8

    #@100
    shr-int/2addr v0, v1

    #@101
    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    #@103
    .line 678
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@105
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@108
    move-result v0

    #@109
    int-to-float v0, v0

    #@10a
    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    #@10c
    .line 679
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@10e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@111
    move-result v0

    #@112
    int-to-float v0, v0

    #@113
    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    #@115
    .line 680
    iput-object v12, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@117
    const/4 v0, 0x2

    #@118
    if-ne v13, v0, :cond_121

    #@11a
    .line 683
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@11c
    const/4 v1, 0x0

    #@11d
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    #@120
    goto :goto_122

    #@121
    :cond_121
    const/4 v1, 0x0

    #@122
    .line 686
    :goto_122
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@124
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    #@127
    move-result-object v0

    #@128
    if-eqz v0, :cond_134

    #@12a
    .line 688
    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12c
    if-eqz v2, :cond_130

    #@12e
    const/4 v14, 0x1

    #@12f
    goto :goto_131

    #@130
    :cond_130
    move v14, v1

    #@131
    :goto_131
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@134
    :cond_134
    if-nez v8, :cond_13f

    #@136
    .line 691
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@138
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@13b
    move-result-object v0

    #@13c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    #@13f
    .line 693
    :cond_13f
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@141
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@143
    iget v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    #@145
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    #@148
    .line 694
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@14a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@14d
    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5

    #@0
    .line 1092
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@7
    move-result v0

    #@8
    const-string v1, "ItemTouchHelper"

    #@a
    if-nez v0, :cond_12

    #@c
    const-string p1, "Start drag has been called but dragging is not enabled"

    #@e
    .line 1093
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    return-void

    #@12
    .line 1096
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@17
    move-result-object v0

    #@18
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1a
    if-eq v0, v2, :cond_22

    #@1c
    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    #@1e
    .line 1097
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    return-void

    #@22
    .line 1101
    :cond_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    #@25
    const/4 v0, 0x0

    #@26
    .line 1102
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@28
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@2a
    const/4 v0, 0x2

    #@2b
    .line 1103
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    #@2e
    return-void
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5

    #@0
    .line 1139
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasSwipeFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@7
    move-result v0

    #@8
    const-string v1, "ItemTouchHelper"

    #@a
    if-nez v0, :cond_12

    #@c
    const-string p1, "Start swipe has been called but swiping is not enabled"

    #@e
    .line 1140
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    return-void

    #@12
    .line 1143
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@17
    move-result-object v0

    #@18
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1a
    if-eq v0, v2, :cond_22

    #@1c
    const-string p1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    #@1e
    .line 1144
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    return-void

    #@22
    .line 1148
    :cond_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    #@25
    const/4 v0, 0x0

    #@26
    .line 1149
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@28
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@2a
    const/4 v0, 0x1

    #@2b
    .line 1150
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    #@2e
    return-void
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .registers 5

    #@0
    .line 1170
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    #@3
    move-result v0

    #@4
    .line 1171
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    #@7
    move-result p1

    #@8
    .line 1174
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    #@a
    sub-float/2addr v0, p3

    #@b
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@d
    .line 1175
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    #@f
    sub-float/2addr p1, p3

    #@10
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@12
    and-int/lit8 p1, p2, 0x4

    #@14
    const/4 p3, 0x0

    #@15
    if-nez p1, :cond_1d

    #@17
    .line 1177
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    #@1a
    move-result p1

    #@1b
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@1d
    :cond_1d
    and-int/lit8 p1, p2, 0x8

    #@1f
    if-nez p1, :cond_29

    #@21
    .line 1180
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@23
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    #@26
    move-result p1

    #@27
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    #@29
    :cond_29
    and-int/lit8 p1, p2, 0x1

    #@2b
    if-nez p1, :cond_35

    #@2d
    .line 1183
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@2f
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    #@32
    move-result p1

    #@33
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@35
    :cond_35
    and-int/lit8 p1, p2, 0x2

    #@37
    if-nez p1, :cond_41

    #@39
    .line 1186
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@3b
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    #@3e
    move-result p1

    #@3f
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    #@41
    :cond_41
    return-void
.end method
