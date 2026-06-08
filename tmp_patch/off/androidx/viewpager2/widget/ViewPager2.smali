.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;,
        Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$PageTransformer;,
        Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;,
        Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;,
        Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;,
        Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;,
        Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;,
        Landroidx/viewpager2/widget/ViewPager2$OffscreenPageLimit;,
        Landroidx/viewpager2/widget/ViewPager2$ScrollState;,
        Landroidx/viewpager2/widget/ViewPager2$Orientation;
    }
.end annotation


# static fields
.field public static final OFFSCREEN_PAGE_LIMIT_DEFAULT:I = -0x1

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static sFeatureEnhancedA11yEnabled:Z = true


# instance fields
.field mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

.field mCurrentItem:I

.field private mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCurrentItemDirty:Z

.field private mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mOffscreenPageLimit:I

.field private mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

.field private mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private mPendingAdapterState:Landroid/os/Parcelable;

.field private mPendingCurrentItem:I

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mSavedItemAnimatorPresent:Z

.field mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

.field private final mTmpChildRect:Landroid/graphics/Rect;

.field private final mTmpContainerRect:Landroid/graphics/Rect;

.field private mUserInputEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    #@0
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    .line 124
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@a
    .line 125
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@11
    .line 127
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@13
    const/4 v1, 0x3

    #@14
    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    #@17
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@19
    const/4 v0, 0x0

    #@1a
    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    #@1c
    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    #@1e
    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@21
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@23
    const/4 v1, -0x1

    #@24
    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@26
    const/4 v2, 0x0

    #@27
    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@29
    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    #@2e
    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    #@30
    .line 158
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 124
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@a
    .line 125
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@11
    .line 127
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@13
    const/4 v1, 0x3

    #@14
    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    #@17
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@19
    const/4 v0, 0x0

    #@1a
    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    #@1c
    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    #@1e
    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@21
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@23
    const/4 v1, -0x1

    #@24
    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@26
    const/4 v2, 0x0

    #@27
    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@29
    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    #@2e
    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    #@30
    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 124
    new-instance p3, Landroid/graphics/Rect;

    #@5
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@a
    .line 125
    new-instance p3, Landroid/graphics/Rect;

    #@c
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@11
    .line 127
    new-instance p3, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@13
    const/4 v0, 0x3

    #@14
    invoke-direct {p3, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    #@17
    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@19
    const/4 p3, 0x0

    #@1a
    .line 131
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    #@1c
    .line 132
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$1;

    #@1e
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@21
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@23
    const/4 v0, -0x1

    #@24
    .line 142
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@26
    const/4 v1, 0x0

    #@27
    .line 150
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@29
    .line 151
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@2b
    const/4 p3, 0x1

    #@2c
    .line 152
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    #@2e
    .line 153
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    #@30
    .line 168
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    #@0
    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 124
    new-instance p3, Landroid/graphics/Rect;

    #@5
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@a
    .line 125
    new-instance p3, Landroid/graphics/Rect;

    #@c
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@11
    .line 127
    new-instance p3, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@13
    const/4 p4, 0x3

    #@14
    invoke-direct {p3, p4}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    #@17
    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@19
    const/4 p3, 0x0

    #@1a
    .line 131
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    #@1c
    .line 132
    new-instance p4, Landroidx/viewpager2/widget/ViewPager2$1;

    #@1e
    invoke-direct {p4, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@21
    iput-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@23
    const/4 p4, -0x1

    #@24
    .line 142
    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@26
    const/4 v0, 0x0

    #@27
    .line 150
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@29
    .line 151
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@2b
    const/4 p3, 0x1

    #@2c
    .line 152
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    #@2e
    .line 153
    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    #@30
    .line 175
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@33
    return-void
.end method

.method private enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
    .registers 2

    #@0
    .line 263
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$4;

    #@2
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@5
    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 179
    sget-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->sFeatureEnhancedA11yEnabled:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    #@6
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@9
    goto :goto_f

    #@a
    :cond_a
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;

    #@c
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@f
    :goto_f
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@11
    .line 183
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    #@13
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@18
    .line 184
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setId(I)V

    #@1f
    .line 185
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@21
    const/high16 v1, 0x20000

    #@23
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    #@26
    .line 187
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    #@28
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    #@2b
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2d
    .line 188
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2f
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    #@32
    .line 189
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@34
    const/4 v1, 0x1

    #@35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    #@38
    .line 190
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3b
    .line 192
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@3d
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    #@3f
    const/4 v0, -0x1

    #@40
    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@43
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@46
    .line 194
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@48
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    #@4b
    move-result-object p2

    #@4c
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    #@4f
    .line 198
    new-instance p1, Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@51
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@54
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@56
    .line 200
    new-instance p1, Landroidx/viewpager2/widget/FakeDrag;

    #@58
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@5a
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5c
    invoke-direct {p1, p0, p2, v0}, Landroidx/viewpager2/widget/FakeDrag;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    #@5f
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    #@61
    .line 201
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    #@63
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@66
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    #@68
    .line 202
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6a
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    #@6d
    .line 205
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6f
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@71
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    #@74
    .line 207
    new-instance p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@76
    const/4 p2, 0x3

    #@77
    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    #@7a
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@7c
    .line 208
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@7e
    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->setOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    #@81
    .line 212
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$2;

    #@83
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@86
    .line 230
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$3;

    #@88
    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$3;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    #@8b
    .line 242
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@8d
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    #@90
    .line 243
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@92
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    #@95
    .line 246
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@97
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@99
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@9b
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitialize(Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V

    #@9e
    .line 247
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@a0
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@a2
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    #@a5
    .line 251
    new-instance p1, Landroidx/viewpager2/widget/PageTransformerAdapter;

    #@a7
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@a9
    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/PageTransformerAdapter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    #@ac
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    #@ae
    .line 252
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@b0
    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    #@b3
    .line 254
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@b5
    const/4 p2, 0x0

    #@b6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b9
    move-result-object v0

    #@ba
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@bd
    return-void
.end method

.method private registerCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 470
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    #@7
    :cond_7
    return-void
.end method

.method private restorePendingState()V
    .registers 5

    #@0
    .line 340
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    return-void

    #@6
    .line 344
    :cond_6
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_d

    #@c
    return-void

    #@d
    .line 348
    :cond_d
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    #@f
    if-eqz v2, :cond_1e

    #@11
    .line 349
    instance-of v3, v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    #@13
    if-eqz v3, :cond_1b

    #@15
    .line 350
    move-object v3, v0

    #@16
    check-cast v3, Landroidx/viewpager2/adapter/StatefulAdapter;

    #@18
    invoke-interface {v3, v2}, Landroidx/viewpager2/adapter/StatefulAdapter;->restoreState(Landroid/os/Parcelable;)V

    #@1b
    :cond_1b
    const/4 v2, 0x0

    #@1c
    .line 352
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    #@1e
    .line 355
    :cond_1e
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@23
    move-result v0

    #@24
    add-int/lit8 v0, v0, -0x1

    #@26
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v0

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@31
    .line 356
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@33
    .line 357
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@35
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@38
    .line 358
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@3a
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRestorePendingState()V

    #@3d
    return-void
.end method

.method private setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    #@0
    .line 292
    sget-object v0, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v2, 0x1d

    #@a
    if-lt v1, v2, :cond_17

    #@c
    .line 294
    sget-object v3, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    #@e
    const/4 v6, 0x0

    #@f
    const/4 v7, 0x0

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move-object v4, p2

    #@13
    move-object v5, v0

    #@14
    invoke-virtual/range {v1 .. v7}, Landroidx/viewpager2/widget/ViewPager2;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@17
    .line 297
    :cond_17
    :try_start_17
    sget p1, Landroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    #@19
    const/4 p2, 0x0

    #@1a
    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1d
    move-result p1

    #@1e
    .line 297
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    #@21
    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    return-void

    #@25
    :catchall_25
    move-exception p1

    #@26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 301
    throw p1
.end method

.method private unregisterCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 476
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    #@7
    :cond_7
    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .registers 3

    #@0
    .line 1144
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@5
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .registers 4

    #@0
    .line 1163
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    #@5
    return-void
.end method

.method public beginFakeDrag()Z
    .registers 2

    #@0
    .line 713
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/FakeDrag;->beginFakeDrag()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canScrollHorizontally(I)Z
    .registers 3

    #@0
    .line 855
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public canScrollVertically(I)Z
    .registers 3

    #@0
    .line 860
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 364
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/Parcelable;

    #@a
    .line 365
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    #@c
    if-eqz v1, :cond_22

    #@e
    .line 366
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    #@10
    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    #@12
    .line 367
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    #@17
    move-result v1

    #@18
    .line 368
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1f
    .line 369
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    #@22
    .line 372
    :cond_22
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@25
    .line 375
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    #@28
    return-void
.end method

.method public endFakeDrag()Z
    .registers 2

    #@0
    .line 749
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/FakeDrag;->endFakeDrag()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fakeDragBy(F)Z
    .registers 3

    #@0
    .line 735
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    #@2
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/FakeDrag;->fakeDragBy(F)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 285
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesGetAccessibilityClassName()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 286
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@a
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onGetAccessibilityClassName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 288
    :cond_f
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    #@0
    .line 482
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    #@0
    .line 675
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@2
    return v0
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .registers 3

    #@0
    .line 1175
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getItemDecorationCount()I
    .registers 2

    #@0
    .line 1184
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    #@0
    .line 850
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    #@2
    return v0
.end method

.method public getOrientation()I
    .registers 2

    #@0
    .line 573
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getPageSize()I
    .registers 4

    #@0
    .line 556
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    .line 557
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_16

    #@8
    .line 558
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@f
    move-result v2

    #@10
    sub-int/2addr v1, v2

    #@11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@14
    move-result v0

    #@15
    goto :goto_23

    #@16
    .line 559
    :cond_16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@1d
    move-result v2

    #@1e
    sub-int/2addr v1, v2

    #@1f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@22
    move-result v0

    #@23
    :goto_23
    sub-int/2addr v1, v0

    #@24
    return v1
.end method

.method public getScrollState()I
    .registers 2

    #@0
    .line 687
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getScrollState()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public invalidateItemDecorations()V
    .registers 2

    #@0
    .line 1192
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    #@5
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    #@0
    .line 761
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/FakeDrag;->isFakeDragging()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isRtl()Z
    .registers 3

    #@0
    .line 577
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    :goto_b
    return v1
.end method

.method public isUserInputEnabled()Z
    .registers 2

    #@0
    .line 803
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    #@2
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    #@0
    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 950
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@5
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    #@0
    .line 516
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@5
    move-result p1

    #@6
    .line 517
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@b
    move-result v0

    #@c
    .line 521
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@e
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    #@11
    move-result v2

    #@12
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@14
    .line 522
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@16
    sub-int/2addr p4, p2

    #@17
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    #@1a
    move-result p2

    #@1b
    sub-int/2addr p4, p2

    #@1c
    iput p4, v1, Landroid/graphics/Rect;->right:I

    #@1e
    .line 523
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    #@23
    move-result p4

    #@24
    iput p4, p2, Landroid/graphics/Rect;->top:I

    #@26
    .line 524
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@28
    sub-int/2addr p5, p3

    #@29
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    #@2c
    move-result p3

    #@2d
    sub-int/2addr p5, p3

    #@2e
    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    #@30
    .line 526
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    #@32
    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@34
    const p4, 0x800033

    #@37
    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@3a
    .line 527
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@3c
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@3e
    iget p2, p2, Landroid/graphics/Rect;->left:I

    #@40
    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@42
    iget p3, p3, Landroid/graphics/Rect;->top:I

    #@44
    iget-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@46
    iget p4, p4, Landroid/graphics/Rect;->right:I

    #@48
    iget-object p5, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    #@4a
    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    #@4c
    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    #@4f
    .line 530
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    #@51
    if-eqz p1, :cond_56

    #@53
    .line 531
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->updateCurrentItem()V

    #@56
    :cond_56
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    #@0
    .line 498
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->measureChild(Landroid/view/View;II)V

    #@5
    .line 499
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    #@a
    move-result v0

    #@b
    .line 500
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    #@10
    move-result v1

    #@11
    .line 501
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    #@16
    move-result v2

    #@17
    .line 503
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    #@1e
    move-result v4

    #@1f
    add-int/2addr v3, v4

    #@20
    add-int/2addr v0, v3

    #@21
    .line 504
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    #@24
    move-result v3

    #@25
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    #@28
    move-result v4

    #@29
    add-int/2addr v3, v4

    #@2a
    add-int/2addr v1, v3

    #@2b
    .line 506
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    #@2e
    move-result v3

    #@2f
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@32
    move-result v0

    #@33
    .line 507
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    #@36
    move-result v3

    #@37
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v1

    #@3b
    .line 509
    invoke-static {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    #@3e
    move-result p1

    #@3f
    shl-int/lit8 v0, v2, 0x10

    #@41
    .line 510
    invoke-static {v1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    #@44
    move-result p2

    #@45
    .line 509
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    #@48
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 328
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 329
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 333
    :cond_8
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    #@a
    .line 334
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 335
    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    #@13
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@15
    .line 336
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    #@17
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    #@19
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    #@0
    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 309
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    #@6
    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 311
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    #@e
    move-result v0

    #@f
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    #@11
    .line 312
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@13
    const/4 v2, -0x1

    #@14
    if-ne v0, v2, :cond_18

    #@16
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@18
    :cond_18
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    #@1a
    .line 314
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    #@1c
    if-eqz v0, :cond_21

    #@1e
    .line 315
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    #@20
    goto :goto_33

    #@21
    .line 317
    :cond_21
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@26
    move-result-object v0

    #@27
    .line 318
    instance-of v2, v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    #@29
    if-eqz v2, :cond_33

    #@2b
    .line 319
    check-cast v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    #@2d
    invoke-interface {v0}, Landroidx/viewpager2/adapter/StatefulAdapter;->saveState()Landroid/os/Parcelable;

    #@30
    move-result-object v0

    #@31
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    #@33
    :cond_33
    :goto_33
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4

    #@0
    .line 488
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, " does not support direct child views"

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
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4

    #@0
    .line 956
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 957
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@a
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 959
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    #@12
    move-result p1

    #@13
    return p1
.end method

.method public registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .registers 3

    #@0
    .line 872
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@2
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    #@5
    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .registers 3

    #@0
    .line 1215
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@5
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .registers 3

    #@0
    .line 1202
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    #@5
    return-void
.end method

.method public requestTransform()V
    .registers 6

    #@0
    .line 930
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 933
    :cond_9
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@b
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    #@e
    move-result-wide v0

    #@f
    double-to-int v2, v0

    #@10
    int-to-double v3, v2

    #@11
    sub-double/2addr v0, v3

    #@12
    double-to-float v0, v0

    #@13
    .line 936
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    #@16
    move-result v1

    #@17
    int-to-float v1, v1

    #@18
    mul-float/2addr v1, v0

    #@19
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@1c
    move-result v1

    #@1d
    .line 937
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    #@1f
    invoke-virtual {v3, v2, v0, v1}, Landroidx/viewpager2/widget/PageTransformerAdapter;->onPageScrolled(IFI)V

    #@22
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    #@0
    .line 458
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@5
    move-result-object v0

    #@6
    .line 459
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@8
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onDetachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@b
    .line 460
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@e
    .line 461
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@10
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@13
    const/4 v0, 0x0

    #@14
    .line 462
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@16
    .line 463
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    #@19
    .line 464
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@1b
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onAttachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@1e
    .line 465
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@21
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 591
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    #@4
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    #@0
    .line 603
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    .line 607
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    #@9
    return-void

    #@a
    .line 604
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@c
    const-string p2, "Cannot change current item when ViewPager2 is fake dragging"

    #@e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method setCurrentItemInternal(IZ)V
    .registers 11

    #@0
    .line 614
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_13

    #@7
    .line 617
    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@9
    const/4 v0, -0x1

    #@a
    if-eq p2, v0, :cond_12

    #@c
    .line 618
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result p1

    #@10
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    #@12
    :cond_12
    return-void

    #@13
    .line 622
    :cond_13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@16
    move-result v2

    #@17
    if-gtz v2, :cond_1a

    #@19
    return-void

    #@1a
    .line 626
    :cond_1a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result p1

    #@1e
    .line 627
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@21
    move-result v0

    #@22
    add-int/lit8 v0, v0, -0x1

    #@24
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@27
    move-result p1

    #@28
    .line 629
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@2a
    if-ne p1, v0, :cond_35

    #@2c
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@2e
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_35

    #@34
    return-void

    #@35
    .line 633
    :cond_35
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@37
    if-ne p1, v0, :cond_3c

    #@39
    if-eqz p2, :cond_3c

    #@3b
    return-void

    #@3c
    :cond_3c
    int-to-double v0, v0

    #@3d
    .line 642
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@3f
    .line 643
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@41
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetNewCurrentItem()V

    #@44
    .line 645
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@46
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_52

    #@4c
    .line 647
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@4e
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    #@51
    move-result-wide v0

    #@52
    .line 652
    :cond_52
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@54
    invoke-virtual {v2, p1, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyProgrammaticScroll(IZ)V

    #@57
    if-nez p2, :cond_5f

    #@59
    .line 654
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5b
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@5e
    return-void

    #@5f
    :cond_5f
    int-to-double v2, p1

    #@60
    sub-double v4, v2, v0

    #@62
    .line 659
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    #@65
    move-result-wide v4

    #@66
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    #@68
    cmpl-double p2, v4, v6

    #@6a
    if-lez p2, :cond_87

    #@6c
    .line 660
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6e
    cmpl-double v0, v2, v0

    #@70
    if-lez v0, :cond_75

    #@72
    add-int/lit8 v0, p1, -0x3

    #@74
    goto :goto_77

    #@75
    :cond_75
    add-int/lit8 v0, p1, 0x3

    #@77
    :goto_77
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@7a
    .line 662
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7c
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;

    #@7e
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@80
    invoke-direct {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    #@83
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    #@86
    goto :goto_8c

    #@87
    .line 664
    :cond_87
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@89
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    #@8c
    :goto_8c
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 2

    #@0
    .line 943
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    #@3
    .line 944
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@5
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetLayoutDirection()V

    #@8
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_f

    #@3
    const/4 v0, -0x1

    #@4
    if-ne p1, v0, :cond_7

    #@6
    goto :goto_f

    #@7
    .line 833
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1

    #@f
    .line 836
    :cond_f
    :goto_f
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    #@11
    .line 838
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@16
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    #@0
    .line 568
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    #@5
    .line 569
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@7
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetOrientation()V

    #@a
    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_18

    #@3
    .line 901
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@5
    if-nez v1, :cond_12

    #@7
    .line 902
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@f
    const/4 v1, 0x1

    #@10
    .line 903
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@12
    .line 905
    :cond_12
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@14
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    #@17
    goto :goto_28

    #@18
    .line 907
    :cond_18
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@1a
    if-eqz v1, :cond_28

    #@1c
    .line 908
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1e
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@20
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    #@23
    .line 909
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@25
    const/4 v0, 0x0

    #@26
    .line 910
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    #@28
    .line 916
    :cond_28
    :goto_28
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    #@2a
    invoke-virtual {v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    #@2d
    move-result-object v0

    #@2e
    if-ne p1, v0, :cond_31

    #@30
    return-void

    #@31
    .line 919
    :cond_31
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    #@33
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/PageTransformerAdapter;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    #@36
    .line 920
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    #@39
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .registers 2

    #@0
    .line 792
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    #@2
    .line 793
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    #@4
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetUserInputEnabled()V

    #@7
    return-void
.end method

.method snapToPage()V
    .registers 5

    #@0
    .line 770
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    #@2
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 774
    :cond_b
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    #@d
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@f
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x0

    #@14
    .line 776
    aget v1, v0, v1

    #@16
    const/4 v2, 0x1

    #@17
    if-nez v1, :cond_1d

    #@19
    aget v3, v0, v2

    #@1b
    if-eqz v3, :cond_24

    #@1d
    .line 777
    :cond_1d
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1f
    aget v0, v0, v2

    #@21
    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    #@24
    :cond_24
    return-void
.end method

.method public unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .registers 3

    #@0
    .line 882
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@2
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->removeOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    #@5
    return-void
.end method

.method updateCurrentItem()V
    .registers 3

    #@0
    .line 537
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    #@2
    if-eqz v0, :cond_26

    #@4
    .line 541
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_d

    #@c
    return-void

    #@d
    .line 545
    :cond_d
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@f
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@12
    move-result v0

    #@13
    .line 547
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    #@15
    if-eq v0, v1, :cond_22

    #@17
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_22

    #@1d
    .line 549
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    #@1f
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->onPageSelected(I)V

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    .line 552
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    #@25
    return-void

    #@26
    .line 538
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    const-string v1, "Design assumption violated."

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
.end method
