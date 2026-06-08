.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroidx/recyclerview/widget/LayoutState;

.field mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    #@0
    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 107
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@6
    const/4 v1, 0x0

    #@7
    .line 130
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@9
    .line 135
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@b
    .line 146
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@d
    const/high16 v0, -0x80000000

    #@f
    .line 152
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@11
    .line 158
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@13
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@18
    const/4 v0, 0x2

    #@19
    .line 163
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@1b
    .line 189
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    #@22
    .line 194
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@24
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    #@27
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@29
    .line 202
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 208
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@2e
    .line 216
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    #@30
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    #@33
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    #@35
    .line 246
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@37
    .line 247
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    #@3a
    .line 248
    new-instance p1, Landroidx/recyclerview/widget/LayoutState;

    #@3c
    invoke-direct {p1}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    #@3f
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@41
    .line 249
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    #@44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    #@0
    .line 229
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 107
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@6
    const/4 v1, 0x0

    #@7
    .line 130
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@9
    .line 135
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@b
    .line 146
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@d
    const/high16 v0, -0x80000000

    #@f
    .line 152
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@11
    .line 158
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@13
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@18
    const/4 v0, 0x2

    #@19
    .line 163
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@1b
    .line 189
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    #@22
    .line 194
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@24
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    #@27
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@29
    .line 202
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 208
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@2e
    .line 216
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    #@30
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    #@33
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    #@35
    .line 230
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    #@38
    move-result-object p1

    #@39
    .line 231
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    #@3b
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    #@3e
    .line 232
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    #@40
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    #@43
    .line 233
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    #@45
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    #@48
    .line 234
    new-instance p1, Landroidx/recyclerview/widget/LayoutState;

    #@4a
    invoke-direct {p1}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    #@4d
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@4f
    .line 235
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    #@52
    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .registers 4

    #@0
    .line 1806
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    :goto_4
    if-ltz v0, :cond_10

    #@6
    .line 1807
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_4

    #@10
    :cond_10
    return-void
.end method

.method private applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .registers 5

    #@0
    .line 786
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@2
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    #@4
    if-lez v0, :cond_4d

    #@6
    .line 787
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@8
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    #@a
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@c
    if-ne v0, v1, :cond_42

    #@e
    const/4 v0, 0x0

    #@f
    .line 788
    :goto_f
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@11
    if-ge v0, v1, :cond_4d

    #@13
    .line 789
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@15
    aget-object v1, v1, v0

    #@17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    #@1a
    .line 790
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@1c
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    #@1e
    aget v1, v1, v0

    #@20
    const/high16 v2, -0x80000000

    #@22
    if-eq v1, v2, :cond_38

    #@24
    .line 792
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@26
    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    #@28
    if-eqz v2, :cond_31

    #@2a
    .line 793
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@2c
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@2f
    move-result v2

    #@30
    goto :goto_37

    #@31
    .line 795
    :cond_31
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@33
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@36
    move-result v2

    #@37
    :goto_37
    add-int/2addr v1, v2

    #@38
    .line 798
    :cond_38
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@3a
    aget-object v2, v2, v0

    #@3c
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_f

    #@42
    .line 801
    :cond_42
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    #@47
    .line 802
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@49
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    #@4b
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    #@4d
    .line 805
    :cond_4d
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@4f
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    #@51
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    #@53
    .line 806
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@55
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    #@57
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    #@5a
    .line 807
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    #@5d
    .line 809
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@5f
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    #@61
    const/4 v1, -0x1

    #@62
    if-eq v0, v1, :cond_71

    #@64
    .line 810
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@66
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    #@68
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@6a
    .line 811
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@6c
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    #@6e
    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@70
    goto :goto_75

    #@71
    .line 813
    :cond_71
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@73
    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@75
    .line 815
    :goto_75
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@77
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    #@79
    const/4 v0, 0x1

    #@7a
    if-le p1, v0, :cond_8c

    #@7c
    .line 816
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@7e
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@80
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    #@82
    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@84
    .line 817
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@86
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@88
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    #@8a
    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@8c
    :cond_8c
    return-void
.end method

.method private attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V
    .registers 5

    #@0
    .line 1750
    iget p3, p3, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p3, v0, :cond_13

    #@5
    .line 1751
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@7
    if-eqz p3, :cond_d

    #@9
    .line 1752
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    #@c
    goto :goto_20

    #@d
    .line 1754
    :cond_d
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@f
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    #@12
    goto :goto_20

    #@13
    .line 1757
    :cond_13
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@15
    if-eqz p3, :cond_1b

    #@17
    .line 1758
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    #@1a
    goto :goto_20

    #@1b
    .line 1760
    :cond_1b
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@1d
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    #@20
    :goto_20
    return-void
.end method

.method private calculateScrollDirectionForPosition(I)I
    .registers 5

    #@0
    .line 2043
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x1

    #@6
    if-nez v0, :cond_e

    #@8
    .line 2044
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@a
    if-eqz p1, :cond_d

    #@c
    move v1, v2

    #@d
    :cond_d
    return v1

    #@e
    .line 2046
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@11
    move-result v0

    #@12
    if-ge p1, v0, :cond_16

    #@14
    move p1, v2

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    .line 2047
    :goto_17
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@19
    if-eq p1, v0, :cond_1c

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v1, v2

    #@1d
    :goto_1d
    return v1
.end method

.method private checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z
    .registers 5

    #@0
    .line 403
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_2a

    #@5
    .line 404
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    #@8
    move-result v0

    #@9
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@e
    move-result v2

    #@f
    if-ge v0, v2, :cond_47

    #@11
    .line 406
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@13
    iget-object v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/view/View;

    #@21
    .line 407
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@24
    move-result-object p1

    #@25
    .line 408
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@27
    xor-int/lit8 p1, p1, 0x1

    #@29
    return p1

    #@2a
    .line 410
    :cond_2a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    #@2d
    move-result v0

    #@2e
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@33
    move-result v2

    #@34
    if-le v0, v2, :cond_47

    #@36
    .line 412
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/view/View;

    #@3e
    .line 413
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@41
    move-result-object p1

    #@42
    .line 414
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@44
    xor-int/lit8 p1, p1, 0x1

    #@46
    return p1

    #@47
    :cond_47
    return v1
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 8

    #@0
    .line 1092
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 1095
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@a
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@c
    xor-int/lit8 v0, v0, 0x1

    #@e
    .line 1096
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@14
    xor-int/lit8 v0, v0, 0x1

    #@16
    .line 1097
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    #@19
    move-result-object v3

    #@1a
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@1c
    move-object v0, p1

    #@1d
    move-object v4, p0

    #@1e
    .line 1095
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    #@21
    move-result p1

    #@22
    return p1
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 9

    #@0
    .line 1072
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 1075
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@a
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@c
    xor-int/lit8 v0, v0, 0x1

    #@e
    .line 1076
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@14
    xor-int/lit8 v0, v0, 0x1

    #@16
    .line 1077
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    #@19
    move-result-object v3

    #@1a
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@1c
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@1e
    move-object v0, p1

    #@1f
    move-object v4, p0

    #@20
    .line 1075
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    #@23
    move-result p1

    #@24
    return p1
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 8

    #@0
    .line 1112
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 1115
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@a
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@c
    xor-int/lit8 v0, v0, 0x1

    #@e
    .line 1116
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@14
    xor-int/lit8 v0, v0, 0x1

    #@16
    .line 1117
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    #@19
    move-result-object v3

    #@1a
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    #@1c
    move-object v0, p1

    #@1d
    move-object v4, p0

    #@1e
    .line 1115
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    #@21
    move-result p1

    #@22
    return p1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    if-eq p1, v1, :cond_43

    #@4
    const/4 v2, 0x2

    #@5
    if-eq p1, v2, :cond_36

    #@7
    const/16 v2, 0x11

    #@9
    const/high16 v3, -0x80000000

    #@b
    if-eq p1, v2, :cond_2f

    #@d
    const/16 v2, 0x21

    #@f
    if-eq p1, v2, :cond_28

    #@11
    const/16 v0, 0x42

    #@13
    if-eq p1, v0, :cond_21

    #@15
    const/16 v0, 0x82

    #@17
    if-eq p1, v0, :cond_1a

    #@19
    return v3

    #@1a
    .line 2413
    :cond_1a
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@1c
    if-ne p1, v1, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v1, v3

    #@20
    :goto_20
    return v1

    #@21
    .line 2419
    :cond_21
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@23
    if-nez p1, :cond_26

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v1, v3

    #@27
    :goto_27
    return v1

    #@28
    .line 2410
    :cond_28
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2a
    if-ne p1, v1, :cond_2d

    #@2c
    goto :goto_2e

    #@2d
    :cond_2d
    move v0, v3

    #@2e
    :goto_2e
    return v0

    #@2f
    .line 2416
    :cond_2f
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@31
    if-nez p1, :cond_34

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v0, v3

    #@35
    :goto_35
    return v0

    #@36
    .line 2402
    :cond_36
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@38
    if-ne p1, v1, :cond_3b

    #@3a
    return v1

    #@3b
    .line 2404
    :cond_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@3e
    move-result p1

    #@3f
    if-eqz p1, :cond_42

    #@41
    return v0

    #@42
    :cond_42
    return v1

    #@43
    .line 2394
    :cond_43
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@45
    if-ne p1, v1, :cond_48

    #@47
    return v0

    #@48
    .line 2396
    :cond_48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@4b
    move-result p1

    #@4c
    if-eqz p1, :cond_4f

    #@4e
    return v1

    #@4f
    :cond_4f
    return v0
.end method

