.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/core/view/ScrollingView;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingChild3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;,
        Landroidx/recyclerview/widget/RecyclerView$State;,
        Landroidx/recyclerview/widget/RecyclerView$SavedState;,
        Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;,
        Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;,
        Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutParams;,
        Landroidx/recyclerview/widget/RecyclerView$ViewHolder;,
        Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;,
        Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;,
        Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager;,
        Landroidx/recyclerview/widget/RecyclerView$Adapter;,
        Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;,
        Landroidx/recyclerview/widget/RecyclerView$Recycler;,
        Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;,
        Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;,
        Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;,
        Landroidx/recyclerview/widget/RecyclerView$Orientation;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final UNDEFINED_DURATION:I = -0x80000000

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z

.field mGapWorker:Landroidx/recyclerview/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mIsAttached:Z

.field mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mLayoutOrScrollCounter:I

.field mLayoutSuppressed:Z

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

.field final mReusableIntPair:[I

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field final mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [I

    #@3
    const v2, 0x1010436

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    .line 219
    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    #@b
    .line 229
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    #@d
    .line 236
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    #@f
    .line 238
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    #@11
    .line 244
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    #@13
    .line 250
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    #@15
    .line 260
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    #@17
    const/4 v1, 0x4

    #@18
    new-array v1, v1, [Ljava/lang/Class;

    #@1a
    .line 362
    const-class v2, Landroid/content/Context;

    #@1c
    aput-object v2, v1, v3

    #@1e
    const-class v2, Landroid/util/AttributeSet;

    #@20
    aput-object v2, v1, v0

    #@22
    const/4 v0, 0x2

    #@23
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@25
    aput-object v2, v1, v0

    #@27
    const/4 v0, 0x3

    #@28
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2a
    aput-object v2, v1, v0

    #@2c
    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@2e
    .line 598
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$3;

    #@30
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$3;-><init>()V

    #@33
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    #@35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 646
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 650
    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    #@0
    move-object/from16 v7, p0

    #@2
    move-object/from16 v8, p1

    #@4
    move-object/from16 v9, p2

    #@6
    move/from16 v10, p3

    #@8
    .line 654
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@b
    .line 365
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    #@d
    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@10
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    #@12
    .line 367
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@14
    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@17
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@19
    .line 384
    new-instance v0, Landroidx/recyclerview/widget/ViewInfoStore;

    #@1b
    invoke-direct {v0}, Landroidx/recyclerview/widget/ViewInfoStore;-><init>()V

    #@1e
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@20
    .line 398
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    #@22
    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@25
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    #@27
    .line 418
    new-instance v0, Landroid/graphics/Rect;

    #@29
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2c
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    .line 419
    new-instance v0, Landroid/graphics/Rect;

    #@30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@33
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@35
    .line 420
    new-instance v0, Landroid/graphics/RectF;

    #@37
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@3a
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    #@3c
    .line 424
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@43
    .line 425
    new-instance v0, Ljava/util/ArrayList;

    #@45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@48
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    #@4a
    const/4 v11, 0x0

    #@4b
    .line 440
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@4d
    .line 470
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@4f
    .line 479
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    #@51
    .line 489
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@53
    .line 498
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    #@55
    .line 500
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@57
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    #@5a
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@5c
    .line 504
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@5e
    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    #@61
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@63
    .line 531
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@65
    const/4 v12, -0x1

    #@66
    .line 532
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@68
    const/4 v0, 0x1

    #@69
    .line 544
    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    #@6b
    .line 545
    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    #@6d
    const/4 v13, 0x1

    #@6e
    .line 547
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    #@70
    .line 549
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    #@72
    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@75
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    #@77
    .line 552
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    #@79
    if-eqz v0, :cond_81

    #@7b
    new-instance v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@7d
    invoke-direct {v0}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    #@80
    goto :goto_82

    #@81
    :cond_81
    const/4 v0, 0x0

    #@82
    :goto_82
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@84
    .line 555
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$State;

    #@86
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    #@89
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8b
    .line 561
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    #@8d
    .line 562
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    #@8f
    .line 563
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;

    #@91
    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@94
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    #@96
    .line 565
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    #@98
    const/4 v0, 0x2

    #@99
    new-array v1, v0, [I

    #@9b
    .line 571
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    #@9d
    new-array v1, v0, [I

    #@9f
    .line 574
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    #@a1
    new-array v1, v0, [I

    #@a3
    .line 575
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    #@a5
    new-array v1, v0, [I

    #@a7
    .line 578
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@a9
    .line 585
    new-instance v1, Ljava/util/ArrayList;

    #@ab
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@ae
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    #@b0
    .line 588
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$2;

    #@b2
    invoke-direct {v1, v7}, Landroidx/recyclerview/widget/RecyclerView$2;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@b5
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    #@b7
    .line 609
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$4;

    #@b9
    invoke-direct {v1, v7}, Landroidx/recyclerview/widget/RecyclerView$4;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@bc
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    #@be
    .line 655
    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/RecyclerView;->setScrollContainer(Z)V

    #@c1
    .line 656
    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    #@c4
    .line 658
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@c7
    move-result-object v1

    #@c8
    .line 659
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@cb
    move-result v2

    #@cc
    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@ce
    .line 661
    invoke-static {v1, v8}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    #@d1
    move-result v2

    #@d2
    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    #@d4
    .line 663
    invoke-static {v1, v8}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    #@d7
    move-result v2

    #@d8
    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    #@da
    .line 664
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@dd
    move-result v2

    #@de
    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    #@e0
    .line 665
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@e3
    move-result v1

    #@e4
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    #@e6
    .line 666
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    #@e9
    move-result v1

    #@ea
    if-ne v1, v0, :cond_ee

    #@ec
    move v0, v13

    #@ed
    goto :goto_ef

    #@ee
    :cond_ee
    move v0, v11

    #@ef
    :goto_ef
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    #@f2
    .line 668
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@f4
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    #@f6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    #@f9
    .line 669
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V

    #@fc
    .line 670
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    #@ff
    .line 671
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->initAutofill()V

    #@102
    .line 673
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@105
    move-result v0

    #@106
    if-nez v0, :cond_10b

    #@108
    .line 675
    invoke-static {v7, v13}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@10b
    .line 678
    :cond_10b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@10e
    move-result-object v0

    #@10f
    const-string v1, "accessibility"

    #@111
    .line 679
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@114
    move-result-object v0

    #@115
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@117
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@119
    .line 680
    new-instance v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    #@11b
    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@11e
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    #@121
    .line 682
    sget-object v0, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    #@123
    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@126
    move-result-object v14

    #@127
    .line 684
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@129
    const/16 v15, 0x1d

    #@12b
    if-lt v0, v15, :cond_13c

    #@12d
    .line 685
    sget-object v2, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    #@12f
    const/4 v6, 0x0

    #@130
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, p1

    #@134
    move-object/from16 v3, p2

    #@136
    move-object v4, v14

    #@137
    move/from16 v5, p3

    #@139
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@13c
    .line 688
    :cond_13c
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    #@13e
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@141
    move-result-object v2

    #@142
    .line 689
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    #@144
    invoke-virtual {v14, v0, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    #@147
    move-result v0

    #@148
    if-ne v0, v12, :cond_14f

    #@14a
    const/high16 v0, 0x40000

    #@14c
    .line 692
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    #@14f
    .line 694
    :cond_14f
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_android_clipToPadding:I

    #@151
    invoke-virtual {v14, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@154
    move-result v0

    #@155
    iput-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@157
    .line 695
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    #@159
    invoke-virtual {v14, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@15c
    move-result v0

    #@15d
    iput-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    #@15f
    if-eqz v0, :cond_180

    #@161
    .line 697
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    #@163
    .line 698
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@166
    move-result-object v0

    #@167
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    #@169
    .line 699
    sget v1, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    #@16b
    .line 700
    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@16e
    move-result-object v1

    #@16f
    .line 701
    sget v3, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    #@171
    .line 702
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@174
    move-result-object v3

    #@175
    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    #@177
    .line 703
    sget v4, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    #@179
    .line 704
    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@17c
    move-result-object v4

    #@17d
    .line 705
    invoke-virtual {v7, v0, v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    #@180
    .line 708
    :cond_180
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    #@183
    const/4 v5, 0x0

    #@184
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, p1

    #@188
    move-object/from16 v3, p2

    #@18a
    move/from16 v4, p3

    #@18c
    .line 711
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    #@18f
    .line 715
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    #@191
    invoke-virtual {v8, v9, v2, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@194
    move-result-object v12

    #@195
    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@197
    if-lt v0, v15, :cond_1a6

    #@199
    const/4 v6, 0x0

    #@19a
    move-object/from16 v0, p0

    #@19c
    move-object/from16 v1, p1

    #@19e
    move-object/from16 v3, p2

    #@1a0
    move-object v4, v12

    #@1a1
    move/from16 v5, p3

    #@1a3
    .line 718
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@1a6
    .line 721
    :cond_1a6
    invoke-virtual {v12, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1a9
    move-result v0

    #@1aa
    .line 722
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    #@1ad
    .line 725
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    #@1b0
    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 210
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3
    return-void
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 2

    #@0
    .line 210
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->detachViewFromParent(I)V

    #@3
    return-void
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/RecyclerView;)Z
    .registers 1

    #@0
    .line 210
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 3

    #@0
    .line 210
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    #@3
    return-void
.end method

.method private addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7

    #@0
    .line 1431
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2
    .line 1432
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v1, p0, :cond_b

    #@9
    move v1, v2

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v1, 0x0

    #@c
    .line 1433
    :goto_c
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@15
    .line 1434
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_26

    #@1b
    .line 1436
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@1d
    const/4 v1, -0x1

    #@1e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {p1, v0, v1, v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    #@25
    goto :goto_33

    #@26
    :cond_26
    if-nez v1, :cond_2e

    #@28
    .line 1438
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2a
    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    #@2d
    goto :goto_33

    #@2e
    .line 1440
    :cond_2e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@30
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ChildHelper;->hide(Landroid/view/View;)V

    #@33
    :goto_33
    return-void
.end method

.method private animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    .line 4381
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    #@4
    if-eqz p5, :cond_9

    #@6
    .line 4383
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@9
    :cond_9
    if-eq p1, p2, :cond_1f

    #@b
    if-eqz p6, :cond_10

    #@d
    .line 4387
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@10
    .line 4389
    :cond_10
    iput-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    .line 4391
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@15
    .line 4392
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@17
    invoke-virtual {p5, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@1a
    .line 4393
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    #@1d
    .line 4394
    iput-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1f
    .line 4396
    :cond_1f
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@21
    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    #@24
    move-result p1

    #@25
    if-eqz p1, :cond_2a

    #@27
    .line 4397
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    #@2a
    :cond_2a
    return-void
.end method

.method private cancelScroll()V
    .registers 2

    #@0
    .line 3443
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 3444
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@7
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    #@0
    .line 5851
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_23

    #@4
    .line 5852
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/View;

    #@c
    :goto_c
    const/4 v1, 0x0

    #@d
    if-eqz v0, :cond_21

    #@f
    .line 5854
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@11
    if-ne v0, v2, :cond_14

    #@13
    return-void

    #@14
    .line 5858
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@17
    move-result-object v0

    #@18
    .line 5859
    instance-of v2, v0, Landroid/view/View;

    #@1a
    if-eqz v2, :cond_1f

    #@1c
    .line 5860
    check-cast v0, Landroid/view/View;

    #@1e
    goto :goto_c

    #@1f
    :cond_1f
    move-object v0, v1

    #@20
    goto :goto_c

    #@21
    .line 5865
    :cond_21
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    #@23
    :cond_23
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 12

    #@0
    const-string v0, ": Could not instantiate the LayoutManager: "

    #@2
    if-eqz p2, :cond_12e

    #@4
    .line 783
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    .line 784
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_12e

    #@e
    .line 785
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object p2

    #@12
    .line 788
    :try_start_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isInEditMode()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_21

    #@18
    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v1

    #@20
    goto :goto_25

    #@21
    .line 792
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@24
    move-result-object v1

    #@25
    :goto_25
    const/4 v2, 0x0

    #@26
    .line 795
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@29
    move-result-object v1

    #@2a
    const-class v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2c
    .line 796
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@2f
    move-result-object v1
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_30} :catch_10c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_30} :catch_ec
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_30} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_30} :catch_aa
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_30} :catch_88

    #@30
    const/4 v3, 0x1

    #@31
    .line 800
    :try_start_31
    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@33
    .line 801
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@36
    move-result-object v4

    #@37
    const/4 v5, 0x4

    #@38
    new-array v5, v5, [Ljava/lang/Object;

    #@3a
    aput-object p1, v5, v2

    #@3c
    aput-object p3, v5, v3

    #@3e
    .line 802
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object p1

    #@42
    const/4 p4, 0x2

    #@43
    aput-object p1, v5, p4

    #@45
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object p1

    #@49
    const/4 p4, 0x3

    #@4a
    aput-object p1, v5, p4
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_4c} :catch_10c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_4c} :catch_ec
    .catch Ljava/lang/InstantiationException; {:try_start_31 .. :try_end_4c} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_4c} :catch_aa
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_4c} :catch_88

    #@4c
    goto :goto_55

    #@4d
    :catch_4d
    move-exception p1

    #@4e
    :try_start_4e
    new-array p4, v2, [Ljava/lang/Class;

    #@50
    .line 805
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@53
    move-result-object v4
    :try_end_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4e .. :try_end_54} :catch_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4e .. :try_end_54} :catch_10c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4e .. :try_end_54} :catch_ec
    .catch Ljava/lang/InstantiationException; {:try_start_4e .. :try_end_54} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_54} :catch_aa
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_54} :catch_88

    #@54
    const/4 v5, 0x0

    #@55
    .line 812
    :goto_55
    :try_start_55
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@58
    .line 813
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object p1

    #@5c
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@5e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    #@61
    goto/16 :goto_12e

    #@63
    :catch_63
    move-exception p4

    #@64
    .line 807
    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@67
    .line 808
    new-instance p1, Ljava/lang/IllegalStateException;

    #@69
    new-instance p5, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object p5

    #@76
    const-string v1, ": Error creating LayoutManager "

    #@78
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object p5

    #@7c
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object p5

    #@80
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object p5

    #@84
    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@87
    throw p1
    :try_end_88
    .catch Ljava/lang/ClassNotFoundException; {:try_start_55 .. :try_end_88} :catch_10c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_55 .. :try_end_88} :catch_ec
    .catch Ljava/lang/InstantiationException; {:try_start_55 .. :try_end_88} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_55 .. :try_end_88} :catch_aa
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_88} :catch_88

    #@88
    :catch_88
    move-exception p1

    #@89
    .line 827
    new-instance p4, Ljava/lang/IllegalStateException;

    #@8b
    new-instance p5, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@93
    move-result-object p3

    #@94
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object p3

    #@98
    const-string p5, ": Class is not a LayoutManager "

    #@9a
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object p3

    #@9e
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object p2

    #@a2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object p2

    #@a6
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a9
    throw p4

    #@aa
    :catch_aa
    move-exception p1

    #@ab
    .line 824
    new-instance p4, Ljava/lang/IllegalStateException;

    #@ad
    new-instance p5, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@b5
    move-result-object p3

    #@b6
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object p3

    #@ba
    const-string p5, ": Cannot access non-public constructor "

    #@bc
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object p3

    #@c0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object p2

    #@c4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object p2

    #@c8
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cb
    throw p4

    #@cc
    :catch_cc
    move-exception p1

    #@cd
    .line 821
    new-instance p4, Ljava/lang/IllegalStateException;

    #@cf
    new-instance p5, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@d7
    move-result-object p3

    #@d8
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object p3

    #@dc
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object p3

    #@e0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object p2

    #@e4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object p2

    #@e8
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@eb
    throw p4

    #@ec
    :catch_ec
    move-exception p1

    #@ed
    .line 818
    new-instance p4, Ljava/lang/IllegalStateException;

    #@ef
    new-instance p5, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@f7
    move-result-object p3

    #@f8
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object p3

    #@fc
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object p3

    #@100
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object p2

    #@104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object p2

    #@108
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10b
    throw p4

    #@10c
    :catch_10c
    move-exception p1

    #@10d
    .line 815
    new-instance p4, Ljava/lang/IllegalStateException;

    #@10f
    new-instance p5, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@117
    move-result-object p3

    #@118
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object p3

    #@11c
    const-string p5, ": Unable to find LayoutManager "

    #@11e
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object p3

    #@122
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object p2

    #@126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object p2

    #@12a
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12d
    throw p4

    #@12e
    :cond_12e
    :goto_12e
    return-void
.end method

