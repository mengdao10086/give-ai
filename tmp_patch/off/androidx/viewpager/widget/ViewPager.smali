.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;,
        Landroidx/viewpager/widget/ViewPager$LayoutParams;,
        Landroidx/viewpager/widget/ViewPager$PagerObserver;,
        Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;,
        Landroidx/viewpager/widget/ViewPager$SavedState;,
        Landroidx/viewpager/widget/ViewPager$DecorView;,
        Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/ViewPager$PageTransformer;,
        Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x10100b3

    #@7
    aput v2, v0, v1

    #@9
    .line 122
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    #@b
    .line 140
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    #@d
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$1;-><init>()V

    #@10
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@12
    .line 147
    new-instance v0, Landroidx/viewpager/widget/ViewPager$2;

    #@14
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$2;-><init>()V

    #@17
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@19
    .line 251
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    #@1b
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;-><init>()V

    #@1e
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    #@20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    .line 155
    new-instance p1, Ljava/util/ArrayList;

    #@5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@a
    .line 156
    new-instance p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@c
    invoke-direct {p1}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    #@f
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@11
    .line 158
    new-instance p1, Landroid/graphics/Rect;

    #@13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@18
    const/4 p1, -0x1

    #@19
    .line 162
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 163
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@1e
    .line 164
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@20
    const v0, -0x800001

    #@23
    .line 179
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@25
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@28
    .line 180
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@2a
    const/4 v0, 0x1

    #@2b
    .line 189
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@2d
    .line 207
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@2f
    .line 234
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@31
    const/4 p1, 0x0

    #@32
    .line 235
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    #@34
    .line 269
    new-instance v0, Landroidx/viewpager/widget/ViewPager$3;

    #@36
    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    #@39
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@3b
    .line 277
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    #@3d
    .line 392
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

    #@40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 396
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 155
    new-instance p1, Ljava/util/ArrayList;

    #@5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@a
    .line 156
    new-instance p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@c
    invoke-direct {p1}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    #@f
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@11
    .line 158
    new-instance p1, Landroid/graphics/Rect;

    #@13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@18
    const/4 p1, -0x1

    #@19
    .line 162
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    #@1b
    const/4 p2, 0x0

    #@1c
    .line 163
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@1e
    .line 164
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@20
    const p2, -0x800001

    #@23
    .line 179
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@25
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    #@28
    .line 180
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@2a
    const/4 p2, 0x1

    #@2b
    .line 189
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@2d
    .line 207
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@2f
    .line 234
    iput-boolean p2, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@31
    const/4 p1, 0x0

    #@32
    .line 235
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    #@34
    .line 269
    new-instance p2, Landroidx/viewpager/widget/ViewPager$3;

    #@36
    invoke-direct {p2, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    #@39
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@3b
    .line 277
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    #@3d
    .line 397
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

    #@40
    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V
    .registers 14

    #@0
    .line 1298
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@5
    move-result v0

    #@6
    .line 1299
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@9
    move-result v1

    #@a
    if-lez v1, :cond_12

    #@c
    .line 1300
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@e
    int-to-float v2, v2

    #@f
    int-to-float v1, v1

    #@10
    div-float/2addr v2, v1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v2, 0x0

    #@13
    :goto_13
    const/4 v1, 0x0

    #@14
    if-eqz p3, :cond_b1

    #@16
    .line 1303
    iget v3, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@18
    .line 1305
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@1a
    if-ge v3, v4, :cond_6a

    #@1c
    .line 1308
    iget v4, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@1e
    iget p3, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@20
    add-float/2addr v4, p3

    #@21
    add-float/2addr v4, v2

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    move p3, v1

    #@25
    .line 1310
    :goto_25
    iget v5, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@27
    if-gt v3, v5, :cond_b1

    #@29
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v5

    #@2f
    if-ge p3, v5, :cond_b1

    #@31
    .line 1311
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@39
    .line 1312
    :goto_39
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@3b
    if-le v3, v6, :cond_52

    #@3d
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v6

    #@43
    add-int/lit8 v6, v6, -0x1

    #@45
    if-ge p3, v6, :cond_52

    #@47
    add-int/lit8 p3, p3, 0x1

    #@49
    .line 1314
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v5

    #@4f
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@51
    goto :goto_39

    #@52
    .line 1316
    :cond_52
    :goto_52
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@54
    if-ge v3, v6, :cond_61

    #@56
    .line 1319
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@58
    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@5b
    move-result v6

    #@5c
    add-float/2addr v6, v2

    #@5d
    add-float/2addr v4, v6

    #@5e
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_52

    #@61
    .line 1322
    :cond_61
    iput v4, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@63
    .line 1323
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@65
    add-float/2addr v5, v2

    #@66
    add-float/2addr v4, v5

    #@67
    add-int/lit8 v3, v3, 0x1

    #@69
    goto :goto_25

    #@6a
    .line 1325
    :cond_6a
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@6c
    if-le v3, v4, :cond_b1

    #@6e
    .line 1326
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@73
    move-result v4

    #@74
    add-int/lit8 v4, v4, -0x1

    #@76
    .line 1328
    iget p3, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@78
    add-int/lit8 v3, v3, -0x1

    #@7a
    .line 1330
    :goto_7a
    iget v5, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@7c
    if-lt v3, v5, :cond_b1

    #@7e
    if-ltz v4, :cond_b1

    #@80
    .line 1331
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@85
    move-result-object v5

    #@86
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@88
    .line 1332
    :goto_88
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@8a
    if-ge v3, v6, :cond_99

    #@8c
    if-lez v4, :cond_99

    #@8e
    add-int/lit8 v4, v4, -0x1

    #@90
    .line 1334
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@92
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v5

    #@96
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@98
    goto :goto_88

    #@99
    .line 1336
    :cond_99
    :goto_99
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@9b
    if-le v3, v6, :cond_a8

    #@9d
    .line 1339
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@9f
    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@a2
    move-result v6

    #@a3
    add-float/2addr v6, v2

    #@a4
    sub-float/2addr p3, v6

    #@a5
    add-int/lit8 v3, v3, -0x1

    #@a7
    goto :goto_99

    #@a8
    .line 1342
    :cond_a8
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@aa
    add-float/2addr v6, v2

    #@ab
    sub-float/2addr p3, v6

    #@ac
    .line 1343
    iput p3, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@ae
    add-int/lit8 v3, v3, -0x1

    #@b0
    goto :goto_7a

    #@b1
    .line 1349
    :cond_b1
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@b6
    move-result p3

    #@b7
    .line 1350
    iget v3, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@b9
    .line 1351
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@bb
    add-int/lit8 v4, v4, -0x1

    #@bd
    .line 1352
    iget v5, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@bf
    if-nez v5, :cond_c4

    #@c1
    iget v5, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@c3
    goto :goto_c7

    #@c4
    :cond_c4
    const v5, -0x800001

    #@c7
    :goto_c7
    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@c9
    .line 1353
    iget v5, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@cb
    add-int/lit8 v0, v0, -0x1

    #@cd
    const/high16 v6, 0x3f800000    # 1.0f

    #@cf
    if-ne v5, v0, :cond_d8

    #@d1
    iget v5, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@d3
    iget v7, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@d5
    add-float/2addr v5, v7

    #@d6
    sub-float/2addr v5, v6

    #@d7
    goto :goto_db

    #@d8
    :cond_d8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    #@db
    :goto_db
    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@dd
    add-int/lit8 v5, p2, -0x1

    #@df
    :goto_df
    if-ltz v5, :cond_10a

    #@e1
    .line 1357
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e3
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e6
    move-result-object v7

    #@e7
    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@e9
    .line 1358
    :goto_e9
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@eb
    if-le v4, v8, :cond_f9

    #@ed
    .line 1359
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@ef
    add-int/lit8 v9, v4, -0x1

    #@f1
    invoke-virtual {v8, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@f4
    move-result v4

    #@f5
    add-float/2addr v4, v2

    #@f6
    sub-float/2addr v3, v4

    #@f7
    move v4, v9

    #@f8
    goto :goto_e9

    #@f9
    .line 1361
    :cond_f9
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@fb
    add-float/2addr v8, v2

    #@fc
    sub-float/2addr v3, v8

    #@fd
    .line 1362
    iput v3, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@ff
    .line 1363
    iget v7, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@101
    if-nez v7, :cond_105

    #@103
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@105
    :cond_105
    add-int/lit8 v5, v5, -0x1

    #@107
    add-int/lit8 v4, v4, -0x1

    #@109
    goto :goto_df

    #@10a
    .line 1365
    :cond_10a
    iget v3, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@10c
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@10e
    add-float/2addr v3, v4

    #@10f
    add-float/2addr v3, v2

    #@110
    .line 1366
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@112
    add-int/lit8 p1, p1, 0x1

    #@114
    add-int/lit8 p2, p2, 0x1

    #@116
    :goto_116
    if-ge p2, p3, :cond_145

    #@118
    .line 1369
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@11a
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11d
    move-result-object v4

    #@11e
    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@120
    .line 1370
    :goto_120
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@122
    if-ge p1, v5, :cond_130

    #@124
    .line 1371
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@126
    add-int/lit8 v7, p1, 0x1

    #@128
    invoke-virtual {v5, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@12b
    move-result p1

    #@12c
    add-float/2addr p1, v2

    #@12d
    add-float/2addr v3, p1

    #@12e
    move p1, v7

    #@12f
    goto :goto_120

    #@130
    .line 1373
    :cond_130
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@132
    if-ne v5, v0, :cond_13a

    #@134
    .line 1374
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@136
    add-float/2addr v5, v3

    #@137
    sub-float/2addr v5, v6

    #@138
    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@13a
    .line 1376
    :cond_13a
    iput v3, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@13c
    .line 1377
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@13e
    add-float/2addr v4, v2

    #@13f
    add-float/2addr v3, v4

    #@140
    add-int/lit8 p2, p2, 0x1

    #@142
    add-int/lit8 p1, p1, 0x1

    #@144
    goto :goto_116

    #@145
    .line 1380
    :cond_145
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    #@147
    return-void
.end method

.method private completeScroll(Z)V
    .registers 9

    #@0
    .line 1974
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    if-ne v0, v1, :cond_9

    #@7
    move v0, v2

    #@8
    goto :goto_a

    #@9
    :cond_9
    move v0, v3

    #@a
    :goto_a
    if-eqz v0, :cond_3d

    #@c
    .line 1977
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@f
    .line 1978
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@11
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@14
    move-result v1

    #@15
    xor-int/2addr v1, v2

    #@16
    if-eqz v1, :cond_3d

    #@18
    .line 1980
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1a
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    #@1d
    .line 1981
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@20
    move-result v1

    #@21
    .line 1982
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    #@24
    move-result v4

    #@25
    .line 1983
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@27
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    #@2a
    move-result v5

    #@2b
    .line 1984
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@2d
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    #@30
    move-result v6

    #@31
    if-ne v1, v5, :cond_35

    #@33
    if-eq v4, v6, :cond_3d

    #@35
    .line 1986
    :cond_35
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@38
    if-eq v5, v1, :cond_3d

    #@3a
    .line 1988
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    #@3d
    .line 1993
    :cond_3d
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@3f
    move v1, v3

    #@40
    .line 1994
    :goto_40
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v4

    #@46
    if-ge v1, v4, :cond_5a

    #@48
    .line 1995
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v4

    #@4e
    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@50
    .line 1996
    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    #@52
    if-eqz v5, :cond_57

    #@54
    .line 1998
    iput-boolean v3, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    #@56
    move v0, v2

    #@57
    :cond_57
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_40

    #@5a
    :cond_5a
    if-eqz v0, :cond_69

    #@5c
    if-eqz p1, :cond_64

    #@5e
    .line 2003
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@60
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@63
    goto :goto_69

    #@64
    .line 2005
    :cond_64
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@66
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@69
    :cond_69
    :goto_69
    return-void
.end method

.method private determineTargetPage(IFII)I
    .registers 6

    #@0
    .line 2406
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result p4

    #@4
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    #@6
    if-le p4, v0, :cond_16

    #@8
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@b
    move-result p4

    #@c
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    #@e
    if-le p4, v0, :cond_16

    #@10
    if-lez p3, :cond_13

    #@12
    goto :goto_24

    #@13
    :cond_13
    add-int/lit8 p1, p1, 0x1

    #@15
    goto :goto_24

    #@16
    .line 2409
    :cond_16
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@18
    if-lt p1, p3, :cond_1e

    #@1a
    const p3, 0x3ecccccd    # 0.4f

    #@1d
    goto :goto_21

    #@1e
    :cond_1e
    const p3, 0x3f19999a    # 0.6f

    #@21
    :goto_21
    add-float/2addr p2, p3

    #@22
    float-to-int p2, p2

    #@23
    add-int/2addr p1, p2

    #@24
    .line 2413
    :goto_24
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@26
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@29
    move-result p2

    #@2a
    if-lez p2, :cond_4f

    #@2c
    .line 2414
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2e
    const/4 p3, 0x0

    #@2f
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object p2

    #@33
    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@35
    .line 2415
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@37
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result p4

    #@3b
    add-int/lit8 p4, p4, -0x1

    #@3d
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object p3

    #@41
    check-cast p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@43
    .line 2418
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@45
    iget p3, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@47
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    #@4a
    move-result p1

    #@4b
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result p1

    #@4f
    :cond_4f
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7

    #@0
    .line 1923
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1924
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@7
    .line 1926
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@9
    if-eqz v0, :cond_22

    #@b
    .line 1927
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_10
    if-ge v1, v0, :cond_22

    #@12
    .line 1928
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@1a
    if-eqz v2, :cond_1f

    #@1c
    .line 1930
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_10

    #@22
    .line 1934
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@24
    if-eqz v0, :cond_29

    #@26
    .line 1935
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@29
    :cond_29
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5

    #@0
    .line 1940
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1941
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@7
    .line 1943
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@9
    if-eqz v0, :cond_22

    #@b
    .line 1944
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_10
    if-ge v1, v0, :cond_22

    #@12
    .line 1945
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@1a
    if-eqz v2, :cond_1f

    #@1c
    .line 1947
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_10

    #@22
    .line 1951
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@24
    if-eqz v0, :cond_29

    #@26
    .line 1952
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@29
    :cond_29
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5

    #@0
    .line 1957
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1958
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@7
    .line 1960
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@9
    if-eqz v0, :cond_22

    #@b
    .line 1961
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_10
    if-ge v1, v0, :cond_22

    #@12
    .line 1962
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@1a
    if-eqz v2, :cond_1f

    #@1c
    .line 1964
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_10

    #@22
    .line 1968
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@24
    if-eqz v0, :cond_29

    #@26
    .line 1969
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@29
    :cond_29
    return-void
.end method

.method private enableLayers(Z)V
    .registers 8

    #@0
    .line 2015
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_19

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 2017
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v3, v1

    #@e
    .line 2019
    :goto_e
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_6

    #@19
    :cond_19
    return-void
.end method

.method private endDrag()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 2659
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@3
    .line 2660
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    #@5
    .line 2662
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7
    if-eqz v0, :cond_f

    #@9
    .line 2663
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@c
    const/4 v0, 0x0

    #@d
    .line 2664
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    :cond_f
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    .line 2860
    new-instance p1, Landroid/graphics/Rect;

    #@4
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@7
    :cond_7
    if-nez p2, :cond_e

    #@9
    const/4 p2, 0x0

    #@a
    .line 2863
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    return-object p1

    #@e
    .line 2866
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@11
    move-result v0

    #@12
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@14
    .line 2867
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@17
    move-result v0

    #@18
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@1a
    .line 2868
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@1d
    move-result v0

    #@1e
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@20
    .line 2869
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@23
    move-result v0

    #@24
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@26
    .line 2871
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@29
    move-result-object p2

    #@2a
    .line 2872
    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    #@2c
    if-eqz v0, :cond_5b

    #@2e
    if-eq p2, p0, :cond_5b

    #@30
    .line 2873
    check-cast p2, Landroid/view/ViewGroup;

    #@32
    .line 2874
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@34
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    #@37
    move-result v1

    #@38
    add-int/2addr v0, v1

    #@39
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@3b
    .line 2875
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@3d
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    #@40
    move-result v1

    #@41
    add-int/2addr v0, v1

    #@42
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@44
    .line 2876
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@46
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    #@49
    move-result v1

    #@4a
    add-int/2addr v0, v1

    #@4b
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@4d
    .line 2877
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@4f
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    #@52
    move-result v1

    #@53
    add-int/2addr v0, v1

    #@54
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@56
    .line 2879
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@59
    move-result-object p2

    #@5a
    goto :goto_2a

    #@5b
    :cond_5b
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    #@0
    .line 600
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 14

    #@0
    .line 2363
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-lez v0, :cond_f

    #@7
    .line 2364
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@a
    move-result v2

    #@b
    int-to-float v2, v2

    #@c
    int-to-float v3, v0

    #@d
    div-float/2addr v2, v3

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v2, v1

    #@10
    :goto_10
    if-lez v0, :cond_18

    #@12
    .line 2365
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@14
    int-to-float v3, v3

    #@15
    int-to-float v0, v0

    #@16
    div-float/2addr v3, v0

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v3, v1

    #@19
    :goto_19
    const/4 v0, 0x0

    #@1a
    const/4 v4, -0x1

    #@1b
    const/4 v5, 0x1

    #@1c
    const/4 v6, 0x0

    #@1d
    move v8, v0

    #@1e
    move v9, v5

    #@1f
    move-object v7, v6

    #@20
    move v6, v4

    #@21
    move v4, v1

    #@22
    .line 2372
    :goto_22
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v10

    #@28
    if-ge v8, v10, :cond_77

    #@2a
    .line 2373
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v10

    #@30
    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@32
    if-nez v9, :cond_4d

    #@34
    .line 2375
    iget v11, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@36
    add-int/2addr v6, v5

    #@37
    if-eq v11, v6, :cond_4d

    #@39
    .line 2377
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@3b
    add-float/2addr v1, v4

    #@3c
    add-float/2addr v1, v3

    #@3d
    .line 2378
    iput v1, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@3f
    .line 2379
    iput v6, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@41
    .line 2380
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@43
    iget v4, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@45
    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@48
    move-result v1

    #@49
    iput v1, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@4b
    add-int/lit8 v8, v8, -0x1

    #@4d
    :cond_4d
    move-object v6, v10

    #@4e
    .line 2383
    iget v1, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@50
    .line 2386
    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@52
    add-float/2addr v4, v1

    #@53
    add-float/2addr v4, v3

    #@54
    if-nez v9, :cond_5c

    #@56
    cmpl-float v9, v2, v1

    #@58
    if-ltz v9, :cond_5b

    #@5a
    goto :goto_5c

    #@5b
    :cond_5b
    return-object v7

    #@5c
    :cond_5c
    :goto_5c
    cmpg-float v4, v2, v4

    #@5e
    if-ltz v4, :cond_76

    #@60
    .line 2388
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v4

    #@66
    sub-int/2addr v4, v5

    #@67
    if-ne v8, v4, :cond_6a

    #@69
    goto :goto_76

    #@6a
    .line 2395
    :cond_6a
    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@6c
    .line 2397
    iget v7, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@6e
    add-int/lit8 v8, v8, 0x1

    #@70
    move v9, v0

    #@71
    move-object v12, v6

    #@72
    move v6, v4

    #@73
    move v4, v7

    #@74
    move-object v7, v12

    #@75
    goto :goto_22

    #@76
    :cond_76
    :goto_76
    return-object v6

    #@77
    :cond_77
    return-object v7
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 1498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    .line 1499
    const-class v0, Landroidx/viewpager/widget/ViewPager$DecorView;

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@9
    move-result-object p0

    #@a
    if-eqz p0, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

.method private isGutterDrag(FF)Z
    .registers 6

    #@0
    .line 2011
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    #@2
    int-to-float v0, v0

    #@3
    cmpg-float v0, p1, v0

    #@5
    const/4 v1, 0x0

    #@6
    if-gez v0, :cond_c

    #@8
    cmpl-float v0, p2, v1

    #@a
    if-gtz v0, :cond_1c

    #@c
    :cond_c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    #@f
    move-result v0

    #@10
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    #@12
    sub-int/2addr v0, v2

    #@13
    int-to-float v0, v0

    #@14
    cmpl-float p1, p1, v0

    #@16
    if-lez p1, :cond_1e

    #@18
    cmpg-float p1, p2, v1

    #@1a
    if-gez p1, :cond_1e

    #@1c
    :cond_1c
    const/4 p1, 0x1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 p1, 0x0

    #@1f
    :goto_1f
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    #@0
    .line 2644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3
    move-result v0

    #@4
    .line 2645
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@7
    move-result v1

    #@8
    .line 2646
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@a
    if-ne v1, v2, :cond_24

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
    .line 2650
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@17
    .line 2651
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1a
    move-result p1

    #@1b
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@1d
    .line 2652
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1f
    if-eqz p1, :cond_24

    #@21
    .line 2653
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    #@24
    :cond_24
    return-void
.end method

.method private pageScrolled(I)Z
    .registers 9

    #@0
    .line 1818
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const-string v1, "onPageScrolled did not call superclass implementation"

    #@8
    const/4 v2, 0x0

    #@9
    if-nez v0, :cond_21

    #@b
    .line 1819
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@d
    if-eqz p1, :cond_10

    #@f
    return v2

    #@10
    .line 1824
    :cond_10
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    #@12
    const/4 p1, 0x0

    #@13
    .line 1825
    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    #@16
    .line 1826
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    #@18
    if-eqz p1, :cond_1b

    #@1a
    return v2

    #@1b
    .line 1827
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1d
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw p1

    #@21
    .line 1832
    :cond_21
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@24
    move-result-object v0

    #@25
    .line 1833
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@28
    move-result v3

    #@29
    .line 1834
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@2b
    add-int v5, v3, v4

    #@2d
    int-to-float v4, v4

    #@2e
    int-to-float v3, v3

    #@2f
    div-float/2addr v4, v3

    #@30
    .line 1836
    iget v6, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@32
    int-to-float p1, p1

    #@33
    div-float/2addr p1, v3

    #@34
    .line 1837
    iget v3, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@36
    sub-float/2addr p1, v3

    #@37
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@39
    add-float/2addr v0, v4

    #@3a
    div-float/2addr p1, v0

    #@3b
    int-to-float v0, v5

    #@3c
    mul-float/2addr v0, p1

    #@3d
    float-to-int v0, v0

    #@3e
    .line 1841
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    #@40
    .line 1842
    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    #@43
    .line 1843
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    #@45
    if-eqz p1, :cond_49

    #@47
    const/4 p1, 0x1

    #@48
    return p1

    #@49
    .line 1844
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    #@4b
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw p1
.end method

.method private performDrag(F)Z
    .registers 11

    #@0
    .line 2312
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@2
    sub-float/2addr v0, p1

    #@3
    .line 2313
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@5
    .line 2315
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@8
    move-result p1

    #@9
    int-to-float p1, p1

    #@a
    add-float/2addr p1, v0

    #@b
    .line 2317
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@e
    move-result v0

    #@f
    int-to-float v0, v0

    #@10
    .line 2319
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@12
    mul-float/2addr v1, v0

    #@13
    .line 2320
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@15
    mul-float/2addr v2, v0

    #@16
    .line 2324
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@18
    const/4 v4, 0x0

    #@19
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@1f
    .line 2325
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v6

    #@25
    const/4 v7, 0x1

    #@26
    sub-int/2addr v6, v7

    #@27
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@2d
    .line 2326
    iget v6, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@2f
    if-eqz v6, :cond_36

    #@31
    .line 2328
    iget v1, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@33
    mul-float/2addr v1, v0

    #@34
    move v3, v4

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v3, v7

    #@37
    .line 2330
    :goto_37
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@39
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@3b
    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@3e
    move-result v8

    #@3f
    sub-int/2addr v8, v7

    #@40
    if-eq v6, v8, :cond_47

    #@42
    .line 2332
    iget v2, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@44
    mul-float/2addr v2, v0

    #@45
    move v5, v4

    #@46
    goto :goto_48

    #@47
    :cond_47
    move v5, v7

    #@48
    :goto_48
    cmpg-float v6, p1, v1

    #@4a
    if-gez v6, :cond_5d

    #@4c
    if-eqz v3, :cond_5b

    #@4e
    sub-float p1, v1, p1

    #@50
    .line 2338
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@55
    move-result p1

    #@56
    div-float/2addr p1, v0

    #@57
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    #@5a
    move v4, v7

    #@5b
    :cond_5b
    move p1, v1

    #@5c
    goto :goto_70

    #@5d
    :cond_5d
    cmpl-float v1, p1, v2

    #@5f
    if-lez v1, :cond_70

    #@61
    if-eqz v5, :cond_6f

    #@63
    sub-float/2addr p1, v2

    #@64
    .line 2345
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@66
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@69
    move-result p1

    #@6a
    div-float/2addr p1, v0

    #@6b
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    #@6e
    move v4, v7

    #@6f
    :cond_6f
    move p1, v2

    #@70
    .line 2351
    :cond_70
    :goto_70
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@72
    float-to-int v1, p1

    #@73
    int-to-float v2, v1

    #@74
    sub-float/2addr p1, v2

    #@75
    add-float/2addr v0, p1

    #@76
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@78
    .line 2352
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    #@7b
    move-result p1

    #@7c
    invoke-virtual {p0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@7f
    .line 2353
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    #@82
    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 6

    #@0
    if-lez p2, :cond_49

    #@2
    .line 1655
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_49

    #@a
    .line 1656
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@c
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_21

    #@12
    .line 1657
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@14
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    #@17
    move-result p2

    #@18
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@1b
    move-result p3

    #@1c
    mul-int/2addr p2, p3

    #@1d
    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    #@20
    goto :goto_79

    #@21
    .line 1659
    :cond_21
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@24
    move-result v0

    #@25
    sub-int/2addr p1, v0

    #@26
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@29
    move-result v0

    #@2a
    sub-int/2addr p1, v0

    #@2b
    add-int/2addr p1, p3

    #@2c
    .line 1660
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@2f
    move-result p3

    #@30
    sub-int/2addr p2, p3

    #@31
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@34
    move-result p3

    #@35
    sub-int/2addr p2, p3

    #@36
    add-int/2addr p2, p4

    #@37
    .line 1662
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@3a
    move-result p3

    #@3b
    int-to-float p3, p3

    #@3c
    int-to-float p2, p2

    #@3d
    div-float/2addr p3, p2

    #@3e
    int-to-float p1, p1

    #@3f
    mul-float/2addr p3, p1

    #@40
    float-to-int p1, p3

    #@41
    .line 1666
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    #@44
    move-result p2

    #@45
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@48
    goto :goto_79

    #@49
    .line 1669
    :cond_49
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@4b
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@4e
    move-result-object p2

    #@4f
    if-eqz p2, :cond_5a

    #@51
    .line 1670
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@53
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@55
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    #@58
    move-result p2

    #@59
    goto :goto_5b

    #@5a
    :cond_5a
    const/4 p2, 0x0

    #@5b
    .line 1672
    :goto_5b
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@5e
    move-result p3

    #@5f
    sub-int/2addr p1, p3

    #@60
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@63
    move-result p3

    #@64
    sub-int/2addr p1, p3

    #@65
    int-to-float p1, p1

    #@66
    mul-float/2addr p2, p1

    #@67
    float-to-int p1, p2

    #@68
    .line 1673
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@6b
    move-result p2

    #@6c
    if-eq p1, p2, :cond_79

    #@6e
    const/4 p2, 0x0

    #@6f
    .line 1674
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    #@72
    .line 1675
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    #@75
    move-result p2

    #@76
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@79
    :cond_79
    :goto_79
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 555
    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_1d

    #@7
    .line 556
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 557
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@11
    .line 558
    iget-boolean v1, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@13
    if-nez v1, :cond_1a

    #@15
    .line 559
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->removeViewAt(I)V

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_1

    #@1d
    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3

    #@0
    .line 2303
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 2305
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@9
    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 2294
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@3
    .line 2295
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    #@6
    .line 2296
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@8
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@b
    .line 2297
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@d
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@10
    .line 2298
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@12
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_23

    #@18
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@1a
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_21

    #@20
    goto :goto_23

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    goto :goto_24

    #@23
    :cond_23
    :goto_23
    const/4 v0, 0x1

    #@24
    :goto_24
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .registers 10

    #@0
    .line 676
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 679
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@a
    move-result v2

    #@b
    int-to-float v2, v2

    #@c
    .line 680
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@e
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@10
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@12
    .line 681
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    #@15
    move-result v0

    #@16
    .line 680
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    #@19
    move-result v0

    #@1a
    mul-float/2addr v2, v0

    #@1b
    float-to-int v0, v2

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v0, v1

    #@1e
    :goto_1e
    if-eqz p2, :cond_29

    #@20
    .line 684
    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    #@23
    if-eqz p4, :cond_37

    #@25
    .line 686
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    #@28
    goto :goto_37

    #@29
    :cond_29
    if-eqz p4, :cond_2e

    #@2b
    .line 690
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    #@2e
    .line 692
    :cond_2e
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    #@31
    .line 693
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@34
    .line 694
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    #@37
    :cond_37
    :goto_37
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    #@0
    .line 2669
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    #@2
    if-eq v0, p1, :cond_6

    #@4
    .line 2670
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    #@6
    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    #@0
    .line 1282
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    #@2
    if-eqz v0, :cond_2d

    #@4
    .line 1283
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_10

    #@8
    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@f
    goto :goto_13

    #@10
    .line 1286
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@13
    .line 1288
    :goto_13
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@16
    move-result v0

    #@17
    const/4 v1, 0x0

    #@18
    :goto_18
    if-ge v1, v0, :cond_26

    #@1a
    .line 1290
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v2

    #@1e
    .line 1291
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_18

    #@26
    .line 1293
    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@28
    sget-object v1, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    #@2a
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2d
    :cond_2d
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 2905
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 2907
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDescendantFocusability()I

    #@7
    move-result v1

    #@8
    const/high16 v2, 0x60000

    #@a
    if-eq v1, v2, :cond_2f

    #@c
    const/4 v2, 0x0

    #@d
    .line 2910
    :goto_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@10
    move-result v3

    #@11
    if-ge v2, v3, :cond_2f

    #@13
    .line 2911
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v3

    #@17
    .line 2912
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_2c

    #@1d
    .line 2913
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@20
    move-result-object v4

    #@21
    if-eqz v4, :cond_2c

    #@23
    .line 2914
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@25
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@27
    if-ne v4, v5, :cond_2c

    #@29
    .line 2915
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@2c
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_d

    #@2f
    :cond_2f
    const/high16 p2, 0x40000

    #@31
    if-ne v1, p2, :cond_39

    #@33
    .line 2926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@36
    move-result p2

    #@37
    if-ne v0, p2, :cond_56

    #@39
    .line 2929
    :cond_39
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusable()Z

    #@3c
    move-result p2

    #@3d
    if-nez p2, :cond_40

    #@3f
    return-void

    #@40
    :cond_40
    const/4 p2, 0x1

    #@41
    and-int/2addr p3, p2

    #@42
    if-ne p3, p2, :cond_51

    #@44
    .line 2933
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isInTouchMode()Z

    #@47
    move-result p2

    #@48
    if-eqz p2, :cond_51

    #@4a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusableInTouchMode()Z

    #@4d
    move-result p2

    #@4e
    if-nez p2, :cond_51

    #@50
    return-void

    #@51
    :cond_51
    if-eqz p1, :cond_56

    #@53
    .line 2937
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    :cond_56
    return-void
.end method

.method addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 5

    #@0
    .line 1008
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@2
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    #@5
    .line 1009
    iput p1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@7
    .line 1010
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@9
    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@f
    .line 1011
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@11
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@14
    move-result p1

    #@15
    iput p1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@17
    if-ltz p2, :cond_28

    #@19
    .line 1012
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result p1

    #@1f
    if-lt p2, p1, :cond_22

    #@21
    goto :goto_28

    #@22
    .line 1015
    :cond_22
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@24
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@27
    goto :goto_2d

    #@28
    .line 1013
    :cond_28
    :goto_28
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    :goto_2d
    return-object v0
.end method

.method public addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 3

    #@0
    .line 581
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 582
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    #@b
    .line 584
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    #@0
    .line 723
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 724
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@b
    .line 726
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 2950
    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_23

    #@7
    .line 2951
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 2952
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_20

    #@11
    .line 2953
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@14
    move-result-object v2

    #@15
    if-eqz v2, :cond_20

    #@17
    .line 2954
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@19
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@1b
    if-ne v2, v3, :cond_20

    #@1d
    .line 2955
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@20
    :cond_20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_1

    #@23
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    #@0
    .line 1472
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    .line 1473
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p3

    #@a
    .line 1475
    :cond_a
    move-object v0, p3

    #@b
    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@d
    .line 1477
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@f
    invoke-static {p1}, Landroidx/viewpager/widget/ViewPager;->isDecorView(Landroid/view/View;)Z

    #@12
    move-result v2

    #@13
    or-int/2addr v1, v2

    #@14
    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@16
    .line 1478
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    #@18
    if-eqz v1, :cond_30

    #@1a
    if-eqz v0, :cond_29

    #@1c
    .line 1479
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@1e
    if-nez v1, :cond_21

    #@20
    goto :goto_29

    #@21
    .line 1480
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    #@23
    const-string p2, "Cannot add pager decor view during layout"

    #@25
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw p1

    #@29
    :cond_29
    :goto_29
    const/4 v1, 0x1

    #@2a
    .line 1482
    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    #@2c
    .line 1483
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@2f
    goto :goto_33

    #@30
    .line 1485
    :cond_30
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@33
    :goto_33
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 9

    #@0
    .line 2793
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    if-ne v0, p0, :cond_b

    #@9
    :goto_9
    move-object v0, v3

    #@a
    goto :goto_68

    #@b
    :cond_b
    if-eqz v0, :cond_68

    #@d
    .line 2798
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@10
    move-result-object v4

    #@11
    :goto_11
    instance-of v5, v4, Landroid/view/ViewGroup;

    #@13
    if-eqz v5, :cond_1e

    #@15
    if-ne v4, p0, :cond_19

    #@17
    move v4, v1

    #@18
    goto :goto_1f

    #@19
    .line 2799
    :cond_19
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@1c
    move-result-object v4

    #@1d
    goto :goto_11

    #@1e
    :cond_1e
    move v4, v2

    #@1f
    :goto_1f
    if-nez v4, :cond_68

    #@21
    .line 2807
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    .line 2808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 2809
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@34
    move-result-object v0

    #@35
    :goto_35
    instance-of v5, v0, Landroid/view/ViewGroup;

    #@37
    if-eqz v5, :cond_4f

    #@39
    const-string v5, " => "

    #@3b
    .line 2811
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 2810
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@4d
    move-result-object v0

    #@4e
    goto :goto_35

    #@4f
    .line 2813
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    #@53
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    .line 2814
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    const-string v4, "ViewPager"

    #@64
    .line 2813
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_9

    #@68
    .line 2821
    :cond_68
    :goto_68
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@6f
    move-result-object v3

    #@70
    const/16 v4, 0x42

    #@72
    const/16 v5, 0x11

    #@74
    if-eqz v3, :cond_b9

    #@76
    if-eq v3, v0, :cond_b9

    #@78
    if-ne p1, v5, :cond_99

    #@7a
    .line 2827
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@7c
    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@7f
    move-result-object v1

    #@80
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@82
    .line 2828
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@84
    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@87
    move-result-object v2

    #@88
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@8a
    if-eqz v0, :cond_93

    #@8c
    if-lt v1, v2, :cond_93

    #@8e
    .line 2830
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    #@91
    move-result v0

    #@92
    goto :goto_97

    #@93
    .line 2832
    :cond_93
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    #@96
    move-result v0

    #@97
    :goto_97
    move v2, v0

    #@98
    goto :goto_cc

    #@99
    :cond_99
    if-ne p1, v4, :cond_cc

    #@9b
    .line 2837
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@9d
    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@a0
    move-result-object v1

    #@a1
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@a3
    .line 2838
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@a5
    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@a8
    move-result-object v2

    #@a9
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@ab
    if-eqz v0, :cond_b4

    #@ad
    if-gt v1, v2, :cond_b4

    #@af
    .line 2840
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    #@b2
    move-result v0

    #@b3
    goto :goto_97

    #@b4
    .line 2842
    :cond_b4
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    #@b7
    move-result v0

    #@b8
    goto :goto_97

    #@b9
    :cond_b9
    if-eq p1, v5, :cond_c8

    #@bb
    if-ne p1, v1, :cond_be

    #@bd
    goto :goto_c8

    #@be
    :cond_be
    if-eq p1, v4, :cond_c3

    #@c0
    const/4 v0, 0x2

    #@c1
    if-ne p1, v0, :cond_cc

    #@c3
    .line 2850
    :cond_c3
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    #@c6
    move-result v2

    #@c7
    goto :goto_cc

    #@c8
    .line 2847
    :cond_c8
    :goto_c8
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    #@cb
    move-result v2

    #@cc
    :cond_cc
    :goto_cc
    if-eqz v2, :cond_d5

    #@ce
    .line 2853
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@d1
    move-result p1

    #@d2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->playSoundEffect(I)V

    #@d5
    :cond_d5
    return v2
.end method

.method public beginFakeDrag()Z
    .registers 13

    #@0
    .line 2528
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x1

    #@7
    .line 2531
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    #@9
    .line 2532
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    #@c
    const/4 v1, 0x0

    #@d
    .line 2533
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@f
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    #@11
    .line 2534
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@13
    if-nez v1, :cond_1c

    #@15
    .line 2535
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    goto :goto_1f

    #@1c
    .line 2537
    :cond_1c
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    #@1f
    .line 2539
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@22
    move-result-wide v10

    #@23
    const/4 v6, 0x0

    #@24
    const/4 v7, 0x0

    #@25
    const/4 v8, 0x0

    #@26
    const/4 v9, 0x0

    #@27
    move-wide v2, v10

    #@28
    move-wide v4, v10

    #@29
    .line 2540
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@2c
    move-result-object v1

    #@2d
    .line 2541
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2f
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@32
    .line 2542
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@35
    .line 2543
    iput-wide v10, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    #@37
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 18

    #@0
    move-object v0, p1

    #@1
    .line 2719
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v1, :cond_52

    #@6
    .line 2720
    move-object v1, v0

    #@7
    check-cast v1, Landroid/view/ViewGroup;

    #@9
    .line 2721
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@c
    move-result v3

    #@d
    .line 2722
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@10
    move-result v4

    #@11
    .line 2723
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@14
    move-result v5

    #@15
    sub-int/2addr v5, v2

    #@16
    :goto_16
    if-ltz v5, :cond_52

    #@18
    .line 2728
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v7

    #@1c
    add-int v6, p4, v3

    #@1e
    .line 2729
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@21
    move-result v8

    #@22
    if-lt v6, v8, :cond_4f

    #@24
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@27
    move-result v8

    #@28
    if-ge v6, v8, :cond_4f

    #@2a
    add-int v8, p5, v4

    #@2c
    .line 2730
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@2f
    move-result v9

    #@30
    if-lt v8, v9, :cond_4f

    #@32
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@35
    move-result v9

    #@36
    if-ge v8, v9, :cond_4f

    #@38
    const/4 v9, 0x1

    #@39
    .line 2731
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@3c
    move-result v10

    #@3d
    sub-int v10, v6, v10

    #@3f
    .line 2732
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@42
    move-result v6

    #@43
    sub-int v11, v8, v6

    #@45
    move-object v6, p0

    #@46
    move v8, v9

    #@47
    move v9, p3

    #@48
    .line 2731
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_4f

    #@4e
    return v2

    #@4f
    :cond_4f
    add-int/lit8 v5, v5, -0x1

    #@51
    goto :goto_16

    #@52
    :cond_52
    if-eqz p2, :cond_5d

    #@54
    move v1, p3

    #@55
    neg-int v1, v1

    #@56
    .line 2738
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_5d

    #@5c
    goto :goto_5e

    #@5d
    :cond_5d
    const/4 v2, 0x0

    #@5e
    :goto_5e
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 6

    #@0
    .line 2692
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2696
    :cond_6
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@9
    move-result v0

    #@a
    .line 2697
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x1

    #@f
    if-gez p1, :cond_1a

    #@11
    int-to-float p1, v0

    #@12
    .line 2699
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@14
    mul-float/2addr p1, v0

    #@15
    float-to-int p1, p1

    #@16
    if-le v2, p1, :cond_19

    #@18
    move v1, v3

    #@19
    :cond_19
    return v1

    #@1a
    :cond_1a
    if-lez p1, :cond_24

    #@1c
    int-to-float p1, v0

    #@1d
    .line 2701
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@1f
    mul-float/2addr p1, v0

    #@20
    float-to-int p1, p1

    #@21
    if-ge v2, p1, :cond_24

    #@23
    move v1, v3

    #@24
    :cond_24
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    .line 3029
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method public clearOnPageChangeListeners()V
    .registers 2

    #@0
    .line 745
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 746
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@7
    :cond_7
    return-void
.end method

.method public computeScroll()V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 1793
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    #@3
    .line 1794
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@5
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_41

    #@b
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@d
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_41

    #@13
    .line 1795
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@16
    move-result v0

    #@17
    .line 1796
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    #@1a
    move-result v1

    #@1b
    .line 1797
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1d
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    #@20
    move-result v2

    #@21
    .line 1798
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@23
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    #@26
    move-result v3

    #@27
    if-ne v0, v2, :cond_2b

    #@29
    if-eq v1, v3, :cond_3d

    #@2b
    .line 1801
    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@2e
    .line 1802
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3d

    #@34
    .line 1803
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@36
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@39
    const/4 v0, 0x0

    #@3a
    .line 1804
    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@3d
    .line 1809
    :cond_3d
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@40
    return-void

    #@41
    .line 1814
    :cond_41
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    #@44
    return-void
.end method

.method dataSetChanged()V
    .registers 11

    #@0
    .line 1023
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@5
    move-result v0

    #@6
    .line 1024
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    #@8
    .line 1025
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@10
    mul-int/lit8 v2, v2, 0x2

    #@12
    const/4 v3, 0x1

    #@13
    add-int/2addr v2, v3

    #@14
    const/4 v4, 0x0

    #@15
    if-ge v1, v2, :cond_21

    #@17
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@19
    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v1

    #@1d
    if-ge v1, v0, :cond_21

    #@1f
    move v1, v3

    #@20
    goto :goto_22

    #@21
    :cond_21
    move v1, v4

    #@22
    .line 1027
    :goto_22
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@24
    move v5, v4

    #@25
    move v6, v5

    #@26
    .line 1030
    :goto_26
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v7

    #@2c
    if-ge v5, v7, :cond_82

    #@2e
    .line 1031
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v7

    #@34
    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@36
    .line 1032
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@38
    iget-object v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@3a
    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    #@3d
    move-result v8

    #@3e
    const/4 v9, -0x1

    #@3f
    if-ne v8, v9, :cond_42

    #@41
    goto :goto_80

    #@42
    :cond_42
    const/4 v9, -0x2

    #@43
    if-ne v8, v9, :cond_72

    #@45
    .line 1039
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4a
    add-int/lit8 v5, v5, -0x1

    #@4c
    if-nez v6, :cond_54

    #@4e
    .line 1043
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@50
    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@53
    move v6, v3

    #@54
    .line 1047
    :cond_54
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@56
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@58
    iget-object v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@5a
    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@5d
    .line 1050
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@5f
    iget v7, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@61
    if-ne v1, v7, :cond_70

    #@63
    .line 1052
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@65
    add-int/lit8 v2, v0, -0x1

    #@67
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@6a
    move-result v1

    #@6b
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@6e
    move-result v1

    #@6f
    move v2, v1

    #@70
    :cond_70
    :goto_70
    move v1, v3

    #@71
    goto :goto_80

    #@72
    .line 1058
    :cond_72
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@74
    if-eq v9, v8, :cond_80

    #@76
    .line 1059
    iget v1, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@78
    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@7a
    if-ne v1, v9, :cond_7d

    #@7c
    move v2, v8

    #@7d
    .line 1064
    :cond_7d
    iput v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@7f
    goto :goto_70

    #@80
    :cond_80
    :goto_80
    add-int/2addr v5, v3

    #@81
    goto :goto_26

    #@82
    :cond_82
    if-eqz v6, :cond_89

    #@84
    .line 1070
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@86
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@89
    .line 1073
    :cond_89
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@8b
    sget-object v5, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@8d
    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@90
    if-eqz v1, :cond_b3

    #@92
    .line 1077
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@95
    move-result v0

    #@96
    move v1, v4

    #@97
    :goto_97
    if-ge v1, v0, :cond_ad

    #@99
    .line 1079
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@9c
    move-result-object v5

    #@9d
    .line 1080
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a0
    move-result-object v5

    #@a1
    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@a3
    .line 1081
    iget-boolean v6, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@a5
    if-nez v6, :cond_aa

    #@a7
    const/4 v6, 0x0

    #@a8
    .line 1082
    iput v6, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    #@aa
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    #@ac
    goto :goto_97

    #@ad
    .line 1086
    :cond_ad
    invoke-virtual {p0, v2, v4, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    #@b0
    .line 1087
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    #@b3
    :cond_b3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 2744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p1, 0x1

    #@10
    :goto_10
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    #@0
    .line 2997
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x1000

    #@6
    if-ne v0, v1, :cond_d

    #@8
    .line 2998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 3002
    :cond_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x0

    #@12
    move v2, v1

    #@13
    :goto_13
    if-ge v2, v0, :cond_36

    #@15
    .line 3004
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    .line 3005
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_33

    #@1f
    .line 3006
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@22
    move-result-object v4

    #@23
    if-eqz v4, :cond_33

    #@25
    .line 3007
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@27
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@29
    if-ne v4, v5, :cond_33

    #@2b
    .line 3008
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_33

    #@31
    const/4 p1, 0x1

    #@32
    return p1

    #@33
    :cond_33
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_13

    #@36
    :cond_36
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
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
    .line 929
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@b
    move-result-wide v0

    #@c
    double-to-float p1, v0

    #@d
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    #@0
    .line 2426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 2429
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getOverScrollMode()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_24

    #@a
    const/4 v2, 0x1

    #@b
    if-ne v0, v2, :cond_18

    #@d
    .line 2430
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@f
    if-eqz v0, :cond_18

    #@11
    .line 2432
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@14
    move-result v0

    #@15
    if-le v0, v2, :cond_18

    #@17
    goto :goto_24

    #@18
    .line 2456
    :cond_18
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@1a
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    #@1d
    .line 2457
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@1f
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    #@22
    goto/16 :goto_a7

    #@24
    .line 2433
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@26
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_64

    #@2c
    .line 2434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2f
    move-result v0

    #@30
    .line 2435
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    #@33
    move-result v2

    #@34
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    #@37
    move-result v3

    #@38
    sub-int/2addr v2, v3

    #@39
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    #@3c
    move-result v3

    #@3d
    sub-int/2addr v2, v3

    #@3e
    .line 2436
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    #@41
    move-result v3

    #@42
    const/high16 v4, 0x43870000    # 270.0f

    #@44
    .line 2438
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    #@47
    neg-int v4, v2

    #@48
    .line 2439
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    #@4b
    move-result v5

    #@4c
    add-int/2addr v4, v5

    #@4d
    int-to-float v4, v4

    #@4e
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@50
    int-to-float v6, v3

    #@51
    mul-float/2addr v5, v6

    #@52
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@55
    .line 2440
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@57
    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@5a
    .line 2441
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@5c
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@5f
    move-result v2

    #@60
    or-int/2addr v1, v2

    #@61
    .line 2442
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@64
    .line 2444
    :cond_64
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@66
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@69
    move-result v0

    #@6a
    if-nez v0, :cond_a7

    #@6c
    .line 2445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@6f
    move-result v0

    #@70
    .line 2446
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    #@73
    move-result v2

    #@74
    .line 2447
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    #@77
    move-result v3

    #@78
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    #@7b
    move-result v4

    #@7c
    sub-int/2addr v3, v4

    #@7d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    #@80
    move-result v4

    #@81
    sub-int/2addr v3, v4

    #@82
    const/high16 v4, 0x42b40000    # 90.0f

    #@84
    .line 2449
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    #@87
    .line 2450
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    #@8a
    move-result v4

    #@8b
    neg-int v4, v4

    #@8c
    int-to-float v4, v4

    #@8d
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@8f
    const/high16 v6, 0x3f800000    # 1.0f

    #@91
    add-float/2addr v5, v6

    #@92
    neg-float v5, v5

    #@93
    int-to-float v6, v2

    #@94
    mul-float/2addr v5, v6

    #@95
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@98
    .line 2451
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@9a
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@9d
    .line 2452
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@9f
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@a2
    move-result v2

    #@a3
    or-int/2addr v1, v2

    #@a4
    .line 2453
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@a7
    :cond_a7
    :goto_a7
    if-eqz v1, :cond_ac

    #@a9
    .line 2462
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@ac
    :cond_ac
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    #@0
    .line 915
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    #@3
    .line 916
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_14

    #@7
    .line 917
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_14

    #@d
    .line 918
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 7

    #@0
    .line 2554
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    #@2
    if-eqz v0, :cond_47

    #@4
    .line 2558
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@6
    if-eqz v0, :cond_40

    #@8
    .line 2559
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 2560
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    #@c
    int-to-float v1, v1

    #@d
    const/16 v2, 0x3e8

    #@f
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@12
    .line 2561
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@14
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@17
    move-result v0

    #@18
    float-to-int v0, v0

    #@19
    const/4 v1, 0x1

    #@1a
    .line 2562
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@1c
    .line 2563
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@1f
    move-result v2

    #@20
    .line 2564
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@23
    move-result v3

    #@24
    .line 2565
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@27
    move-result-object v4

    #@28
    .line 2566
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@2a
    int-to-float v3, v3

    #@2b
    int-to-float v2, v2

    #@2c
    div-float/2addr v3, v2

    #@2d
    .line 2567
    iget v2, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@2f
    sub-float/2addr v3, v2

    #@30
    iget v2, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@32
    div-float/2addr v3, v2

    #@33
    .line 2568
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@35
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    #@37
    sub-float/2addr v2, v4

    #@38
    float-to-int v2, v2

    #@39
    .line 2569
    invoke-direct {p0, v5, v3, v0, v2}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    #@3c
    move-result v2

    #@3d
    .line 2571
    invoke-virtual {p0, v2, v1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    #@40
    .line 2573
    :cond_40
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    #@43
    const/4 v0, 0x0

    #@44
    .line 2575
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    #@46
    return-void

    #@47
    .line 2555
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    #@49
    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    #@4b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    #@0
    .line 2757
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_53

    #@6
    .line 2758
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@9
    move-result v0

    #@a
    const/16 v1, 0x15

    #@c
    const/4 v2, 0x2

    #@d
    if-eq v0, v1, :cond_41

    #@f
    const/16 v1, 0x16

    #@11
    if-eq v0, v1, :cond_2f

    #@13
    const/16 v1, 0x3d

    #@15
    if-eq v0, v1, :cond_18

    #@17
    goto :goto_53

    #@18
    .line 2774
    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_23

    #@1e
    .line 2775
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    #@21
    move-result p1

    #@22
    goto :goto_54

    #@23
    :cond_23
    const/4 v0, 0x1

    #@24
    .line 2776
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@27
    move-result p1

    #@28
    if-eqz p1, :cond_53

    #@2a
    .line 2777
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    #@2d
    move-result p1

    #@2e
    goto :goto_54

    #@2f
    .line 2767
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@32
    move-result p1

    #@33
    if-eqz p1, :cond_3a

    #@35
    .line 2768
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    #@38
    move-result p1

    #@39
    goto :goto_54

    #@3a
    :cond_3a
    const/16 p1, 0x42

    #@3c
    .line 2770
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    #@3f
    move-result p1

    #@40
    goto :goto_54

    #@41
    .line 2760
    :cond_41
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@44
    move-result p1

    #@45
    if-eqz p1, :cond_4c

    #@47
    .line 2761
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    #@4a
    move-result p1

    #@4b
    goto :goto_54

    #@4c
    :cond_4c
    const/16 p1, 0x11

    #@4e
    .line 2763
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    #@51
    move-result p1

    #@52
    goto :goto_54

    #@53
    :cond_53
    :goto_53
    const/4 p1, 0x0

    #@54
    :goto_54
    return p1
.end method

.method public fakeDragBy(F)V
    .registers 12

    #@0
    .line 2586
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    #@2
    if-eqz v0, :cond_81

    #@4
    .line 2590
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 2594
    :cond_9
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@b
    add-float/2addr v0, p1

    #@c
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@e
    .line 2596
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@11
    move-result v0

    #@12
    int-to-float v0, v0

    #@13
    sub-float/2addr v0, p1

    #@14
    .line 2598
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@17
    move-result p1

    #@18
    int-to-float p1, p1

    #@19
    .line 2600
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    #@1b
    mul-float/2addr v1, p1

    #@1c
    .line 2601
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    #@1e
    mul-float/2addr v2, p1

    #@1f
    .line 2603
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@21
    const/4 v4, 0x0

    #@22
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@28
    .line 2604
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v5

    #@2e
    add-int/lit8 v5, v5, -0x1

    #@30
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@36
    .line 2605
    iget v5, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@38
    if-eqz v5, :cond_3d

    #@3a
    .line 2606
    iget v1, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@3c
    mul-float/2addr v1, p1

    #@3d
    .line 2608
    :cond_3d
    iget v3, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@3f
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@41
    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@44
    move-result v5

    #@45
    add-int/lit8 v5, v5, -0x1

    #@47
    if-eq v3, v5, :cond_4c

    #@49
    .line 2609
    iget v2, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@4b
    mul-float/2addr v2, p1

    #@4c
    :cond_4c
    cmpg-float p1, v0, v1

    #@4e
    if-gez p1, :cond_52

    #@50
    move v0, v1

    #@51
    goto :goto_57

    #@52
    :cond_52
    cmpl-float p1, v0, v2

    #@54
    if-lez p1, :cond_57

    #@56
    move v0, v2

    #@57
    .line 2618
    :cond_57
    :goto_57
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@59
    float-to-int v1, v0

    #@5a
    int-to-float v2, v1

    #@5b
    sub-float/2addr v0, v2

    #@5c
    add-float/2addr p1, v0

    #@5d
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@5f
    .line 2619
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    #@62
    move-result p1

    #@63
    invoke-virtual {p0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@66
    .line 2620
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    #@69
    .line 2623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6c
    move-result-wide v4

    #@6d
    .line 2624
    iget-wide v2, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    #@6f
    const/4 v6, 0x2

    #@70
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@72
    const/4 v8, 0x0

    #@73
    const/4 v9, 0x0

    #@74
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@77
    move-result-object p1

    #@78
    .line 2626
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7a
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@7d
    .line 2627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@80
    return-void

    #@81
    .line 2587
    :cond_81
    new-instance p1, Ljava/lang/IllegalStateException;

    #@83
    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    #@85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@88
    throw p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 3019
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@2
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 3034
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 3024
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .registers 2

    #@0
    .line 572
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    #@0
    .line 802
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_9

    #@5
    add-int/lit8 p1, p1, -0x1

    #@7
    sub-int p2, p1, p2

    #@9
    .line 803
    :cond_9
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@b
    .line 804
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Landroid/view/View;

    #@11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object p1

    #@15
    check-cast p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@17
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    #@19
    return p1
.end method

.method public getCurrentItem()I
    .registers 2

    #@0
    .line 627
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@2
    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    #@0
    .line 828
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@2
    return v0
.end method

.method public getPageMargin()I
    .registers 2

    #@0
    .line 884
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@2
    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 3

    #@0
    .line 1523
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p0, :cond_13

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 1524
    instance-of p1, v0, Landroid/view/View;

    #@a
    if-nez p1, :cond_d

    #@c
    goto :goto_11

    #@d
    .line 1527
    :cond_d
    move-object p1, v0

    #@e
    check-cast p1, Landroid/view/View;

    #@10
    goto :goto_0

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x0

    #@12
    return-object p1

    #@13
    .line 1529
    :cond_13
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@16
    move-result-object p1

    #@17
    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 1512
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1f

    #@9
    .line 1513
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@11
    .line 1514
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@13
    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@15
    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1c

    #@1b
    return-object v1

    #@1c
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_1

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    return-object p1
.end method

.method infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1533
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_19

    #@9
    .line 1534
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@11
    .line 1535
    iget v2, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@13
    if-ne v2, p1, :cond_16

    #@15
    return-object v1

    #@16
    :cond_16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return-object p1
.end method

.method initViewPager()V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 401
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    #@4
    const/high16 v0, 0x40000

    #@6
    .line 402
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setDescendantFocusability(I)V

    #@9
    const/4 v0, 0x1

    #@a
    .line 403
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setFocusable(Z)V

    #@d
    .line 404
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    .line 405
    new-instance v2, Landroid/widget/Scroller;

    #@13
    sget-object v3, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@15
    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@18
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1a
    .line 406
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1d
    move-result-object v2

    #@1e
    .line 407
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@25
    move-result-object v3

    #@26
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    #@28
    .line 409
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    #@2b
    move-result v4

    #@2c
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    #@2e
    const/high16 v4, 0x43c80000    # 400.0f

    #@30
    mul-float/2addr v4, v3

    #@31
    float-to-int v4, v4

    #@32
    .line 410
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    #@34
    .line 411
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@37
    move-result v2

    #@38
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    #@3a
    .line 412
    new-instance v2, Landroid/widget/EdgeEffect;

    #@3c
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@3f
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@41
    .line 413
    new-instance v2, Landroid/widget/EdgeEffect;

    #@43
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@46
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@48
    const/high16 v1, 0x41c80000    # 25.0f

    #@4a
    mul-float/2addr v1, v3

    #@4b
    float-to-int v1, v1

    #@4c
    .line 415
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    #@4e
    const/high16 v1, 0x40000000    # 2.0f

    #@50
    mul-float/2addr v1, v3

    #@51
    float-to-int v1, v1

    #@52
    .line 416
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    #@54
    const/high16 v1, 0x41800000    # 16.0f

    #@56
    mul-float/2addr v3, v1

    #@57
    float-to-int v1, v3

    #@58
    .line 417
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    #@5a
    .line 419
    new-instance v1, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    #@5c
    invoke-direct {v1, p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    #@5f
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@62
    .line 421
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@65
    move-result v1

    #@66
    if-nez v1, :cond_6b

    #@68
    .line 423
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@6b
    .line 427
    :cond_6b
    new-instance v0, Landroidx/viewpager/widget/ViewPager$4;

    #@6d
    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$4;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    #@70
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@73
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    #@0
    .line 2640
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 1544
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 1545
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 479
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 481
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@7
    if-eqz v0, :cond_14

    #@9
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_14

    #@f
    .line 482
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@11
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@14
    .line 484
    :cond_14
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@17
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 2468
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@5
    .line 2471
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@7
    if-lez v1, :cond_b0

    #@9
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v1, :cond_b0

    #@d
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v1

    #@13
    if-lez v1, :cond_b0

    #@15
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@17
    if-eqz v1, :cond_b0

    #@19
    .line 2472
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@1c
    move-result v1

    #@1d
    .line 2473
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    #@20
    move-result v2

    #@21
    .line 2475
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@23
    int-to-float v3, v3

    #@24
    int-to-float v4, v2

    #@25
    div-float/2addr v3, v4

    #@26
    .line 2477
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@28
    const/4 v6, 0x0

    #@29
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@2f
    .line 2478
    iget v7, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@31
    .line 2479
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v8

    #@37
    .line 2480
    iget v9, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@39
    .line 2481
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3b
    add-int/lit8 v11, v8, -0x1

    #@3d
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v10

    #@41
    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@43
    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@45
    :goto_45
    if-ge v9, v10, :cond_b0

    #@47
    .line 2483
    :goto_47
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@49
    if-le v9, v11, :cond_58

    #@4b
    if-ge v6, v8, :cond_58

    #@4d
    .line 2484
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4f
    add-int/lit8 v6, v6, 0x1

    #@51
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v5

    #@55
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@57
    goto :goto_47

    #@58
    .line 2488
    :cond_58
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@5a
    if-ne v9, v11, :cond_69

    #@5c
    .line 2489
    iget v7, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@5e
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@60
    add-float/2addr v7, v11

    #@61
    mul-float/2addr v7, v4

    #@62
    .line 2490
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@64
    iget v12, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@66
    add-float/2addr v11, v12

    #@67
    add-float/2addr v11, v3

    #@68
    goto :goto_76

    #@69
    .line 2492
    :cond_69
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@6b
    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@6e
    move-result v11

    #@6f
    add-float v12, v7, v11

    #@71
    mul-float/2addr v12, v4

    #@72
    add-float/2addr v11, v3

    #@73
    add-float/2addr v7, v11

    #@74
    move v11, v7

    #@75
    move v7, v12

    #@76
    .line 2497
    :goto_76
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@78
    int-to-float v12, v12

    #@79
    add-float/2addr v12, v7

    #@7a
    int-to-float v13, v1

    #@7b
    cmpl-float v12, v12, v13

    #@7d
    if-lez v12, :cond_9e

    #@7f
    .line 2498
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@81
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@84
    move-result v13

    #@85
    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    #@87
    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@89
    int-to-float v15, v15

    #@8a
    add-float/2addr v15, v7

    #@8b
    .line 2499
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    #@8e
    move-result v15

    #@8f
    move/from16 v16, v3

    #@91
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    #@93
    .line 2498
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@96
    .line 2500
    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@98
    move-object/from16 v12, p1

    #@9a
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@9d
    goto :goto_a2

    #@9e
    :cond_9e
    move-object/from16 v12, p1

    #@a0
    move/from16 v16, v3

    #@a2
    :goto_a2
    add-int v3, v1, v2

    #@a4
    int-to-float v3, v3

    #@a5
    cmpl-float v3, v7, v3

    #@a7
    if-lez v3, :cond_aa

    #@a9
    goto :goto_b0

    #@aa
    :cond_aa
    add-int/lit8 v9, v9, 0x1

    #@ac
    move v7, v11

    #@ad
    move/from16 v3, v16

    #@af
    goto :goto_45

    #@b0
    :cond_b0
    :goto_b0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17

    #@0
    move-object v6, p0

    #@1
    move-object/from16 v7, p1

    #@3
    .line 2031
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@6
    move-result v0

    #@7
    and-int/lit16 v0, v0, 0xff

    #@9
    const/4 v1, 0x3

    #@a
    const/4 v8, 0x0

    #@b
    if-eq v0, v1, :cond_10f

    #@d
    const/4 v9, 0x1

    #@e
    if-ne v0, v9, :cond_12

    #@10
    goto/16 :goto_10f

    #@12
    :cond_12
    if-eqz v0, :cond_1e

    #@14
    .line 2044
    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@16
    if-eqz v1, :cond_19

    #@18
    return v9

    #@19
    .line 2048
    :cond_19
    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    #@1b
    if-eqz v1, :cond_1e

    #@1d
    return v8

    #@1e
    :cond_1e
    const/4 v1, 0x2

    #@1f
    if-eqz v0, :cond_ad

    #@21
    if-eq v0, v1, :cond_2d

    #@23
    const/4 v1, 0x6

    #@24
    if-eq v0, v1, :cond_28

    #@26
    goto/16 :goto_fd

    #@28
    .line 2148
    :cond_28
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@2b
    goto/16 :goto_fd

    #@2d
    .line 2065
    :cond_2d
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@2f
    const/4 v1, -0x1

    #@30
    if-ne v0, v1, :cond_34

    #@32
    goto/16 :goto_fd

    #@34
    .line 2071
    :cond_34
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@37
    move-result v0

    #@38
    .line 2072
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@3b
    move-result v10

    #@3c
    .line 2073
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@3e
    sub-float v1, v10, v1

    #@40
    .line 2074
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@43
    move-result v11

    #@44
    .line 2075
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@47
    move-result v12

    #@48
    .line 2076
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    #@4a
    sub-float v0, v12, v0

    #@4c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@4f
    move-result v13

    #@50
    const/4 v0, 0x0

    #@51
    cmpl-float v14, v1, v0

    #@53
    if-eqz v14, :cond_70

    #@55
    .line 2079
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@57
    invoke-direct {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->isGutterDrag(FF)Z

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_70

    #@5d
    const/4 v2, 0x0

    #@5e
    float-to-int v3, v1

    #@5f
    float-to-int v4, v10

    #@60
    float-to-int v5, v12

    #@61
    move-object v0, p0

    #@62
    move-object v1, p0

    #@63
    .line 2080
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_70

    #@69
    .line 2082
    iput v10, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@6b
    .line 2083
    iput v12, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    #@6d
    .line 2084
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    #@6f
    return v8

    #@70
    .line 2087
    :cond_70
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    #@72
    int-to-float v1, v0

    #@73
    cmpl-float v1, v11, v1

    #@75
    if-lez v1, :cond_98

    #@77
    const/high16 v1, 0x3f000000    # 0.5f

    #@79
    mul-float/2addr v11, v1

    #@7a
    cmpl-float v1, v11, v13

    #@7c
    if-lez v1, :cond_98

    #@7e
    .line 2089
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@80
    .line 2090
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@83
    .line 2091
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    #@86
    .line 2092
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    #@88
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    #@8a
    int-to-float v1, v1

    #@8b
    if-lez v14, :cond_8f

    #@8d
    add-float/2addr v0, v1

    #@8e
    goto :goto_90

    #@8f
    :cond_8f
    sub-float/2addr v0, v1

    #@90
    :goto_90
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@92
    .line 2094
    iput v12, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    #@94
    .line 2095
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@97
    goto :goto_9f

    #@98
    :cond_98
    int-to-float v0, v0

    #@99
    cmpl-float v0, v13, v0

    #@9b
    if-lez v0, :cond_9f

    #@9d
    .line 2102
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    #@9f
    .line 2104
    :cond_9f
    :goto_9f
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@a1
    if-eqz v0, :cond_fd

    #@a3
    .line 2106
    invoke-direct {p0, v10}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    #@a6
    move-result v0

    #@a7
    if-eqz v0, :cond_fd

    #@a9
    .line 2107
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@ac
    goto :goto_fd

    #@ad
    .line 2118
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@b0
    move-result v0

    #@b1
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    #@b3
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@b5
    .line 2119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@b8
    move-result v0

    #@b9
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    #@bb
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    #@bd
    .line 2120
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@c0
    move-result v0

    #@c1
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@c3
    .line 2121
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    #@c5
    .line 2123
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    #@c7
    .line 2124
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@c9
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@cc
    .line 2125
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    #@ce
    if-ne v0, v1, :cond_f8

    #@d0
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@d2
    .line 2126
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    #@d5
    move-result v0

    #@d6
    iget-object v1, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@d8
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    #@db
    move-result v1

    #@dc
    sub-int/2addr v0, v1

    #@dd
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@e0
    move-result v0

    #@e1
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    #@e3
    if-le v0, v1, :cond_f8

    #@e5
    .line 2128
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@e7
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@ea
    .line 2129
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@ec
    .line 2130
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    #@ef
    .line 2131
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@f1
    .line 2132
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@f4
    .line 2133
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    #@f7
    goto :goto_fd

    #@f8
    .line 2135
    :cond_f8
    invoke-direct {p0, v8}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    #@fb
    .line 2136
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@fd
    .line 2152
    :cond_fd
    :goto_fd
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@ff
    if-nez v0, :cond_107

    #@101
    .line 2153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@104
    move-result-object v0

    #@105
    iput-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@107
    .line 2155
    :cond_107
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@109
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@10c
    .line 2161
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@10e
    return v0

    #@10f
    .line 2037
    :cond_10f
    :goto_10f
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    #@112
    return v8
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    #@0
    move-object/from16 v0, p0

    #@2
    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@5
    move-result v1

    #@6
    sub-int v2, p4, p2

    #@8
    sub-int v3, p5, p3

    #@a
    .line 1685
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@d
    move-result v4

    #@e
    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    #@11
    move-result v5

    #@12
    .line 1687
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@15
    move-result v6

    #@16
    .line 1688
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    #@19
    move-result v7

    #@1a
    .line 1689
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@1d
    move-result v8

    #@1e
    const/4 v10, 0x0

    #@1f
    const/4 v11, 0x0

    #@20
    :goto_20
    const/16 v12, 0x8

    #@22
    if-ge v10, v1, :cond_b8

    #@24
    .line 1696
    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@27
    move-result-object v13

    #@28
    .line 1697
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@2b
    move-result v14

    #@2c
    if-eq v14, v12, :cond_b4

    #@2e
    .line 1698
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@31
    move-result-object v12

    #@32
    check-cast v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@34
    .line 1701
    iget-boolean v14, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@36
    if-eqz v14, :cond_b4

    #@38
    .line 1702
    iget v14, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    #@3a
    and-int/lit8 v14, v14, 0x7

    #@3c
    .line 1703
    iget v12, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    #@3e
    and-int/lit8 v12, v12, 0x70

    #@40
    const/4 v15, 0x1

    #@41
    if-eq v14, v15, :cond_5e

    #@43
    const/4 v15, 0x3

    #@44
    if-eq v14, v15, :cond_58

    #@46
    const/4 v15, 0x5

    #@47
    if-eq v14, v15, :cond_4b

    #@49
    move v14, v4

    #@4a
    goto :goto_6f

    #@4b
    :cond_4b
    sub-int v14, v2, v6

    #@4d
    .line 1717
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@50
    move-result v15

    #@51
    sub-int/2addr v14, v15

    #@52
    .line 1718
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@55
    move-result v15

    #@56
    add-int/2addr v6, v15

    #@57
    goto :goto_6a

    #@58
    .line 1710
    :cond_58
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@5b
    move-result v14

    #@5c
    add-int/2addr v14, v4

    #@5d
    goto :goto_6f

    #@5e
    .line 1713
    :cond_5e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@61
    move-result v14

    #@62
    sub-int v14, v2, v14

    #@64
    div-int/lit8 v14, v14, 0x2

    #@66
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    #@69
    move-result v14

    #@6a
    :goto_6a
    move/from16 v17, v14

    #@6c
    move v14, v4

    #@6d
    move/from16 v4, v17

    #@6f
    :goto_6f
    const/16 v15, 0x10

    #@71
    if-eq v12, v15, :cond_90

    #@73
    const/16 v15, 0x30

    #@75
    if-eq v12, v15, :cond_8a

    #@77
    const/16 v15, 0x50

    #@79
    if-eq v12, v15, :cond_7d

    #@7b
    move v12, v5

    #@7c
    goto :goto_a1

    #@7d
    :cond_7d
    sub-int v12, v3, v7

    #@7f
    .line 1734
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@82
    move-result v15

    #@83
    sub-int/2addr v12, v15

    #@84
    .line 1735
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@87
    move-result v15

    #@88
    add-int/2addr v7, v15

    #@89
    goto :goto_9c

    #@8a
    .line 1727
    :cond_8a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@8d
    move-result v12

    #@8e
    add-int/2addr v12, v5

    #@8f
    goto :goto_a1

    #@90
    .line 1730
    :cond_90
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@93
    move-result v12

    #@94
    sub-int v12, v3, v12

    #@96
    div-int/lit8 v12, v12, 0x2

    #@98
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    #@9b
    move-result v12

    #@9c
    :goto_9c
    move/from16 v17, v12

    #@9e
    move v12, v5

    #@9f
    move/from16 v5, v17

    #@a1
    :goto_a1
    add-int/2addr v4, v8

    #@a2
    .line 1740
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@a5
    move-result v15

    #@a6
    add-int/2addr v15, v4

    #@a7
    .line 1741
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@aa
    move-result v16

    #@ab
    add-int v9, v5, v16

    #@ad
    .line 1739
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    #@b0
    add-int/lit8 v11, v11, 0x1

    #@b2
    move v5, v12

    #@b3
    move v4, v14

    #@b4
    :cond_b4
    add-int/lit8 v10, v10, 0x1

    #@b6
    goto/16 :goto_20

    #@b8
    :cond_b8
    sub-int/2addr v2, v4

    #@b9
    sub-int/2addr v2, v6

    #@ba
    const/4 v6, 0x0

    #@bb
    :goto_bb
    if-ge v6, v1, :cond_108

    #@bd
    .line 1750
    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@c0
    move-result-object v8

    #@c1
    .line 1751
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@c4
    move-result v9

    #@c5
    if-eq v9, v12, :cond_105

    #@c7
    .line 1752
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ca
    move-result-object v9

    #@cb
    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@cd
    .line 1754
    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@cf
    if-nez v10, :cond_105

    #@d1
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@d4
    move-result-object v10

    #@d5
    if-eqz v10, :cond_105

    #@d7
    int-to-float v13, v2

    #@d8
    .line 1755
    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@da
    mul-float/2addr v10, v13

    #@db
    float-to-int v10, v10

    #@dc
    add-int/2addr v10, v4

    #@dd
    .line 1758
    iget-boolean v14, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    #@df
    if-eqz v14, :cond_f8

    #@e1
    const/4 v14, 0x0

    #@e2
    .line 1761
    iput-boolean v14, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    #@e4
    .line 1762
    iget v9, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    #@e6
    mul-float/2addr v13, v9

    #@e7
    float-to-int v9, v13

    #@e8
    const/high16 v13, 0x40000000    # 2.0f

    #@ea
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ed
    move-result v9

    #@ee
    sub-int v14, v3, v5

    #@f0
    sub-int/2addr v14, v7

    #@f1
    .line 1765
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f4
    move-result v13

    #@f5
    .line 1768
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    #@f8
    .line 1776
    :cond_f8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@fb
    move-result v9

    #@fc
    add-int/2addr v9, v10

    #@fd
    .line 1777
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    #@100
    move-result v13

    #@101
    add-int/2addr v13, v5

    #@102
    .line 1775
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    #@105
    :cond_105
    add-int/lit8 v6, v6, 0x1

    #@107
    goto :goto_bb

    #@108
    .line 1781
    :cond_108
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    #@10a
    sub-int/2addr v3, v7

    #@10b
    .line 1782
    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    #@10d
    .line 1783
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    #@10f
    .line 1785
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@111
    if-eqz v1, :cond_11a

    #@113
    .line 1786
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@115
    const/4 v2, 0x0

    #@116
    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    #@119
    goto :goto_11b

    #@11a
    :cond_11a
    const/4 v2, 0x0

    #@11b
    .line 1788
    :goto_11b
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@11d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v1, 0x0

    #@3
    move/from16 v2, p1

    #@5
    .line 1555
    invoke-static {v1, v2}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    #@8
    move-result v2

    #@9
    move/from16 v3, p2

    #@b
    .line 1556
    invoke-static {v1, v3}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    #@e
    move-result v3

    #@f
    .line 1555
    invoke-virtual {v0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setMeasuredDimension(II)V

    #@12
    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    #@15
    move-result v2

    #@16
    .line 1559
    div-int/lit8 v3, v2, 0xa

    #@18
    .line 1560
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    #@1a
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v3

    #@1e
    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    #@20
    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@23
    move-result v3

    #@24
    sub-int/2addr v2, v3

    #@25
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@28
    move-result v3

    #@29
    sub-int/2addr v2, v3

    #@2a
    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredHeight()I

    #@2d
    move-result v3

    #@2e
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    #@31
    move-result v4

    #@32
    sub-int/2addr v3, v4

    #@33
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    #@36
    move-result v4

    #@37
    sub-int/2addr v3, v4

    #@38
    .line 1571
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@3b
    move-result v4

    #@3c
    move v5, v1

    #@3d
    :goto_3d
    const/16 v6, 0x8

    #@3f
    const/4 v7, 0x1

    #@40
    const/high16 v8, 0x40000000    # 2.0f

    #@42
    if-ge v5, v4, :cond_c2

    #@44
    .line 1573
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@47
    move-result-object v9

    #@48
    .line 1574
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    #@4b
    move-result v10

    #@4c
    if-eq v10, v6, :cond_bd

    #@4e
    .line 1575
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@51
    move-result-object v6

    #@52
    check-cast v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@54
    if-eqz v6, :cond_bd

    #@56
    .line 1576
    iget-boolean v10, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@58
    if-eqz v10, :cond_bd

    #@5a
    .line 1577
    iget v10, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    #@5c
    and-int/lit8 v10, v10, 0x7

    #@5e
    .line 1578
    iget v11, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    #@60
    and-int/lit8 v11, v11, 0x70

    #@62
    const/16 v12, 0x30

    #@64
    if-eq v11, v12, :cond_6d

    #@66
    const/16 v12, 0x50

    #@68
    if-ne v11, v12, :cond_6b

    #@6a
    goto :goto_6d

    #@6b
    :cond_6b
    move v11, v1

    #@6c
    goto :goto_6e

    #@6d
    :cond_6d
    :goto_6d
    move v11, v7

    #@6e
    :goto_6e
    const/4 v12, 0x3

    #@6f
    if-eq v10, v12, :cond_76

    #@71
    const/4 v12, 0x5

    #@72
    if-ne v10, v12, :cond_75

    #@74
    goto :goto_76

    #@75
    :cond_75
    move v7, v1

    #@76
    :cond_76
    :goto_76
    const/high16 v10, -0x80000000

    #@78
    if-eqz v11, :cond_7d

    #@7a
    move v12, v10

    #@7b
    move v10, v8

    #@7c
    goto :goto_82

    #@7d
    :cond_7d
    if-eqz v7, :cond_81

    #@7f
    move v12, v8

    #@80
    goto :goto_82

    #@81
    :cond_81
    move v12, v10

    #@82
    .line 1592
    :goto_82
    iget v13, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    #@84
    const/4 v14, -0x1

    #@85
    const/4 v15, -0x2

    #@86
    if-eq v13, v15, :cond_92

    #@88
    .line 1594
    iget v10, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    #@8a
    if-eq v10, v14, :cond_8f

    #@8c
    .line 1595
    iget v10, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    #@8e
    goto :goto_90

    #@8f
    :cond_8f
    move v10, v2

    #@90
    :goto_90
    move v13, v8

    #@91
    goto :goto_94

    #@92
    :cond_92
    move v13, v10

    #@93
    move v10, v2

    #@94
    .line 1598
    :goto_94
    iget v1, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    #@96
    if-eq v1, v15, :cond_a1

    #@98
    .line 1600
    iget v1, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    #@9a
    if-eq v1, v14, :cond_9f

    #@9c
    .line 1601
    iget v1, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    #@9e
    goto :goto_a3

    #@9f
    :cond_9f
    move v1, v3

    #@a0
    goto :goto_a3

    #@a1
    :cond_a1
    move v1, v3

    #@a2
    move v8, v12

    #@a3
    .line 1604
    :goto_a3
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a6
    move-result v6

    #@a7
    .line 1605
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@aa
    move-result v1

    #@ab
    .line 1606
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    #@ae
    if-eqz v11, :cond_b6

    #@b0
    .line 1609
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    #@b3
    move-result v1

    #@b4
    sub-int/2addr v3, v1

    #@b5
    goto :goto_bd

    #@b6
    :cond_b6
    if-eqz v7, :cond_bd

    #@b8
    .line 1611
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    #@bb
    move-result v1

    #@bc
    sub-int/2addr v2, v1

    #@bd
    :cond_bd
    :goto_bd
    add-int/lit8 v5, v5, 0x1

    #@bf
    const/4 v1, 0x0

    #@c0
    goto/16 :goto_3d

    #@c2
    .line 1617
    :cond_c2
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c5
    move-result v1

    #@c6
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mChildWidthMeasureSpec:I

    #@c8
    .line 1618
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@cb
    move-result v1

    #@cc
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    #@ce
    .line 1621
    iput-boolean v7, v0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    #@d0
    .line 1622
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    #@d3
    const/4 v1, 0x0

    #@d4
    .line 1623
    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    #@d6
    .line 1626
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@d9
    move-result v3

    #@da
    :goto_da
    if-ge v1, v3, :cond_103

    #@dc
    .line 1628
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@df
    move-result-object v4

    #@e0
    .line 1629
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@e3
    move-result v5

    #@e4
    if-eq v5, v6, :cond_100

    #@e6
    .line 1634
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e9
    move-result-object v5

    #@ea
    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@ec
    if-eqz v5, :cond_f2

    #@ee
    .line 1635
    iget-boolean v7, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@f0
    if-nez v7, :cond_100

    #@f2
    :cond_f2
    int-to-float v7, v2

    #@f3
    .line 1636
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    #@f5
    mul-float/2addr v7, v5

    #@f6
    float-to-int v5, v7

    #@f7
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@fa
    move-result v5

    #@fb
    .line 1638
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    #@fd
    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    #@100
    :cond_100
    add-int/lit8 v1, v1, 0x1

    #@102
    goto :goto_da

    #@103
    :cond_103
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 16

    #@0
    .line 1865
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-lez v0, :cond_6b

    #@6
    .line 1866
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@9
    move-result v0

    #@a
    .line 1867
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@d
    move-result v3

    #@e
    .line 1868
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@11
    move-result v4

    #@12
    .line 1869
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    #@15
    move-result v5

    #@16
    .line 1870
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@19
    move-result v6

    #@1a
    move v7, v1

    #@1b
    :goto_1b
    if-ge v7, v6, :cond_6b

    #@1d
    .line 1872
    invoke-virtual {p0, v7}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v8

    #@21
    .line 1873
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@24
    move-result-object v9

    #@25
    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@27
    .line 1874
    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@29
    if-nez v10, :cond_2c

    #@2b
    goto :goto_68

    #@2c
    .line 1876
    :cond_2c
    iget v9, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    #@2e
    and-int/lit8 v9, v9, 0x7

    #@30
    if-eq v9, v2, :cond_4d

    #@32
    const/4 v10, 0x3

    #@33
    if-eq v9, v10, :cond_47

    #@35
    const/4 v10, 0x5

    #@36
    if-eq v9, v10, :cond_3a

    #@38
    move v9, v3

    #@39
    goto :goto_5c

    #@3a
    :cond_3a
    sub-int v9, v5, v4

    #@3c
    .line 1891
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@3f
    move-result v10

    #@40
    sub-int/2addr v9, v10

    #@41
    .line 1892
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@44
    move-result v10

    #@45
    add-int/2addr v4, v10

    #@46
    goto :goto_59

    #@47
    .line 1884
    :cond_47
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    #@4a
    move-result v9

    #@4b
    add-int/2addr v9, v3

    #@4c
    goto :goto_5c

    #@4d
    .line 1887
    :cond_4d
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@50
    move-result v9

    #@51
    sub-int v9, v5, v9

    #@53
    div-int/lit8 v9, v9, 0x2

    #@55
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    #@58
    move-result v9

    #@59
    :goto_59
    move v11, v9

    #@5a
    move v9, v3

    #@5b
    move v3, v11

    #@5c
    :goto_5c
    add-int/2addr v3, v0

    #@5d
    .line 1897
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    #@60
    move-result v10

    #@61
    sub-int/2addr v3, v10

    #@62
    if-eqz v3, :cond_67

    #@64
    .line 1899
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@67
    :cond_67
    move v3, v9

    #@68
    :goto_68
    add-int/lit8 v7, v7, 0x1

    #@6a
    goto :goto_1b

    #@6b
    .line 1904
    :cond_6b
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageScrolled(IFI)V

    #@6e
    .line 1906
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    #@70
    if-eqz p1, :cond_9f

    #@72
    .line 1907
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@75
    move-result p1

    #@76
    .line 1908
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@79
    move-result p2

    #@7a
    :goto_7a
    if-ge v1, p2, :cond_9f

    #@7c
    .line 1910
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@7f
    move-result-object p3

    #@80
    .line 1911
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@86
    .line 1913
    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@88
    if-eqz v0, :cond_8b

    #@8a
    goto :goto_9c

    #@8b
    .line 1914
    :cond_8b
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    #@8e
    move-result v0

    #@8f
    sub-int/2addr v0, p1

    #@90
    int-to-float v0, v0

    #@91
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@94
    move-result v3

    #@95
    int-to-float v3, v3

    #@96
    div-float/2addr v0, v3

    #@97
    .line 1915
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    #@99
    invoke-interface {v3, p3, v0}, Landroidx/viewpager/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    #@9c
    :goto_9c
    add-int/lit8 v1, v1, 0x1

    #@9e
    goto :goto_7a

    #@9f
    .line 1919
    :cond_9f
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    #@a1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    #@0
    .line 2970
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v1, p1, 0x2

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x1

    #@8
    if-eqz v1, :cond_e

    #@a
    move v1, v0

    #@b
    move v0, v2

    #@c
    move v4, v3

    #@d
    goto :goto_12

    #@e
    :cond_e
    add-int/lit8 v0, v0, -0x1

    #@10
    const/4 v1, -0x1

    #@11
    move v4, v1

    #@12
    :goto_12
    if-eq v0, v1, :cond_33

    #@14
    .line 2981
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v5

    #@18
    .line 2982
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_31

    #@1e
    .line 2983
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@21
    move-result-object v6

    #@22
    if-eqz v6, :cond_31

    #@24
    .line 2984
    iget v6, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@26
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@28
    if-ne v6, v7, :cond_31

    #@2a
    .line 2985
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_31

    #@30
    return v3

    #@31
    :cond_31
    add-int/2addr v0, v4

    #@32
    goto :goto_12

    #@33
    :cond_33
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    #@0
    .line 1452
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 1457
    :cond_8
    check-cast p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    #@a
    .line 1458
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 1460
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@13
    if-eqz v0, :cond_24

    #@15
    .line 1461
    iget-object v1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@17
    iget-object v2, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@19
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@1c
    .line 1462
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    #@1e
    const/4 v0, 0x0

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    #@23
    goto :goto_30

    #@24
    .line 1464
    :cond_24
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    #@26
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    #@28
    .line 1465
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@2a
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@2c
    .line 1466
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@2e
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@30
    :goto_30
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 1441
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 1442
    new-instance v1, Landroidx/viewpager/widget/ViewPager$SavedState;

    #@6
    invoke-direct {v1, v0}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1443
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@b
    iput v0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    #@d
    .line 1444
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@f
    if-eqz v0, :cond_17

    #@11
    .line 1445
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    #@14
    move-result-object v0

    #@15
    iput-object v0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@17
    :cond_17
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 1646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    #@3
    if-eq p1, p3, :cond_a

    #@5
    .line 1650
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@7
    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    #@a
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    #@0
    .line 2166
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 2173
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@9
    move-result v0

    #@a
    const/4 v2, 0x0

    #@b
    if-nez v0, :cond_14

    #@d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_14

    #@13
    return v2

    #@14
    .line 2179
    :cond_14
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@16
    if-eqz v0, :cond_15f

    #@18
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_20

    #@1e
    goto/16 :goto_15f

    #@20
    .line 2184
    :cond_20
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@22
    if-nez v0, :cond_2a

    #@24
    .line 2185
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2a
    .line 2187
    :cond_2a
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2c
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@2f
    .line 2189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@32
    move-result v0

    #@33
    and-int/lit16 v0, v0, 0xff

    #@35
    if-eqz v0, :cond_139

    #@37
    if-eq v0, v1, :cond_ec

    #@39
    const/4 v3, 0x2

    #@3a
    if-eq v0, v3, :cond_79

    #@3c
    const/4 v3, 0x3

    #@3d
    if-eq v0, v3, :cond_6a

    #@3f
    const/4 v3, 0x5

    #@40
    if-eq v0, v3, :cond_58

    #@42
    const/4 v3, 0x6

    #@43
    if-eq v0, v3, :cond_47

    #@45
    goto/16 :goto_159

    #@47
    .line 2282
    :cond_47
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@4a
    .line 2283
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@4c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@4f
    move-result v0

    #@50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@53
    move-result p1

    #@54
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@56
    goto/16 :goto_159

    #@58
    .line 2275
    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@5b
    move-result v0

    #@5c
    .line 2276
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@5f
    move-result v3

    #@60
    .line 2277
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@62
    .line 2278
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@65
    move-result p1

    #@66
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@68
    goto/16 :goto_159

    #@6a
    .line 2269
    :cond_6a
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@6c
    if-eqz p1, :cond_159

    #@6e
    .line 2270
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@70
    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    #@73
    .line 2271
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    #@76
    move-result v2

    #@77
    goto/16 :goto_159

    #@79
    .line 2205
    :cond_79
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@7b
    if-nez v0, :cond_d8

    #@7d
    .line 2206
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@7f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@82
    move-result v0

    #@83
    const/4 v3, -0x1

    #@84
    if-ne v0, v3, :cond_8c

    #@86
    .line 2210
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    #@89
    move-result v2

    #@8a
    goto/16 :goto_159

    #@8c
    .line 2213
    :cond_8c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@8f
    move-result v3

    #@90
    .line 2214
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@92
    sub-float v4, v3, v4

    #@94
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@97
    move-result v4

    #@98
    .line 2215
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@9b
    move-result v0

    #@9c
    .line 2216
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    #@9e
    sub-float v5, v0, v5

    #@a0
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@a3
    move-result v5

    #@a4
    .line 2220
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    #@a6
    int-to-float v6, v6

    #@a7
    cmpl-float v6, v4, v6

    #@a9
    if-lez v6, :cond_d8

    #@ab
    cmpl-float v4, v4, v5

    #@ad
    if-lez v4, :cond_d8

    #@af
    .line 2222
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@b1
    .line 2223
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@b4
    .line 2224
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    #@b6
    sub-float/2addr v3, v4

    #@b7
    const/4 v5, 0x0

    #@b8
    cmpl-float v3, v3, v5

    #@ba
    if-lez v3, :cond_c1

    #@bc
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    #@be
    int-to-float v3, v3

    #@bf
    add-float/2addr v4, v3

    #@c0
    goto :goto_c5

    #@c1
    :cond_c1
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    #@c3
    int-to-float v3, v3

    #@c4
    sub-float/2addr v4, v3

    #@c5
    :goto_c5
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@c7
    .line 2226
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    #@c9
    .line 2227
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    #@cc
    .line 2228
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@cf
    .line 2231
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    #@d2
    move-result-object v0

    #@d3
    if-eqz v0, :cond_d8

    #@d5
    .line 2233
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@d8
    .line 2238
    :cond_d8
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@da
    if-eqz v0, :cond_159

    #@dc
    .line 2240
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@de
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@e1
    move-result v0

    #@e2
    .line 2241
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@e5
    move-result p1

    #@e6
    .line 2242
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    #@e9
    move-result p1

    #@ea
    or-int/2addr v2, p1

    #@eb
    goto :goto_159

    #@ec
    .line 2246
    :cond_ec
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    #@ee
    if-eqz v0, :cond_159

    #@f0
    .line 2247
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f2
    .line 2248
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    #@f4
    int-to-float v2, v2

    #@f5
    const/16 v3, 0x3e8

    #@f7
    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@fa
    .line 2249
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@fc
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@ff
    move-result v0

    #@100
    float-to-int v0, v0

    #@101
    .line 2250
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@103
    .line 2251
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@106
    move-result v2

    #@107
    .line 2252
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@10a
    move-result v3

    #@10b
    .line 2253
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@10e
    move-result-object v4

    #@10f
    .line 2254
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@111
    int-to-float v5, v5

    #@112
    int-to-float v2, v2

    #@113
    div-float/2addr v5, v2

    #@114
    .line 2255
    iget v6, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@116
    int-to-float v3, v3

    #@117
    div-float/2addr v3, v2

    #@118
    .line 2256
    iget v2, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    #@11a
    sub-float/2addr v3, v2

    #@11b
    iget v2, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@11d
    add-float/2addr v2, v5

    #@11e
    div-float/2addr v3, v2

    #@11f
    .line 2258
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@121
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@124
    move-result v2

    #@125
    .line 2259
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@128
    move-result p1

    #@129
    .line 2260
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    #@12b
    sub-float/2addr p1, v2

    #@12c
    float-to-int p1, p1

    #@12d
    .line 2261
    invoke-direct {p0, v6, v3, v0, p1}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    #@130
    move-result p1

    #@131
    .line 2263
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    #@134
    .line 2265
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    #@137
    move-result v2

    #@138
    goto :goto_159

    #@139
    .line 2194
    :cond_139
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@13b
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@13e
    .line 2195
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@140
    .line 2196
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    #@143
    .line 2199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@146
    move-result v0

    #@147
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    #@149
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    #@14b
    .line 2200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@14e
    move-result v0

    #@14f
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    #@151
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    #@153
    .line 2201
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@156
    move-result p1

    #@157
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    #@159
    :cond_159
    :goto_159
    if-eqz v2, :cond_15e

    #@15b
    .line 2287
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@15e
    :cond_15e
    return v1

    #@15f
    :cond_15f
    :goto_15f
    return v2
.end method

.method pageLeft()Z
    .registers 3

    #@0
    .line 2885
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@2
    if-lez v0, :cond_a

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    .line 2886
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    #@9
    return v1

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method pageRight()Z
    .registers 4

    #@0
    .line 2893
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    if-eqz v0, :cond_15

    #@4
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@6
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@9
    move-result v0

    #@a
    const/4 v2, 0x1

    #@b
    sub-int/2addr v0, v2

    #@c
    if-ge v1, v0, :cond_15

    #@e
    .line 2894
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@10
    add-int/2addr v0, v2

    #@11
    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    #@14
    return v2

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method populate()V
    .registers 2

    #@0
    .line 1092
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    #@5
    return-void
.end method

.method populate(I)V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    .line 1097
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@6
    if-eq v2, v1, :cond_f

    #@8
    .line 1098
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@b
    move-result-object v2

    #@c
    .line 1099
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v2, 0x0

    #@10
    .line 1102
    :goto_10
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@12
    if-nez v1, :cond_18

    #@14
    .line 1103
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    #@17
    return-void

    #@18
    .line 1111
    :cond_18
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@1a
    if-eqz v1, :cond_20

    #@1c
    .line 1113
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    #@1f
    return-void

    #@20
    .line 1120
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    #@23
    move-result-object v1

    #@24
    if-nez v1, :cond_27

    #@26
    return-void

    #@27
    .line 1124
    :cond_27
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@29
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@2c
    .line 1126
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@2e
    .line 1127
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@30
    sub-int/2addr v4, v1

    #@31
    const/4 v5, 0x0

    #@32
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v4

    #@36
    .line 1128
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@38
    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@3b
    move-result v6

    #@3c
    add-int/lit8 v7, v6, -0x1

    #@3e
    .line 1129
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@40
    add-int/2addr v8, v1

    #@41
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v1

    #@45
    .line 1131
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    #@47
    if-ne v6, v7, :cond_212

    #@49
    move v7, v5

    #@4a
    .line 1149
    :goto_4a
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v8

    #@50
    if-ge v7, v8, :cond_6a

    #@52
    .line 1150
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v8

    #@58
    check-cast v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@5a
    .line 1151
    iget v9, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@5c
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@5e
    if-lt v9, v10, :cond_67

    #@60
    .line 1152
    iget v9, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@62
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@64
    if-ne v9, v10, :cond_6a

    #@66
    goto :goto_6b

    #@67
    :cond_67
    add-int/lit8 v7, v7, 0x1

    #@69
    goto :goto_4a

    #@6a
    :cond_6a
    const/4 v8, 0x0

    #@6b
    :goto_6b
    if-nez v8, :cond_75

    #@6d
    if-lez v6, :cond_75

    #@6f
    .line 1158
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@71
    invoke-virtual {v0, v8, v7}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@74
    move-result-object v8

    #@75
    :cond_75
    const/4 v9, 0x0

    #@76
    if-eqz v8, :cond_19f

    #@78
    add-int/lit8 v10, v7, -0x1

    #@7a
    if-ltz v10, :cond_85

    #@7c
    .line 1167
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@7e
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v11

    #@82
    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@84
    goto :goto_86

    #@85
    :cond_85
    const/4 v11, 0x0

    #@86
    .line 1168
    :goto_86
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@89
    move-result v12

    #@8a
    const/high16 v13, 0x40000000    # 2.0f

    #@8c
    if-gtz v12, :cond_90

    #@8e
    move v14, v9

    #@8f
    goto :goto_9c

    #@90
    .line 1169
    :cond_90
    iget v14, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@92
    sub-float v14, v13, v14

    #@94
    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    #@97
    move-result v15

    #@98
    int-to-float v15, v15

    #@99
    int-to-float v3, v12

    #@9a
    div-float/2addr v15, v3

    #@9b
    add-float/2addr v14, v15

    #@9c
    .line 1171
    :goto_9c
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@9e
    add-int/lit8 v3, v3, -0x1

    #@a0
    move v15, v9

    #@a1
    :goto_a1
    if-ltz v3, :cond_101

    #@a3
    cmpl-float v16, v15, v14

    #@a5
    if-ltz v16, :cond_cf

    #@a7
    if-ge v3, v4, :cond_cf

    #@a9
    if-nez v11, :cond_ac

    #@ab
    goto :goto_101

    #@ac
    .line 1176
    :cond_ac
    iget v5, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@ae
    if-ne v3, v5, :cond_fd

    #@b0
    iget-boolean v5, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    #@b2
    if-nez v5, :cond_fd

    #@b4
    .line 1177
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b6
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@b9
    .line 1178
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@bb
    iget-object v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@bd
    invoke-virtual {v5, v0, v3, v11}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@c0
    add-int/lit8 v10, v10, -0x1

    #@c2
    add-int/lit8 v7, v7, -0x1

    #@c4
    if-ltz v10, :cond_fb

    #@c6
    .line 1185
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@c8
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@cb
    move-result-object v5

    #@cc
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@ce
    goto :goto_fc

    #@cf
    :cond_cf
    if-eqz v11, :cond_e5

    #@d1
    .line 1187
    iget v5, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@d3
    if-ne v3, v5, :cond_e5

    #@d5
    .line 1188
    iget v5, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@d7
    add-float/2addr v15, v5

    #@d8
    add-int/lit8 v10, v10, -0x1

    #@da
    if-ltz v10, :cond_fb

    #@dc
    .line 1190
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@de
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e1
    move-result-object v5

    #@e2
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@e4
    goto :goto_fc

    #@e5
    :cond_e5
    add-int/lit8 v5, v10, 0x1

    #@e7
    .line 1192
    invoke-virtual {v0, v3, v5}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@ea
    move-result-object v5

    #@eb
    .line 1193
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@ed
    add-float/2addr v15, v5

    #@ee
    add-int/lit8 v7, v7, 0x1

    #@f0
    if-ltz v10, :cond_fb

    #@f2
    .line 1195
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@f4
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f7
    move-result-object v5

    #@f8
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@fa
    goto :goto_fc

    #@fb
    :cond_fb
    const/4 v5, 0x0

    #@fc
    :goto_fc
    move-object v11, v5

    #@fd
    :cond_fd
    add-int/lit8 v3, v3, -0x1

    #@ff
    const/4 v5, 0x0

    #@100
    goto :goto_a1

    #@101
    .line 1199
    :cond_101
    :goto_101
    iget v3, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@103
    add-int/lit8 v4, v7, 0x1

    #@105
    cmpg-float v5, v3, v13

    #@107
    if-gez v5, :cond_193

    #@109
    .line 1202
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@10b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@10e
    move-result v5

    #@10f
    if-ge v4, v5, :cond_11a

    #@111
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@113
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@116
    move-result-object v5

    #@117
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@119
    goto :goto_11b

    #@11a
    :cond_11a
    const/4 v5, 0x0

    #@11b
    :goto_11b
    if-gtz v12, :cond_11f

    #@11d
    move v10, v9

    #@11e
    goto :goto_127

    #@11f
    .line 1204
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    #@122
    move-result v10

    #@123
    int-to-float v10, v10

    #@124
    int-to-float v11, v12

    #@125
    div-float/2addr v10, v11

    #@126
    add-float/2addr v10, v13

    #@127
    .line 1205
    :goto_127
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@129
    :goto_129
    add-int/lit8 v11, v11, 0x1

    #@12b
    if-ge v11, v6, :cond_193

    #@12d
    cmpl-float v12, v3, v10

    #@12f
    if-ltz v12, :cond_15d

    #@131
    if-le v11, v1, :cond_15d

    #@133
    if-nez v5, :cond_136

    #@135
    goto :goto_193

    #@136
    .line 1210
    :cond_136
    iget v12, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@138
    if-ne v11, v12, :cond_192

    #@13a
    iget-boolean v12, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    #@13c
    if-nez v12, :cond_192

    #@13e
    .line 1211
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@140
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@143
    .line 1212
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@145
    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@147
    invoke-virtual {v12, v0, v11, v5}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@14a
    .line 1217
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@14c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@14f
    move-result v5

    #@150
    if-ge v4, v5, :cond_15b

    #@152
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@154
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@157
    move-result-object v5

    #@158
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@15a
    goto :goto_192

    #@15b
    :cond_15b
    const/4 v5, 0x0

    #@15c
    goto :goto_192

    #@15d
    :cond_15d
    if-eqz v5, :cond_179

    #@15f
    .line 1219
    iget v12, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@161
    if-ne v11, v12, :cond_179

    #@163
    .line 1220
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@165
    add-float/2addr v3, v5

    #@166
    add-int/lit8 v4, v4, 0x1

    #@168
    .line 1222
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@16a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@16d
    move-result v5

    #@16e
    if-ge v4, v5, :cond_15b

    #@170
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@172
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@175
    move-result-object v5

    #@176
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@178
    goto :goto_192

    #@179
    .line 1224
    :cond_179
    invoke-virtual {v0, v11, v4}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@17c
    move-result-object v5

    #@17d
    add-int/lit8 v4, v4, 0x1

    #@17f
    .line 1226
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@181
    add-float/2addr v3, v5

    #@182
    .line 1227
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@184
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@187
    move-result v5

    #@188
    if-ge v4, v5, :cond_15b

    #@18a
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@18c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18f
    move-result-object v5

    #@190
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@192
    :cond_192
    :goto_192
    goto :goto_129

    #@193
    .line 1232
    :cond_193
    :goto_193
    invoke-direct {v0, v8, v7, v2}, Landroidx/viewpager/widget/ViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V

    #@196
    .line 1234
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@198
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@19a
    iget-object v3, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@19c
    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@19f
    .line 1244
    :cond_19f
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@1a1
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@1a4
    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@1a7
    move-result v1

    #@1a8
    const/4 v2, 0x0

    #@1a9
    :goto_1a9
    if-ge v2, v1, :cond_1d2

    #@1ab
    .line 1250
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@1ae
    move-result-object v3

    #@1af
    .line 1251
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b2
    move-result-object v4

    #@1b3
    check-cast v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@1b5
    .line 1252
    iput v2, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    #@1b7
    .line 1253
    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@1b9
    if-nez v5, :cond_1cf

    #@1bb
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    #@1bd
    cmpl-float v5, v5, v9

    #@1bf
    if-nez v5, :cond_1cf

    #@1c1
    .line 1255
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@1c4
    move-result-object v3

    #@1c5
    if-eqz v3, :cond_1cf

    #@1c7
    .line 1257
    iget v5, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    #@1c9
    iput v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    #@1cb
    .line 1258
    iget v3, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@1cd
    iput v3, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    #@1cf
    :cond_1cf
    add-int/lit8 v2, v2, 0x1

    #@1d1
    goto :goto_1a9

    #@1d2
    .line 1262
    :cond_1d2
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    #@1d5
    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->hasFocus()Z

    #@1d8
    move-result v1

    #@1d9
    if-eqz v1, :cond_211

    #@1db
    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    #@1de
    move-result-object v1

    #@1df
    if-eqz v1, :cond_1e6

    #@1e1
    .line 1266
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@1e4
    move-result-object v3

    #@1e5
    goto :goto_1e7

    #@1e6
    :cond_1e6
    const/4 v3, 0x0

    #@1e7
    :goto_1e7
    if-eqz v3, :cond_1ef

    #@1e9
    .line 1267
    iget v1, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@1eb
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@1ed
    if-eq v1, v2, :cond_211

    #@1ef
    :cond_1ef
    const/4 v5, 0x0

    #@1f0
    .line 1268
    :goto_1f0
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@1f3
    move-result v1

    #@1f4
    if-ge v5, v1, :cond_211

    #@1f6
    .line 1269
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@1f9
    move-result-object v1

    #@1fa
    .line 1270
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@1fd
    move-result-object v2

    #@1fe
    if-eqz v2, :cond_20e

    #@200
    .line 1271
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@202
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@204
    if-ne v2, v3, :cond_20e

    #@206
    const/4 v2, 0x2

    #@207
    .line 1272
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    #@20a
    move-result v1

    #@20b
    if-eqz v1, :cond_20e

    #@20d
    goto :goto_211

    #@20e
    :cond_20e
    add-int/lit8 v5, v5, 0x1

    #@210
    goto :goto_1f0

    #@211
    :cond_211
    :goto_211
    return-void

    #@212
    .line 1134
    :cond_212
    :try_start_212
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    #@215
    move-result-object v1

    #@216
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    #@219
    move-result v2

    #@21a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@21d
    move-result-object v1
    :try_end_21e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_212 .. :try_end_21e} :catch_21f

    #@21e
    goto :goto_227

    #@21f
    .line 1136
    :catch_21f
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    #@222
    move-result v1

    #@223
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@226
    move-result-object v1

    #@227
    .line 1138
    :goto_227
    new-instance v2, Ljava/lang/IllegalStateException;

    #@229
    new-instance v3, Ljava/lang/StringBuilder;

    #@22b
    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    #@22d
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@230
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    #@232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@235
    move-result-object v3

    #@236
    const-string v4, ", found: "

    #@238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v3

    #@23c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v3

    #@240
    const-string v4, " Pager id: "

    #@242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v3

    #@246
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v1

    #@24a
    const-string v3, " Pager class: "

    #@24c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v1

    #@250
    .line 1142
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@253
    move-result-object v3

    #@254
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v1

    #@258
    const-string v3, " Problematic adapter: "

    #@25a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v1

    #@25e
    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@260
    .line 1143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@263
    move-result-object v3

    #@264
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v1

    #@268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26b
    move-result-object v1

    #@26c
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26f
    throw v2
.end method

.method public removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 3

    #@0
    .line 594
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 595
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-void
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    #@0
    .line 736
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 737
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 1504
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 1505
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    #@7
    goto :goto_b

    #@8
    .line 1507
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@b
    :goto_b
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 9

    #@0
    .line 506
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_3d

    #@6
    .line 507
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    #@9
    .line 508
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@b
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@e
    move v0, v2

    #@f
    .line 509
    :goto_f
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v3

    #@15
    if-ge v0, v3, :cond_2b

    #@17
    .line 510
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@1f
    .line 511
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@21
    iget v5, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    #@23
    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@25
    invoke-virtual {v4, p0, v5, v3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_f

    #@2b
    .line 513
    :cond_2b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2d
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@30
    .line 514
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@35
    .line 515
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->removeNonDecorViews()V

    #@38
    .line 516
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@3a
    .line 517
    invoke-virtual {p0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    #@3d
    .line 520
    :cond_3d
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@3f
    .line 521
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@41
    .line 522
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    #@43
    if-eqz p1, :cond_89

    #@45
    .line 525
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    #@47
    if-nez v3, :cond_50

    #@49
    .line 526
    new-instance v3, Landroidx/viewpager/widget/ViewPager$PagerObserver;

    #@4b
    invoke-direct {v3, p0}, Landroidx/viewpager/widget/ViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    #@4e
    iput-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    #@50
    .line 528
    :cond_50
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@52
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    #@54
    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    #@57
    .line 529
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@59
    .line 530
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@5b
    const/4 v4, 0x1

    #@5c
    .line 531
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@5e
    .line 532
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@60
    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@63
    move-result v5

    #@64
    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    #@66
    .line 533
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    #@68
    if-ltz v5, :cond_80

    #@6a
    .line 534
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@6c
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@6e
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@70
    invoke-virtual {v3, v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@73
    .line 535
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    #@75
    invoke-virtual {p0, v3, v2, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    #@78
    const/4 v3, -0x1

    #@79
    .line 536
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    #@7b
    .line 537
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@7d
    .line 538
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@7f
    goto :goto_89

    #@80
    :cond_80
    if-nez v3, :cond_86

    #@82
    .line 540
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    #@85
    goto :goto_89

    #@86
    .line 542
    :cond_86
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    #@89
    .line 547
    :cond_89
    :goto_89
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    #@8b
    if-eqz v1, :cond_a9

    #@8d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_a9

    #@93
    .line 548
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    #@95
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@98
    move-result v1

    #@99
    :goto_99
    if-ge v2, v1, :cond_a9

    #@9b
    .line 549
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    #@9d
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a0
    move-result-object v3

    #@a1
    check-cast v3, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    #@a3
    invoke-interface {v3, p0, v0, p1}, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    #@a6
    add-int/lit8 v2, v2, 0x1

    #@a8
    goto :goto_99

    #@a9
    :cond_a9
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 611
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@3
    .line 612
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@5
    xor-int/lit8 v1, v1, 0x1

    #@7
    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    #@a
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 622
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    #@3
    .line 623
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    #@6
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 631
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    #@4
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 9

    #@0
    .line 635
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6e

    #@5
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@8
    move-result v0

    #@9
    if-gtz v0, :cond_c

    #@b
    goto :goto_6e

    #@c
    :cond_c
    if-nez p3, :cond_1e

    #@e
    .line 639
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@10
    if-ne p3, p1, :cond_1e

    #@12
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@14
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result p3

    #@18
    if-eqz p3, :cond_1e

    #@1a
    .line 640
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@1d
    return-void

    #@1e
    :cond_1e
    const/4 p3, 0x1

    #@1f
    if-gez p1, :cond_23

    #@21
    move p1, v1

    #@22
    goto :goto_32

    #@23
    .line 646
    :cond_23
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@25
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@28
    move-result v0

    #@29
    if-lt p1, v0, :cond_32

    #@2b
    .line 647
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2d
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@30
    move-result p1

    #@31
    sub-int/2addr p1, p3

    #@32
    .line 649
    :cond_32
    :goto_32
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@34
    .line 650
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@36
    add-int v3, v2, v0

    #@38
    if-gt p1, v3, :cond_3d

    #@3a
    sub-int/2addr v2, v0

    #@3b
    if-ge p1, v2, :cond_53

    #@3d
    :cond_3d
    move v0, v1

    #@3e
    .line 654
    :goto_3e
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v2

    #@44
    if-ge v0, v2, :cond_53

    #@46
    .line 655
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    #@4e
    iput-boolean p3, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    #@50
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_3e

    #@53
    .line 658
    :cond_53
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@55
    if-eq v0, p1, :cond_58

    #@57
    move v1, p3

    #@58
    .line 660
    :cond_58
    iget-boolean p3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    #@5a
    if-eqz p3, :cond_67

    #@5c
    .line 663
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@5e
    if-eqz v1, :cond_63

    #@60
    .line 665
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    #@63
    .line 667
    :cond_63
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    #@66
    goto :goto_6d

    #@67
    .line 669
    :cond_67
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    #@6a
    .line 670
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    #@6d
    :goto_6d
    return-void

    #@6e
    .line 636
    :cond_6e
    :goto_6e
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@71
    return-void
.end method

.method setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .registers 3

    #@0
    .line 815
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@2
    .line 816
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@4
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_1e

    #@3
    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    const-string v2, "Requested offscreen page limit "

    #@7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d
    move-result-object p1

    #@e
    const-string v1, " too small; defaulting to 1"

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    const-string v1, "ViewPager"

    #@1a
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    move p1, v0

    #@1e
    .line 854
    :cond_1e
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@20
    if-eq p1, v0, :cond_27

    #@22
    .line 855
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    #@24
    .line 856
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    #@27
    :cond_27
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 709
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@2
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    #@0
    .line 869
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@2
    .line 870
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@4
    .line 872
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    #@7
    move-result v1

    #@8
    .line 873
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    #@b
    .line 875
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    #@e
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    #@0
    .line 905
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 893
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz p1, :cond_7

    #@4
    .line 894
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->refreshDrawableState()V

    #@7
    :cond_7
    if-nez p1, :cond_b

    #@9
    const/4 p1, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 895
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    #@f
    .line 896
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->invalidate()V

    #@12
    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    .line 769
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V

    #@4
    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-eqz p2, :cond_6

    #@4
    move v2, v0

    #@5
    goto :goto_7

    #@6
    :cond_6
    move v2, v1

    #@7
    .line 788
    :goto_7
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    #@9
    if-eqz v3, :cond_d

    #@b
    move v3, v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v3, v1

    #@e
    :goto_e
    if-eq v2, v3, :cond_12

    #@10
    move v3, v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v3, v1

    #@13
    .line 789
    :goto_13
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    #@15
    .line 790
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    #@18
    if-eqz v2, :cond_22

    #@1a
    if-eqz p1, :cond_1d

    #@1c
    const/4 v0, 0x2

    #@1d
    .line 792
    :cond_1d
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    #@1f
    .line 793
    iput p3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    #@21
    goto :goto_24

    #@22
    .line 795
    :cond_22
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    #@24
    :goto_24
    if-eqz v3, :cond_29

    #@26
    .line 797
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    #@29
    :cond_29
    return-void
.end method

.method setScrollState(I)V
    .registers 3

    #@0
    .line 488
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 492
    :cond_5
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    #@7
    .line 493
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    #@9
    if-eqz v0, :cond_13

    #@b
    if-eqz p1, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    .line 495
    :goto_10
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->enableLayers(Z)V

    #@13
    .line 497
    :cond_13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnScrollStateChanged(I)V

    #@16
    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 939
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    #@4
    return-void
.end method

.method smoothScrollTo(III)V
    .registers 13

    #@0
    .line 950
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_b

    #@7
    .line 952
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@a
    return-void

    #@b
    .line 957
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@d
    const/4 v2, 0x1

    #@e
    if-eqz v0, :cond_18

    #@10
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_18

    #@16
    move v0, v2

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v0, v1

    #@19
    :goto_19
    if-eqz v0, :cond_35

    #@1b
    .line 963
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    #@1d
    if-eqz v0, :cond_26

    #@1f
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@21
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    #@24
    move-result v0

    #@25
    goto :goto_2c

    #@26
    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@28
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    #@2b
    move-result v0

    #@2c
    .line 965
    :goto_2c
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@2e
    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    #@31
    .line 966
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@34
    goto :goto_39

    #@35
    .line 968
    :cond_35
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    #@38
    move-result v0

    #@39
    :goto_39
    move v4, v0

    #@3a
    .line 970
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    #@3d
    move-result v5

    #@3e
    sub-int v6, p1, v4

    #@40
    sub-int v7, p2, v5

    #@42
    if-nez v6, :cond_50

    #@44
    if-nez v7, :cond_50

    #@46
    .line 974
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    #@49
    .line 975
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    #@4c
    .line 976
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    #@4f
    return-void

    #@50
    .line 980
    :cond_50
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@53
    const/4 p1, 0x2

    #@54
    .line 981
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    #@57
    .line 983
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    #@5a
    move-result p1

    #@5b
    .line 984
    div-int/lit8 p2, p1, 0x2

    #@5d
    .line 985
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@60
    move-result v0

    #@61
    int-to-float v0, v0

    #@62
    const/high16 v2, 0x3f800000    # 1.0f

    #@64
    mul-float/2addr v0, v2

    #@65
    int-to-float p1, p1

    #@66
    div-float/2addr v0, p1

    #@67
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    #@6a
    move-result v0

    #@6b
    int-to-float p2, p2

    #@6c
    .line 987
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    #@6f
    move-result v0

    #@70
    mul-float/2addr v0, p2

    #@71
    add-float/2addr p2, v0

    #@72
    .line 990
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@75
    move-result p3

    #@76
    if-lez p3, :cond_88

    #@78
    int-to-float p1, p3

    #@79
    div-float/2addr p2, p1

    #@7a
    .line 992
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@7d
    move-result p1

    #@7e
    const/high16 p2, 0x447a0000    # 1000.0f

    #@80
    mul-float/2addr p1, p2

    #@81
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@84
    move-result p1

    #@85
    mul-int/lit8 p1, p1, 0x4

    #@87
    goto :goto_a0

    #@88
    .line 994
    :cond_88
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@8a
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@8c
    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    #@8f
    move-result p2

    #@90
    mul-float/2addr p1, p2

    #@91
    .line 995
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@94
    move-result p2

    #@95
    int-to-float p2, p2

    #@96
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    #@98
    int-to-float p3, p3

    #@99
    add-float/2addr p1, p3

    #@9a
    div-float/2addr p2, p1

    #@9b
    add-float/2addr p2, v2

    #@9c
    const/high16 p1, 0x42c80000    # 100.0f

    #@9e
    mul-float/2addr p2, p1

    #@9f
    float-to-int p1, p2

    #@a0
    :goto_a0
    const/16 p2, 0x258

    #@a2
    .line 998
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@a5
    move-result v8

    #@a6
    .line 1002
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    #@a8
    .line 1003
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@aa
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@ad
    .line 1004
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@b0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_d

    #@6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-ne p1, v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p1, 0x1

    #@e
    :goto_e
    return p1
.end method