.method private createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6

    #@0
    .line 1732
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@2
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    #@5
    .line 1733
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@7
    new-array v1, v1, [I

    #@9
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    #@b
    const/4 v1, 0x0

    #@c
    .line 1734
    :goto_c
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@e
    if-ge v1, v2, :cond_21

    #@10
    .line 1735
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    #@12
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@14
    aget-object v3, v3, v1

    #@16
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@19
    move-result v3

    #@1a
    sub-int v3, p1, v3

    #@1c
    aput v3, v2, v1

    #@1e
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_c

    #@21
    :cond_21
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6

    #@0
    .line 1741
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@2
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    #@5
    .line 1742
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@7
    new-array v1, v1, [I

    #@9
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    #@b
    const/4 v1, 0x0

    #@c
    .line 1743
    :goto_c
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@e
    if-ge v1, v2, :cond_20

    #@10
    .line 1744
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    #@12
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@14
    aget-object v3, v3, v1

    #@16
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@19
    move-result v3

    #@1a
    sub-int/2addr v3, p1

    #@1b
    aput v3, v2, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_c

    #@20
    :cond_20
    return-object v0
.end method

.method private createOrientationHelpers()V
    .registers 2

    #@0
    .line 258
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@8
    .line 259
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@a
    rsub-int/lit8 v0, v0, 0x1

    #@c
    .line 260
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@12
    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 20

    #@0
    move-object/from16 v6, p0

    #@2
    move-object/from16 v7, p1

    #@4
    move-object/from16 v8, p2

    #@6
    .line 1575
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    #@8
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@a
    const/4 v9, 0x0

    #@b
    const/4 v10, 0x1

    #@c
    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    #@f
    .line 1580
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@11
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    #@13
    if-eqz v0, :cond_20

    #@15
    .line 1581
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@17
    if-ne v0, v10, :cond_1d

    #@19
    const v0, 0x7fffffff

    #@1c
    goto :goto_2f

    #@1d
    :cond_1d
    const/high16 v0, -0x80000000

    #@1f
    goto :goto_2f

    #@20
    .line 1587
    :cond_20
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@22
    if-ne v0, v10, :cond_2a

    #@24
    .line 1588
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@26
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@28
    add-int/2addr v0, v1

    #@29
    goto :goto_2f

    #@2a
    .line 1590
    :cond_2a
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@2c
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@2e
    sub-int/2addr v0, v1

    #@2f
    :goto_2f
    move v11, v0

    #@30
    .line 1594
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@32
    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    #@35
    .line 1601
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@37
    if-eqz v0, :cond_40

    #@39
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@3b
    .line 1602
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@3e
    move-result v0

    #@3f
    goto :goto_46

    #@40
    :cond_40
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@42
    .line 1603
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@45
    move-result v0

    #@46
    :goto_46
    move v12, v0

    #@47
    move v0, v9

    #@48
    .line 1605
    :goto_48
    invoke-virtual/range {p2 .. p3}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    #@4b
    move-result v1

    #@4c
    const/4 v2, -0x1

    #@4d
    if-eqz v1, :cond_1c7

    #@4f
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@51
    iget-boolean v1, v1, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    #@53
    if-nez v1, :cond_5d

    #@55
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    #@57
    .line 1606
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    #@5a
    move-result v1

    #@5b
    if-nez v1, :cond_1c7

    #@5d
    .line 1607
    :cond_5d
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    #@60
    move-result-object v13

    #@61
    .line 1608
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@64
    move-result-object v0

    #@65
    move-object v14, v0

    #@66
    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@68
    .line 1609
    invoke-virtual {v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    #@6b
    move-result v0

    #@6c
    .line 1610
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@6e
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    #@71
    move-result v1

    #@72
    if-ne v1, v2, :cond_76

    #@74
    move v3, v10

    #@75
    goto :goto_77

    #@76
    :cond_76
    move v3, v9

    #@77
    :goto_77
    if-eqz v3, :cond_8c

    #@79
    .line 1614
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@7b
    if-eqz v1, :cond_82

    #@7d
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@7f
    aget-object v1, v1, v9

    #@81
    goto :goto_86

    #@82
    :cond_82
    invoke-direct {v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@85
    move-result-object v1

    #@86
    .line 1615
    :goto_86
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@88
    invoke-virtual {v4, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    #@8b
    goto :goto_90

    #@8c
    .line 1623
    :cond_8c
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@8e
    aget-object v1, v4, v1

    #@90
    :goto_90
    move-object v15, v1

    #@91
    .line 1626
    iput-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@93
    .line 1627
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@95
    if-ne v1, v10, :cond_9b

    #@97
    .line 1628
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    #@9a
    goto :goto_9e

    #@9b
    .line 1630
    :cond_9b
    invoke-virtual {v6, v13, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    #@9e
    .line 1632
    :goto_9e
    invoke-direct {v6, v13, v14, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    #@a1
    .line 1636
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@a3
    if-ne v1, v10, :cond_cf

    #@a5
    .line 1637
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@a7
    if-eqz v1, :cond_ae

    #@a9
    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    #@ac
    move-result v1

    #@ad
    goto :goto_b2

    #@ae
    .line 1638
    :cond_ae
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@b1
    move-result v1

    #@b2
    .line 1639
    :goto_b2
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@b4
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@b7
    move-result v4

    #@b8
    add-int/2addr v4, v1

    #@b9
    if-eqz v3, :cond_cc

    #@bb
    .line 1640
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@bd
    if-eqz v5, :cond_cc

    #@bf
    .line 1642
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@c2
    move-result-object v5

    #@c3
    .line 1643
    iput v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    #@c5
    .line 1644
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@c7
    .line 1645
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@c9
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    #@cc
    :cond_cc
    move v5, v4

    #@cd
    move v4, v1

    #@ce
    goto :goto_f8

    #@cf
    .line 1648
    :cond_cf
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@d1
    if-eqz v1, :cond_d8

    #@d3
    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    #@d6
    move-result v1

    #@d7
    goto :goto_dc

    #@d8
    .line 1649
    :cond_d8
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@db
    move-result v1

    #@dc
    .line 1650
    :goto_dc
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@de
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@e1
    move-result v4

    #@e2
    sub-int v4, v1, v4

    #@e4
    if-eqz v3, :cond_f7

    #@e6
    .line 1651
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@e8
    if-eqz v5, :cond_f7

    #@ea
    .line 1653
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@ed
    move-result-object v5

    #@ee
    .line 1654
    iput v10, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    #@f0
    .line 1655
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@f2
    .line 1656
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@f4
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    #@f7
    :cond_f7
    move v5, v1

    #@f8
    .line 1661
    :goto_f8
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@fa
    if-eqz v1, :cond_121

    #@fc
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@fe
    if-ne v1, v2, :cond_121

    #@100
    if-eqz v3, :cond_105

    #@102
    .line 1663
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@104
    goto :goto_121

    #@105
    .line 1666
    :cond_105
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@107
    if-ne v1, v10, :cond_10e

    #@109
    .line 1667
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    #@10c
    move-result v1

    #@10d
    goto :goto_112

    #@10e
    .line 1669
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    #@111
    move-result v1

    #@112
    :goto_112
    xor-int/2addr v1, v10

    #@113
    if-eqz v1, :cond_121

    #@115
    .line 1672
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@117
    .line 1673
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@11a
    move-result-object v0

    #@11b
    if-eqz v0, :cond_11f

    #@11d
    .line 1675
    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    #@11f
    .line 1677
    :cond_11f
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@121
    .line 1681
    :cond_121
    :goto_121
    invoke-direct {v6, v13, v14, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V

    #@124
    .line 1684
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@127
    move-result v0

    #@128
    if-eqz v0, :cond_154

    #@12a
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@12c
    if-ne v0, v10, :cond_154

    #@12e
    .line 1685
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@130
    if-eqz v0, :cond_139

    #@132
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@134
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@137
    move-result v0

    #@138
    goto :goto_149

    #@139
    :cond_139
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@13b
    .line 1686
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@13e
    move-result v0

    #@13f
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@141
    sub-int/2addr v1, v10

    #@142
    iget v2, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@144
    sub-int/2addr v1, v2

    #@145
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@147
    mul-int/2addr v1, v2

    #@148
    sub-int/2addr v0, v1

    #@149
    .line 1688
    :goto_149
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@14b
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@14e
    move-result v1

    #@14f
    sub-int v1, v0, v1

    #@151
    move v9, v0

    #@152
    move v3, v1

    #@153
    goto :goto_174

    #@154
    .line 1690
    :cond_154
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@156
    if-eqz v0, :cond_15f

    #@158
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@15a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@15d
    move-result v0

    #@15e
    goto :goto_16b

    #@15f
    :cond_15f
    iget v0, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@161
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@163
    mul-int/2addr v0, v1

    #@164
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@166
    .line 1692
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@169
    move-result v1

    #@16a
    add-int/2addr v0, v1

    #@16b
    .line 1693
    :goto_16b
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@16d
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@170
    move-result v1

    #@171
    add-int/2addr v1, v0

    #@172
    move v3, v0

    #@173
    move v9, v1

    #@174
    .line 1696
    :goto_174
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@176
    if-ne v0, v10, :cond_182

    #@178
    move-object/from16 v0, p0

    #@17a
    move-object v1, v13

    #@17b
    move v2, v3

    #@17c
    move v3, v4

    #@17d
    move v4, v9

    #@17e
    .line 1697
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    #@181
    goto :goto_18b

    #@182
    :cond_182
    move-object/from16 v0, p0

    #@184
    move-object v1, v13

    #@185
    move v2, v4

    #@186
    move v4, v5

    #@187
    move v5, v9

    #@188
    .line 1699
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    #@18b
    .line 1702
    :goto_18b
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@18d
    if-eqz v0, :cond_197

    #@18f
    .line 1703
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@191
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@193
    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    #@196
    goto :goto_19e

    #@197
    .line 1705
    :cond_197
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@199
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@19b
    invoke-direct {v6, v15, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    #@19e
    .line 1707
    :goto_19e
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@1a0
    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    #@1a3
    .line 1708
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@1a5
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    #@1a7
    if-eqz v0, :cond_1c2

    #@1a9
    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    #@1ac
    move-result v0

    #@1ad
    if-eqz v0, :cond_1c2

    #@1af
    .line 1709
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@1b1
    if-eqz v0, :cond_1b9

    #@1b3
    .line 1710
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    #@1b5
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    #@1b8
    goto :goto_1c2

    #@1b9
    .line 1712
    :cond_1b9
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    #@1bb
    iget v1, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@1bd
    const/4 v3, 0x0

    #@1be
    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    #@1c1
    goto :goto_1c3

    #@1c2
    :cond_1c2
    :goto_1c2
    const/4 v3, 0x0

    #@1c3
    :goto_1c3
    move v9, v3

    #@1c4
    move v0, v10

    #@1c5
    goto/16 :goto_48

    #@1c7
    :cond_1c7
    move v3, v9

    #@1c8
    if-nez v0, :cond_1cf

    #@1ca
    .line 1718
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@1cc
    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    #@1cf
    .line 1721
    :cond_1cf
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@1d1
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@1d3
    if-ne v0, v2, :cond_1e7

    #@1d5
    .line 1722
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1d7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@1da
    move-result v0

    #@1db
    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    #@1de
    move-result v0

    #@1df
    .line 1723
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1e1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@1e4
    move-result v1

    #@1e5
    sub-int/2addr v1, v0

    #@1e6
    goto :goto_1f9

    #@1e7
    .line 1725
    :cond_1e7
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1e9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@1ec
    move-result v0

    #@1ed
    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    #@1f0
    move-result v0

    #@1f1
    .line 1726
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1f3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@1f6
    move-result v1

    #@1f7
    sub-int v1, v0, v1

    #@1f9
    :goto_1f9
    if-lez v1, :cond_202

    #@1fb
    .line 1728
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@1fd
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@200
    move-result v9

    #@201
    goto :goto_203

    #@202
    :cond_202
    move v9, v3

    #@203
    :goto_203
    return v9
.end method

.method private findFirstReferenceChildPosition(I)I
    .registers 6

    #@0
    .line 2218
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_18

    #@8
    .line 2220
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    .line 2221
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    #@f
    move-result v3

    #@10
    if-ltz v3, :cond_15

    #@12
    if-ge v3, p1, :cond_15

    #@14
    return v3

    #@15
    :cond_15
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_6

    #@18
    :cond_18
    return v1
.end method

.method private findLastReferenceChildPosition(I)I
    .registers 4

    #@0
    .line 2235
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_18

    #@8
    .line 2236
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 2237
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    #@f
    move-result v1

    #@10
    if-ltz v1, :cond_15

    #@12
    if-ge v1, p1, :cond_15

    #@14
    return v1

    #@15
    :cond_15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_6

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    return p1
.end method

.method private fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .registers 6

    #@0
    const/high16 v0, -0x80000000

    #@2
    .line 1411
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    #@5
    move-result v1

    #@6
    if-ne v1, v0, :cond_9

    #@8
    return-void

    #@9
    .line 1415
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@e
    move-result v0

    #@f
    sub-int/2addr v0, v1

    #@10
    if-lez v0, :cond_22

    #@12
    neg-int v1, v0

    #@13
    .line 1418
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@16
    move-result p1

    #@17
    neg-int p1, p1

    #@18
    sub-int/2addr v0, p1

    #@19
    if-eqz p3, :cond_22

    #@1b
    if-lez v0, :cond_22

    #@1d
    .line 1424
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1f
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    #@22
    :cond_22
    return-void
.end method

.method private fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .registers 6

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1430
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_a

    #@9
    return-void

    #@a
    .line 1434
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@f
    move-result v0

    #@10
    sub-int/2addr v1, v0

    #@11
    if-lez v1, :cond_22

    #@13
    .line 1437
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@16
    move-result p1

    #@17
    sub-int/2addr v1, p1

    #@18
    if-eqz p3, :cond_22

    #@1a
    if-lez v1, :cond_22

    #@1c
    .line 1443
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1e
    neg-int p2, v1

    #@1f
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    #@22
    :cond_22
    return-void
.end method

.method private getMaxEnd(I)I
    .registers 5

    #@0
    .line 1885
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    .line 1886
    :goto_a
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@c
    if-ge v1, v2, :cond_1c

    #@e
    .line 1887
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@10
    aget-object v2, v2, v1

    #@12
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@15
    move-result v2

    #@16
    if-le v2, v0, :cond_19

    #@18
    move v0, v2

    #@19
    :cond_19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    return v0
.end method

.method private getMaxStart(I)I
    .registers 5

    #@0
    .line 1843
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    .line 1844
    :goto_a
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@c
    if-ge v1, v2, :cond_1c

    #@e
    .line 1845
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@10
    aget-object v2, v2, v1

    #@12
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@15
    move-result v2

    #@16
    if-le v2, v0, :cond_19

    #@18
    move v0, v2

    #@19
    :cond_19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    return v0
.end method

.method private getMinEnd(I)I
    .registers 5

    #@0
    .line 1896
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    .line 1897
    :goto_a
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@c
    if-ge v1, v2, :cond_1c

    #@e
    .line 1898
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@10
    aget-object v2, v2, v1

    #@12
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@15
    move-result v2

    #@16
    if-ge v2, v0, :cond_19

    #@18
    move v0, v2

    #@19
    :cond_19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    return v0
.end method

.method private getMinStart(I)I
    .registers 5

    #@0
    .line 1854
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    .line 1855
    :goto_a
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@c
    if-ge v1, v2, :cond_1c

    #@e
    .line 1856
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@10
    aget-object v2, v2, v1

    #@12
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@15
    move-result v2

    #@16
    if-ge v2, v0, :cond_19

    #@18
    move v0, v2

    #@19
    :cond_19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    return v0
.end method

.method private getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .registers 9

    #@0
    .line 1980
    iget v0, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_f

    #@9
    .line 1983
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@b
    sub-int/2addr v0, v1

    #@c
    const/4 v2, -0x1

    #@d
    move v3, v2

    #@e
    goto :goto_13

    #@f
    .line 1988
    :cond_f
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@11
    const/4 v0, 0x0

    #@12
    move v3, v1

    #@13
    .line 1991
    :goto_13
    iget p1, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@15
    const/4 v4, 0x0

    #@16
    if-ne p1, v1, :cond_32

    #@18
    .line 1994
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@1d
    move-result p1

    #@1e
    const v1, 0x7fffffff

    #@21
    :goto_21
    if-eq v0, v2, :cond_31

    #@23
    .line 1996
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@25
    aget-object v5, v5, v0

    #@27
    .line 1997
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@2a
    move-result v6

    #@2b
    if-ge v6, v1, :cond_2f

    #@2d
    move-object v4, v5

    #@2e
    move v1, v6

    #@2f
    :cond_2f
    add-int/2addr v0, v3

    #@30
    goto :goto_21

    #@31
    :cond_31
    return-object v4

    #@32
    .line 2007
    :cond_32
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@37
    move-result p1

    #@38
    const/high16 v1, -0x80000000

    #@3a
    :goto_3a
    if-eq v0, v2, :cond_4a

    #@3c
    .line 2009
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@3e
    aget-object v5, v5, v0

    #@40
    .line 2010
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@43
    move-result v6

    #@44
    if-le v6, v1, :cond_48

    #@46
    move-object v4, v5

    #@47
    move v1, v6

    #@48
    :cond_48
    add-int/2addr v0, v3

    #@49
    goto :goto_3a

    #@4a
    :cond_4a
    return-object v4
.end method

.method private handleUpdate(III)V
    .registers 10

    #@0
    .line 1531
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@7
    move-result v0

    #@8
    goto :goto_d

    #@9
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@c
    move-result v0

    #@d
    :goto_d
    const/16 v1, 0x8

    #@f
    if-ne p3, v1, :cond_1a

    #@11
    if-ge p1, p2, :cond_16

    #@13
    add-int/lit8 v2, p2, 0x1

    #@15
    goto :goto_1c

    #@16
    :cond_16
    add-int/lit8 v2, p1, 0x1

    #@18
    move v3, p2

    #@19
    goto :goto_1d

    #@1a
    :cond_1a
    add-int v2, p1, p2

    #@1c
    :goto_1c
    move v3, p1

    #@1d
    .line 1548
    :goto_1d
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@1f
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    #@22
    const/4 v4, 0x1

    #@23
    if-eq p3, v4, :cond_3c

    #@25
    const/4 v5, 0x2

    #@26
    if-eq p3, v5, :cond_36

    #@28
    if-eq p3, v1, :cond_2b

    #@2a
    goto :goto_41

    #@2b
    .line 1558
    :cond_2b
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@2d
    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    #@30
    .line 1559
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@32
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    #@35
    goto :goto_41

    #@36
    .line 1554
    :cond_36
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@38
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    #@3b
    goto :goto_41

    #@3c
    .line 1551
    :cond_3c
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@3e
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    #@41
    :goto_41
    if-gt v2, v0, :cond_44

    #@43
    return-void

    #@44
    .line 1567
    :cond_44
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@46
    if-eqz p1, :cond_4d

    #@48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@4b
    move-result p1

    #@4c
    goto :goto_51

    #@4d
    :cond_4d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@50
    move-result p1

    #@51
    :goto_51
    if-gt v3, p1, :cond_56

    #@53
    .line 1569
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@56
    :cond_56
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 9

    #@0
    .line 1193
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    #@5
    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@b
    .line 1195
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    #@d
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    #@f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@11
    add-int/2addr v1, v2

    #@12
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    #@14
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    #@16
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@18
    add-int/2addr v2, v3

    #@19
    invoke-direct {p0, p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    #@1c
    move-result p2

    #@1d
    .line 1197
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    #@1f
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    #@21
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@23
    add-int/2addr v1, v2

    #@24
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    #@26
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    #@28
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@2a
    add-int/2addr v2, v3

    #@2b
    invoke-direct {p0, p3, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    #@2e
    move-result p3

    #@2f
    if-eqz p4, :cond_36

    #@31
    .line 1200
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    #@34
    move-result p4

    #@35
    goto :goto_3a

    #@36
    .line 1201
    :cond_36
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    #@39
    move-result p4

    #@3a
    :goto_3a
    if-eqz p4, :cond_3f

    #@3c
    .line 1203
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@3f
    :cond_3f
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .registers 10

    #@0
    .line 1128
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_43

    #@5
    .line 1129
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@7
    if-ne v0, v1, :cond_26

    #@9
    .line 1130
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    #@b
    .line 1132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    #@e
    move-result v2

    #@f
    .line 1133
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    #@12
    move-result v3

    #@13
    .line 1134
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    #@16
    move-result v4

    #@17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    #@1a
    move-result v5

    #@1b
    add-int/2addr v4, v5

    #@1c
    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    #@1e
    .line 1131
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@21
    move-result p2

    #@22
    .line 1130
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    #@25
    goto :goto_95

    #@26
    .line 1142
    :cond_26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    #@29
    move-result v0

    #@2a
    .line 1143
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    #@2d
    move-result v2

    #@2e
    .line 1144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    #@31
    move-result v3

    #@32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    #@35
    move-result v4

    #@36
    add-int/2addr v3, v4

    #@37
    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    #@39
    .line 1141
    invoke-static {v0, v2, v3, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@3c
    move-result p2

    #@3d
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    #@3f
    .line 1139
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    #@42
    goto :goto_95

    #@43
    .line 1151
    :cond_43
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@45
    const/4 v2, 0x0

    #@46
    if-ne v0, v1, :cond_6f

    #@48
    .line 1154
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@4a
    .line 1158
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    #@4d
    move-result v3

    #@4e
    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    #@50
    .line 1156
    invoke-static {v0, v3, v2, v4, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@53
    move-result v0

    #@54
    .line 1163
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    #@57
    move-result v2

    #@58
    .line 1164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    #@5b
    move-result v3

    #@5c
    .line 1165
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    #@5f
    move-result v4

    #@60
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    #@63
    move-result v5

    #@64
    add-int/2addr v4, v5

    #@65
    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    #@67
    .line 1162
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@6a
    move-result p2

    #@6b
    .line 1154
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    #@6e
    goto :goto_95

    #@6f
    .line 1175
    :cond_6f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    #@72
    move-result v0

    #@73
    .line 1176
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    #@76
    move-result v3

    #@77
    .line 1177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    #@7a
    move-result v4

    #@7b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    #@7e
    move-result v5

    #@7f
    add-int/2addr v4, v5

    #@80
    iget v5, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    #@82
    .line 1174
    invoke-static {v0, v3, v4, v5, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@85
    move-result v0

    #@86
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@88
    .line 1182
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    #@8b
    move-result v3

    #@8c
    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    #@8e
    .line 1180
    invoke-static {v1, v3, v2, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@91
    move-result p2

    #@92
    .line 1172
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    #@95
    :goto_95
    return-void
.end method

.method private onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .registers 12

    #@0
    .line 611
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@2
    .line 612
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@4
    const/4 v2, -0x1

    #@5
    if-nez v1, :cond_b

    #@7
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@9
    if-eq v1, v2, :cond_18

    #@b
    .line 613
    :cond_b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_18

    #@11
    .line 614
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@14
    .line 615
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    #@17
    return-void

    #@18
    .line 620
    :cond_18
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    if-eqz v1, :cond_29

    #@1e
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@20
    if-ne v1, v2, :cond_29

    #@22
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@24
    if-eqz v1, :cond_27

    #@26
    goto :goto_29

    #@27
    :cond_27
    move v1, v3

    #@28
    goto :goto_2a

    #@29
    :cond_29
    :goto_29
    move v1, v4

    #@2a
    :goto_2a
    if-eqz v1, :cond_43

    #@2c
    .line 623
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    #@2f
    .line 624
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@31
    if-eqz v5, :cond_37

    #@33
    .line 625
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    #@36
    goto :goto_3e

    #@37
    .line 627
    :cond_37
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    #@3a
    .line 628
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@3c
    iput-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@3e
    .line 630
    :goto_3e
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    #@41
    .line 631
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    #@43
    .line 633
    :cond_43
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@45
    if-nez v5, :cond_60

    #@47
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@49
    if-ne v5, v2, :cond_60

    #@4b
    .line 634
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@4d
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@4f
    if-ne v5, v6, :cond_59

    #@51
    .line 635
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@54
    move-result v5

    #@55
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    #@57
    if-eq v5, v6, :cond_60

    #@59
    .line 636
    :cond_59
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@5b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    #@5e
    .line 637
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    #@60
    .line 641
    :cond_60
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@63
    move-result v5

    #@64
    if-lez v5, :cond_cb

    #@66
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@68
    if-eqz v5, :cond_6e

    #@6a
    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    #@6c
    if-ge v5, v4, :cond_cb

    #@6e
    .line 643
    :cond_6e
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    #@70
    if-eqz v5, :cond_90

    #@72
    move v1, v3

    #@73
    .line 644
    :goto_73
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@75
    if-ge v1, v5, :cond_cb

    #@77
    .line 646
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@79
    aget-object v5, v5, v1

    #@7b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    #@7e
    .line 647
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@80
    const/high16 v6, -0x80000000

    #@82
    if-eq v5, v6, :cond_8d

    #@84
    .line 648
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@86
    aget-object v5, v5, v1

    #@88
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@8a
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    #@8d
    :cond_8d
    add-int/lit8 v1, v1, 0x1

    #@8f
    goto :goto_73

    #@90
    :cond_90
    if-nez v1, :cond_b1

    #@92
    .line 652
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@94
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    #@96
    if-nez v1, :cond_99

    #@98
    goto :goto_b1

    #@99
    :cond_99
    move v1, v3

    #@9a
    .line 659
    :goto_9a
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@9c
    if-ge v1, v5, :cond_cb

    #@9e
    .line 660
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@a0
    aget-object v5, v5, v1

    #@a2
    .line 661
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    #@a5
    .line 662
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@a7
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    #@a9
    aget v6, v6, v1

    #@ab
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    #@ae
    add-int/lit8 v1, v1, 0x1

    #@b0
    goto :goto_9a

    #@b1
    :cond_b1
    :goto_b1
    move v1, v3

    #@b2
    .line 653
    :goto_b2
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@b4
    if-ge v1, v5, :cond_c4

    #@b6
    .line 654
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@b8
    aget-object v5, v5, v1

    #@ba
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@bc
    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@be
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    #@c1
    add-int/lit8 v1, v1, 0x1

    #@c3
    goto :goto_b2

    #@c4
    .line 657
    :cond_c4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@c6
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@c8
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    #@cb
    .line 667
    :cond_cb
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@ce
    .line 668
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@d0
    iput-boolean v3, v1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    #@d2
    .line 669
    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@d4
    .line 670
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@d6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@d9
    move-result v1

    #@da
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    #@dd
    .line 671
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@df
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    #@e2
    .line 672
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@e4
    if-eqz v1, :cond_102

    #@e6
    .line 674
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    #@e9
    .line 675
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@eb
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@ee
    .line 677
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    #@f1
    .line 678
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@f3
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@f5
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@f7
    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@f9
    add-int/2addr v2, v5

    #@fa
    iput v2, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@fc
    .line 679
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@fe
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@101
    goto :goto_11d

    #@102
    .line 682
    :cond_102
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    #@105
    .line 683
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@107
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@10a
    .line 685
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    #@10d
    .line 686
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@10f
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@111
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@113
    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@115
    add-int/2addr v2, v5

    #@116
    iput v2, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@118
    .line 687
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@11a
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@11d
    .line 690
    :goto_11d
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    #@120
    .line 692
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@123
    move-result v1

    #@124
    if-lez v1, :cond_137

    #@126
    .line 693
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@128
    if-eqz v1, :cond_131

    #@12a
    .line 694
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    #@12d
    .line 695
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    #@130
    goto :goto_137

    #@131
    .line 697
    :cond_131
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    #@134
    .line 698
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    #@137
    :cond_137
    :goto_137
    if-eqz p3, :cond_164

    #@139
    .line 702
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@13c
    move-result p3

    #@13d
    if-nez p3, :cond_164

    #@13f
    .line 703
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@141
    if-eqz p3, :cond_155

    #@143
    .line 704
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@146
    move-result p3

    #@147
    if-lez p3, :cond_155

    #@149
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@14b
    if-nez p3, :cond_153

    #@14d
    .line 705
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    #@150
    move-result-object p3

    #@151
    if-eqz p3, :cond_155

    #@153
    :cond_153
    move p3, v4

    #@154
    goto :goto_156

    #@155
    :cond_155
    move p3, v3

    #@156
    :goto_156
    if-eqz p3, :cond_164

    #@158
    .line 707
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    #@15a
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@15d
    .line 708
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    #@160
    move-result p3

    #@161
    if-eqz p3, :cond_164

    #@163
    goto :goto_165

    #@164
    :cond_164
    move v4, v3

    #@165
    .line 713
    :goto_165
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@168
    move-result p3

    #@169
    if-eqz p3, :cond_170

    #@16b
    .line 714
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@16d
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    #@170
    .line 716
    :cond_170
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@172
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@174
    .line 717
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@177
    move-result p3

    #@178
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    #@17a
    if-eqz v4, :cond_184

    #@17c
    .line 719
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@17e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    #@181
    .line 720
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    #@184
    :cond_184
    return-void
.end method

.method private preferLastSpan(I)Z
    .registers 6

    #@0
    .line 1970
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    if-nez v0, :cond_13

    #@7
    if-ne p1, v1, :cond_b

    #@9
    move p1, v2

    #@a
    goto :goto_c

    #@b
    :cond_b
    move p1, v3

    #@c
    .line 1971
    :goto_c
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@e
    if-eq p1, v0, :cond_11

    #@10
    goto :goto_12

    #@11
    :cond_11
    move v2, v3

    #@12
    :goto_12
    return v2

    #@13
    :cond_13
    if-ne p1, v1, :cond_17

    #@15
    move p1, v2

    #@16
    goto :goto_18

    #@17
    :cond_17
    move p1, v3

    #@18
    .line 1973
    :goto_18
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@1a
    if-ne p1, v0, :cond_1e

    #@1c
    move p1, v2

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move p1, v3

    #@1f
    :goto_1f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@22
    move-result v0

    #@23
    if-ne p1, v0, :cond_26

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v2, v3

    #@27
    :goto_27
    return v2
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .registers 4

    #@0
    .line 1813
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    :goto_4
    if-ltz v0, :cond_10

    #@6
    .line 1814
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_4

    #@10
    :cond_10
    return-void
.end method

.method private recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V
    .registers 5

    #@0
    .line 1766
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    #@2
    if-eqz v0, :cond_58

    #@4
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_58

    #@9
    .line 1769
    :cond_9
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@b
    const/4 v1, -0x1

    #@c
    if-nez v0, :cond_1e

    #@e
    .line 1771
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@10
    if-ne v0, v1, :cond_18

    #@12
    .line 1772
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@14
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    #@17
    goto :goto_58

    #@18
    .line 1774
    :cond_18
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@1a
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    #@1d
    goto :goto_58

    #@1e
    .line 1779
    :cond_1e
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@20
    if-ne v0, v1, :cond_3e

    #@22
    .line 1781
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@24
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@26
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    #@29
    move-result v1

    #@2a
    sub-int/2addr v0, v1

    #@2b
    if-gez v0, :cond_30

    #@2d
    .line 1784
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@2f
    goto :goto_3a

    #@30
    .line 1786
    :cond_30
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@32
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@34
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@37
    move-result p2

    #@38
    sub-int p2, v1, p2

    #@3a
    .line 1788
    :goto_3a
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    #@3d
    goto :goto_58

    #@3e
    .line 1791
    :cond_3e
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@40
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    #@43
    move-result v0

    #@44
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@46
    sub-int/2addr v0, v1

    #@47
    if-gez v0, :cond_4c

    #@49
    .line 1794
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@4b
    goto :goto_55

    #@4c
    .line 1796
    :cond_4c
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@4e
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@50
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@53
    move-result p2

    #@54
    add-int/2addr p2, v1

    #@55
    .line 1798
    :goto_55
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    #@58
    :cond_58
    :goto_58
    return-void
.end method

.method private recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .registers 9

    #@0
    .line 1936
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    :goto_6
    if-ltz v0, :cond_60

    #@8
    .line 1939
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    .line 1940
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@e
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@11
    move-result v3

    #@12
    if-lt v3, p2, :cond_60

    #@14
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@16
    .line 1941
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    #@19
    move-result v3

    #@1a
    if-lt v3, p2, :cond_60

    #@1c
    .line 1942
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@22
    .line 1944
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@24
    if-eqz v4, :cond_4a

    #@26
    const/4 v3, 0x0

    #@27
    move v4, v3

    #@28
    .line 1945
    :goto_28
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2a
    if-ge v4, v5, :cond_3c

    #@2c
    .line 1946
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2e
    aget-object v5, v5, v4

    #@30
    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v5

    #@36
    if-ne v5, v1, :cond_39

    #@38
    return-void

    #@39
    :cond_39
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_28

    #@3c
    .line 1950
    :cond_3c
    :goto_3c
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@3e
    if-ge v3, v4, :cond_5a

    #@40
    .line 1951
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@42
    aget-object v4, v4, v3

    #@44
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    #@47
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_3c

    #@4a
    .line 1954
    :cond_4a
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@4c
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@51
    move-result v4

    #@52
    if-ne v4, v1, :cond_55

    #@54
    return-void

    #@55
    .line 1957
    :cond_55
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@57
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    #@5a
    .line 1959
    :cond_5a
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@5d
    add-int/lit8 v0, v0, -0x1

    #@5f
    goto :goto_6

    #@60
    :cond_60
    return-void
.end method

.method private recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .registers 8

    #@0
    .line 1907
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_5d

    #@6
    const/4 v0, 0x0

    #@7
    .line 1908
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 1909
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@d
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@10
    move-result v2

    #@11
    if-gt v2, p2, :cond_5d

    #@13
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@15
    .line 1910
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    #@18
    move-result v2

    #@19
    if-gt v2, p2, :cond_5d

    #@1b
    .line 1911
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@21
    .line 1913
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@23
    const/4 v4, 0x1

    #@24
    if-eqz v3, :cond_49

    #@26
    move v2, v0

    #@27
    .line 1914
    :goto_27
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@29
    if-ge v2, v3, :cond_3b

    #@2b
    .line 1915
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2d
    aget-object v3, v3, v2

    #@2f
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v3

    #@35
    if-ne v3, v4, :cond_38

    #@37
    return-void

    #@38
    :cond_38
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_27

    #@3b
    .line 1919
    :cond_3b
    :goto_3b
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@3d
    if-ge v0, v2, :cond_59

    #@3f
    .line 1920
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@41
    aget-object v2, v2, v0

    #@43
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    #@46
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_3b

    #@49
    .line 1923
    :cond_49
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@4b
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v0

    #@51
    if-ne v0, v4, :cond_54

    #@53
    return-void

    #@54
    .line 1926
    :cond_54
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@56
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    #@59
    .line 1928
    :cond_59
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@5c
    goto :goto_0

    #@5d
    :cond_5d
    return-void
.end method

.method private repositionToWrapContentIfNecessary()V
    .registers 9

    #@0
    .line 734
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x40000000    # 2.0f

    #@8
    if-ne v0, v1, :cond_b

    #@a
    return-void

    #@b
    .line 738
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    const/4 v2, 0x0

    #@11
    move v3, v1

    #@12
    :goto_12
    if-ge v3, v0, :cond_3e

    #@14
    .line 740
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v4

    #@18
    .line 741
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1a
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@1d
    move-result v5

    #@1e
    int-to-float v5, v5

    #@1f
    cmpg-float v6, v5, v2

    #@21
    if-gez v6, :cond_24

    #@23
    goto :goto_3b

    #@24
    .line 745
    :cond_24
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@2a
    .line 746
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_37

    #@30
    const/high16 v4, 0x3f800000    # 1.0f

    #@32
    mul-float/2addr v5, v4

    #@33
    .line 747
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@35
    int-to-float v4, v4

    #@36
    div-float/2addr v5, v4

    #@37
    .line 749
    :cond_37
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    #@3a
    move-result v2

    #@3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_12

    #@3e
    .line 751
    :cond_3e
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@40
    .line 752
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@42
    int-to-float v4, v4

    #@43
    mul-float/2addr v2, v4

    #@44
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@47
    move-result v2

    #@48
    .line 753
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@4a
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    #@4d
    move-result v4

    #@4e
    const/high16 v5, -0x80000000

    #@50
    if-ne v4, v5, :cond_5c

    #@52
    .line 754
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@54
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@57
    move-result v4

    #@58
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@5b
    move-result v2

    #@5c
    .line 756
    :cond_5c
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    #@5f
    .line 757
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@61
    if-ne v2, v3, :cond_64

    #@63
    return-void

    #@64
    :cond_64
    :goto_64
    if-ge v1, v0, :cond_b7

    #@66
    .line 761
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@69
    move-result-object v2

    #@6a
    .line 762
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6d
    move-result-object v4

    #@6e
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@70
    .line 763
    iget-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@72
    if-eqz v5, :cond_75

    #@74
    goto :goto_b4

    #@75
    .line 766
    :cond_75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@78
    move-result v5

    #@79
    const/4 v6, 0x1

    #@7a
    if-eqz v5, :cond_9b

    #@7c
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@7e
    if-ne v5, v6, :cond_9b

    #@80
    .line 767
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@82
    sub-int/2addr v5, v6

    #@83
    iget-object v7, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@85
    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@87
    sub-int/2addr v5, v7

    #@88
    neg-int v5, v5

    #@89
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@8b
    mul-int/2addr v5, v7

    #@8c
    .line 768
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@8e
    sub-int/2addr v7, v6

    #@8f
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@91
    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@93
    sub-int/2addr v7, v4

    #@94
    neg-int v4, v7

    #@95
    mul-int/2addr v4, v3

    #@96
    sub-int/2addr v5, v4

    #@97
    .line 769
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@9a
    goto :goto_b4

    #@9b
    .line 771
    :cond_9b
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@9d
    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@9f
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@a1
    mul-int/2addr v5, v7

    #@a2
    .line 772
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@a4
    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@a6
    mul-int/2addr v4, v3

    #@a7
    .line 773
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@a9
    if-ne v7, v6, :cond_b0

    #@ab
    sub-int/2addr v5, v4

    #@ac
    .line 774
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@af
    goto :goto_b4

    #@b0
    :cond_b0
    sub-int/2addr v5, v4

    #@b1
    .line 776
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@b4
    :goto_b4
    add-int/lit8 v1, v1, 0x1

    #@b6
    goto :goto_64

    #@b7
    :cond_b7
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    #@0
    .line 560
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_12

    #@5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_12

    #@c
    .line 563
    :cond_c
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@e
    xor-int/2addr v0, v1

    #@f
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@11
    goto :goto_16

    #@12
    .line 561
    :cond_12
    :goto_12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@16
    :goto_16
    return-void
.end method

.method private setLayoutStateDirection(I)V
    .registers 6

    #@0
    .line 1479
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@2
    iput p1, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@4
    .line 1480
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@6
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v3, -0x1

    #@a
    if-ne p1, v3, :cond_e

    #@c
    move p1, v2

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    if-ne v1, p1, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v2, v3

    #@13
    :goto_13
    iput v2, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@15
    return-void
.end method

.method private updateAllRemainingSpans(II)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1819
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@3
    if-ge v0, v1, :cond_1c

    #@5
    .line 1820
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@7
    aget-object v1, v1, v0

    #@9
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_12

    #@11
    goto :goto_19

    #@12
    .line 1823
    :cond_12
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@14
    aget-object v1, v1, v0

    #@16
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    #@19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_1

    #@1c
    :cond_1c
    return-void
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .registers 4

    #@0
    .line 840
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 841
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@7
    move-result p1

    #@8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    #@b
    move-result p1

    #@c
    goto :goto_15

    #@d
    .line 842
    :cond_d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@10
    move-result p1

    #@11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    #@14
    move-result p1

    #@15
    :goto_15
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@17
    const/high16 p1, -0x80000000

    #@19
    .line 843
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@1b
    const/4 p1, 0x1

    #@1c
    return p1
.end method

.method private updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    #@0
    .line 1448
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@5
    .line 1449
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@7
    iput p1, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@9
    .line 1452
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    #@c
    move-result v0

    #@d
    const/4 v2, 0x1

    #@e
    if-eqz v0, :cond_31

    #@10
    .line 1453
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getTargetScrollPosition()I

    #@13
    move-result p2

    #@14
    const/4 v0, -0x1

    #@15
    if-eq p2, v0, :cond_31

    #@17
    .line 1455
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@19
    if-ge p2, p1, :cond_1d

    #@1b
    move p1, v2

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move p1, v1

    #@1e
    :goto_1e
    if-ne v0, p1, :cond_28

    #@20
    .line 1456
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@25
    move-result p1

    #@26
    move p2, v1

    #@27
    goto :goto_33

    #@28
    .line 1458
    :cond_28
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@2a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@2d
    move-result p1

    #@2e
    move p2, p1

    #@2f
    move p1, v1

    #@30
    goto :goto_33

    #@31
    :cond_31
    move p1, v1

    #@32
    move p2, p1

    #@33
    .line 1464
    :goto_33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_50

    #@39
    .line 1466
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@3b
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@3d
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@40
    move-result v3

    #@41
    sub-int/2addr v3, p2

    #@42
    iput v3, v0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@44
    .line 1467
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@46
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@4b
    move-result v0

    #@4c
    add-int/2addr v0, p1

    #@4d
    iput v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@4f
    goto :goto_60

    #@50
    .line 1469
    :cond_50
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@52
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@54
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    #@57
    move-result v3

    #@58
    add-int/2addr v3, p1

    #@59
    iput v3, v0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@5b
    .line 1470
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@5d
    neg-int p2, p2

    #@5e
    iput p2, p1, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@60
    .line 1472
    :goto_60
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@62
    iput-boolean v1, p1, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    #@64
    .line 1473
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@66
    iput-boolean v2, p1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    #@68
    .line 1474
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@6a
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@6c
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    #@6f
    move-result p2

    #@70
    if-nez p2, :cond_7b

    #@72
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@74
    .line 1475
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    #@77
    move-result p2

    #@78
    if-nez p2, :cond_7b

    #@7a
    move v1, v2

    #@7b
    :cond_7b
    iput-boolean v1, p1, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    #@7d
    return-void
.end method

.method private updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V
    .registers 7

    #@0
    .line 1828
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-ne p2, v1, :cond_17

    #@8
    .line 1830
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    #@b
    move-result p2

    #@c
    add-int/2addr p2, v0

    #@d
    if-gt p2, p3, :cond_25

    #@f
    .line 1832
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    #@11
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@13
    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    #@16
    goto :goto_25

    #@17
    .line 1835
    :cond_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    #@1a
    move-result p2

    #@1b
    sub-int/2addr p2, v0

    #@1c
    if-lt p2, p3, :cond_25

    #@1e
    .line 1837
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    #@20
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@22
    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    #@25
    :cond_25
    :goto_25
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .registers 6

    #@0
    if-nez p2, :cond_5

    #@2
    if-nez p3, :cond_5

    #@4
    return p1

    #@5
    .line 1212
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@8
    move-result v0

    #@9
    const/high16 v1, -0x80000000

    #@b
    if-eq v0, v1, :cond_13

    #@d
    const/high16 v1, 0x40000000    # 2.0f

    #@f
    if-ne v0, v1, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    return p1

    #@13
    .line 1215
    :cond_13
    :goto_13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@16
    move-result p1

    #@17
    sub-int/2addr p1, p2

    #@18
    sub-int/2addr p1, p3

    #@19
    const/4 p2, 0x0

    #@1a
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result p1

    #@1e
    .line 1214
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21
    move-result p1

    #@22
    return p1
.end method


# virtual methods
.method areAllEndsEqual()Z
    .registers 7

    #@0
    .line 1865
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    const/high16 v2, -0x80000000

    #@7
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@a
    move-result v0

    #@b
    const/4 v3, 0x1

    #@c
    move v4, v3

    #@d
    .line 1866
    :goto_d
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f
    if-ge v4, v5, :cond_1f

    #@11
    .line 1867
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@13
    aget-object v5, v5, v4

    #@15
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@18
    move-result v5

    #@19
    if-eq v5, v0, :cond_1c

    #@1b
    return v1

    #@1c
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    #@1e
    goto :goto_d

    #@1f
    :cond_1f
    return v3
.end method

.method areAllStartsEqual()Z
    .registers 7

    #@0
    .line 1875
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    const/high16 v2, -0x80000000

    #@7
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@a
    move-result v0

    #@b
    const/4 v3, 0x1

    #@c
    move v4, v3

    #@d
    .line 1876
    :goto_d
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f
    if-ge v4, v5, :cond_1f

    #@11
    .line 1877
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@13
    aget-object v5, v5, v4

    #@15
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@18
    move-result v5

    #@19
    if-eq v5, v0, :cond_1c

    #@1b
    return v1

    #@1c
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    #@1e
    goto :goto_d

    #@1f
    :cond_1f
    return v3
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 528
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 529
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@7
    :cond_7
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    #@0
    .line 2027
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    if-nez v0, :cond_6

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

.method public canScrollVertically()Z
    .registers 3

    #@0
    .line 2022
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    :goto_7
    return v1
.end method

.method checkForGaps()Z
    .registers 8

    #@0
    .line 270
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_7c

    #@7
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@9
    if-eqz v0, :cond_7c

    #@b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_12

    #@11
    goto :goto_7c

    #@12
    .line 274
    :cond_12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@14
    if-eqz v0, :cond_1f

    #@16
    .line 275
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@19
    move-result v0

    #@1a
    .line 276
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@1d
    move-result v2

    #@1e
    goto :goto_27

    #@1f
    .line 278
    :cond_1f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@22
    move-result v0

    #@23
    .line 279
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@26
    move-result v2

    #@27
    :goto_27
    const/4 v3, 0x1

    #@28
    if-nez v0, :cond_3c

    #@2a
    .line 282
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    #@2d
    move-result-object v4

    #@2e
    if-eqz v4, :cond_3c

    #@30
    .line 284
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    #@35
    .line 285
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    #@38
    .line 286
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@3b
    return v3

    #@3c
    .line 290
    :cond_3c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@3e
    if-nez v4, :cond_41

    #@40
    return v1

    #@41
    .line 293
    :cond_41
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@43
    const/4 v5, -0x1

    #@44
    if-eqz v4, :cond_48

    #@46
    move v4, v5

    #@47
    goto :goto_49

    #@48
    :cond_48
    move v4, v3

    #@49
    .line 294
    :goto_49
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@4b
    add-int/2addr v2, v3

    #@4c
    .line 295
    invoke-virtual {v6, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@4f
    move-result-object v6

    #@50
    if-nez v6, :cond_5a

    #@52
    .line 297
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    #@54
    .line 298
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@56
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    #@59
    return v1

    #@5a
    .line 301
    :cond_5a
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@5c
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@5e
    mul-int/2addr v4, v5

    #@5f
    .line 302
    invoke-virtual {v1, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@62
    move-result-object v0

    #@63
    if-nez v0, :cond_6d

    #@65
    .line 305
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@67
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@69
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    #@6c
    goto :goto_75

    #@6d
    .line 307
    :cond_6d
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@6f
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@71
    add-int/2addr v0, v3

    #@72
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    #@75
    .line 309
    :goto_75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    #@78
    .line 310
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@7b
    return v3

    #@7c
    :cond_7c
    :goto_7c
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 2

    #@0
    .line 2273
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@2
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9

    #@0
    .line 2123
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    if-nez v0, :cond_5

    #@4
    goto :goto_6

    #@5
    :cond_5
    move p1, p2

    #@6
    .line 2124
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@9
    move-result p2

    #@a
    if-eqz p2, :cond_85

    #@c
    if-nez p1, :cond_10

    #@e
    goto/16 :goto_85

    #@10
    .line 2128
    :cond_10
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    #@13
    .line 2131
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    #@15
    if-eqz p1, :cond_1c

    #@17
    array-length p1, p1

    #@18
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@1a
    if-ge p1, p2, :cond_22

    #@1c
    .line 2132
    :cond_1c
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@1e
    new-array p1, p1, [I

    #@20
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    move p2, p1

    #@24
    move v0, p2

    #@25
    .line 2136
    :goto_25
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@27
    if-ge p2, v1, :cond_5d

    #@29
    .line 2138
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@2b
    iget v1, v1, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@2d
    const/4 v2, -0x1

    #@2e
    if-ne v1, v2, :cond_41

    #@30
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@32
    iget v1, v1, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@34
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@36
    aget-object v2, v2, p2

    #@38
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@3a
    iget v3, v3, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@3c
    .line 2139
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@3f
    move-result v2

    #@40
    goto :goto_51

    #@41
    :cond_41
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@43
    aget-object v1, v1, p2

    #@45
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@47
    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@49
    .line 2140
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@4c
    move-result v1

    #@4d
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@4f
    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@51
    :goto_51
    sub-int/2addr v1, v2

    #@52
    if-ltz v1, :cond_5a

    #@54
    .line 2143
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    #@56
    aput v1, v2, v0

    #@58
    add-int/lit8 v0, v0, 0x1

    #@5a
    :cond_5a
    add-int/lit8 p2, p2, 0x1

    #@5c
    goto :goto_25

    #@5d
    .line 2147
    :cond_5d
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    #@5f
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    #@62
    :goto_62
    if-ge p1, v0, :cond_85

    #@64
    .line 2150
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@66
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    #@69
    move-result p2

    #@6a
    if-eqz p2, :cond_85

    #@6c
    .line 2151
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@6e
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@70
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    #@72
    aget v1, v1, p1

    #@74
    invoke-interface {p4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    #@77
    .line 2153
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@79
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@7b
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@7d
    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@7f
    add-int/2addr v1, v2

    #@80
    iput v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@82
    add-int/lit8 p1, p1, 0x1

    #@84
    goto :goto_62

    #@85
    :cond_85
    :goto_85
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1088
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1068
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1108
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5

    #@0
    .line 2052
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    #@3
    move-result p1

    #@4
    .line 2053
    new-instance v0, Landroid/graphics/PointF;

    #@6
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@9
    if-nez p1, :cond_d

    #@b
    const/4 p1, 0x0

    #@c
    return-object p1

    #@d
    .line 2057
    :cond_d
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@f
    const/4 v2, 0x0

    #@10
    if-nez v1, :cond_18

    #@12
    int-to-float p1, p1

    #@13
    .line 2058
    iput p1, v0, Landroid/graphics/PointF;->x:F

    #@15
    .line 2059
    iput v2, v0, Landroid/graphics/PointF;->y:F

    #@17
    goto :goto_1d

    #@18
    .line 2061
    :cond_18
    iput v2, v0, Landroid/graphics/PointF;->x:F

    #@1a
    int-to-float p1, p1

    #@1b
    .line 2062
    iput p1, v0, Landroid/graphics/PointF;->y:F

    #@1d
    :goto_1d
    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1103
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1083
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1123
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    .line 991
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@4
    new-array p1, p1, [I

    #@6
    goto :goto_c

    #@7
    .line 992
    :cond_7
    array-length v0, p1

    #@8
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@a
    if-lt v0, v1, :cond_1f

    #@c
    :goto_c
    const/4 v0, 0x0

    #@d
    .line 996
    :goto_d
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f
    if-ge v0, v1, :cond_1e

    #@11
    .line 997
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@13
    aget-object v1, v1, v0

    #@15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    #@18
    move-result v1

    #@19
    aput v1, p1, v0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_d

    #@1e
    :cond_1e
    return-object p1

    #@1f
    .line 993
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, ", array size:"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    array-length p1, p1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .registers 9

    #@0
    .line 1387
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@5
    move-result v0

    #@6
    .line 1388
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@b
    move-result v1

    #@c
    .line 1390
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@f
    move-result v2

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    const/4 v3, 0x0

    #@13
    :goto_13
    if-ltz v2, :cond_37

    #@15
    .line 1391
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v4

    #@19
    .line 1392
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1b
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@1e
    move-result v5

    #@1f
    .line 1393
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@21
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@24
    move-result v6

    #@25
    if-le v6, v0, :cond_34

    #@27
    if-lt v5, v1, :cond_2a

    #@29
    goto :goto_34

    #@2a
    :cond_2a
    if-le v6, v1, :cond_33

    #@2c
    if-nez p1, :cond_2f

    #@2e
    goto :goto_33

    #@2f
    :cond_2f
    if-nez v3, :cond_34

    #@31
    move-object v3, v4

    #@32
    goto :goto_34

    #@33
    :cond_33
    :goto_33
    return-object v4

    #@34
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    #@36
    goto :goto_13

    #@37
    :cond_37
    return-object v3
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .registers 10

    #@0
    .line 1357
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@5
    move-result v0

    #@6
    .line 1358
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@b
    move-result v1

    #@c
    .line 1359
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x0

    #@12
    :goto_12
    if-ge v4, v2, :cond_36

    #@14
    .line 1362
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v5

    #@18
    .line 1363
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1a
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@1d
    move-result v6

    #@1e
    .line 1364
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@20
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@23
    move-result v7

    #@24
    if-le v7, v0, :cond_33

    #@26
    if-lt v6, v1, :cond_29

    #@28
    goto :goto_33

    #@29
    :cond_29
    if-ge v6, v0, :cond_32

    #@2b
    if-nez p1, :cond_2e

    #@2d
    goto :goto_32

    #@2e
    :cond_2e
    if-nez v3, :cond_33

    #@30
    move-object v3, v5

    #@31
    goto :goto_33

    #@32
    :cond_32
    :goto_32
    return-object v5

    #@33
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_12

    #@36
    :cond_36
    return-object v3
.end method

.method findFirstVisibleItemPositionInt()I
    .registers 3

    #@0
    .line 1327
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_a

    #@5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    goto :goto_e

    #@a
    .line 1328
    :cond_a
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    :goto_e
    if-nez v0, :cond_12

    #@10
    const/4 v0, -0x1

    #@11
    goto :goto_16

    #@12
    .line 1329
    :cond_12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    #@15
    move-result v0

    #@16
    :goto_16
    return v0
.end method

.method public findFirstVisibleItemPositions([I)[I
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    .line 959
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@4
    new-array p1, p1, [I

    #@6
    goto :goto_c

    #@7
    .line 960
    :cond_7
    array-length v0, p1

    #@8
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@a
    if-lt v0, v1, :cond_1f

    #@c
    :goto_c
    const/4 v0, 0x0

    #@d
    .line 964
    :goto_d
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f
    if-ge v0, v1, :cond_1e

    #@11
    .line 965
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@13
    aget-object v1, v1, v0

    #@15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    #@18
    move-result v1

    #@19
    aput v1, p1, v0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_d

    #@1e
    :cond_1e
    return-object p1

    #@1f
    .line 961
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, ", array size:"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    array-length p1, p1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    .line 1055
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@4
    new-array p1, p1, [I

    #@6
    goto :goto_c

    #@7
    .line 1056
    :cond_7
    array-length v0, p1

    #@8
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@a
    if-lt v0, v1, :cond_1f

    #@c
    :goto_c
    const/4 v0, 0x0

    #@d
    .line 1060
    :goto_d
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f
    if-ge v0, v1, :cond_1e

    #@11
    .line 1061
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@13
    aget-object v1, v1, v0

    #@15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    #@18
    move-result v1

    #@19
    aput v1, p1, v0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_d

    #@1e
    :cond_1e
    return-object p1

    #@1f
    .line 1057
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, ", array size:"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    array-length p1, p1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    .line 1023
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@4
    new-array p1, p1, [I

    #@6
    goto :goto_c

    #@7
    .line 1024
    :cond_7
    array-length v0, p1

    #@8
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@a
    if-lt v0, v1, :cond_1f

    #@c
    :goto_c
    const/4 v0, 0x0

    #@d
    .line 1028
    :goto_d
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f
    if-ge v0, v1, :cond_1e

    #@11
    .line 1029
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@13
    aget-object v1, v1, v0

    #@15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    #@18
    move-result v1

    #@19
    aput v1, p1, v0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_d

    #@1e
    :cond_1e
    return-object p1

    #@1f
    .line 1025
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, ", array size:"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    array-length p1, p1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4

    #@0
    .line 2248
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, -0x2

    #@3
    const/4 v2, -0x1

    #@4
    if-nez v0, :cond_c

    #@6
    .line 2249
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@8
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    #@b
    return-object v0

    #@c
    .line 2252
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@e
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    #@11
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4

    #@0
    .line 2259
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 3

    #@0
    .line 2264
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 2265
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@6
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 2267
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@e
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5

    #@0
    .line 1344
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_8

    #@5
    .line 1345
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@7
    return p1

    #@8
    .line 1347
    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method getFirstChildPosition()I
    .registers 3

    #@0
    .line 2208
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    goto :goto_10

    #@8
    .line 2209
    :cond_8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    #@f
    move-result v1

    #@10
    :goto_10
    return v1
.end method

.method public getGapStrategy()I
    .registers 2

    #@0
    .line 500
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@2
    return v0
.end method

.method getLastChildPosition()I
    .registers 2

    #@0
    .line 2203
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_12

    #@8
    :cond_8
    add-int/lit8 v0, v0, -0x1

    #@a
    .line 2204
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    #@11
    move-result v0

    #@12
    :goto_12
    return v0
.end method

.method public getOrientation()I
    .registers 2

    #@0
    .line 2277
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    return v0
.end method

.method public getReverseLayout()Z
    .registers 2

    #@0
    .line 580
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@2
    return v0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    #@0
    .line 1335
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@2
    if-nez v0, :cond_7

    #@4
    .line 1336
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@6
    return p1

    #@7
    .line 1338
    :cond_7
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public getSpanCount()I
    .registers 2

    #@0
    .line 539
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2
    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .registers 13

    #@0
    .line 340
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    .line 341
    new-instance v2, Ljava/util/BitSet;

    #@8
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@a
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    #@d
    .line 342
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    #@13
    .line 345
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@15
    const/4 v5, -0x1

    #@16
    if-ne v3, v1, :cond_20

    #@18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_20

    #@1e
    move v3, v1

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move v3, v5

    #@21
    .line 347
    :goto_21
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@23
    if-eqz v6, :cond_27

    #@25
    move v6, v5

    #@26
    goto :goto_2b

    #@27
    :cond_27
    add-int/lit8 v0, v0, 0x1

    #@29
    move v6, v0

    #@2a
    move v0, v4

    #@2b
    :goto_2b
    if-ge v0, v6, :cond_2e

    #@2d
    move v5, v1

    #@2e
    :cond_2e
    :goto_2e
    if-eq v0, v6, :cond_ab

    #@30
    .line 356
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v7

    #@34
    .line 357
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@37
    move-result-object v8

    #@38
    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@3a
    .line 358
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@3c
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@3e
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    #@41
    move-result v9

    #@42
    if-eqz v9, :cond_54

    #@44
    .line 359
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@46
    invoke-direct {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z

    #@49
    move-result v9

    #@4a
    if-eqz v9, :cond_4d

    #@4c
    return-object v7

    #@4d
    .line 362
    :cond_4d
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@4f
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@51
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    #@54
    .line 364
    :cond_54
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@56
    if-eqz v9, :cond_59

    #@58
    goto :goto_a9

    #@59
    :cond_59
    add-int v9, v0, v5

    #@5b
    if-eq v9, v6, :cond_a9

    #@5d
    .line 369
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@60
    move-result-object v9

    #@61
    .line 371
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@63
    if-eqz v10, :cond_77

    #@65
    .line 373
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@67
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@6a
    move-result v10

    #@6b
    .line 374
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@6d
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@70
    move-result v11

    #@71
    if-ge v10, v11, :cond_74

    #@73
    return-object v7

    #@74
    :cond_74
    if-ne v10, v11, :cond_8a

    #@76
    goto :goto_88

    #@77
    .line 381
    :cond_77
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@79
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@7c
    move-result v10

    #@7d
    .line 382
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@7f
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@82
    move-result v11

    #@83
    if-le v10, v11, :cond_86

    #@85
    return-object v7

    #@86
    :cond_86
    if-ne v10, v11, :cond_8a

    #@88
    :goto_88
    move v10, v1

    #@89
    goto :goto_8b

    #@8a
    :cond_8a
    move v10, v4

    #@8b
    :goto_8b
    if-eqz v10, :cond_a9

    #@8d
    .line 391
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@90
    move-result-object v9

    #@91
    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@93
    .line 392
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@95
    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@97
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@99
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@9b
    sub-int/2addr v8, v9

    #@9c
    if-gez v8, :cond_a0

    #@9e
    move v8, v1

    #@9f
    goto :goto_a1

    #@a0
    :cond_a0
    move v8, v4

    #@a1
    :goto_a1
    if-gez v3, :cond_a5

    #@a3
    move v9, v1

    #@a4
    goto :goto_a6

    #@a5
    :cond_a5
    move v9, v4

    #@a6
    :goto_a6
    if-eq v8, v9, :cond_a9

    #@a8
    return-object v7

    #@a9
    :cond_a9
    :goto_a9
    add-int/2addr v0, v5

    #@aa
    goto :goto_2e

    #@ab
    :cond_ab
    const/4 v0, 0x0

    #@ac
    return-object v0
.end method

.method public invalidateSpanAssignments()V
    .registers 2

    #@0
    .line 549
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    #@5
    .line 550
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@8
    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    #@0
    .line 254
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@2
    if-eqz v0, :cond_6

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

.method isLayoutRTL()Z
    .registers 3

    #@0
    .line 568
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    :goto_9
    return v1
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 4

    #@0
    .line 1486
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 1487
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@6
    if-ge v0, v1, :cond_12

    #@8
    .line 1488
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@a
    aget-object v1, v1, v0

    #@c
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_4

    #@12
    :cond_12
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 4

    #@0
    .line 1494
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 1495
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@6
    if-ge v0, v1, :cond_12

    #@8
    .line 1496
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@a
    aget-object v1, v1, v0

    #@c
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_4

    #@12
    :cond_12
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4

    #@0
    .line 323
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@3
    .line 325
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    const/4 p2, 0x0

    #@9
    .line 326
    :goto_9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@b
    if-ge p2, v0, :cond_17

    #@d
    .line 327
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@f
    aget-object v0, v0, p2

    #@11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    #@14
    add-int/lit8 p2, p2, 0x1

    #@16
    goto :goto_9

    #@17
    .line 330
    :cond_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@1a
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 13

    #@0
    .line 2284
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 2288
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@b
    move-result-object p1

    #@c
    if-nez p1, :cond_f

    #@e
    return-object v1

    #@f
    .line 2293
    :cond_f
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    #@12
    .line 2294
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    #@15
    move-result p2

    #@16
    const/high16 v0, -0x80000000

    #@18
    if-ne p2, v0, :cond_1b

    #@1a
    return-object v1

    #@1b
    .line 2298
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@21
    .line 2299
    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@23
    .line 2300
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@25
    const/4 v3, 0x1

    #@26
    if-ne p2, v3, :cond_2d

    #@28
    .line 2303
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@2b
    move-result v4

    #@2c
    goto :goto_31

    #@2d
    .line 2305
    :cond_2d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@30
    move-result v4

    #@31
    .line 2307
    :goto_31
    invoke-direct {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    #@34
    .line 2308
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    #@37
    .line 2310
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@39
    iget v6, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@3b
    add-int/2addr v6, v4

    #@3c
    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@3e
    .line 2311
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@40
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@42
    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@45
    move-result v6

    #@46
    int-to-float v6, v6

    #@47
    const v7, 0x3eaaaaab

    #@4a
    mul-float/2addr v6, v7

    #@4b
    float-to-int v6, v6

    #@4c
    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@4e
    .line 2312
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@50
    iput-boolean v3, v5, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    #@52
    .line 2313
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@54
    const/4 v6, 0x0

    #@55
    iput-boolean v6, v5, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    #@57
    .line 2314
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@59
    invoke-direct {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@5c
    .line 2315
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@5e
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@60
    if-nez v2, :cond_6b

    #@62
    .line 2317
    invoke-virtual {v0, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    #@65
    move-result-object p3

    #@66
    if-eqz p3, :cond_6b

    #@68
    if-eq p3, p1, :cond_6b

    #@6a
    return-object p3

    #@6b
    .line 2325
    :cond_6b
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    #@6e
    move-result p3

    #@6f
    if-eqz p3, :cond_86

    #@71
    .line 2326
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@73
    sub-int/2addr p3, v3

    #@74
    :goto_74
    if-ltz p3, :cond_9b

    #@76
    .line 2327
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@78
    aget-object p4, p4, p3

    #@7a
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    #@7d
    move-result-object p4

    #@7e
    if-eqz p4, :cond_83

    #@80
    if-eq p4, p1, :cond_83

    #@82
    return-object p4

    #@83
    :cond_83
    add-int/lit8 p3, p3, -0x1

    #@85
    goto :goto_74

    #@86
    :cond_86
    move p3, v6

    #@87
    .line 2333
    :goto_87
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@89
    if-ge p3, p4, :cond_9b

    #@8b
    .line 2334
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@8d
    aget-object p4, p4, p3

    #@8f
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    #@92
    move-result-object p4

    #@93
    if-eqz p4, :cond_98

    #@95
    if-eq p4, p1, :cond_98

    #@97
    return-object p4

    #@98
    :cond_98
    add-int/lit8 p3, p3, 0x1

    #@9a
    goto :goto_87

    #@9b
    .line 2345
    :cond_9b
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@9d
    xor-int/2addr p3, v3

    #@9e
    const/4 p4, -0x1

    #@9f
    if-ne p2, p4, :cond_a3

    #@a1
    move p4, v3

    #@a2
    goto :goto_a4

    #@a3
    :cond_a3
    move p4, v6

    #@a4
    :goto_a4
    if-ne p3, p4, :cond_a8

    #@a6
    move p3, v3

    #@a7
    goto :goto_a9

    #@a8
    :cond_a8
    move p3, v6

    #@a9
    :goto_a9
    if-nez v2, :cond_bf

    #@ab
    if-eqz p3, :cond_b2

    #@ad
    .line 2349
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    #@b0
    move-result p4

    #@b1
    goto :goto_b6

    #@b2
    .line 2350
    :cond_b2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    #@b5
    move-result p4

    #@b6
    .line 2348
    :goto_b6
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@b9
    move-result-object p4

    #@ba
    if-eqz p4, :cond_bf

    #@bc
    if-eq p4, p1, :cond_bf

    #@be
    return-object p4

    #@bf
    .line 2356
    :cond_bf
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    #@c2
    move-result p2

    #@c3
    if-eqz p2, :cond_ee

    #@c5
    .line 2357
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@c7
    sub-int/2addr p2, v3

    #@c8
    :goto_c8
    if-ltz p2, :cond_111

    #@ca
    .line 2358
    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@cc
    if-ne p2, p4, :cond_cf

    #@ce
    goto :goto_eb

    #@cf
    :cond_cf
    if-eqz p3, :cond_da

    #@d1
    .line 2361
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@d3
    aget-object p4, p4, p2

    #@d5
    .line 2362
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    #@d8
    move-result p4

    #@d9
    goto :goto_e2

    #@da
    :cond_da
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@dc
    aget-object p4, p4, p2

    #@de
    .line 2363
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    #@e1
    move-result p4

    #@e2
    .line 2361
    :goto_e2
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@e5
    move-result-object p4

    #@e6
    if-eqz p4, :cond_eb

    #@e8
    if-eq p4, p1, :cond_eb

    #@ea
    return-object p4

    #@eb
    :cond_eb
    :goto_eb
    add-int/lit8 p2, p2, -0x1

    #@ed
    goto :goto_c8

    #@ee
    .line 2369
    :cond_ee
    :goto_ee
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@f0
    if-ge v6, p2, :cond_111

    #@f2
    if-eqz p3, :cond_fd

    #@f4
    .line 2370
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@f6
    aget-object p2, p2, v6

    #@f8
    .line 2371
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    #@fb
    move-result p2

    #@fc
    goto :goto_105

    #@fd
    :cond_fd
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@ff
    aget-object p2, p2, v6

    #@101
    .line 2372
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    #@104
    move-result p2

    #@105
    .line 2370
    :goto_105
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@108
    move-result-object p2

    #@109
    if-eqz p2, :cond_10e

    #@10b
    if-eq p2, p1, :cond_10e

    #@10d
    return-object p2

    #@10e
    :cond_10e
    add-int/lit8 v6, v6, 0x1

    #@110
    goto :goto_ee

    #@111
    :cond_111
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    #@0
    .line 1302
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1303
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_2f

    #@9
    const/4 v0, 0x0

    #@a
    .line 1304
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    .line 1305
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    if-eqz v1, :cond_2f

    #@14
    if-nez v0, :cond_17

    #@16
    goto :goto_2f

    #@17
    .line 1309
    :cond_17
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    #@1a
    move-result v1

    #@1b
    .line 1310
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    #@1e
    move-result v0

    #@1f
    if-ge v1, v0, :cond_28

    #@21
    .line 1312
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@24
    .line 1313
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    #@27
    goto :goto_2f

    #@28
    .line 1315
    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@2b
    .line 1316
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    #@2e
    nop

    #@2f
    :cond_2f
    :goto_2f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 11

    #@0
    .line 1283
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    .line 1284
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@6
    if-nez p2, :cond_c

    #@8
    .line 1285
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@b
    return-void

    #@c
    .line 1288
    :cond_c
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    #@e
    .line 1289
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@10
    const/4 p3, 0x1

    #@11
    if-nez p2, :cond_2a

    #@13
    .line 1291
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    #@16
    move-result v0

    #@17
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@19
    if-eqz p1, :cond_1d

    #@1b
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@1d
    :cond_1d
    move v1, p3

    #@1e
    const/4 v2, -0x1

    #@1f
    const/4 v3, -0x1

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v5, 0x0

    #@22
    .line 1290
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@29
    goto :goto_40

    #@2a
    :cond_2a
    const/4 v0, -0x1

    #@2b
    const/4 v1, -0x1

    #@2c
    .line 1296
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    #@2f
    move-result v2

    #@30
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    #@32
    if-eqz p1, :cond_36

    #@34
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@36
    :cond_36
    move v3, p3

    #@37
    const/4 v4, 0x0

    #@38
    const/4 v5, 0x0

    #@39
    .line 1294
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@3c
    move-result-object p1

    #@3d
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@40
    :goto_40
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    #@0
    const/4 p1, 0x1

    #@1
    .line 1507
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    #@4
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    #@0
    .line 1512
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    #@5
    .line 1513
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@8
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    #@0
    const/16 p1, 0x8

    #@2
    .line 1518
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    #@5
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    #@0
    const/4 p1, 0x2

    #@1
    .line 1502
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    #@4
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    #@0
    const/4 p1, 0x4

    #@1
    .line 1524
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    #@4
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 605
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    #@4
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 2

    #@0
    .line 726
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 727
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@6
    const/high16 p1, -0x80000000

    #@8
    .line 728
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@a
    const/4 p1, 0x0

    #@b
    .line 729
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@d
    .line 730
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    #@f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    #@12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 1222
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 1223
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@6
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@8
    .line 1224
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@b
    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    #@0
    .line 1232
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 1233
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@8
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    #@b
    return-object v0

    #@c
    .line 1235
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@e
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    #@11
    .line 1236
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@13
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    #@15
    .line 1237
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@17
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    #@19
    .line 1238
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    #@1b
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    #@1d
    .line 1240
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@1f
    const/4 v2, 0x0

    #@20
    if-eqz v1, :cond_38

    #@22
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@24
    if-eqz v1, :cond_38

    #@26
    .line 1241
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@28
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2a
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    #@2c
    .line 1242
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    #@2e
    array-length v1, v1

    #@2f
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    #@31
    .line 1243
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    #@33
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@35
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    #@37
    goto :goto_3a

    #@38
    .line 1245
    :cond_38
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    #@3a
    .line 1248
    :goto_3a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3d
    move-result v1

    #@3e
    if-lez v1, :cond_92

    #@40
    .line 1249
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@42
    if-eqz v1, :cond_49

    #@44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@47
    move-result v1

    #@48
    goto :goto_4d

    #@49
    .line 1250
    :cond_49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@4c
    move-result v1

    #@4d
    :goto_4d
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    #@4f
    .line 1251
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    #@52
    move-result v1

    #@53
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    #@55
    .line 1252
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@57
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    #@59
    .line 1253
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@5b
    new-array v1, v1, [I

    #@5d
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    #@5f
    .line 1254
    :goto_5f
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@61
    if-ge v2, v1, :cond_99

    #@63
    .line 1256
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@65
    const/high16 v3, -0x80000000

    #@67
    if-eqz v1, :cond_7a

    #@69
    .line 1257
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@6b
    aget-object v1, v1, v2

    #@6d
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    #@70
    move-result v1

    #@71
    if-eq v1, v3, :cond_8b

    #@73
    .line 1259
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@75
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@78
    move-result v3

    #@79
    goto :goto_8a

    #@7a
    .line 1262
    :cond_7a
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@7c
    aget-object v1, v1, v2

    #@7e
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    #@81
    move-result v1

    #@82
    if-eq v1, v3, :cond_8b

    #@84
    .line 1264
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@86
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@89
    move-result v3

    #@8a
    :goto_8a
    sub-int/2addr v1, v3

    #@8b
    .line 1267
    :cond_8b
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    #@8d
    aput v1, v3, v2

    #@8f
    add-int/lit8 v2, v2, 0x1

    #@91
    goto :goto_5f

    #@92
    :cond_92
    const/4 v1, -0x1

    #@93
    .line 1270
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    #@95
    .line 1271
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    #@97
    .line 1272
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    #@99
    :cond_99
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    #@0
    if-nez p1, :cond_5

    #@2
    .line 317
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    #@5
    :cond_5
    return-void
.end method

.method prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    if-lez p1, :cond_9

    #@3
    .line 2162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@6
    move-result v1

    #@7
    move v2, v0

    #@8
    goto :goto_e

    #@9
    .line 2165
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@c
    move-result v1

    #@d
    const/4 v2, -0x1

    #@e
    .line 2167
    :goto_e
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@10
    iput-boolean v0, v3, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    #@12
    .line 2168
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    #@15
    .line 2169
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    #@18
    .line 2170
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@1a
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@1c
    add-int/2addr v1, v0

    #@1d
    iput v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@1f
    .line 2171
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@21
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@24
    move-result p1

    #@25
    iput p1, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@27
    return-void
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 6

    #@0
    .line 2175
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_33

    #@7
    if-nez p1, :cond_a

    #@9
    goto :goto_33

    #@a
    .line 2179
    :cond_a
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    #@d
    .line 2180
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@f
    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@12
    move-result p3

    #@13
    .line 2181
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@15
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@17
    if-ge v0, p3, :cond_1a

    #@19
    goto :goto_1f

    #@1a
    :cond_1a
    if-gez p1, :cond_1e

    #@1c
    neg-int p1, p3

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move p1, p3

    #@1f
    .line 2194
    :goto_1f
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@21
    neg-int v0, p1

    #@22
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    #@25
    .line 2196
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@27
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    #@29
    .line 2197
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@2b
    iput v1, p3, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@2d
    .line 2198
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    #@2f
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    #@32
    return p1

    #@33
    :cond_33
    :goto_33
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    #@0
    .line 2033
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public scrollToPosition(I)V
    .registers 3

    #@0
    .line 2077
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    #@6
    if-eq v0, p1, :cond_d

    #@8
    .line 2078
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    #@d
    .line 2080
    :cond_d
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@f
    const/high16 p1, -0x80000000

    #@11
    .line 2081
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@13
    .line 2082
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@16
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 4

    #@0
    .line 2099
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    #@7
    .line 2102
    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@9
    .line 2103
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@b
    .line 2104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@e
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    #@0
    .line 2039
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public setGapStrategy(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 513
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@4
    .line 514
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@6
    if-ne p1, v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    if-eqz p1, :cond_17

    #@b
    const/4 v0, 0x2

    #@c
    if-ne p1, v0, :cond_f

    #@e
    goto :goto_17

    #@f
    .line 519
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v0, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    #@13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw p1

    #@17
    .line 522
    :cond_17
    :goto_17
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    #@19
    .line 523
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@1c
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    #@0
    .line 587
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    .line 588
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    #@10
    move-result v2

    #@11
    add-int/2addr v1, v2

    #@12
    .line 589
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@14
    const/4 v3, 0x1

    #@15
    if-ne v2, v3, :cond_33

    #@17
    .line 590
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@1a
    move-result p1

    #@1b
    add-int/2addr p1, v1

    #@1c
    .line 591
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    #@1f
    move-result v1

    #@20
    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    #@23
    move-result p1

    #@24
    .line 592
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@26
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@28
    mul-int/2addr p3, v1

    #@29
    add-int/2addr p3, v0

    #@2a
    .line 593
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    #@2d
    move-result v0

    #@2e
    .line 592
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    #@31
    move-result p2

    #@32
    goto :goto_4e

    #@33
    .line 595
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@36
    move-result p1

    #@37
    add-int/2addr p1, v0

    #@38
    .line 596
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    #@3b
    move-result v0

    #@3c
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    #@3f
    move-result p2

    #@40
    .line 597
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@42
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@44
    mul-int/2addr p1, v0

    #@45
    add-int/2addr p1, v1

    #@46
    .line 598
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    #@49
    move-result v0

    #@4a
    .line 597
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    #@4d
    move-result p1

    #@4e
    .line 600
    :goto_4e
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    #@51
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_e

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p1, v0, :cond_6

    #@5
    goto :goto_e

    #@6
    .line 450
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v0, "invalid orientation."

    #@a
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw p1

    #@e
    :cond_e
    :goto_e
    const/4 v0, 0x0

    #@f
    .line 452
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@12
    .line 453
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@14
    if-ne p1, v0, :cond_17

    #@16
    return-void

    #@17
    .line 456
    :cond_17
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    #@19
    .line 457
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1b
    .line 458
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1d
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@1f
    .line 459
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@21
    .line 460
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@24
    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 477
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@4
    .line 478
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@6
    if-eqz v0, :cond_10

    #@8
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    #@a
    if-eq v0, p1, :cond_10

    #@c
    .line 479
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@e
    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    #@10
    .line 481
    :cond_10
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    #@12
    .line 482
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@15
    return-void
.end method

.method public setSpanCount(I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 429
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@4
    .line 430
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@6
    if-eq p1, v0, :cond_30

    #@8
    .line 431
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    #@b
    .line 432
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@d
    .line 433
    new-instance p1, Ljava/util/BitSet;

    #@f
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@11
    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    #@14
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    #@16
    .line 434
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@18
    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@1a
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@1c
    const/4 p1, 0x0

    #@1d
    .line 435
    :goto_1d
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@1f
    if-ge p1, v0, :cond_2d

    #@21
    .line 436
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@23
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    #@25
    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    #@28
    aput-object v1, v0, p1

    #@2a
    add-int/lit8 p1, p1, 0x1

    #@2c
    goto :goto_1d

    #@2d
    .line 438
    :cond_2d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    #@30
    :cond_30
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 4

    #@0
    .line 2070
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    #@9
    .line 2071
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    #@c
    .line 2072
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    #@f
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    #@0
    .line 935
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@2
    if-nez v0, :cond_6

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

.method updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .registers 7

    #@0
    .line 849
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_e2

    #@7
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v0, v2, :cond_e

    #@c
    goto/16 :goto_e2

    #@e
    :cond_e
    const/high16 v3, -0x80000000

    #@10
    if-ltz v0, :cond_de

    #@12
    .line 853
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@15
    move-result p1

    #@16
    if-lt v0, p1, :cond_1a

    #@18
    goto/16 :goto_de

    #@1a
    .line 859
    :cond_1a
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@1c
    const/4 v0, 0x1

    #@1d
    if-eqz p1, :cond_32

    #@1f
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    #@21
    if-eq p1, v2, :cond_32

    #@23
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    #@25
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    #@27
    if-ge p1, v0, :cond_2a

    #@29
    goto :goto_32

    #@2a
    .line 920
    :cond_2a
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@2c
    .line 921
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@2e
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@30
    goto/16 :goto_dd

    #@32
    .line 862
    :cond_32
    :goto_32
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@34
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@37
    move-result-object p1

    #@38
    if-eqz p1, :cond_c1

    #@3a
    .line 866
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    #@3c
    if-eqz v1, :cond_43

    #@3e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    #@41
    move-result v1

    #@42
    goto :goto_47

    #@43
    .line 867
    :cond_43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    #@46
    move-result v1

    #@47
    :goto_47
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@49
    .line 868
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@4b
    if-eq v1, v3, :cond_77

    #@4d
    .line 869
    iget-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@4f
    if-eqz v1, :cond_64

    #@51
    .line 870
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@53
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@56
    move-result v1

    #@57
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@59
    sub-int/2addr v1, v2

    #@5a
    .line 872
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@5c
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@5f
    move-result p1

    #@60
    sub-int/2addr v1, p1

    #@61
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@63
    goto :goto_76

    #@64
    .line 874
    :cond_64
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@66
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@69
    move-result v1

    #@6a
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@6c
    add-int/2addr v1, v2

    #@6d
    .line 876
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@6f
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@72
    move-result p1

    #@73
    sub-int/2addr v1, p1

    #@74
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@76
    :goto_76
    return v0

    #@77
    .line 882
    :cond_77
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@79
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@7c
    move-result v1

    #@7d
    .line 883
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@7f
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@82
    move-result v2

    #@83
    if-le v1, v2, :cond_99

    #@85
    .line 885
    iget-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@87
    if-eqz p1, :cond_90

    #@89
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@8b
    .line 886
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@8e
    move-result p1

    #@8f
    goto :goto_96

    #@90
    :cond_90
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@92
    .line 887
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@95
    move-result p1

    #@96
    :goto_96
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@98
    return v0

    #@99
    .line 891
    :cond_99
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@9b
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@9e
    move-result v1

    #@9f
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@a1
    .line 892
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@a4
    move-result v2

    #@a5
    sub-int/2addr v1, v2

    #@a6
    if-gez v1, :cond_ac

    #@a8
    neg-int p1, v1

    #@a9
    .line 894
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@ab
    return v0

    #@ac
    .line 897
    :cond_ac
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@ae
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@b1
    move-result v1

    #@b2
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@b4
    .line 898
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@b7
    move-result p1

    #@b8
    sub-int/2addr v1, p1

    #@b9
    if-gez v1, :cond_be

    #@bb
    .line 900
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@bd
    return v0

    #@be
    .line 904
    :cond_be
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    #@c0
    goto :goto_dd

    #@c1
    .line 908
    :cond_c1
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@c3
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@c5
    .line 909
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@c7
    if-ne p1, v3, :cond_d8

    #@c9
    .line 910
    iget p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@cb
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    #@ce
    move-result p1

    #@cf
    if-ne p1, v0, :cond_d2

    #@d1
    move v1, v0

    #@d2
    .line 912
    :cond_d2
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@d4
    .line 913
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    #@d7
    goto :goto_db

    #@d8
    .line 915
    :cond_d8
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    #@db
    .line 917
    :goto_db
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    #@dd
    :goto_dd
    return v0

    #@de
    .line 854
    :cond_de
    :goto_de
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    #@e0
    .line 855
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    #@e2
    :cond_e2
    :goto_e2
    return v1
.end method

.method updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .registers 4

    #@0
    .line 822
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 825
    :cond_7
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_e

    #@d
    return-void

    #@e
    .line 831
    :cond_e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    #@11
    const/4 p1, 0x0

    #@12
    .line 832
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    #@14
    return-void
.end method

.method updateMeasureSpecs(I)V
    .registers 3

    #@0
    .line 927
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    #@2
    div-int v0, p1, v0

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    #@6
    .line 929
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    #@8
    .line 930
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    #@b
    move-result v0

    #@c
    .line 929
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f
    move-result p1

    #@10
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    #@12
    return-void
.end method