.method private didChildRangeChange(II)Z
    .registers 7

    #@0
    .line 4327
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    #@2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    #@5
    .line 4328
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    #@7
    const/4 v1, 0x0

    #@8
    aget v2, v0, v1

    #@a
    const/4 v3, 0x1

    #@b
    if-ne v2, p1, :cond_11

    #@d
    aget p1, v0, v3

    #@f
    if-eq p1, p2, :cond_12

    #@11
    :cond_11
    move v1, v3

    #@12
    :cond_12
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .registers 4

    #@0
    .line 3675
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    #@2
    const/4 v1, 0x0

    #@3
    .line 3676
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    #@5
    if-eqz v0, :cond_1c

    #@7
    .line 3677
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1c

    #@d
    .line 3678
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@10
    move-result-object v1

    #@11
    const/16 v2, 0x800

    #@13
    .line 3679
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    #@16
    .line 3680
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    #@19
    .line 3681
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@1c
    :cond_1c
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 9

    #@0
    .line 4033
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    #@6
    .line 4034
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@b
    .line 4035
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@d
    const/4 v2, 0x0

    #@e
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    #@10
    .line 4036
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@13
    .line 4037
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewInfoStore;->clear()V

    #@18
    .line 4038
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    #@1b
    .line 4039
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    #@1e
    .line 4040
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveFocusInfo()V

    #@21
    .line 4041
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@23
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@25
    if-eqz v3, :cond_2c

    #@27
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    #@29
    if-eqz v3, :cond_2c

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v1, v2

    #@2d
    :goto_2d
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    #@2f
    .line 4042
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    #@31
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    #@33
    .line 4043
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@35
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    #@37
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    #@39
    .line 4044
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@3b
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@3d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@40
    move-result v1

    #@41
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    #@43
    .line 4045
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    #@45
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    #@48
    .line 4047
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@4a
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@4c
    if-eqz v0, :cond_b5

    #@4e
    .line 4049
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@53
    move-result v0

    #@54
    move v1, v2

    #@55
    :goto_55
    if-ge v1, v0, :cond_b5

    #@57
    .line 4051
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@59
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@60
    move-result-object v3

    #@61
    .line 4052
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@64
    move-result v4

    #@65
    if-nez v4, :cond_b2

    #@67
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    #@6a
    move-result v4

    #@6b
    if-eqz v4, :cond_76

    #@6d
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@6f
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@72
    move-result v4

    #@73
    if-nez v4, :cond_76

    #@75
    goto :goto_b2

    #@76
    .line 4055
    :cond_76
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@78
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@7a
    .line 4057
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@7d
    move-result v6

    #@7e
    .line 4058
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    #@81
    move-result-object v7

    #@82
    .line 4056
    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    #@85
    move-result-object v4

    #@86
    .line 4059
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@88
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    #@8b
    .line 4060
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8d
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    #@8f
    if-eqz v4, :cond_b2

    #@91
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    #@94
    move-result v4

    #@95
    if-eqz v4, :cond_b2

    #@97
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@9a
    move-result v4

    #@9b
    if-nez v4, :cond_b2

    #@9d
    .line 4061
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@a0
    move-result v4

    #@a1
    if-nez v4, :cond_b2

    #@a3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    #@a6
    move-result v4

    #@a7
    if-nez v4, :cond_b2

    #@a9
    .line 4062
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    #@ac
    move-result-wide v4

    #@ad
    .line 4070
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@af
    invoke-virtual {v6, v4, v5, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@b2
    :cond_b2
    :goto_b2
    add-int/lit8 v1, v1, 0x1

    #@b4
    goto :goto_55

    #@b5
    .line 4074
    :cond_b5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@b7
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    #@b9
    if-eqz v0, :cond_121

    #@bb
    .line 4081
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveOldPositions()V

    #@be
    .line 4082
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@c0
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@c2
    .line 4083
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@c4
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@c6
    .line 4085
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@c8
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@ca
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@cc
    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@cf
    .line 4086
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@d1
    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@d3
    move v0, v2

    #@d4
    .line 4088
    :goto_d4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@d6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@d9
    move-result v1

    #@da
    if-ge v0, v1, :cond_11d

    #@dc
    .line 4089
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@de
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@e1
    move-result-object v1

    #@e2
    .line 4090
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@e5
    move-result-object v1

    #@e6
    .line 4091
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@e9
    move-result v3

    #@ea
    if-eqz v3, :cond_ed

    #@ec
    goto :goto_11a

    #@ed
    .line 4094
    :cond_ed
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@ef
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ViewInfoStore;->isInPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@f2
    move-result v3

    #@f3
    if-nez v3, :cond_11a

    #@f5
    .line 4095
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@f8
    move-result v3

    #@f9
    const/16 v4, 0x2000

    #@fb
    .line 4097
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    #@fe
    move-result v4

    #@ff
    if-nez v4, :cond_103

    #@101
    or-int/lit16 v3, v3, 0x1000

    #@103
    .line 4101
    :cond_103
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@105
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@107
    .line 4102
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    #@10a
    move-result-object v7

    #@10b
    .line 4101
    invoke-virtual {v5, v6, v1, v3, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    #@10e
    move-result-object v3

    #@10f
    if-eqz v4, :cond_115

    #@111
    .line 4104
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    #@114
    goto :goto_11a

    #@115
    .line 4106
    :cond_115
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@117
    invoke-virtual {v4, v1, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    #@11a
    :cond_11a
    :goto_11a
    add-int/lit8 v0, v0, 0x1

    #@11c
    goto :goto_d4

    #@11d
    .line 4111
    :cond_11d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    #@120
    goto :goto_124

    #@121
    .line 4113
    :cond_121
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    #@124
    .line 4115
    :goto_124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    #@127
    .line 4116
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@12a
    .line 4117
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@12c
    const/4 v1, 0x2

    #@12d
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    #@12f
    return-void
.end method

.method private dispatchLayoutStep2()V
    .registers 5

    #@0
    .line 4125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@3
    .line 4126
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    #@6
    .line 4127
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    const/4 v1, 0x6

    #@9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    #@c
    .line 4128
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    #@11
    .line 4129
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@13
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@18
    move-result v1

    #@19
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    #@1b
    .line 4130
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@1d
    const/4 v1, 0x0

    #@1e
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    #@20
    .line 4133
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@22
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    #@24
    .line 4134
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@26
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@28
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@2a
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@2d
    .line 4136
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@2f
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@31
    const/4 v0, 0x0

    #@32
    .line 4137
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@34
    .line 4140
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@36
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@38
    if-eqz v2, :cond_40

    #@3a
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@3c
    if-eqz v2, :cond_40

    #@3e
    const/4 v2, 0x1

    #@3f
    goto :goto_41

    #@40
    :cond_40
    move v2, v1

    #@41
    :goto_41
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@43
    .line 4141
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@45
    const/4 v2, 0x4

    #@46
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    #@48
    .line 4142
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    #@4b
    .line 4143
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@4e
    return-void
.end method

.method private dispatchLayoutStep3()V
    .registers 12

    #@0
    .line 4151
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    #@6
    .line 4152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@9
    .line 4153
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    #@c
    .line 4154
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@e
    const/4 v1, 0x1

    #@f
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    #@11
    .line 4155
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@13
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@15
    if-eqz v0, :cond_8f

    #@17
    .line 4159
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@1c
    move-result v0

    #@1d
    sub-int/2addr v0, v1

    #@1e
    :goto_1e
    if-ltz v0, :cond_88

    #@20
    .line 4160
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@22
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v2

    #@26
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@29
    move-result-object v5

    #@2a
    .line 4161
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_31

    #@30
    goto :goto_85

    #@31
    .line 4164
    :cond_31
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    #@34
    move-result-wide v2

    #@35
    .line 4165
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@37
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@39
    .line 4166
    invoke-virtual {v4, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    #@3c
    move-result-object v4

    #@3d
    .line 4167
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@3f
    invoke-virtual {v6, v2, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@42
    move-result-object v6

    #@43
    if-eqz v6, :cond_80

    #@45
    .line 4168
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@48
    move-result v7

    #@49
    if-nez v7, :cond_80

    #@4b
    .line 4179
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@4d
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@50
    move-result v8

    #@51
    .line 4181
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@53
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@56
    move-result v9

    #@57
    if-eqz v8, :cond_61

    #@59
    if-ne v6, v5, :cond_61

    #@5b
    .line 4184
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@5d
    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    #@60
    goto :goto_85

    #@61
    .line 4186
    :cond_61
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@63
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    #@66
    move-result-object v7

    #@67
    .line 4189
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@69
    invoke-virtual {v10, v5, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    #@6c
    .line 4190
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@6e
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    #@71
    move-result-object v10

    #@72
    if-nez v7, :cond_78

    #@74
    .line 4192
    invoke-direct {p0, v2, v3, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@77
    goto :goto_85

    #@78
    :cond_78
    move-object v3, p0

    #@79
    move-object v4, v6

    #@7a
    move-object v6, v7

    #@7b
    move-object v7, v10

    #@7c
    .line 4194
    invoke-direct/range {v3 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    #@7f
    goto :goto_85

    #@80
    .line 4199
    :cond_80
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@82
    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    #@85
    :goto_85
    add-int/lit8 v0, v0, -0x1

    #@87
    goto :goto_1e

    #@88
    .line 4204
    :cond_88
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@8a
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    #@8c
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ViewInfoStore;->process(Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V

    #@8f
    .line 4207
    :cond_8f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@91
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@93
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@96
    .line 4208
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@98
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    #@9a
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    #@9c
    const/4 v0, 0x0

    #@9d
    .line 4209
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@9f
    .line 4210
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    #@a1
    .line 4211
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@a3
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@a5
    .line 4213
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@a7
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    #@a9
    .line 4214
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@ab
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    #@ad
    .line 4215
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@af
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    #@b1
    if-eqz v2, :cond_ba

    #@b3
    .line 4216
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@b5
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    #@b7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@ba
    .line 4218
    :cond_ba
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@bc
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    #@be
    if-eqz v2, :cond_cd

    #@c0
    .line 4221
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@c2
    iput v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    #@c4
    .line 4222
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@c6
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    #@c8
    .line 4223
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@ca
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    #@cd
    .line 4226
    :cond_cd
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@cf
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@d1
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@d4
    .line 4227
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    #@d7
    .line 4228
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@da
    .line 4229
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@dc
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ViewInfoStore;->clear()V

    #@df
    .line 4230
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    #@e1
    aget v3, v2, v0

    #@e3
    aget v1, v2, v1

    #@e5
    invoke-direct {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    #@e8
    move-result v1

    #@e9
    if-eqz v1, :cond_ee

    #@eb
    .line 4231
    invoke-virtual {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    #@ee
    .line 4233
    :cond_ee
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->recoverFocusFromState()V

    #@f1
    .line 4234
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    #@f4
    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    .line 3118
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@2
    if-nez v0, :cond_11

    #@4
    .line 3119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return p1

    #@c
    .line 3122
    :cond_c
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    #@f
    move-result p1

    #@10
    return p1

    #@11
    .line 3124
    :cond_11
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    #@14
    .line 3125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@17
    move-result p1

    #@18
    const/4 v0, 0x3

    #@19
    const/4 v1, 0x1

    #@1a
    if-eq p1, v0, :cond_1e

    #@1c
    if-ne p1, v1, :cond_21

    #@1e
    :cond_1e
    const/4 p1, 0x0

    #@1f
    .line 3127
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@21
    :cond_21
    return v1
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    .line 3147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    .line 3148
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    :goto_c
    if-ge v3, v1, :cond_26

    #@e
    .line 3150
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@16
    .line 3151
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_23

    #@1c
    const/4 v5, 0x3

    #@1d
    if-eq v0, v5, :cond_23

    #@1f
    .line 3152
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@21
    const/4 p1, 0x1

    #@22
    return p1

    #@23
    :cond_23
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_c

    #@26
    :cond_26
    return v2
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .registers 10

    #@0
    .line 4301
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    const/4 v2, 0x0

    #@8
    if-nez v0, :cond_10

    #@a
    const/4 v0, -0x1

    #@b
    .line 4303
    aput v0, p1, v2

    #@d
    .line 4304
    aput v0, p1, v1

    #@f
    return-void

    #@10
    :cond_10
    const v3, 0x7fffffff

    #@13
    const/high16 v4, -0x80000000

    #@15
    move v5, v2

    #@16
    :goto_16
    if-ge v5, v0, :cond_36

    #@18
    .line 4310
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@1a
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v6

    #@1e
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@21
    move-result-object v6

    #@22
    .line 4311
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_29

    #@28
    goto :goto_33

    #@29
    .line 4314
    :cond_29
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    #@2c
    move-result v6

    #@2d
    if-ge v6, v3, :cond_30

    #@2f
    move v3, v6

    #@30
    :cond_30
    if-le v6, v4, :cond_33

    #@32
    move v4, v6

    #@33
    :cond_33
    :goto_33
    add-int/lit8 v5, v5, 0x1

    #@35
    goto :goto_16

    #@36
    .line 4322
    :cond_36
    aput v3, p1, v2

    #@38
    .line 4323
    aput v4, p1, v1

    #@3a
    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    #@0
    .line 5829
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 5832
    :cond_6
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 5833
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    #@c
    return-object p0

    #@d
    .line 5835
    :cond_d
    check-cast p0, Landroid/view/ViewGroup;

    #@f
    .line 5836
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v0

    #@13
    const/4 v2, 0x0

    #@14
    :goto_14
    if-ge v2, v0, :cond_24

    #@16
    .line 5838
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v3

    #@1a
    .line 5839
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    #@1d
    move-result-object v3

    #@1e
    if-eqz v3, :cond_21

    #@20
    return-object v3

    #@21
    :cond_21
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_14

    #@24
    :cond_24
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .registers 6

    #@0
    .line 3902
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@2
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_c

    #@7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@9
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    .line 3905
    :goto_d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@12
    move-result v1

    #@13
    move v2, v0

    #@14
    :goto_14
    if-ge v2, v1, :cond_2b

    #@16
    .line 3907
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@19
    move-result-object v3

    #@1a
    if-nez v3, :cond_1d

    #@1c
    goto :goto_2b

    #@1d
    .line 3911
    :cond_1d
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1f
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_28

    #@25
    .line 3912
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@27
    return-object v0

    #@28
    :cond_28
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_14

    #@2b
    .line 3915
    :cond_2b
    :goto_2b
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v0

    #@2f
    add-int/lit8 v0, v0, -0x1

    #@31
    :goto_31
    const/4 v1, 0x0

    #@32
    if-ltz v0, :cond_49

    #@34
    .line 3917
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@37
    move-result-object v2

    #@38
    if-nez v2, :cond_3b

    #@3a
    return-object v1

    #@3b
    .line 3921
    :cond_3b
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@3d
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_46

    #@43
    .line 3922
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@45
    return-object v0

    #@46
    :cond_46
    add-int/lit8 v0, v0, -0x1

    #@48
    goto :goto_31

    #@49
    :cond_49
    return-object v1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 4819
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object p0

    #@8
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@a
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@c
    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8

    #@0
    .line 5096
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 5097
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    .line 5098
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@b
    move-result v2

    #@c
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@e
    sub-int/2addr v2, v3

    #@f
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    #@11
    sub-int/2addr v2, v3

    #@12
    .line 5099
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@15
    move-result v3

    #@16
    iget v4, v1, Landroid/graphics/Rect;->top:I

    #@18
    sub-int/2addr v3, v4

    #@19
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    #@1b
    sub-int/2addr v3, v4

    #@1c
    .line 5100
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@1f
    move-result v4

    #@20
    iget v5, v1, Landroid/graphics/Rect;->right:I

    #@22
    add-int/2addr v4, v5

    #@23
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    #@25
    add-int/2addr v4, v5

    #@26
    .line 5101
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@29
    move-result p0

    #@2a
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@2c
    add-int/2addr p0, v1

    #@2d
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    #@2f
    add-int/2addr p0, v0

    #@30
    .line 5098
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    #@33
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 5

    #@0
    .line 4003
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    .line 4004
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_26

    #@a
    instance-of v1, p1, Landroid/view/ViewGroup;

    #@c
    if-eqz v1, :cond_26

    #@e
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_26

    #@14
    .line 4005
    check-cast p1, Landroid/view/ViewGroup;

    #@16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    #@19
    move-result-object p1

    #@1a
    .line 4006
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, -0x1

    #@1f
    if-eq v1, v2, :cond_4

    #@21
    .line 4008
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@24
    move-result v0

    #@25
    goto :goto_4

    #@26
    :cond_26
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 835
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v0

    #@5
    const/16 v1, 0x2e

    #@7
    if-ne v0, v1, :cond_1f

    #@9
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p1

    #@16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    return-object p1

    #@1f
    :cond_1f
    const-string p1, "."

    #@21
    .line 838
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@24
    move-result p1

    #@25
    if-eqz p1, :cond_28

    #@27
    return-object p2

    #@28
    .line 841
    :cond_28
    new-instance p1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    #@2f
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object p1

    #@3f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object p1

    #@47
    return-object p1
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .registers 2

    #@0
    .line 13495
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 13496
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    #@6
    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    #@9
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@b
    .line 13498
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@d
    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 10

    #@0
    .line 4255
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_77

    #@9
    .line 4257
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 4258
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    move-result-object v2

    #@13
    if-ne v2, p3, :cond_16

    #@15
    goto :goto_74

    #@16
    .line 4262
    :cond_16
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    #@19
    move-result-wide v3

    #@1a
    cmp-long v3, v3, p1

    #@1c
    if-nez v3, :cond_74

    #@1e
    .line 4264
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@20
    const-string p2, " \n View Holder 2:"

    #@22
    if-eqz p1, :cond_4f

    #@24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@27
    move-result p1

    #@28
    if-eqz p1, :cond_4f

    #@2a
    .line 4265
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2c
    new-instance p4, Ljava/lang/StringBuilder;

    #@2e
    const-string v0, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    #@30
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p4

    #@37
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p2

    #@3b
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object p2

    #@3f
    .line 4268
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@42
    move-result-object p3

    #@43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object p2

    #@47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object p2

    #@4b
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw p1

    #@4f
    .line 4270
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@51
    new-instance p4, Ljava/lang/StringBuilder;

    #@53
    const-string v0, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    #@55
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@58
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p4

    #@5c
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object p2

    #@60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object p2

    #@64
    .line 4274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@67
    move-result-object p3

    #@68
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object p2

    #@6c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object p2

    #@70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@73
    throw p1

    #@74
    :cond_74
    :goto_74
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_7

    #@77
    .line 4279
    :cond_77
    new-instance p1, Ljava/lang/StringBuilder;

    #@79
    const-string p2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    #@7b
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7e
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object p1

    #@82
    const-string p2, " cannot be found but it is necessary for "

    #@84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object p1

    #@88
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object p1

    #@8c
    .line 4281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@8f
    move-result-object p2

    #@90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object p1

    #@94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object p1

    #@98
    const-string p2, "RecyclerView"

    #@9a
    .line 4279
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    return-void
.end method

.method private hasUpdatedView()Z
    .registers 6

    #@0
    .line 1906
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_28

    #@a
    .line 1908
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@c
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@13
    move-result-object v3

    #@14
    if-eqz v3, :cond_25

    #@16
    .line 1909
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1d

    #@1c
    goto :goto_25

    #@1d
    .line 1912
    :cond_1d
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_25

    #@23
    const/4 v0, 0x1

    #@24
    return v0

    #@25
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_8

    #@28
    :cond_28
    return v1
.end method

.method private initAutofill()V
    .registers 2

    #@0
    .line 747
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAutofill(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    const/16 v0, 0x8

    #@8
    .line 748
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    #@b
    :cond_b
    return-void
.end method

.method private initChildrenHelper()V
    .registers 3

    #@0
    .line 845
    new-instance v0, Landroidx/recyclerview/widget/ChildHelper;

    #@2
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$5;

    #@4
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$5;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ChildHelper;-><init>(Landroidx/recyclerview/widget/ChildHelper$Callback;)V

    #@a
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@c
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p2, :cond_11d

    #@3
    if-ne p2, p0, :cond_7

    #@5
    goto/16 :goto_11d

    #@7
    .line 2838
    :cond_7
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_e

    #@d
    return v0

    #@e
    :cond_e
    const/4 v1, 0x1

    #@f
    if-nez p1, :cond_12

    #@11
    return v1

    #@12
    .line 2845
    :cond_12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@15
    move-result-object v2

    #@16
    if-nez v2, :cond_19

    #@18
    return v1

    #@19
    .line 2849
    :cond_19
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@26
    .line 2850
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@28
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    #@2f
    move-result v4

    #@30
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@33
    .line 2851
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@35
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@38
    .line 2852
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@3a
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@3d
    .line 2853
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    #@42
    move-result p1

    #@43
    const/4 p2, -0x1

    #@44
    if-ne p1, v1, :cond_48

    #@46
    move p1, p2

    #@47
    goto :goto_49

    #@48
    :cond_48
    move p1, v1

    #@49
    .line 2855
    :goto_49
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@4b
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@4d
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@4f
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@51
    if-lt v2, v3, :cond_5d

    #@53
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@55
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@57
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@59
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@5b
    if-gt v2, v3, :cond_69

    #@5d
    :cond_5d
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@5f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@61
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@63
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@65
    if-ge v2, v3, :cond_69

    #@67
    move v2, v1

    #@68
    goto :goto_8a

    #@69
    .line 2859
    :cond_69
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@6b
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@6d
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@6f
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@71
    if-gt v2, v3, :cond_7d

    #@73
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@75
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@77
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@79
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@7b
    if-lt v2, v3, :cond_89

    #@7d
    :cond_7d
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@7f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@81
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@83
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@85
    if-le v2, v3, :cond_89

    #@87
    move v2, p2

    #@88
    goto :goto_8a

    #@89
    :cond_89
    move v2, v0

    #@8a
    .line 2865
    :goto_8a
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@8c
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@8e
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@90
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@92
    if-lt v3, v4, :cond_9e

    #@94
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@96
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@98
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@9a
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@9c
    if-gt v3, v4, :cond_aa

    #@9e
    :cond_9e
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@a0
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@a2
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@a4
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@a6
    if-ge v3, v4, :cond_aa

    #@a8
    move p2, v1

    #@a9
    goto :goto_ca

    #@aa
    .line 2869
    :cond_aa
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@ac
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@ae
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@b0
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@b2
    if-gt v3, v4, :cond_be

    #@b4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@b6
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@b8
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@ba
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@bc
    if-lt v3, v4, :cond_c9

    #@be
    :cond_be
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@c0
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@c2
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    #@c4
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@c6
    if-le v3, v4, :cond_c9

    #@c8
    goto :goto_ca

    #@c9
    :cond_c9
    move p2, v0

    #@ca
    :goto_ca
    if-eq p3, v1, :cond_115

    #@cc
    const/4 v3, 0x2

    #@cd
    if-eq p3, v3, :cond_10c

    #@cf
    const/16 p1, 0x11

    #@d1
    if-eq p3, p1, :cond_108

    #@d3
    const/16 p1, 0x21

    #@d5
    if-eq p3, p1, :cond_104

    #@d7
    const/16 p1, 0x42

    #@d9
    if-eq p3, p1, :cond_100

    #@db
    const/16 p1, 0x82

    #@dd
    if-ne p3, p1, :cond_e3

    #@df
    if-lez p2, :cond_e2

    #@e1
    move v0, v1

    #@e2
    :cond_e2
    return v0

    #@e3
    .line 2888
    :cond_e3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@e5
    new-instance p2, Ljava/lang/StringBuilder;

    #@e7
    const-string v0, "Invalid direction: "

    #@e9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ec
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object p2

    #@f0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@f3
    move-result-object p3

    #@f4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object p2

    #@f8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object p2

    #@fc
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ff
    throw p1

    #@100
    :cond_100
    if-lez v2, :cond_103

    #@102
    move v0, v1

    #@103
    :cond_103
    return v0

    #@104
    :cond_104
    if-gez p2, :cond_107

    #@106
    move v0, v1

    #@107
    :cond_107
    return v0

    #@108
    :cond_108
    if-gez v2, :cond_10b

    #@10a
    move v0, v1

    #@10b
    :cond_10b
    return v0

    #@10c
    :cond_10c
    if-gtz p2, :cond_113

    #@10e
    if-nez p2, :cond_114

    #@110
    mul-int/2addr v2, p1

    #@111
    if-ltz v2, :cond_114

    #@113
    :cond_113
    move v0, v1

    #@114
    :cond_114
    return v0

    #@115
    :cond_115
    if-ltz p2, :cond_11c

    #@117
    if-nez p2, :cond_11d

    #@119
    mul-int/2addr v2, p1

    #@11a
    if-gtz v2, :cond_11d

    #@11c
    :cond_11c
    move v0, v1

    #@11d
    :cond_11d
    :goto_11d
    return v0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    #@0
    .line 3448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3
    move-result v0

    #@4
    .line 3449
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@7
    move-result v1

    #@8
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@a
    if-ne v1, v2, :cond_2d

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    .line 3452
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@17
    .line 3453
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@1a
    move-result v1

    #@1b
    const/high16 v2, 0x3f000000    # 0.5f

    #@1d
    add-float/2addr v1, v2

    #@1e
    float-to-int v1, v1

    #@1f
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@21
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    #@23
    .line 3454
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@26
    move-result p1

    #@27
    add-float/2addr p1, v2

    #@28
    float-to-int p1, p1

    #@29
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@2b
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    #@2d
    :cond_2d
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    #@0
    .line 3771
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .registers 6

    #@0
    .line 3781
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 3784
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->reset()V

    #@9
    .line 3785
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    #@b
    if-eqz v0, :cond_12

    #@d
    .line 3786
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@f
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    #@12
    .line 3792
    :cond_12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1e

    #@18
    .line 3793
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@1a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    #@1d
    goto :goto_23

    #@1e
    .line 3795
    :cond_1e
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    #@23
    .line 3797
    :goto_23
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    #@25
    const/4 v1, 0x0

    #@26
    const/4 v2, 0x1

    #@27
    if-nez v0, :cond_30

    #@29
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    goto :goto_30

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_31

    #@30
    :cond_30
    :goto_30
    move v0, v2

    #@31
    .line 3798
    :goto_31
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@33
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@35
    if-eqz v4, :cond_55

    #@37
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@39
    if-eqz v4, :cond_55

    #@3b
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@3d
    if-nez v4, :cond_47

    #@3f
    if-nez v0, :cond_47

    #@41
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@43
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    #@45
    if-eqz v4, :cond_55

    #@47
    :cond_47
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@49
    if-eqz v4, :cond_53

    #@4b
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@4d
    .line 3804
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_55

    #@53
    :cond_53
    move v4, v2

    #@54
    goto :goto_56

    #@55
    :cond_55
    move v4, v1

    #@56
    :goto_56
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@58
    .line 3805
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@5a
    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    #@5c
    if-eqz v4, :cond_6b

    #@5e
    if-eqz v0, :cond_6b

    #@60
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@62
    if-nez v0, :cond_6b

    #@64
    .line 3808
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_6b

    #@6a
    move v1, v2

    #@6b
    :cond_6b
    iput-boolean v1, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    #@6d
    return-void
.end method

.method private pullGlows(FFFF)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p2, v0

    #@3
    const/high16 v2, 0x3f800000    # 1.0f

    #@5
    const/4 v3, 0x1

    #@6
    if-gez v1, :cond_21

    #@8
    .line 2532
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    #@b
    .line 2533
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@d
    neg-float v4, p2

    #@e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@11
    move-result v5

    #@12
    int-to-float v5, v5

    #@13
    div-float/2addr v4, v5

    #@14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@17
    move-result v5

    #@18
    int-to-float v5, v5

    #@19
    div-float/2addr p3, v5

    #@1a
    sub-float p3, v2, p3

    #@1c
    invoke-static {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    #@1f
    :goto_1f
    move p3, v3

    #@20
    goto :goto_3c

    #@21
    :cond_21
    cmpl-float v1, p2, v0

    #@23
    if-lez v1, :cond_3b

    #@25
    .line 2536
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    #@28
    .line 2537
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@2a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@2d
    move-result v4

    #@2e
    int-to-float v4, v4

    #@2f
    div-float v4, p2, v4

    #@31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@34
    move-result v5

    #@35
    int-to-float v5, v5

    #@36
    div-float/2addr p3, v5

    #@37
    invoke-static {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    #@3a
    goto :goto_1f

    #@3b
    :cond_3b
    const/4 p3, 0x0

    #@3c
    :goto_3c
    cmpg-float v1, p4, v0

    #@3e
    if-gez v1, :cond_56

    #@40
    .line 2542
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    #@43
    .line 2543
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@45
    neg-float v1, p4

    #@46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@49
    move-result v2

    #@4a
    int-to-float v2, v2

    #@4b
    div-float/2addr v1, v2

    #@4c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@4f
    move-result v2

    #@50
    int-to-float v2, v2

    #@51
    div-float/2addr p1, v2

    #@52
    invoke-static {p3, v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    #@55
    goto :goto_72

    #@56
    :cond_56
    cmpl-float v1, p4, v0

    #@58
    if-lez v1, :cond_71

    #@5a
    .line 2546
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    #@5d
    .line 2547
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@5f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@62
    move-result v1

    #@63
    int-to-float v1, v1

    #@64
    div-float v1, p4, v1

    #@66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@69
    move-result v4

    #@6a
    int-to-float v4, v4

    #@6b
    div-float/2addr p1, v4

    #@6c
    sub-float/2addr v2, p1

    #@6d
    invoke-static {p3, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    #@70
    goto :goto_72

    #@71
    :cond_71
    move v3, p3

    #@72
    :goto_72
    if-nez v3, :cond_7c

    #@74
    cmpl-float p1, p2, v0

    #@76
    if-nez p1, :cond_7c

    #@78
    cmpl-float p1, p4, v0

    #@7a
    if-eqz p1, :cond_7f

    #@7c
    .line 2552
    :cond_7c
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@7f
    :cond_7f
    return-void
.end method

.method private recoverFocusFromState()V
    .registers 7

    #@0
    .line 3929
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    #@2
    if-eqz v0, :cond_b5

    #@4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@6
    if-eqz v0, :cond_b5

    #@8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_b5

    #@e
    .line 3930
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    #@11
    move-result v0

    #@12
    const/high16 v1, 0x60000

    #@14
    if-eq v0, v1, :cond_b5

    #@16
    .line 3931
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    #@19
    move-result v0

    #@1a
    const/high16 v1, 0x20000

    #@1c
    if-ne v0, v1, :cond_26

    #@1e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isFocused()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_26

    #@24
    goto/16 :goto_b5

    #@26
    .line 3939
    :cond_26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isFocused()Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_55

    #@2c
    .line 3940
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 3941
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    #@32
    if-eqz v1, :cond_4c

    #@34
    .line 3942
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@37
    move-result-object v1

    #@38
    if-eqz v1, :cond_40

    #@3a
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_4c

    #@40
    .line 3954
    :cond_40
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_55

    #@48
    .line 3957
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    #@4b
    return-void

    #@4c
    .line 3960
    :cond_4c
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@4e
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@51
    move-result v0

    #@52
    if-nez v0, :cond_55

    #@54
    return-void

    #@55
    .line 3970
    :cond_55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@57
    iget-wide v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    #@59
    const-wide/16 v2, -0x1

    #@5b
    cmp-long v0, v0, v2

    #@5d
    const/4 v1, 0x0

    #@5e
    if-eqz v0, :cond_71

    #@60
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@62
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_71

    #@68
    .line 3971
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@6a
    iget-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    #@6c
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@6f
    move-result-object v0

    #@70
    goto :goto_72

    #@71
    :cond_71
    move-object v0, v1

    #@72
    :goto_72
    if-eqz v0, :cond_8a

    #@74
    .line 3974
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@76
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@78
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@7b
    move-result v4

    #@7c
    if-nez v4, :cond_8a

    #@7e
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@80
    .line 3975
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    #@83
    move-result v4

    #@84
    if-nez v4, :cond_87

    #@86
    goto :goto_8a

    #@87
    .line 3988
    :cond_87
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@89
    goto :goto_96

    #@8a
    .line 3976
    :cond_8a
    :goto_8a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@8c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@8f
    move-result v0

    #@90
    if-lez v0, :cond_96

    #@92
    .line 3983
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    #@95
    move-result-object v1

    #@96
    :cond_96
    :goto_96
    if-eqz v1, :cond_b5

    #@98
    .line 3992
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@9a
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    #@9c
    int-to-long v4, v0

    #@9d
    cmp-long v0, v4, v2

    #@9f
    if-eqz v0, :cond_b2

    #@a1
    .line 3993
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@a3
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    #@a5
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@a8
    move-result-object v0

    #@a9
    if-eqz v0, :cond_b2

    #@ab
    .line 3994
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    #@ae
    move-result v2

    #@af
    if-eqz v2, :cond_b2

    #@b1
    move-object v1, v0

    #@b2
    .line 3998
    :cond_b2
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@b5
    :cond_b5
    :goto_b5
    return-void
.end method

.method private releaseGlows()V
    .registers 3

    #@0
    .line 2558
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 2559
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@7
    .line 2560
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@9
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@c
    move-result v0

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    .line 2562
    :goto_f
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@11
    if-eqz v1, :cond_1d

    #@13
    .line 2563
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@16
    .line 2564
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@18
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1b
    move-result v1

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 2566
    :cond_1d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@1f
    if-eqz v1, :cond_2b

    #@21
    .line 2567
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@24
    .line 2568
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@26
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@29
    move-result v1

    #@2a
    or-int/2addr v0, v1

    #@2b
    .line 2570
    :cond_2b
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@2d
    if-eqz v1, :cond_39

    #@2f
    .line 2571
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@32
    .line 2572
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@37
    move-result v1

    #@38
    or-int/2addr v0, v1

    #@39
    :cond_39
    if-eqz v0, :cond_3e

    #@3b
    .line 2575
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@3e
    :cond_3e
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .registers 14

    #@0
    if-eqz p2, :cond_4

    #@2
    move-object v0, p2

    #@3
    goto :goto_5

    #@4
    :cond_4
    move-object v0, p1

    #@5
    .line 2910
    :goto_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@e
    move-result v3

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@13
    .line 2915
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@16
    move-result-object v0

    #@17
    .line 2916
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@19
    if-eqz v1, :cond_47

    #@1b
    .line 2918
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@1d
    .line 2919
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    #@1f
    if-nez v1, :cond_47

    #@21
    .line 2920
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@23
    .line 2921
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@25
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@27
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@29
    sub-int/2addr v2, v3

    #@2a
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@2c
    .line 2922
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    iget v2, v1, Landroid/graphics/Rect;->right:I

    #@30
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@32
    add-int/2addr v2, v3

    #@33
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@35
    .line 2923
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@37
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@39
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@3b
    sub-int/2addr v2, v3

    #@3c
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@3e
    .line 2924
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@40
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    #@42
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@44
    add-int/2addr v2, v0

    #@45
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@47
    :cond_47
    if-eqz p2, :cond_53

    #@49
    .line 2929
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@4b
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4e
    .line 2930
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@50
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@53
    .line 2932
    :cond_53
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@55
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@57
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@59
    const/4 v1, 0x1

    #@5a
    xor-int/lit8 v9, v0, 0x1

    #@5c
    if-nez p2, :cond_60

    #@5e
    move v10, v1

    #@5f
    goto :goto_61

    #@60
    :cond_60
    move v10, v4

    #@61
    :goto_61
    move-object v6, p0

    #@62
    move-object v7, p1

    #@63
    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    #@66
    return-void
.end method

.method private resetFocusInfo()V
    .registers 4

    #@0
    .line 3887
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@2
    const-wide/16 v1, -0x1

    #@4
    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    #@6
    .line 3888
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    const/4 v1, -0x1

    #@9
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    #@b
    .line 3889
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@d
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    #@f
    return-void
.end method

.method private resetScroll()V
    .registers 2

    #@0
    .line 3435
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 3436
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 3438
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    #@b
    .line 3439
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->releaseGlows()V

    #@e
    return-void
.end method

.method private saveFocusInfo()V
    .registers 5

    #@0
    .line 3867
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_14

    #@5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_14

    #@b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@d
    if-eqz v0, :cond_14

    #@f
    .line 3868
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    goto :goto_15

    #@14
    :cond_14
    move-object v0, v1

    #@15
    :goto_15
    if-nez v0, :cond_18

    #@17
    goto :goto_1c

    #@18
    .line 3871
    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1b
    move-result-object v1

    #@1c
    :goto_1c
    if-nez v1, :cond_22

    #@1e
    .line 3873
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    #@21
    goto :goto_56

    #@22
    .line 3875
    :cond_22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@24
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@26
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_31

    #@2c
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    #@2f
    move-result-wide v2

    #@30
    goto :goto_33

    #@31
    :cond_31
    const-wide/16 v2, -0x1

    #@33
    :goto_33
    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    #@35
    .line 3879
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@37
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@39
    if-eqz v2, :cond_3d

    #@3b
    const/4 v2, -0x1

    #@3c
    goto :goto_4a

    #@3d
    .line 3880
    :cond_3d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_46

    #@43
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    #@45
    goto :goto_4a

    #@46
    .line 3881
    :cond_46
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    #@49
    move-result v2

    #@4a
    :goto_4a
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    #@4c
    .line 3882
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@4e
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@50
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    #@53
    move-result v1

    #@54
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    #@56
    :goto_56
    return-void
.end method

.method private setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .registers 6

    #@0
    .line 1197
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 1198
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    #@6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    #@9
    .line 1199
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@b
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    #@e
    :cond_e
    if-eqz p2, :cond_12

    #@10
    if-eqz p3, :cond_15

    #@12
    .line 1202
    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    #@15
    .line 1204
    :cond_15
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@17
    invoke-virtual {p3}, Landroidx/recyclerview/widget/AdapterHelper;->reset()V

    #@1a
    .line 1205
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@1c
    .line 1206
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@1e
    if-eqz p1, :cond_28

    #@20
    .line 1208
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    #@22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    #@25
    .line 1209
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    #@28
    .line 1211
    :cond_28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2a
    if-eqz p1, :cond_31

    #@2c
    .line 1212
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2e
    invoke-virtual {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@31
    .line 1214
    :cond_31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@33
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@35
    invoke-virtual {p1, p3, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    #@38
    .line 1215
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@3a
    const/4 p2, 0x1

    #@3b
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@3d
    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    #@0
    .line 2501
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    #@5
    .line 2502
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 2503
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    #@c
    :cond_c
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .registers 5

    #@0
    if-gez p1, :cond_14

    #@2
    .line 2604
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    #@5
    .line 2605
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@7
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_26

    #@d
    .line 2606
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@f
    neg-int v1, p1

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@13
    goto :goto_26

    #@14
    :cond_14
    if-lez p1, :cond_26

    #@16
    .line 2609
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    #@19
    .line 2610
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@1b
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_26

    #@21
    .line 2611
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@23
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@26
    :cond_26
    :goto_26
    if-gez p2, :cond_3a

    #@28
    .line 2616
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    #@2b
    .line 2617
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@2d
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4c

    #@33
    .line 2618
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@35
    neg-int v1, p2

    #@36
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@39
    goto :goto_4c

    #@3a
    :cond_3a
    if-lez p2, :cond_4c

    #@3c
    .line 2621
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    #@3f
    .line 2622
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@41
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_4c

    #@47
    .line 2623
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@49
    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@4c
    :cond_4c
    :goto_4c
    if-nez p1, :cond_50

    #@4e
    if-eqz p2, :cond_53

    #@50
    .line 2628
    :cond_50
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@53
    :cond_53
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 2943
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_d

    #@a
    .line 2944
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    #@d
    :cond_d
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 1597
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    #@4
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .registers 5

    #@0
    .line 1568
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_9

    #@4
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    #@6
    .line 1569
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@9
    .line 1572
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_15

    #@11
    const/4 v0, 0x0

    #@12
    .line 1573
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    #@15
    :cond_15
    if-gez p2, :cond_1d

    #@17
    .line 1576
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_22

    #@1d
    .line 1578
    :cond_1d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@22
    .line 1580
    :goto_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    #@25
    .line 1581
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@28
    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3

    #@0
    .line 1273
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1274
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@b
    .line 1276
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3

    #@0
    .line 3079
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .registers 3

    #@0
    .line 1706
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1707
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@b
    .line 1709
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 4363
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    #@4
    .line 4364
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 4365
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    #@f
    :cond_f
    return-void
.end method

.method animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    #@0
    .line 4371
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 4372
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    #@7
    .line 4373
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_12

    #@f
    .line 4374
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    #@12
    :cond_12
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 3030
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_3c

    #@6
    if-nez p1, :cond_21

    #@8
    .line 3032
    new-instance p1, Ljava/lang/IllegalStateException;

    #@a
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    .line 3033
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw p1

    #@21
    .line 3035
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p1

    #@34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    :cond_3c
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 3048
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_27

    #@6
    if-nez p1, :cond_21

    #@8
    .line 3050
    new-instance p1, Ljava/lang/IllegalStateException;

    #@a
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    .line 3051
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw p1

    #@21
    .line 3053
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    #@23
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 3055
    :cond_27
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    #@29
    if-lez p1, :cond_4a

    #@2b
    .line 3056
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2d
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f
    const-string v1, ""

    #@31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    .line 3061
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    const-string v0, "RecyclerView"

    #@45
    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    #@47
    .line 3056
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    :cond_4a
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    #@0
    .line 4674
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 4675
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    .line 4674
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x1

    #@12
    :goto_12
    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    .line 4500
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@2
    if-eqz v0, :cond_10

    #@4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_10

    #@e
    const/4 p1, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p1, 0x0

    #@11
    :goto_11
    return p1
.end method

.method clearOldPositions()V
    .registers 5

    #@0
    .line 4554
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_1f

    #@9
    .line 4556
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    move-result-object v2

    #@13
    .line 4557
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_1c

    #@19
    .line 4558
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    #@1c
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_7

    #@1f
    .line 4561
    :cond_1f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clearOldPositions()V

    #@24
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .registers 2

    #@0
    .line 1297
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1298
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@7
    :cond_7
    return-void
.end method

.method public clearOnScrollListeners()V
    .registers 2

    #@0
    .line 1727
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1728
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@7
    :cond_7
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    #@0
    .line 2024
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2027
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@13
    move-result v1

    #@14
    :cond_14
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    #@0
    .line 1999
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2002
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@13
    move-result v1

    #@14
    :cond_14
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    #@0
    .line 2047
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2050
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@13
    move-result v1

    #@14
    :cond_14
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    #@0
    .line 2096
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2099
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@13
    move-result v1

    #@14
    :cond_14
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    #@0
    .line 2072
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2075
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@13
    move-result v1

    #@14
    :cond_14
    return v1
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    #@0
    .line 2119
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2122
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@13
    move-result v1

    #@14
    :cond_14
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .registers 5

    #@0
    .line 2581
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@2
    if-eqz v0, :cond_18

    #@4
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_18

    #@a
    if-lez p1, :cond_18

    #@c
    .line 2582
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@e
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@11
    .line 2583
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@13
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@16
    move-result v0

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    .line 2585
    :goto_19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@1b
    if-eqz v1, :cond_31

    #@1d
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_31

    #@23
    if-gez p1, :cond_31

    #@25
    .line 2586
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@27
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@2a
    .line 2587
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@2c
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@2f
    move-result p1

    #@30
    or-int/2addr v0, p1

    #@31
    .line 2589
    :cond_31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@33
    if-eqz p1, :cond_49

    #@35
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@38
    move-result p1

    #@39
    if-nez p1, :cond_49

    #@3b
    if-lez p2, :cond_49

    #@3d
    .line 2590
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@3f
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@42
    .line 2591
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@44
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@47
    move-result p1

    #@48
    or-int/2addr v0, p1

    #@49
    .line 2593
    :cond_49
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@4b
    if-eqz p1, :cond_61

    #@4d
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@50
    move-result p1

    #@51
    if-nez p1, :cond_61

    #@53
    if-gez p2, :cond_61

    #@55
    .line 2594
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@57
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@5a
    .line 2595
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@5c
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@5f
    move-result p1

    #@60
    or-int/2addr v0, p1

    #@61
    :cond_61
    if-eqz v0, :cond_66

    #@63
    .line 2598
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@66
    :cond_66
    return-void
.end method

.method consumePendingUpdateOperations()V
    .registers 4

    #@0
    .line 1865
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@2
    const-string v1, "RV FullInvalidate"

    #@4
    if-eqz v0, :cond_67

    #@6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_67

    #@b
    .line 1871
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_14

    #@13
    return-void

    #@14
    .line 1877
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@16
    const/4 v2, 0x4

    #@17
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_55

    #@1d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@1f
    const/16 v2, 0xb

    #@21
    .line 1878
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_55

    #@27
    const-string v0, "RV PartialInvalidate"

    #@29
    .line 1880
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@2c
    .line 1881
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@2f
    .line 1882
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    #@32
    .line 1883
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    #@37
    .line 1884
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@39
    if-nez v0, :cond_4a

    #@3b
    .line 1885
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasUpdatedView()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_45

    #@41
    .line 1886
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    #@44
    goto :goto_4a

    #@45
    .line 1889
    :cond_45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    #@4a
    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    #@4b
    .line 1892
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@4e
    .line 1893
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    #@51
    .line 1894
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@54
    goto :goto_66

    #@55
    .line 1895
    :cond_55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_66

    #@5d
    .line 1896
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@60
    .line 1897
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    #@63
    .line 1898
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@66
    :cond_66
    :goto_66
    return-void

    #@67
    .line 1866
    :cond_67
    :goto_67
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@6a
    .line 1867
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    #@6d
    .line 1868
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@70
    return-void
.end method

.method defaultOnMeasure(II)V
    .registers 5

    #@0
    .line 3607
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    .line 3608
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    #@c
    move-result v1

    #@d
    .line 3606
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    #@10
    move-result p1

    #@11
    .line 3610
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@18
    move-result v1

    #@19
    add-int/2addr v0, v1

    #@1a
    .line 3611
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@1d
    move-result v1

    #@1e
    .line 3609
    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    #@21
    move-result p2

    #@22
    .line 3613
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    #@25
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .registers 4

    #@0
    .line 7553
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    .line 7554
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    #@7
    .line 7555
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@9
    if-eqz v1, :cond_10

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 7556
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@10
    .line 7558
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@12
    if-eqz v0, :cond_2a

    #@14
    .line 7559
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@17
    move-result v0

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    :goto_1a
    if-ltz v0, :cond_2a

    #@1c
    .line 7561
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    #@24
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    #@27
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .registers 4

    #@0
    .line 7538
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    .line 7539
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    #@7
    .line 7540
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@9
    if-eqz v1, :cond_10

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 7541
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@10
    .line 7543
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@12
    if-eqz v0, :cond_2a

    #@14
    .line 7544
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@17
    move-result v0

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    :goto_1a
    if-ltz v0, :cond_2a

    #@1c
    .line 7546
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    #@24
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    #@27
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    return-void
.end method

.method dispatchLayout()V
    .registers 3

    #@0
    .line 3837
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2
    const-string v1, "RecyclerView"

    #@4
    if-nez v0, :cond_c

    #@6
    const-string v0, "No adapter attached; skipping layout"

    #@8
    .line 3838
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    return-void

    #@c
    .line 3842
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    if-nez v0, :cond_16

    #@10
    const-string v0, "No layout manager attached; skipping layout"

    #@12
    .line 3843
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    return-void

    #@16
    .line 3847
    :cond_16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@18
    const/4 v1, 0x0

    #@19
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    #@1b
    .line 3848
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@1d
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    #@1f
    const/4 v1, 0x1

    #@20
    if-ne v0, v1, :cond_2e

    #@22
    .line 3849
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    #@25
    .line 3850
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@27
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    #@2a
    .line 3851
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    #@2d
    goto :goto_5d

    #@2e
    .line 3852
    :cond_2e
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasUpdates()Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_55

    #@36
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@3b
    move-result v0

    #@3c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@3f
    move-result v1

    #@40
    if-ne v0, v1, :cond_55

    #@42
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@44
    .line 3853
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@47
    move-result v0

    #@48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@4b
    move-result v1

    #@4c
    if-eq v0, v1, :cond_4f

    #@4e
    goto :goto_55

    #@4f
    .line 3860
    :cond_4f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@51
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    #@54
    goto :goto_5d

    #@55
    .line 3856
    :cond_55
    :goto_55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@57
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    #@5a
    .line 3857
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    #@5d
    .line 3862
    :goto_5d
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep3()V

    #@60
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    #@0
    .line 11601
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    #@0
    .line 11606
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    #@0
    .line 11589
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    #@0
    .line 11595
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move v5, p5

    #@9
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .registers 16

    #@0
    .line 11583
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move-object v5, p5

    #@9
    move v6, p6

    #@a
    move-object v7, p7

    #@b
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    #@e
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    #@0
    .line 11569
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move-object v5, p5

    #@9
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    #@0
    .line 11576
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move-object v5, p5

    #@9
    move v6, p6

    #@a
    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    #@d
    move-result p1

    #@e
    return p1
.end method

.method dispatchOnScrollStateChanged(I)V
    .registers 4

    #@0
    .line 5196
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 5197
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    #@7
    .line 5202
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    #@a
    .line 5205
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 5206
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    #@11
    .line 5208
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@13
    if-eqz v0, :cond_2b

    #@15
    .line 5209
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    :goto_1b
    if-ltz v0, :cond_2b

    #@1d
    .line 5210
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@1f
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@25
    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    #@28
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_1b

    #@2b
    :cond_2b
    return-void
.end method

.method dispatchOnScrolled(II)V
    .registers 7

    #@0
    .line 5154
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    #@6
    .line 5159
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollX()I

    #@9
    move-result v0

    #@a
    .line 5160
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollY()I

    #@d
    move-result v1

    #@e
    sub-int v2, v0, p1

    #@10
    sub-int v3, v1, p2

    #@12
    .line 5161
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    #@15
    .line 5164
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    #@18
    .line 5168
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@1a
    if-eqz v0, :cond_1f

    #@1c
    .line 5169
    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    #@1f
    .line 5171
    :cond_1f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@21
    if-eqz v0, :cond_39

    #@23
    .line 5172
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@26
    move-result v0

    #@27
    add-int/lit8 v0, v0, -0x1

    #@29
    :goto_29
    if-ltz v0, :cond_39

    #@2b
    .line 5173
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@2d
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@33
    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    #@36
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_29

    #@39
    .line 5176
    :cond_39
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    #@3b
    add-int/lit8 p1, p1, -0x1

    #@3d
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    #@3f
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .registers 6

    #@0
    .line 11480
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_30

    #@a
    .line 11481
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    .line 11482
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@14
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@17
    move-result-object v2

    #@18
    if-ne v2, p0, :cond_2d

    #@1a
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_21

    #@20
    goto :goto_2d

    #@21
    .line 11485
    :cond_21
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    #@23
    const/4 v3, -0x1

    #@24
    if-eq v2, v3, :cond_2d

    #@26
    .line 11488
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@28
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@2b
    .line 11489
    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    #@2d
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_8

    #@30
    .line 11493
    :cond_30
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    #@32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@35
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    #@0
    .line 3741
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    const/4 p1, 0x1

    #@4
    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 1419
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    #@3
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 1411
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    #@3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    #@0
    .line 4429
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 4431
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    move v2, v1

    #@b
    :goto_b
    if-ge v2, v0, :cond_1d

    #@d
    .line 4433
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    #@15
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@17
    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_b

    #@1d
    .line 4438
    :cond_1d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@1f
    const/4 v2, 0x1

    #@20
    if-eqz v0, :cond_57

    #@22
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_57

    #@28
    .line 4439
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2b
    move-result v0

    #@2c
    .line 4440
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@2e
    if-eqz v3, :cond_35

    #@30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@33
    move-result v3

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v3, v1

    #@36
    :goto_36
    const/high16 v4, 0x43870000    # 270.0f

    #@38
    .line 4441
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    #@3b
    .line 4442
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@3e
    move-result v4

    #@3f
    neg-int v4, v4

    #@40
    add-int/2addr v4, v3

    #@41
    int-to-float v3, v4

    #@42
    const/4 v4, 0x0

    #@43
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@46
    .line 4443
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@48
    if-eqz v3, :cond_52

    #@4a
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_52

    #@50
    move v3, v2

    #@51
    goto :goto_53

    #@52
    :cond_52
    move v3, v1

    #@53
    .line 4444
    :goto_53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@56
    goto :goto_58

    #@57
    :cond_57
    move v3, v1

    #@58
    .line 4446
    :goto_58
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@5a
    if-eqz v0, :cond_88

    #@5c
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@5f
    move-result v0

    #@60
    if-nez v0, :cond_88

    #@62
    .line 4447
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@65
    move-result v0

    #@66
    .line 4448
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@68
    if-eqz v4, :cond_77

    #@6a
    .line 4449
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@6d
    move-result v4

    #@6e
    int-to-float v4, v4

    #@6f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@72
    move-result v5

    #@73
    int-to-float v5, v5

    #@74
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@77
    .line 4451
    :cond_77
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@79
    if-eqz v4, :cond_83

    #@7b
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@7e
    move-result v4

    #@7f
    if-eqz v4, :cond_83

    #@81
    move v4, v2

    #@82
    goto :goto_84

    #@83
    :cond_83
    move v4, v1

    #@84
    :goto_84
    or-int/2addr v3, v4

    #@85
    .line 4452
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@88
    .line 4454
    :cond_88
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@8a
    if-eqz v0, :cond_c1

    #@8c
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@8f
    move-result v0

    #@90
    if-nez v0, :cond_c1

    #@92
    .line 4455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@95
    move-result v0

    #@96
    .line 4456
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@99
    move-result v4

    #@9a
    .line 4457
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@9c
    if-eqz v5, :cond_a3

    #@9e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@a1
    move-result v5

    #@a2
    goto :goto_a4

    #@a3
    :cond_a3
    move v5, v1

    #@a4
    :goto_a4
    const/high16 v6, 0x42b40000    # 90.0f

    #@a6
    .line 4458
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    #@a9
    neg-int v5, v5

    #@aa
    int-to-float v5, v5

    #@ab
    neg-int v4, v4

    #@ac
    int-to-float v4, v4

    #@ad
    .line 4459
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@b0
    .line 4460
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@b2
    if-eqz v4, :cond_bc

    #@b4
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@b7
    move-result v4

    #@b8
    if-eqz v4, :cond_bc

    #@ba
    move v4, v2

    #@bb
    goto :goto_bd

    #@bc
    :cond_bc
    move v4, v1

    #@bd
    :goto_bd
    or-int/2addr v3, v4

    #@be
    .line 4461
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@c1
    .line 4463
    :cond_c1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@c3
    if-eqz v0, :cond_110

    #@c5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@c8
    move-result v0

    #@c9
    if-nez v0, :cond_110

    #@cb
    .line 4464
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@ce
    move-result v0

    #@cf
    const/high16 v4, 0x43340000    # 180.0f

    #@d1
    .line 4465
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    #@d4
    .line 4466
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@d6
    if-eqz v4, :cond_f2

    #@d8
    .line 4467
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@db
    move-result v4

    #@dc
    neg-int v4, v4

    #@dd
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@e0
    move-result v5

    #@e1
    add-int/2addr v4, v5

    #@e2
    int-to-float v4, v4

    #@e3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@e6
    move-result v5

    #@e7
    neg-int v5, v5

    #@e8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@eb
    move-result v6

    #@ec
    add-int/2addr v5, v6

    #@ed
    int-to-float v5, v5

    #@ee
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@f1
    goto :goto_101

    #@f2
    .line 4469
    :cond_f2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@f5
    move-result v4

    #@f6
    neg-int v4, v4

    #@f7
    int-to-float v4, v4

    #@f8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@fb
    move-result v5

    #@fc
    neg-int v5, v5

    #@fd
    int-to-float v5, v5

    #@fe
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@101
    .line 4471
    :goto_101
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@103
    if-eqz v4, :cond_10c

    #@105
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@108
    move-result v4

    #@109
    if-eqz v4, :cond_10c

    #@10b
    move v1, v2

    #@10c
    :cond_10c
    or-int/2addr v3, v1

    #@10d
    .line 4472
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@110
    :cond_110
    if-nez v3, :cond_127

    #@112
    .line 4478
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@114
    if-eqz p1, :cond_127

    #@116
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@11b
    move-result p1

    #@11c
    if-lez p1, :cond_127

    #@11e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@120
    .line 4479
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    #@123
    move-result p1

    #@124
    if-eqz p1, :cond_127

    #@126
    goto :goto_128

    #@127
    :cond_127
    move v2, v3

    #@128
    :goto_128
    if-eqz v2, :cond_12d

    #@12a
    .line 4484
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@12d
    :cond_12d
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    #@0
    .line 5030
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method ensureBottomGlow()V
    .registers 5

    #@0
    .line 2673
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 2676
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@7
    const/4 v1, 0x3

    #@8
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@e
    .line 2677
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@10
    if-eqz v1, :cond_32

    #@12
    .line 2678
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@19
    move-result v2

    #@1a
    sub-int/2addr v1, v2

    #@1b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@1e
    move-result v2

    #@1f
    sub-int/2addr v1, v2

    #@20
    .line 2679
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@23
    move-result v2

    #@24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@27
    move-result v3

    #@28
    sub-int/2addr v2, v3

    #@29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@2c
    move-result v3

    #@2d
    sub-int/2addr v2, v3

    #@2e
    .line 2678
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@31
    goto :goto_3d

    #@32
    .line 2681
    :cond_32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@35
    move-result v1

    #@36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@39
    move-result v2

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@3d
    :goto_3d
    return-void
.end method

.method ensureLeftGlow()V
    .registers 5

    #@0
    .line 2633
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 2636
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@e
    .line 2637
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@10
    if-eqz v1, :cond_32

    #@12
    .line 2638
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@19
    move-result v2

    #@1a
    sub-int/2addr v1, v2

    #@1b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@1e
    move-result v2

    #@1f
    sub-int/2addr v1, v2

    #@20
    .line 2639
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@23
    move-result v2

    #@24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@27
    move-result v3

    #@28
    sub-int/2addr v2, v3

    #@29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@2c
    move-result v3

    #@2d
    sub-int/2addr v2, v3

    #@2e
    .line 2638
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@31
    goto :goto_3d

    #@32
    .line 2641
    :cond_32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@35
    move-result v1

    #@36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@39
    move-result v2

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@3d
    :goto_3d
    return-void
.end method

.method ensureRightGlow()V
    .registers 5

    #@0
    .line 2646
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 2649
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@7
    const/4 v1, 0x2

    #@8
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@e
    .line 2650
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@10
    if-eqz v1, :cond_32

    #@12
    .line 2651
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@19
    move-result v2

    #@1a
    sub-int/2addr v1, v2

    #@1b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@1e
    move-result v2

    #@1f
    sub-int/2addr v1, v2

    #@20
    .line 2652
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@23
    move-result v2

    #@24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@27
    move-result v3

    #@28
    sub-int/2addr v2, v3

    #@29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@2c
    move-result v3

    #@2d
    sub-int/2addr v2, v3

    #@2e
    .line 2651
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@31
    goto :goto_3d

    #@32
    .line 2654
    :cond_32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@35
    move-result v1

    #@36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@39
    move-result v2

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@3d
    :goto_3d
    return-void
.end method

.method ensureTopGlow()V
    .registers 5

    #@0
    .line 2659
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 2662
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@e
    .line 2663
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@10
    if-eqz v1, :cond_32

    #@12
    .line 2664
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@19
    move-result v2

    #@1a
    sub-int/2addr v1, v2

    #@1b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@1e
    move-result v2

    #@1f
    sub-int/2addr v1, v2

    #@20
    .line 2665
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@23
    move-result v2

    #@24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@27
    move-result v3

    #@28
    sub-int/2addr v2, v3

    #@29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@2c
    move-result v3

    #@2d
    sub-int/2addr v2, v3

    #@2e
    .line 2664
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@31
    goto :goto_3d

    #@32
    .line 2667
    :cond_32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@35
    move-result v1

    #@36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@39
    move-result v2

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@3d
    :goto_3d
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .registers 3

    #@0
    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, " "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ", adapter:"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, ", layout:"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v1, ", context:"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 736
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    return-object v0
.end method

.method final fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    #@0
    .line 4015
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_22

    #@7
    .line 4016
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    #@9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@b
    .line 4017
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    #@12
    move-result v2

    #@13
    sub-int/2addr v1, v2

    #@14
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    #@16
    .line 4018
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    #@1d
    move-result v0

    #@1e
    sub-int/2addr v1, v0

    #@1f
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    #@21
    goto :goto_27

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    .line 4020
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    #@25
    .line 4021
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    #@27
    :goto_27
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .registers 8

    #@0
    .line 5013
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_44

    #@a
    .line 5015
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@c
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    .line 5016
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    #@13
    move-result v2

    #@14
    .line 5017
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    #@17
    move-result v3

    #@18
    .line 5018
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@1b
    move-result v4

    #@1c
    int-to-float v4, v4

    #@1d
    add-float/2addr v4, v2

    #@1e
    cmpl-float v4, p1, v4

    #@20
    if-ltz v4, :cond_41

    #@22
    .line 5019
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@25
    move-result v4

    #@26
    int-to-float v4, v4

    #@27
    add-float/2addr v4, v2

    #@28
    cmpg-float v2, p1, v4

    #@2a
    if-gtz v2, :cond_41

    #@2c
    .line 5020
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@2f
    move-result v2

    #@30
    int-to-float v2, v2

    #@31
    add-float/2addr v2, v3

    #@32
    cmpl-float v2, p2, v2

    #@34
    if-ltz v2, :cond_41

    #@36
    .line 5021
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@39
    move-result v2

    #@3a
    int-to-float v2, v2

    #@3b
    add-float/2addr v2, v3

    #@3c
    cmpg-float v2, p2, v2

    #@3e
    if-gtz v2, :cond_41

    #@40
    return-object v1

    #@41
    :cond_41
    add-int/lit8 v0, v0, -0x1

    #@43
    goto :goto_8

    #@44
    :cond_44
    const/4 p1, 0x0

    #@45
    return-object p1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    #@0
    .line 4792
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    :goto_4
    if-eqz v0, :cond_14

    #@6
    if-eq v0, p0, :cond_14

    #@8
    .line 4793
    instance-of v1, v0, Landroid/view/View;

    #@a
    if-eqz v1, :cond_14

    #@c
    .line 4794
    move-object p1, v0

    #@d
    check-cast p1, Landroid/view/View;

    #@f
    .line 4795
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v0

    #@13
    goto :goto_4

    #@14
    :cond_14
    if-ne v0, p0, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    :goto_18
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    #@0
    .line 4810
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    goto :goto_c

    #@8
    .line 4811
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@b
    move-result-object p1

    #@c
    :goto_c
    return-object p1
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 7

    #@0
    .line 4924
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 4927
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@b
    move-result v0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v0, :cond_37

    #@f
    .line 4931
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@11
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@18
    move-result-object v3

    #@19
    if-eqz v3, :cond_34

    #@1b
    .line 4932
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_34

    #@21
    .line 4933
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@24
    move-result v4

    #@25
    if-ne v4, p1, :cond_34

    #@27
    .line 4934
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@29
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2b
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_33

    #@31
    move-object v1, v3

    #@32
    goto :goto_34

    #@33
    :cond_33
    return-object v3

    #@34
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_d

    #@37
    :cond_37
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 9

    #@0
    .line 4986
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_3f

    #@5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_3f

    #@c
    .line 4989
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@11
    move-result v0

    #@12
    const/4 v2, 0x0

    #@13
    :goto_13
    if-ge v2, v0, :cond_3f

    #@15
    .line 4992
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@17
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1e
    move-result-object v3

    #@1f
    if-eqz v3, :cond_3c

    #@21
    .line 4993
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_3c

    #@27
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    #@2a
    move-result-wide v4

    #@2b
    cmp-long v4, v4, p1

    #@2d
    if-nez v4, :cond_3c

    #@2f
    .line 4994
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@31
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@33
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3b

    #@39
    move-object v1, v3

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    return-object v3

    #@3c
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_13

    #@3f
    :cond_3f
    :goto_3f
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 4902
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 4878
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 8

    #@0
    .line 4946
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v0, :cond_3a

    #@a
    .line 4949
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@c
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@13
    move-result-object v3

    #@14
    if-eqz v3, :cond_37

    #@16
    .line 4950
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_37

    #@1c
    if-eqz p2, :cond_23

    #@1e
    .line 4952
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@20
    if-eq v4, p1, :cond_2a

    #@22
    goto :goto_37

    #@23
    .line 4955
    :cond_23
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    #@26
    move-result v4

    #@27
    if-eq v4, p1, :cond_2a

    #@29
    goto :goto_37

    #@2a
    .line 4958
    :cond_2a
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2c
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2e
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_36

    #@34
    move-object v1, v3

    #@35
    goto :goto_37

    #@36
    :cond_36
    return-object v3

    #@37
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_8

    #@3a
    :cond_3a
    return-object v1
.end method

.method public fling(II)Z
    .registers 10

    #@0
    .line 2438
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_d

    #@5
    const-string p1, "RecyclerView"

    #@7
    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    #@9
    .line 2439
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    return v1

    #@d
    .line 2443
    :cond_d
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@f
    if-eqz v2, :cond_12

    #@11
    return v1

    #@12
    .line 2447
    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@15
    move-result v0

    #@16
    .line 2448
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@18
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v0, :cond_26

    #@1e
    .line 2450
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@21
    move-result v3

    #@22
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    #@24
    if-ge v3, v4, :cond_27

    #@26
    :cond_26
    move p1, v1

    #@27
    :cond_27
    if-eqz v2, :cond_31

    #@29
    .line 2453
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@2c
    move-result v3

    #@2d
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    #@2f
    if-ge v3, v4, :cond_32

    #@31
    :cond_31
    move p2, v1

    #@32
    :cond_32
    if-nez p1, :cond_37

    #@34
    if-nez p2, :cond_37

    #@36
    return v1

    #@37
    :cond_37
    int-to-float v3, p1

    #@38
    int-to-float v4, p2

    #@39
    .line 2461
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_7b

    #@3f
    const/4 v5, 0x1

    #@40
    if-nez v0, :cond_47

    #@42
    if-eqz v2, :cond_45

    #@44
    goto :goto_47

    #@45
    :cond_45
    move v6, v1

    #@46
    goto :goto_48

    #@47
    :cond_47
    :goto_47
    move v6, v5

    #@48
    .line 2463
    :goto_48
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    #@4b
    .line 2465
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    #@4d
    if-eqz v3, :cond_56

    #@4f
    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_56

    #@55
    return v5

    #@56
    :cond_56
    if-eqz v6, :cond_7b

    #@58
    if-eqz v2, :cond_5c

    #@5a
    or-int/lit8 v0, v0, 0x2

    #@5c
    .line 2477
    :cond_5c
    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    #@5f
    .line 2479
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    #@61
    neg-int v1, v0

    #@62
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@65
    move-result p1

    #@66
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@69
    move-result p1

    #@6a
    .line 2480
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    #@6c
    neg-int v1, v0

    #@6d
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@70
    move-result p2

    #@71
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    #@74
    move-result p2

    #@75
    .line 2481
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    #@77
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->fling(II)V

    #@7a
    return v5

    #@7b
    :cond_7b
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    #@0
    .line 2748
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object v0

    #@9
    .line 2752
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@b
    const/4 v1, 0x1

    #@c
    const/4 v2, 0x0

    #@d
    if-eqz v0, :cond_1f

    #@f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@11
    if-eqz v0, :cond_1f

    #@13
    .line 2753
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1f

    #@19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@1b
    if-nez v0, :cond_1f

    #@1d
    move v0, v1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v0, v2

    #@20
    .line 2755
    :goto_20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@23
    move-result-object v3

    #@24
    const/4 v4, 0x0

    #@25
    if-eqz v0, :cond_9b

    #@27
    const/4 v5, 0x2

    #@28
    if-eq p2, v5, :cond_2c

    #@2a
    if-ne p2, v1, :cond_9b

    #@2c
    .line 2761
    :cond_2c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_4a

    #@34
    if-ne p2, v5, :cond_39

    #@36
    const/16 v0, 0x82

    #@38
    goto :goto_3b

    #@39
    :cond_39
    const/16 v0, 0x21

    #@3b
    .line 2764
    :goto_3b
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@3e
    move-result-object v6

    #@3f
    if-nez v6, :cond_43

    #@41
    move v6, v1

    #@42
    goto :goto_44

    #@43
    :cond_43
    move v6, v2

    #@44
    .line 2766
    :goto_44
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    #@46
    if-eqz v7, :cond_4b

    #@48
    move p2, v0

    #@49
    goto :goto_4b

    #@4a
    :cond_4a
    move v6, v2

    #@4b
    :cond_4b
    :goto_4b
    if-nez v6, :cond_7b

    #@4d
    .line 2771
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@4f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_7b

    #@55
    .line 2772
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    #@5a
    move-result v0

    #@5b
    if-ne v0, v1, :cond_5f

    #@5d
    move v0, v1

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    move v0, v2

    #@60
    :goto_60
    if-ne p2, v5, :cond_64

    #@62
    move v5, v1

    #@63
    goto :goto_65

    #@64
    :cond_64
    move v5, v2

    #@65
    :goto_65
    xor-int/2addr v0, v5

    #@66
    if-eqz v0, :cond_6b

    #@68
    const/16 v0, 0x42

    #@6a
    goto :goto_6d

    #@6b
    :cond_6b
    const/16 v0, 0x11

    #@6d
    .line 2775
    :goto_6d
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@70
    move-result-object v5

    #@71
    if-nez v5, :cond_74

    #@73
    goto :goto_75

    #@74
    :cond_74
    move v1, v2

    #@75
    .line 2777
    :goto_75
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    #@77
    if-eqz v5, :cond_7a

    #@79
    move p2, v0

    #@7a
    :cond_7a
    move v6, v1

    #@7b
    :cond_7b
    if-eqz v6, :cond_96

    #@7d
    .line 2783
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    #@80
    .line 2784
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@83
    move-result-object v0

    #@84
    if-nez v0, :cond_87

    #@86
    return-object v4

    #@87
    .line 2789
    :cond_87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@8a
    .line 2790
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8c
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@8e
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@90
    invoke-virtual {v0, p1, p2, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@93
    .line 2791
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@96
    .line 2793
    :cond_96
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@99
    move-result-object v0

    #@9a
    goto :goto_bf

    #@9b
    .line 2795
    :cond_9b
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@9e
    move-result-object v1

    #@9f
    if-nez v1, :cond_be

    #@a1
    if-eqz v0, :cond_be

    #@a3
    .line 2797
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    #@a6
    .line 2798
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@a9
    move-result-object v0

    #@aa
    if-nez v0, :cond_ad

    #@ac
    return-object v4

    #@ad
    .line 2803
    :cond_ad
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@b0
    .line 2804
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@b2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@b4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@b6
    invoke-virtual {v0, p1, p2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@b9
    move-result-object v0

    #@ba
    .line 2805
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@bd
    goto :goto_bf

    #@be
    :cond_be
    move-object v0, v1

    #@bf
    :goto_bf
    if-eqz v0, :cond_d6

    #@c1
    .line 2808
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    #@c4
    move-result v1

    #@c5
    if-nez v1, :cond_d6

    #@c7
    .line 2809
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    #@ca
    move-result-object v1

    #@cb
    if-nez v1, :cond_d2

    #@cd
    .line 2812
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@d0
    move-result-object p1

    #@d1
    return-object p1

    #@d2
    .line 2818
    :cond_d2
    invoke-direct {p0, v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    #@d5
    return-object p1

    #@d6
    .line 2821
    :cond_d6
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    #@d9
    move-result v1

    #@da
    if-eqz v1, :cond_dd

    #@dc
    goto :goto_e1

    #@dd
    .line 2822
    :cond_dd
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@e0
    move-result-object v0

    #@e1
    :goto_e1
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 4505
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 4508
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 4506
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    const-string v2, "RecyclerView has no LayoutManager"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 4513
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 4516
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 4514
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    const-string v1, "RecyclerView has no LayoutManager"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 4521
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 4524
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    .line 4522
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    #@b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string v1, "RecyclerView has no LayoutManager"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    #@2
    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    #@0
    .line 1226
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2
    return-object v0
.end method

.method getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    #@0
    const/16 v0, 0x20c

    #@2
    .line 11497
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_18

    #@8
    .line 11499
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_18

    #@f
    .line 11502
    :cond_f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@11
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@13
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    #@16
    move-result p1

    #@17
    return p1

    #@18
    :cond_18
    :goto_18
    const/4 p1, -0x1

    #@19
    return p1
.end method

.method public getBaseline()I
    .registers 2

    #@0
    .line 1253
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1254
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBaseline()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1256
    :cond_9
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J
    .registers 4

    #@0
    .line 4358
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    #@b
    move-result-wide v0

    #@c
    goto :goto_10

    #@d
    :cond_d
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@f
    int-to-long v0, p1

    #@10
    :goto_10
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .registers 2

    #@0
    .line 4838
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 4839
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    #@9
    move-result p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, -0x1

    #@c
    :goto_c
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    #@0
    .line 13465
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    #@2
    if-nez v0, :cond_9

    #@4
    .line 13466
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 13468
    :cond_9
    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .registers 5

    #@0
    .line 4864
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2
    const-wide/16 v1, -0x1

    #@4
    if-eqz v0, :cond_17

    #@6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_d

    #@c
    goto :goto_17

    #@d
    .line 4867
    :cond_d
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@10
    move-result-object p1

    #@11
    if-eqz p1, :cond_17

    #@13
    .line 4868
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    #@16
    move-result-wide v1

    #@17
    :cond_17
    :goto_17
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 2

    #@0
    .line 4853
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 4854
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    #@9
    move-result p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, -0x1

    #@c
    :goto_c
    return p1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 4828
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    #@0
    .line 4769
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_28

    #@6
    if-ne v0, p0, :cond_9

    #@8
    goto :goto_28

    #@9
    .line 4771
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    const-string v2, "View "

    #@f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p1

    #@16
    const-string v1, " is not a direct child of "

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 4774
    :cond_28
    :goto_28
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2b
    move-result-object p1

    #@2c
    return-object p1
.end method

.method public getClipToPadding()Z
    .registers 2

    #@0
    .line 1099
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@2
    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    .registers 2

    #@0
    .line 759
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    #@2
    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 5092
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    #@3
    return-void
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .registers 2

    #@0
    .line 2713
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@2
    return-object v0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .registers 2

    #@0
    .line 3756
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@2
    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10

    #@0
    .line 5105
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 5106
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    #@8
    if-nez v1, :cond_d

    #@a
    .line 5107
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@c
    return-object p1

    #@d
    .line 5110
    :cond_d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_24

    #@15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_21

    #@1b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_24

    #@21
    .line 5112
    :cond_21
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@23
    return-object p1

    #@24
    .line 5114
    :cond_24
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@26
    const/4 v2, 0x0

    #@27
    .line 5115
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@2a
    .line 5116
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v3

    #@30
    move v4, v2

    #@31
    :goto_31
    if-ge v4, v3, :cond_6e

    #@33
    .line 5118
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@35
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@38
    .line 5119
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v5

    #@3e
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    #@40
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@42
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@44
    invoke-virtual {v5, v6, p1, p0, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@47
    .line 5120
    iget v5, v1, Landroid/graphics/Rect;->left:I

    #@49
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@4b
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@4d
    add-int/2addr v5, v6

    #@4e
    iput v5, v1, Landroid/graphics/Rect;->left:I

    #@50
    .line 5121
    iget v5, v1, Landroid/graphics/Rect;->top:I

    #@52
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@54
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@56
    add-int/2addr v5, v6

    #@57
    iput v5, v1, Landroid/graphics/Rect;->top:I

    #@59
    .line 5122
    iget v5, v1, Landroid/graphics/Rect;->right:I

    #@5b
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@5d
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@5f
    add-int/2addr v5, v6

    #@60
    iput v5, v1, Landroid/graphics/Rect;->right:I

    #@62
    .line 5123
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    #@64
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@66
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@68
    add-int/2addr v5, v6

    #@69
    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    #@6b
    add-int/lit8 v4, v4, 0x1

    #@6d
    goto :goto_31

    #@6e
    .line 5125
    :cond_6e
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    #@70
    return-object v1
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .registers 5

    #@0
    .line 1609
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    #@3
    move-result v0

    #@4
    if-ltz p1, :cond_11

    #@6
    if-ge p1, v0, :cond_11

    #@8
    .line 1614
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    #@10
    return-object p1

    #@11
    .line 1611
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v2, " is an invalid index for size "

    #@1e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1
.end method

.method public getItemDecorationCount()I
    .registers 2

    #@0
    .line 1623
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    #@0
    .line 1474
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .registers 2

    #@0
    .line 2523
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    #@2
    return v0
.end method

.method public getMinFlingVelocity()I
    .registers 2

    #@0
    .line 2513
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    #@2
    return v0
.end method

.method getNanoTime()J
    .registers 3

    #@0
    .line 5876
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 5877
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0

    #@9
    :cond_9
    const-wide/16 v0, 0x0

    #@b
    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .registers 2

    #@0
    .line 1375
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    #@2
    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .registers 2

    #@0
    .line 4741
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    #@2
    return v0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .registers 2

    #@0
    .line 1487
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getScrollState()I
    .registers 2

    #@0
    .line 1535
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@2
    return v0
.end method

.method public hasFixedSize()Z
    .registers 2

    #@0
    .line 1070
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    #@2
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    #@0
    .line 11558
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    #@0
    .line 11563
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    #@0
    .line 5229
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@2
    if-eqz v0, :cond_13

    #@4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@6
    if-nez v0, :cond_13

    #@8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@a
    .line 5230
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 v0, 0x1

    #@14
    :goto_14
    return v0
.end method

.method initAdapterManager()V
    .registers 3

    #@0
    .line 968
    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper;

    #@2
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$6;

    #@4
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$6;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    #@7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V

    #@a
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@c
    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .registers 15

    #@0
    if-eqz p1, :cond_2d

    #@2
    if-eqz p2, :cond_2d

    #@4
    if-eqz p3, :cond_2d

    #@6
    if-eqz p4, :cond_2d

    #@8
    .line 11516
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 11517
    new-instance v1, Landroidx/recyclerview/widget/FastScroller;

    #@12
    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_default_thickness:I

    #@14
    .line 11519
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@17
    move-result v7

    #@18
    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_minimum_range:I

    #@1a
    .line 11520
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1d
    move-result v8

    #@1e
    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_margin:I

    #@20
    .line 11521
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@23
    move-result v9

    #@24
    move-object v2, p0

    #@25
    move-object v3, p1

    #@26
    move-object v4, p2

    #@27
    move-object v5, p3

    #@28
    move-object v6, p4

    #@29
    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    #@2c
    return-void

    #@2d
    .line 11511
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance p2, Ljava/lang/StringBuilder;

    #@31
    const-string p3, "Trying to set fast scroller without both required drawables."

    #@33
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    .line 11513
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@39
    move-result-object p3

    #@3a
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p2

    #@3e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p2

    #@42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw p1
.end method

.method invalidateGlows()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 2686
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    #@3
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    #@5
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    #@7
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    #@9
    return-void
.end method

.method public invalidateItemDecorations()V
    .registers 3

    #@0
    .line 4718
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 4721
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@b
    if-eqz v0, :cond_12

    #@d
    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    #@f
    .line 4722
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@12
    .line 4725
    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    #@15
    .line 4726
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@18
    return-void
.end method

.method isAccessibilityEnabled()Z
    .registers 2

    #@0
    .line 3671
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

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

.method public isAnimating()Z
    .registers 2

    #@0
    .line 4536
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

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

.method public isAttachedToWindow()Z
    .registers 2

    #@0
    .line 3019
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    #@2
    return v0
.end method

.method public isComputingLayout()Z
    .registers 2

    #@0
    .line 3705
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@2
    if-lez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public isLayoutFrozen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutSuppressed()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final isLayoutSuppressed()Z
    .registers 2

    #@0
    .line 2242
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@2
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    #@0
    .line 11533
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .registers 3

    #@0
    .line 1755
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x2

    #@6
    .line 1761
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@9
    .line 1762
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@b
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    #@e
    .line 1763
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    #@11
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .registers 5

    #@0
    .line 4419
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_1b

    #@9
    .line 4421
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 4422
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@15
    const/4 v3, 0x1

    #@16
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_7

    #@1b
    .line 4424
    :cond_1b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@1d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    #@20
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    #@0
    .line 4702
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_22

    #@9
    .line 4704
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_1f

    #@15
    .line 4705
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1f

    #@1b
    const/4 v3, 0x6

    #@1c
    .line 4706
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_7

    #@22
    .line 4709
    :cond_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    #@25
    .line 4710
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    #@2a
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5

    #@0
    .line 5078
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_15

    #@9
    .line 5080
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_7

    #@15
    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5

    #@0
    .line 5040
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_15

    #@9
    .line 5042
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_7

    #@15
    :cond_15
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 8

    #@0
    .line 4599
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_2b

    #@a
    .line 4601
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@c
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@13
    move-result-object v3

    #@14
    if-eqz v3, :cond_28

    #@16
    .line 4602
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_28

    #@1c
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@1e
    if-lt v4, p1, :cond_28

    #@20
    .line 4607
    invoke-virtual {v3, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    #@23
    .line 4608
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@25
    const/4 v4, 0x1

    #@26
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@28
    :cond_28
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_8

    #@2b
    .line 4611
    :cond_2b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@2d
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    #@30
    .line 4612
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@33
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 12

    #@0
    .line 4565
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ge p1, p2, :cond_d

    #@9
    const/4 v2, -0x1

    #@a
    move v3, p1

    #@b
    move v4, p2

    #@c
    goto :goto_10

    #@d
    :cond_d
    move v4, p1

    #@e
    move v3, p2

    #@f
    move v2, v1

    #@10
    :goto_10
    const/4 v5, 0x0

    #@11
    move v6, v5

    #@12
    :goto_12
    if-ge v6, v0, :cond_3d

    #@14
    .line 4578
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@16
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@19
    move-result-object v7

    #@1a
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1d
    move-result-object v7

    #@1e
    if-eqz v7, :cond_3a

    #@20
    .line 4579
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@22
    if-lt v8, v3, :cond_3a

    #@24
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@26
    if-le v8, v4, :cond_29

    #@28
    goto :goto_3a

    #@29
    .line 4586
    :cond_29
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@2b
    if-ne v8, p1, :cond_33

    #@2d
    sub-int v8, p2, p1

    #@2f
    .line 4587
    invoke-virtual {v7, v8, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    #@32
    goto :goto_36

    #@33
    .line 4589
    :cond_33
    invoke-virtual {v7, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    #@36
    .line 4592
    :goto_36
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@38
    iput-boolean v1, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@3a
    :cond_3a
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    #@3c
    goto :goto_12

    #@3d
    .line 4594
    :cond_3d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@3f
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    #@42
    .line 4595
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@45
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 11

    #@0
    add-int v0, p1, p2

    #@2
    .line 4618
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v1, :cond_3c

    #@b
    .line 4620
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@d
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_39

    #@17
    .line 4621
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_39

    #@1d
    .line 4622
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@1f
    const/4 v5, 0x1

    #@20
    if-lt v4, v0, :cond_2b

    #@22
    neg-int v4, p2

    #@23
    .line 4628
    invoke-virtual {v3, v4, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    #@26
    .line 4629
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@28
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@2a
    goto :goto_39

    #@2b
    .line 4630
    :cond_2b
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@2d
    if-lt v4, p1, :cond_39

    #@2f
    add-int/lit8 v4, p1, -0x1

    #@31
    neg-int v6, p2

    #@32
    .line 4635
    invoke-virtual {v3, v4, v6, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    #@35
    .line 4637
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@37
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    #@39
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_9

    #@3c
    .line 4641
    :cond_3c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@3e
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    #@41
    .line 4642
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@44
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    #@0
    .line 2960
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 2961
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@6
    const/4 v1, 0x1

    #@7
    .line 2962
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    #@9
    .line 2963
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@b
    if-eqz v2, :cond_14

    #@d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_14

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v1, v0

    #@15
    :goto_15
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@17
    .line 2964
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@19
    if-eqz v1, :cond_1e

    #@1b
    .line 2965
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    #@1e
    .line 2967
    :cond_1e
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    #@20
    .line 2969
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    #@22
    if-eqz v0, :cond_65

    #@24
    .line 2971
    sget-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    #@26
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroidx/recyclerview/widget/GapWorker;

    #@2c
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@2e
    if-nez v0, :cond_60

    #@30
    .line 2973
    new-instance v0, Landroidx/recyclerview/widget/GapWorker;

    #@32
    invoke-direct {v0}, Landroidx/recyclerview/widget/GapWorker;-><init>()V

    #@35
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@37
    .line 2977
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    #@3a
    move-result-object v0

    #@3b
    .line 2979
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isInEditMode()Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_4e

    #@41
    if-eqz v0, :cond_4e

    #@43
    .line 2980
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    #@46
    move-result v0

    #@47
    const/high16 v1, 0x41f00000    # 30.0f

    #@49
    cmpl-float v1, v0, v1

    #@4b
    if-ltz v1, :cond_4e

    #@4d
    goto :goto_50

    #@4e
    :cond_4e
    const/high16 v0, 0x42700000    # 60.0f

    #@50
    .line 2985
    :goto_50
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@52
    const v2, 0x4e6e6b28    # 1.0E9f

    #@55
    div-float/2addr v2, v0

    #@56
    float-to-long v2, v2

    #@57
    iput-wide v2, v1, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    #@59
    .line 2986
    sget-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    #@5b
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@60
    .line 2988
    :cond_60
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@62
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GapWorker;->add(Landroidx/recyclerview/widget/RecyclerView;)V

    #@65
    :cond_65
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    #@0
    .line 2994
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 2995
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 2996
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    #@a
    .line 2998
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    #@d
    const/4 v0, 0x0

    #@e
    .line 2999
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    #@10
    .line 3000
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@12
    if-eqz v0, :cond_19

    #@14
    .line 3001
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@16
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@19
    .line 3003
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    #@1b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@1e
    .line 3004
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    #@20
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@23
    .line 3005
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewInfoStore;->onDetach()V

    #@28
    .line 3007
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    #@2a
    if-eqz v0, :cond_36

    #@2c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@2e
    if-eqz v0, :cond_36

    #@30
    .line 3009
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GapWorker;->remove(Landroidx/recyclerview/widget/RecyclerView;)V

    #@33
    const/4 v0, 0x0

    #@34
    .line 3010
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@36
    :cond_36
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 4490
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 4492
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_1c

    #@c
    .line 4494
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    #@14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@16
    invoke-virtual {v2, p1, p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .registers 2

    #@0
    .line 3648
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@6
    return-void
.end method

.method onExitLayoutOrScroll()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 3652
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    #@4
    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .registers 4

    #@0
    .line 3656
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@2
    const/4 v1, 0x1

    #@3
    sub-int/2addr v0, v1

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@6
    if-ge v0, v1, :cond_13

    #@8
    const/4 v0, 0x0

    #@9
    .line 3662
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    #@b
    if-eqz p1, :cond_13

    #@d
    .line 3664
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    #@10
    .line 3665
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    #@13
    :cond_13
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 3460
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 3463
    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@8
    if-eqz v0, :cond_b

    #@a
    return v1

    #@b
    .line 3466
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v0

    #@f
    const/16 v2, 0x8

    #@11
    if-ne v0, v2, :cond_77

    #@13
    .line 3468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@16
    move-result v0

    #@17
    and-int/lit8 v0, v0, 0x2

    #@19
    const/4 v2, 0x0

    #@1a
    if-eqz v0, :cond_3e

    #@1c
    .line 3469
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2c

    #@24
    const/16 v0, 0x9

    #@26
    .line 3472
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@29
    move-result v0

    #@2a
    neg-float v0, v0

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v0, v2

    #@2d
    .line 3476
    :goto_2d
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2f
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_3c

    #@35
    const/16 v3, 0xa

    #@37
    .line 3477
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@3a
    move-result v3

    #@3b
    goto :goto_64

    #@3c
    :cond_3c
    :goto_3c
    move v3, v2

    #@3d
    goto :goto_64

    #@3e
    .line 3481
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@41
    move-result v0

    #@42
    const/high16 v3, 0x400000

    #@44
    and-int/2addr v0, v3

    #@45
    if-eqz v0, :cond_62

    #@47
    const/16 v0, 0x1a

    #@49
    .line 3482
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@4c
    move-result v0

    #@4d
    .line 3483
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@4f
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_57

    #@55
    neg-float v0, v0

    #@56
    goto :goto_3c

    #@57
    .line 3488
    :cond_57
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@59
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_62

    #@5f
    move v3, v0

    #@60
    move v0, v2

    #@61
    goto :goto_64

    #@62
    :cond_62
    move v0, v2

    #@63
    move v3, v0

    #@64
    :goto_64
    cmpl-float v4, v0, v2

    #@66
    if-nez v4, :cond_6c

    #@68
    cmpl-float v2, v3, v2

    #@6a
    if-eqz v2, :cond_77

    #@6c
    .line 3501
    :cond_6c
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    #@6e
    mul-float/2addr v3, v2

    #@6f
    float-to-int v2, v3

    #@70
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    #@72
    mul-float/2addr v0, v3

    #@73
    float-to-int v0, v0

    #@74
    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    #@77
    :cond_77
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    #@0
    .line 3161
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    .line 3169
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@9
    .line 3170
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    #@c
    move-result v0

    #@d
    const/4 v2, 0x1

    #@e
    if-eqz v0, :cond_14

    #@10
    .line 3171
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    #@13
    return v2

    #@14
    .line 3175
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@16
    if-nez v0, :cond_19

    #@18
    return v1

    #@19
    .line 3179
    :cond_19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@1c
    move-result v0

    #@1d
    .line 3180
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1f
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@22
    move-result v3

    #@23
    .line 3182
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@25
    if-nez v4, :cond_2d

    #@27
    .line 3183
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@2a
    move-result-object v4

    #@2b
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2d
    .line 3185
    :cond_2d
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2f
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@32
    .line 3187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@35
    move-result v4

    #@36
    .line 3188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@39
    move-result v5

    #@3a
    const/4 v6, 0x2

    #@3b
    const/high16 v7, 0x3f000000    # 0.5f

    #@3d
    if-eqz v4, :cond_dc

    #@3f
    if-eq v4, v2, :cond_d3

    #@41
    if-eq v4, v6, :cond_74

    #@43
    const/4 v0, 0x3

    #@44
    if-eq v4, v0, :cond_6f

    #@46
    const/4 v0, 0x5

    #@47
    if-eq v4, v0, :cond_53

    #@49
    const/4 v0, 0x6

    #@4a
    if-eq v4, v0, :cond_4e

    #@4c
    goto/16 :goto_11a

    #@4e
    .line 3253
    :cond_4e
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    #@51
    goto/16 :goto_11a

    #@53
    .line 3219
    :cond_53
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@56
    move-result v0

    #@57
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@59
    .line 3220
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@5c
    move-result v0

    #@5d
    add-float/2addr v0, v7

    #@5e
    float-to-int v0, v0

    #@5f
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@61
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    #@63
    .line 3221
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@66
    move-result p1

    #@67
    add-float/2addr p1, v7

    #@68
    float-to-int p1, p1

    #@69
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@6b
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    #@6d
    goto/16 :goto_11a

    #@6f
    .line 3262
    :cond_6f
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    #@72
    goto/16 :goto_11a

    #@74
    .line 3225
    :cond_74
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@76
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@79
    move-result v4

    #@7a
    if-gez v4, :cond_99

    #@7c
    .line 3227
    new-instance p1, Ljava/lang/StringBuilder;

    #@7e
    const-string v0, "Error processing scroll; pointer index for id "

    #@80
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@83
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object p1

    #@89
    const-string v0, " not found. Did any MotionEvents get skipped?"

    #@8b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object p1

    #@8f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object p1

    #@93
    const-string v0, "RecyclerView"

    #@95
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    return v1

    #@99
    .line 3232
    :cond_99
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    #@9c
    move-result v5

    #@9d
    add-float/2addr v5, v7

    #@9e
    float-to-int v5, v5

    #@9f
    .line 3233
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    #@a2
    move-result p1

    #@a3
    add-float/2addr p1, v7

    #@a4
    float-to-int p1, p1

    #@a5
    .line 3234
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@a7
    if-eq v4, v2, :cond_11a

    #@a9
    .line 3235
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    #@ab
    sub-int v4, v5, v4

    #@ad
    .line 3236
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    #@af
    sub-int v6, p1, v6

    #@b1
    if-eqz v0, :cond_bf

    #@b3
    .line 3238
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@b6
    move-result v0

    #@b7
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@b9
    if-le v0, v4, :cond_bf

    #@bb
    .line 3239
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@bd
    move v0, v2

    #@be
    goto :goto_c0

    #@bf
    :cond_bf
    move v0, v1

    #@c0
    :goto_c0
    if-eqz v3, :cond_cd

    #@c2
    .line 3242
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@c5
    move-result v3

    #@c6
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@c8
    if-le v3, v4, :cond_cd

    #@ca
    .line 3243
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@cc
    move v0, v2

    #@cd
    :cond_cd
    if-eqz v0, :cond_11a

    #@cf
    .line 3247
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@d2
    goto :goto_11a

    #@d3
    .line 3257
    :cond_d3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d5
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    #@d8
    .line 3258
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    #@db
    goto :goto_11a

    #@dc
    .line 3192
    :cond_dc
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    #@de
    if-eqz v4, :cond_e2

    #@e0
    .line 3193
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    #@e2
    .line 3195
    :cond_e2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@e5
    move-result v4

    #@e6
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@e8
    .line 3196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@eb
    move-result v4

    #@ec
    add-float/2addr v4, v7

    #@ed
    float-to-int v4, v4

    #@ee
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@f0
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    #@f2
    .line 3197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@f5
    move-result p1

    #@f6
    add-float/2addr p1, v7

    #@f7
    float-to-int p1, p1

    #@f8
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@fa
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    #@fc
    .line 3199
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@fe
    if-ne p1, v6, :cond_10d

    #@100
    .line 3200
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    #@103
    move-result-object p1

    #@104
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@107
    .line 3201
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@10a
    .line 3202
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    #@10d
    .line 3206
    :cond_10d
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    #@10f
    aput v1, p1, v2

    #@111
    aput v1, p1, v1

    #@113
    if-eqz v3, :cond_117

    #@115
    or-int/lit8 v0, v0, 0x2

    #@117
    .line 3215
    :cond_117
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    #@11a
    .line 3265
    :cond_11a
    :goto_11a
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@11c
    if-ne p1, v2, :cond_11f

    #@11e
    move v1, v2

    #@11f
    :cond_11f
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    const-string p1, "RV OnLayout"

    #@2
    .line 4403
    invoke-static {p1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@5
    .line 4404
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    #@8
    .line 4405
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@b
    const/4 p1, 0x1

    #@c
    .line 4406
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    #@0
    .line 3510
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 3511
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    #@7
    return-void

    #@8
    .line 3514
    :cond_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    const/4 v2, 0x0

    #@e
    if-eqz v0, :cond_74

    #@10
    .line 3515
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@13
    move-result v0

    #@14
    .line 3516
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@17
    move-result v3

    #@18
    .line 3525
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1a
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@1c
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@1e
    invoke-virtual {v4, v5, v6, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    #@21
    const/high16 v4, 0x40000000    # 2.0f

    #@23
    if-ne v0, v4, :cond_28

    #@25
    if-ne v3, v4, :cond_28

    #@27
    move v2, v1

    #@28
    :cond_28
    if-nez v2, :cond_73

    #@2a
    .line 3529
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@2c
    if-nez v0, :cond_2f

    #@2e
    goto :goto_73

    #@2f
    .line 3533
    :cond_2f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@31
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    #@33
    if-ne v0, v1, :cond_38

    #@35
    .line 3534
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    #@38
    .line 3538
    :cond_38
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3a
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    #@3d
    .line 3539
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@3f
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    #@41
    .line 3540
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    #@44
    .line 3543
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@46
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    #@49
    .line 3547
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@4b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_e2

    #@51
    .line 3548
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@53
    .line 3549
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@56
    move-result v2

    #@57
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5a
    move-result v2

    #@5b
    .line 3550
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@5e
    move-result v3

    #@5f
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@62
    move-result v3

    #@63
    .line 3548
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    #@66
    .line 3551
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@68
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    #@6a
    .line 3552
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    #@6d
    .line 3554
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6f
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    #@72
    goto :goto_e2

    #@73
    :cond_73
    :goto_73
    return-void

    #@74
    .line 3557
    :cond_74
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    #@76
    if-eqz v0, :cond_82

    #@78
    .line 3558
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@7a
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@7c
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@7e
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    #@81
    return-void

    #@82
    .line 3562
    :cond_82
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    #@84
    if-eqz v0, :cond_ac

    #@86
    .line 3563
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@89
    .line 3564
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    #@8c
    .line 3565
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    #@8f
    .line 3566
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    #@92
    .line 3568
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@94
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    #@96
    if-eqz v0, :cond_9d

    #@98
    .line 3569
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@9a
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    #@9c
    goto :goto_a6

    #@9d
    .line 3572
    :cond_9d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@9f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    #@a2
    .line 3573
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@a4
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    #@a6
    .line 3575
    :goto_a6
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    #@a8
    .line 3576
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@ab
    goto :goto_be

    #@ac
    .line 3577
    :cond_ac
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@ae
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    #@b0
    if-eqz v0, :cond_be

    #@b2
    .line 3583
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@b5
    move-result p1

    #@b6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@b9
    move-result p2

    #@ba
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    #@bd
    return-void

    #@be
    .line 3587
    :cond_be
    :goto_be
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@c0
    if-eqz v0, :cond_cb

    #@c2
    .line 3588
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@c4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@c7
    move-result v0

    #@c8
    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    #@ca
    goto :goto_cf

    #@cb
    .line 3590
    :cond_cb
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@cd
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    #@cf
    .line 3592
    :goto_cf
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@d2
    .line 3593
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@d4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@d6
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@d8
    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    #@db
    .line 3594
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@de
    .line 3595
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@e0
    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    #@e2
    :cond_e2
    :goto_e2
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4

    #@0
    .line 2950
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 2955
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 1394
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1395
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 1399
    :cond_8
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@a
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@c
    .line 1400
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@f
    move-result-object p1

    #@10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@13
    .line 1401
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@15
    if-eqz p1, :cond_26

    #@17
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    #@1b
    if-eqz p1, :cond_26

    #@1d
    .line 1402
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@21
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    #@23
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@26
    :cond_26
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 1380
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1381
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    #@b
    if-eqz v1, :cond_11

    #@d
    .line 1382
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;->copyFrom(Landroidx/recyclerview/widget/RecyclerView$SavedState;)V

    #@10
    goto :goto_1f

    #@11
    .line 1383
    :cond_11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@13
    if-eqz v1, :cond_1c

    #@15
    .line 1384
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    #@1b
    goto :goto_1f

    #@1c
    :cond_1c
    const/4 v1, 0x0

    #@1d
    .line 1386
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    #@1f
    :goto_1f
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    #@0
    return-void
.end method

.method public onScrolled(II)V
    .registers 3

    #@0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 3618
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    #@3
    if-ne p1, p3, :cond_7

    #@5
    if-eq p2, p4, :cond_a

    #@7
    .line 3620
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    #@a
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19

    #@0
    move-object/from16 v6, p0

    #@2
    move-object/from16 v7, p1

    #@4
    .line 3280
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@6
    const/4 v8, 0x0

    #@7
    if-nez v0, :cond_1de

    #@9
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    #@b
    if-eqz v0, :cond_f

    #@d
    goto/16 :goto_1de

    #@f
    .line 3283
    :cond_f
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    const/4 v9, 0x1

    #@14
    if-eqz v0, :cond_1a

    #@16
    .line 3284
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    #@19
    return v9

    #@1a
    .line 3288
    :cond_1a
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1c
    if-nez v0, :cond_1f

    #@1e
    return v8

    #@1f
    .line 3292
    :cond_1f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@22
    move-result v10

    #@23
    .line 3293
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@28
    move-result v11

    #@29
    .line 3295
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2b
    if-nez v0, :cond_33

    #@2d
    .line 3296
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@30
    move-result-object v0

    #@31
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@33
    .line 3300
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@36
    move-result v0

    #@37
    .line 3301
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3a
    move-result v1

    #@3b
    if-nez v0, :cond_43

    #@3d
    .line 3304
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    #@3f
    aput v8, v2, v9

    #@41
    aput v8, v2, v8

    #@43
    .line 3306
    :cond_43
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@46
    move-result-object v12

    #@47
    .line 3307
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    #@49
    aget v3, v2, v8

    #@4b
    int-to-float v3, v3

    #@4c
    aget v2, v2, v9

    #@4e
    int-to-float v2, v2

    #@4f
    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@52
    const/high16 v2, 0x3f000000    # 0.5f

    #@54
    if-eqz v0, :cond_1b2

    #@56
    if-eq v0, v9, :cond_170

    #@58
    const/4 v3, 0x2

    #@59
    if-eq v0, v3, :cond_8c

    #@5b
    const/4 v3, 0x3

    #@5c
    if-eq v0, v3, :cond_87

    #@5e
    const/4 v3, 0x5

    #@5f
    if-eq v0, v3, :cond_6b

    #@61
    const/4 v1, 0x6

    #@62
    if-eq v0, v1, :cond_66

    #@64
    goto/16 :goto_1d3

    #@66
    .line 3404
    :cond_66
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    #@69
    goto/16 :goto_1d3

    #@6b
    .line 3326
    :cond_6b
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@6e
    move-result v0

    #@6f
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@71
    .line 3327
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@74
    move-result v0

    #@75
    add-float/2addr v0, v2

    #@76
    float-to-int v0, v0

    #@77
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@79
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    #@7b
    .line 3328
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@7e
    move-result v0

    #@7f
    add-float/2addr v0, v2

    #@80
    float-to-int v0, v0

    #@81
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@83
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    #@85
    goto/16 :goto_1d3

    #@87
    .line 3422
    :cond_87
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    #@8a
    goto/16 :goto_1d3

    #@8c
    .line 3332
    :cond_8c
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@8e
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@91
    move-result v0

    #@92
    if-gez v0, :cond_b1

    #@94
    .line 3334
    new-instance v0, Ljava/lang/StringBuilder;

    #@96
    const-string v1, "Error processing scroll; pointer index for id "

    #@98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9b
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    const-string v1, " not found. Did any MotionEvents get skipped?"

    #@a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    const-string v1, "RecyclerView"

    #@ad
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    return v8

    #@b1
    .line 3339
    :cond_b1
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@b4
    move-result v1

    #@b5
    add-float/2addr v1, v2

    #@b6
    float-to-int v13, v1

    #@b7
    .line 3340
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@ba
    move-result v0

    #@bb
    add-float/2addr v0, v2

    #@bc
    float-to-int v14, v0

    #@bd
    .line 3341
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@bf
    sub-int/2addr v0, v13

    #@c0
    .line 3342
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@c2
    sub-int/2addr v1, v14

    #@c3
    .line 3344
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@c5
    if-eq v2, v9, :cond_fa

    #@c7
    if-eqz v10, :cond_de

    #@c9
    if-lez v0, :cond_d3

    #@cb
    .line 3348
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@cd
    sub-int/2addr v0, v2

    #@ce
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@d1
    move-result v0

    #@d2
    goto :goto_da

    #@d3
    .line 3350
    :cond_d3
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@d5
    add-int/2addr v0, v2

    #@d6
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    #@d9
    move-result v0

    #@da
    :goto_da
    if-eqz v0, :cond_de

    #@dc
    move v2, v9

    #@dd
    goto :goto_df

    #@de
    :cond_de
    move v2, v8

    #@df
    :goto_df
    if-eqz v11, :cond_f5

    #@e1
    if-lez v1, :cond_eb

    #@e3
    .line 3358
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@e5
    sub-int/2addr v1, v3

    #@e6
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    #@e9
    move-result v1

    #@ea
    goto :goto_f2

    #@eb
    .line 3360
    :cond_eb
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@ed
    add-int/2addr v1, v3

    #@ee
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    #@f1
    move-result v1

    #@f2
    :goto_f2
    if-eqz v1, :cond_f5

    #@f4
    move v2, v9

    #@f5
    :cond_f5
    if-eqz v2, :cond_fa

    #@f7
    .line 3367
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@fa
    :cond_fa
    move v15, v0

    #@fb
    move/from16 v16, v1

    #@fd
    .line 3371
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@ff
    if-ne v0, v9, :cond_1d3

    #@101
    .line 3372
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@103
    aput v8, v3, v8

    #@105
    .line 3373
    aput v8, v3, v9

    #@107
    if-eqz v10, :cond_10b

    #@109
    move v1, v15

    #@10a
    goto :goto_10c

    #@10b
    :cond_10b
    move v1, v8

    #@10c
    :goto_10c
    if-eqz v11, :cond_111

    #@10e
    move/from16 v2, v16

    #@110
    goto :goto_112

    #@111
    :cond_111
    move v2, v8

    #@112
    .line 3374
    :goto_112
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    #@114
    const/4 v5, 0x0

    #@115
    move-object/from16 v0, p0

    #@117
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    #@11a
    move-result v0

    #@11b
    if-eqz v0, :cond_13f

    #@11d
    .line 3379
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@11f
    aget v1, v0, v8

    #@121
    sub-int/2addr v15, v1

    #@122
    .line 3380
    aget v0, v0, v9

    #@124
    sub-int v16, v16, v0

    #@126
    .line 3382
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    #@128
    aget v1, v0, v8

    #@12a
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    #@12c
    aget v3, v2, v8

    #@12e
    add-int/2addr v1, v3

    #@12f
    aput v1, v0, v8

    #@131
    .line 3383
    aget v1, v0, v9

    #@133
    aget v2, v2, v9

    #@135
    add-int/2addr v1, v2

    #@136
    aput v1, v0, v9

    #@138
    .line 3385
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    #@13b
    move-result-object v0

    #@13c
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@13f
    :cond_13f
    move/from16 v0, v16

    #@141
    .line 3388
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    #@143
    aget v2, v1, v8

    #@145
    sub-int/2addr v13, v2

    #@146
    iput v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@148
    .line 3389
    aget v1, v1, v9

    #@14a
    sub-int/2addr v14, v1

    #@14b
    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@14d
    if-eqz v10, :cond_151

    #@14f
    move v1, v15

    #@150
    goto :goto_152

    #@151
    :cond_151
    move v1, v8

    #@152
    :goto_152
    if-eqz v11, :cond_156

    #@154
    move v2, v0

    #@155
    goto :goto_157

    #@156
    :cond_156
    move v2, v8

    #@157
    .line 3391
    :goto_157
    invoke-virtual {v6, v1, v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    #@15a
    move-result v1

    #@15b
    if-eqz v1, :cond_164

    #@15d
    .line 3395
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    #@160
    move-result-object v1

    #@161
    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@164
    .line 3397
    :cond_164
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@166
    if-eqz v1, :cond_1d3

    #@168
    if-nez v15, :cond_16c

    #@16a
    if-eqz v0, :cond_1d3

    #@16c
    .line 3398
    :cond_16c
    invoke-virtual {v1, v6, v15, v0}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    #@16f
    goto :goto_1d3

    #@170
    .line 3408
    :cond_170
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@172
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@175
    .line 3410
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@177
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    #@179
    int-to-float v1, v1

    #@17a
    const/16 v2, 0x3e8

    #@17c
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@17f
    const/4 v0, 0x0

    #@180
    if-eqz v10, :cond_18c

    #@182
    .line 3411
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@184
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@186
    .line 3412
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@189
    move-result v1

    #@18a
    neg-float v1, v1

    #@18b
    goto :goto_18d

    #@18c
    :cond_18c
    move v1, v0

    #@18d
    :goto_18d
    if-eqz v11, :cond_199

    #@18f
    .line 3413
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@191
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@193
    .line 3414
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@196
    move-result v2

    #@197
    neg-float v2, v2

    #@198
    goto :goto_19a

    #@199
    :cond_199
    move v2, v0

    #@19a
    :goto_19a
    cmpl-float v3, v1, v0

    #@19c
    if-nez v3, :cond_1a2

    #@19e
    cmpl-float v0, v2, v0

    #@1a0
    if-eqz v0, :cond_1aa

    #@1a2
    :cond_1a2
    float-to-int v0, v1

    #@1a3
    float-to-int v1, v2

    #@1a4
    .line 3415
    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    #@1a7
    move-result v0

    #@1a8
    if-nez v0, :cond_1ad

    #@1aa
    .line 3416
    :cond_1aa
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@1ad
    .line 3418
    :cond_1ad
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    #@1b0
    move v8, v9

    #@1b1
    goto :goto_1d3

    #@1b2
    .line 3311
    :cond_1b2
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1b5
    move-result v0

    #@1b6
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    #@1b8
    .line 3312
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@1bb
    move-result v0

    #@1bc
    add-float/2addr v0, v2

    #@1bd
    float-to-int v0, v0

    #@1be
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@1c0
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    #@1c2
    .line 3313
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@1c5
    move-result v0

    #@1c6
    add-float/2addr v0, v2

    #@1c7
    float-to-int v0, v0

    #@1c8
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@1ca
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    #@1cc
    if-eqz v11, :cond_1d0

    #@1ce
    or-int/lit8 v10, v10, 0x2

    #@1d0
    .line 3322
    :cond_1d0
    invoke-virtual {v6, v10, v8}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    #@1d3
    :cond_1d3
    :goto_1d3
    if-nez v8, :cond_1da

    #@1d5
    .line 3427
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d7
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@1da
    .line 3429
    :cond_1da
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    #@1dd
    return v9

    #@1de
    :cond_1de
    :goto_1de
    return v8
.end method

.method postAnimationRunner()V
    .registers 2

    #@0
    .line 3764
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    #@2
    if-nez v0, :cond_10

    #@4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 3765
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    #@a
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@d
    const/4 v0, 0x1

    #@e
    .line 3766
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    #@10
    :cond_10
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .registers 3

    #@0
    .line 4692
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    #@2
    or-int/2addr p1, v0

    #@3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    #@5
    const/4 p1, 0x1

    #@6
    .line 4693
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@8
    .line 4694
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    #@b
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x2000

    #@3
    .line 4291
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    #@6
    .line 4292
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    #@a
    if-eqz v0, :cond_27

    #@c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_27

    #@12
    .line 4293
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_27

    #@18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_27

    #@1e
    .line 4294
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    #@21
    move-result-wide v0

    #@22
    .line 4295
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@24
    invoke-virtual {v2, v0, v1, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@27
    .line 4297
    :cond_27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@29
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    #@2c
    return-void
.end method

.method removeAndRecycleViews()V
    .registers 3

    #@0
    .line 1171
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1172
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    #@7
    .line 1178
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@9
    if-eqz v0, :cond_17

    #@b
    .line 1179
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@d
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@10
    .line 1180
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@17
    .line 1183
    :cond_17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    #@1c
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .registers 4

    #@0
    .line 1451
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@3
    .line 1452
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_19

    #@b
    .line 1454
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@e
    move-result-object p1

    #@f
    .line 1455
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@11
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@14
    .line 1456
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@16
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@19
    :cond_19
    xor-int/lit8 p1, v0, 0x1

    #@1b
    .line 1462
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@1e
    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 5

    #@0
    .line 4334
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_34

    #@6
    .line 4336
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_10

    #@c
    .line 4337
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    #@f
    goto :goto_34

    #@10
    .line 4338
    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_17

    #@16
    goto :goto_34

    #@17
    .line 4339
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance p2, Ljava/lang/StringBuilder;

    #@1b
    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    #@1d
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p2

    #@24
    .line 4340
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p2

    #@2c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p2

    #@30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw p1

    #@34
    .line 4347
    :cond_34
    :goto_34
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    #@37
    .line 4349
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    #@3a
    .line 4350
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    #@3d
    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .registers 4

    #@0
    .line 1650
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-eqz v0, :cond_9

    #@4
    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    #@6
    .line 1651
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@9
    .line 1654
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    .line 1655
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_23

    #@16
    .line 1656
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    #@19
    move-result p1

    #@1a
    const/4 v0, 0x2

    #@1b
    if-ne p1, v0, :cond_1f

    #@1d
    const/4 p1, 0x1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    :goto_20
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    #@23
    .line 1658
    :cond_23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    #@26
    .line 1659
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@29
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .registers 5

    #@0
    .line 1632
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    #@3
    move-result v0

    #@4
    if-ltz p1, :cond_10

    #@6
    if-ge p1, v0, :cond_10

    #@8
    .line 1637
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@f
    return-void

    #@10
    .line 1634
    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    const-string v2, " is an invalid index for size "

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p1

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3

    #@0
    .line 1286
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 1289
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@8
    return-void
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3

    #@0
    .line 3088
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 3089
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@7
    if-ne v0, p1, :cond_c

    #@9
    const/4 p1, 0x0

    #@a
    .line 3090
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@c
    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .registers 3

    #@0
    .line 1718
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1719
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-void
.end method

.method repositionShadowingViews()V
    .registers 8

    #@0
    .line 5513
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_41

    #@9
    .line 5515
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 5516
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    move-result-object v3

    #@13
    if-eqz v3, :cond_3e

    #@15
    .line 5517
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@17
    if-eqz v4, :cond_3e

    #@19
    .line 5518
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1b
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1d
    .line 5519
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@20
    move-result v4

    #@21
    .line 5520
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@24
    move-result v2

    #@25
    .line 5521
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@28
    move-result v5

    #@29
    if-ne v4, v5, :cond_31

    #@2b
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@2e
    move-result v5

    #@2f
    if-eq v2, v5, :cond_3e

    #@31
    .line 5523
    :cond_31
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@34
    move-result v5

    #@35
    add-int/2addr v5, v4

    #@36
    .line 5524
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@39
    move-result v6

    #@3a
    add-int/2addr v6, v2

    #@3b
    .line 5522
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    #@3e
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_7

    #@41
    :cond_41
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    #@0
    .line 2893
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@4
    invoke-virtual {v0, p0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_f

    #@a
    if-eqz p2, :cond_f

    #@c
    .line 2894
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    #@f
    .line 2896
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@12
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    #@0
    .line 2938
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 5

    #@0
    .line 3270
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_17

    #@9
    .line 3272
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    #@11
    .line 3273
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_7

    #@17
    .line 3275
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    #@1a
    return-void
.end method

.method public requestLayout()V
    .registers 2

    #@0
    .line 4411
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@2
    if-nez v0, :cond_c

    #@4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@6
    if-nez v0, :cond_c

    #@8
    .line 4412
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@b
    goto :goto_f

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 4414
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@f
    :goto_f
    return-void
.end method

.method saveOldPositions()V
    .registers 5

    #@0
    .line 4540
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_1f

    #@9
    .line 4542
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@b
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    move-result-object v2

    #@13
    .line 4547
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_1c

    #@19
    .line 4548
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    #@1c
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_7

    #@1f
    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 6

    #@0
    .line 1801
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-nez v0, :cond_c

    #@4
    const-string p1, "RecyclerView"

    #@6
    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    #@8
    .line 1802
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    return-void

    #@c
    .line 1806
    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@e
    if-eqz v1, :cond_11

    #@10
    return-void

    #@11
    .line 1809
    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@14
    move-result v0

    #@15
    .line 1810
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@1a
    move-result v1

    #@1b
    if-nez v0, :cond_1f

    #@1d
    if-eqz v1, :cond_2c

    #@1f
    :cond_1f
    const/4 v2, 0x0

    #@20
    if-eqz v0, :cond_23

    #@22
    goto :goto_24

    #@23
    :cond_23
    move p1, v2

    #@24
    :goto_24
    if-eqz v1, :cond_27

    #@26
    goto :goto_28

    #@27
    :cond_27
    move p2, v2

    #@28
    :goto_28
    const/4 v0, 0x0

    #@29
    .line 1812
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    #@2c
    :cond_2c
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 22

    #@0
    move-object/from16 v8, p0

    #@2
    move/from16 v9, p1

    #@4
    move/from16 v10, p2

    #@6
    move-object/from16 v11, p3

    #@8
    .line 1936
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    #@b
    .line 1937
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@d
    const/4 v12, 0x1

    #@e
    const/4 v13, 0x0

    #@f
    if-eqz v0, :cond_2b

    #@11
    .line 1938
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@13
    aput v13, v0, v13

    #@15
    .line 1939
    aput v13, v0, v12

    #@17
    .line 1940
    invoke-virtual {v8, v9, v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    #@1a
    .line 1941
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@1c
    aget v1, v0, v13

    #@1e
    .line 1942
    aget v0, v0, v12

    #@20
    sub-int v2, v9, v1

    #@22
    sub-int v3, v10, v0

    #@24
    move v14, v0

    #@25
    move v15, v1

    #@26
    move/from16 v16, v2

    #@28
    move/from16 v17, v3

    #@2a
    goto :goto_31

    #@2b
    :cond_2b
    move v14, v13

    #@2c
    move v15, v14

    #@2d
    move/from16 v16, v15

    #@2f
    move/from16 v17, v16

    #@31
    .line 1946
    :goto_31
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_3c

    #@39
    .line 1947
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@3c
    .line 1950
    :cond_3c
    iget-object v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@3e
    aput v13, v7, v13

    #@40
    .line 1951
    aput v13, v7, v12

    #@42
    .line 1952
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    #@44
    const/4 v6, 0x0

    #@45
    move-object/from16 v0, p0

    #@47
    move v1, v15

    #@48
    move v2, v14

    #@49
    move/from16 v3, v16

    #@4b
    move/from16 v4, v17

    #@4d
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    #@50
    .line 1954
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@52
    aget v1, v0, v13

    #@54
    sub-int v2, v16, v1

    #@56
    .line 1955
    aget v0, v0, v12

    #@58
    sub-int v3, v17, v0

    #@5a
    if-nez v1, :cond_61

    #@5c
    if-eqz v0, :cond_5f

    #@5e
    goto :goto_61

    #@5f
    :cond_5f
    move v0, v13

    #@60
    goto :goto_62

    #@61
    :cond_61
    :goto_61
    move v0, v12

    #@62
    .line 1959
    :goto_62
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@64
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    #@66
    aget v5, v4, v13

    #@68
    sub-int/2addr v1, v5

    #@69
    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    #@6b
    .line 1960
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@6d
    aget v4, v4, v12

    #@6f
    sub-int/2addr v1, v4

    #@70
    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    #@72
    .line 1961
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    #@74
    aget v6, v1, v13

    #@76
    add-int/2addr v6, v5

    #@77
    aput v6, v1, v13

    #@79
    .line 1962
    aget v5, v1, v12

    #@7b
    add-int/2addr v5, v4

    #@7c
    aput v5, v1, v12

    #@7e
    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    #@81
    move-result v1

    #@82
    const/4 v4, 0x2

    #@83
    if-eq v1, v4, :cond_9f

    #@85
    if-eqz v11, :cond_9c

    #@87
    const/16 v1, 0x2002

    #@89
    .line 1965
    invoke-static {v11, v1}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    #@8c
    move-result v1

    #@8d
    if-nez v1, :cond_9c

    #@8f
    .line 1966
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    #@92
    move-result v1

    #@93
    int-to-float v2, v2

    #@94
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    #@97
    move-result v4

    #@98
    int-to-float v3, v3

    #@99
    invoke-direct {v8, v1, v2, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    #@9c
    .line 1968
    :cond_9c
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    #@9f
    :cond_9f
    if-nez v15, :cond_a3

    #@a1
    if-eqz v14, :cond_a6

    #@a3
    .line 1971
    :cond_a3
    invoke-virtual {v8, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    #@a6
    .line 1973
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    #@a9
    move-result v1

    #@aa
    if-nez v1, :cond_af

    #@ac
    .line 1974
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@af
    :cond_af
    if-nez v0, :cond_b7

    #@b1
    if-nez v15, :cond_b7

    #@b3
    if-eqz v14, :cond_b6

    #@b5
    goto :goto_b7

    #@b6
    :cond_b6
    move v12, v13

    #@b7
    :cond_b7
    :goto_b7
    return v12
.end method

.method scrollStep(II[I)V
    .registers 8

    #@0
    .line 1829
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    #@3
    .line 1830
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    #@6
    const-string v0, "RV Scroll"

    #@8
    .line 1832
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@b
    .line 1833
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@d
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@10
    const/4 v0, 0x0

    #@11
    if-eqz p1, :cond_1e

    #@13
    .line 1838
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@15
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@17
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@19
    invoke-virtual {v1, p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@1c
    move-result p1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move p1, v0

    #@1f
    :goto_1f
    if-eqz p2, :cond_2c

    #@21
    .line 1841
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@23
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@25
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@27
    invoke-virtual {v1, p2, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@2a
    move-result p2

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move p2, v0

    #@2d
    .line 1844
    :goto_2d
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@30
    .line 1845
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    #@33
    .line 1847
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    #@36
    .line 1848
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    #@39
    if-eqz p3, :cond_40

    #@3b
    .line 1851
    aput p1, p3, v0

    #@3d
    const/4 p1, 0x1

    #@3e
    .line 1852
    aput p2, p3, p1

    #@40
    :cond_40
    return-void
.end method

.method public scrollTo(II)V
    .registers 3

    #@0
    const-string p1, "RecyclerView"

    #@2
    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    #@4
    .line 1795
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 3

    #@0
    .line 1741
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 1744
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    #@8
    .line 1745
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@a
    if-nez v0, :cond_14

    #@c
    const-string p1, "RecyclerView"

    #@e
    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    #@10
    .line 1746
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    return-void

    #@14
    .line 1750
    :cond_14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    #@17
    .line 1751
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    #@1a
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 3733
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 3736
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@a
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 2

    #@0
    .line 768
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    #@2
    .line 769
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@5
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1160
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    #@4
    const/4 v1, 0x1

    #@5
    .line 1161
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    #@8
    .line 1162
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    #@b
    .line 1163
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@e
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .registers 3

    #@0
    .line 1676
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1679
    :cond_5
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    #@7
    if-eqz p1, :cond_b

    #@9
    const/4 p1, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 1680
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    #@f
    return-void
.end method

.method setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z
    .registers 4

    #@0
    .line 11470
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 11471
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    #@8
    .line 11472
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    #@a
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    const/4 p1, 0x0

    #@e
    return p1

    #@f
    .line 11475
    :cond_f
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@11
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@14
    const/4 p1, 0x1

    #@15
    return p1
.end method

.method public setClipToPadding(Z)V
    .registers 3

    #@0
    .line 1075
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@2
    if-eq p1, v0, :cond_7

    #@4
    .line 1076
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    #@7
    .line 1078
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@9
    .line 1079
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    #@c
    .line 1080
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 1081
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@13
    :cond_13
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V
    .registers 2

    #@0
    .line 2699
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 2700
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    #@5
    .line 2701
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    #@8
    return-void
.end method

.method public setHasFixedSize(Z)V
    .registers 2

    #@0
    .line 1062
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    #@2
    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .registers 4

    #@0
    .line 3637
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 3638
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    #@7
    .line 3639
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    #@d
    .line 3641
    :cond_d
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@f
    if-eqz p1, :cond_16

    #@11
    .line 3643
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    #@13
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    #@16
    :cond_16
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .registers 3

    #@0
    .line 1525
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    #@5
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2271
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    #@3
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 5

    #@0
    .line 1315
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1318
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    #@8
    .line 1321
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@a
    if-eqz v0, :cond_3a

    #@c
    .line 1323
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 1324
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    #@13
    .line 1326
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@1a
    .line 1327
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1c
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@1e
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@21
    .line 1328
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    #@26
    .line 1330
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    #@28
    if-eqz v0, :cond_31

    #@2a
    .line 1331
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2c
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@2e
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@31
    .line 1333
    :cond_31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@33
    const/4 v1, 0x0

    #@34
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    #@37
    .line 1334
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@39
    goto :goto_3f

    #@3a
    .line 1336
    :cond_3a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@3c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    #@3f
    .line 1339
    :goto_3f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->removeAllViewsUnfiltered()V

    #@44
    .line 1340
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@46
    if-eqz p1, :cond_80

    #@48
    .line 1342
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4a
    if-nez v0, :cond_5b

    #@4c
    .line 1347
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@4e
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    #@51
    .line 1348
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    #@53
    if-eqz p1, :cond_80

    #@55
    .line 1349
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@57
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    #@5a
    goto :goto_80

    #@5b
    .line 1343
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5d
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    const-string v2, "LayoutManager "

    #@61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    const-string v2, " is already attached to a RecyclerView:"

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@70
    .line 1345
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@73
    move-result-object p1

    #@74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object p1

    #@78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object p1

    #@7c
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0

    #@80
    .line 1352
    :cond_80
    :goto_80
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@82
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    #@85
    .line 1353
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@88
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 2311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@6
    return-void

    #@7
    .line 2313
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    #@0
    .line 11528
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    #@7
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .registers 2

    #@0
    .line 1365
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    #@2
    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1693
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@2
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .registers 2

    #@0
    .line 4759
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    #@2
    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .registers 3

    #@0
    .line 1499
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    #@5
    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .registers 2

    #@0
    .line 1240
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    #@2
    return-void
.end method

.method setScrollState(I)V
    .registers 3

    #@0
    .line 1539
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1546
    :cond_5
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    #@7
    const/4 v0, 0x2

    #@8
    if-eq p1, v0, :cond_d

    #@a
    .line 1548
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    #@d
    .line 1550
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    #@10
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .registers 5

    #@0
    .line 1112
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@7
    move-result-object v0

    #@8
    if-eqz p1, :cond_2f

    #@a
    const/4 v1, 0x1

    #@b
    if-eq p1, v1, :cond_28

    #@d
    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    const-string v1, "; using default value"

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    const-string v1, "RecyclerView"

    #@24
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_2f

    #@28
    .line 1123
    :cond_28
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    #@2b
    move-result p1

    #@2c
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@2e
    goto :goto_35

    #@2f
    .line 1119
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@32
    move-result p1

    #@33
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    #@35
    :goto_35
    return-void
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .registers 3

    #@0
    .line 1510
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V

    #@5
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    #@0
    .line 3717
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_1a

    #@7
    if-eqz p1, :cond_e

    #@9
    .line 3720
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    #@c
    move-result p1

    #@d
    goto :goto_f

    #@e
    :cond_e
    move p1, v1

    #@f
    :goto_f
    if-nez p1, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v1, p1

    #@13
    .line 3725
    :goto_13
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    #@15
    or-int/2addr p1, v1

    #@16
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    #@18
    const/4 p1, 0x1

    #@19
    return p1

    #@1a
    :cond_1a
    return v1
.end method

.method public smoothScrollBy(II)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2326
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    #@4
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 5

    #@0
    const/high16 v0, -0x80000000

    #@2
    .line 2338
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    #@5
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    .line 2356
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    #@9
    return-void
.end method

.method smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .registers 9

    #@0
    .line 2390
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    if-nez v0, :cond_c

    #@4
    const-string p1, "RecyclerView"

    #@6
    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    #@8
    .line 2391
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    return-void

    #@c
    .line 2395
    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@e
    if-eqz v1, :cond_11

    #@10
    return-void

    #@11
    .line 2398
    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@14
    move-result v0

    #@15
    const/4 v1, 0x0

    #@16
    if-nez v0, :cond_19

    #@18
    move p1, v1

    #@19
    .line 2401
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_22

    #@21
    move p2, v1

    #@22
    :cond_22
    if-nez p1, :cond_26

    #@24
    if-eqz p2, :cond_48

    #@26
    :cond_26
    const/high16 v0, -0x80000000

    #@28
    const/4 v2, 0x1

    #@29
    if-eq p4, v0, :cond_30

    #@2b
    if-lez p4, :cond_2e

    #@2d
    goto :goto_30

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_31

    #@30
    :cond_30
    :goto_30
    move v0, v2

    #@31
    :goto_31
    if-eqz v0, :cond_45

    #@33
    if-eqz p5, :cond_3f

    #@35
    if-eqz p1, :cond_38

    #@37
    move v1, v2

    #@38
    :cond_38
    if-eqz p2, :cond_3c

    #@3a
    or-int/lit8 v1, v1, 0x2

    #@3c
    .line 2415
    :cond_3c
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    #@3f
    .line 2417
    :cond_3f
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    #@41
    invoke-virtual {p5, p1, p2, p4, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    #@44
    goto :goto_48

    #@45
    .line 2419
    :cond_45
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    #@48
    :cond_48
    :goto_48
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 4

    #@0
    .line 1782
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 1785
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@7
    if-nez v0, :cond_11

    #@9
    const-string p1, "RecyclerView"

    #@b
    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    #@d
    .line 1786
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    return-void

    #@11
    .line 1790
    :cond_11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@13
    invoke-virtual {v0, p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    #@16
    return-void
.end method

.method startInterceptRequestLayout()V
    .registers 3

    #@0
    .line 2137
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@2
    const/4 v1, 0x1

    #@3
    add-int/2addr v0, v1

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@6
    if-ne v0, v1, :cond_f

    #@8
    .line 2138
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@a
    if-nez v0, :cond_f

    #@c
    const/4 v0, 0x0

    #@d
    .line 2139
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@f
    :cond_f
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    #@0
    .line 11538
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    #@0
    .line 11543
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method stopInterceptRequestLayout(Z)V
    .registers 5

    #@0
    .line 2154
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ge v0, v1, :cond_7

    #@5
    .line 2161
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    if-nez p1, :cond_10

    #@a
    .line 2163
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@c
    if-nez v2, :cond_10

    #@e
    .line 2172
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@10
    .line 2174
    :cond_10
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@12
    if-ne v2, v1, :cond_2f

    #@14
    if-eqz p1, :cond_29

    #@16
    .line 2176
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@18
    if-eqz p1, :cond_29

    #@1a
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@1c
    if-nez p1, :cond_29

    #@1e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@20
    if-eqz p1, :cond_29

    #@22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@24
    if-eqz p1, :cond_29

    #@26
    .line 2178
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    #@29
    .line 2180
    :cond_29
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@2b
    if-nez p1, :cond_2f

    #@2d
    .line 2181
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@2f
    .line 2184
    :cond_2f
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@31
    sub-int/2addr p1, v1

    #@32
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    #@34
    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    #@0
    .line 11548
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    #@7
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    #@0
    .line 11553
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    #@7
    return-void
.end method

.method public stopScroll()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 2493
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@4
    .line 2494
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    #@7
    return-void
.end method

.method public final suppressLayout(Z)V
    .registers 11

    #@0
    .line 2214
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@2
    if-eq p1, v0, :cond_38

    #@4
    const-string v0, "Do not suppressLayout in layout or scroll"

    #@6
    .line 2215
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@9
    if-nez p1, :cond_20

    #@b
    const/4 p1, 0x0

    #@c
    .line 2217
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@e
    .line 2218
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@10
    if-eqz v0, :cond_1d

    #@12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@14
    if-eqz v0, :cond_1d

    #@16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@18
    if-eqz v0, :cond_1d

    #@1a
    .line 2219
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@1d
    .line 2221
    :cond_1d
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    #@1f
    goto :goto_38

    #@20
    .line 2223
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@23
    move-result-wide v3

    #@24
    const/4 v5, 0x3

    #@25
    const/4 v6, 0x0

    #@26
    const/4 v7, 0x0

    #@27
    const/4 v8, 0x0

    #@28
    move-wide v1, v3

    #@29
    .line 2224
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@2c
    move-result-object p1

    #@2d
    .line 2226
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@30
    const/4 p1, 0x1

    #@31
    .line 2227
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    #@33
    .line 2228
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    #@35
    .line 2229
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    #@38
    :cond_38
    :goto_38
    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1144
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    #@4
    const/4 v0, 0x1

    #@5
    .line 1145
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    #@8
    .line 1146
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    #@b
    .line 1147
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@e
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .registers 10

    #@0
    .line 4652
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    add-int v1, p1, p2

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v0, :cond_39

    #@b
    .line 4656
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@d
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    .line 4657
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@14
    move-result-object v4

    #@15
    if-eqz v4, :cond_36

    #@17
    .line 4658
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1e

    #@1d
    goto :goto_36

    #@1e
    .line 4661
    :cond_1e
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@20
    if-lt v5, p1, :cond_36

    #@22
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@24
    if-ge v5, v1, :cond_36

    #@26
    const/4 v5, 0x2

    #@27
    .line 4664
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    #@2a
    .line 4665
    invoke-virtual {v4, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    #@2d
    .line 4667
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@33
    const/4 v4, 0x1

    #@34
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    #@36
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_9

    #@39
    .line 4670
    :cond_39
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@3b
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    #@3e
    return-void
.end method
