.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 159
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5

    #@0
    .line 169
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    #@3
    const/4 p1, 0x1

    #@4
    .line 67
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 94
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    #@9
    .line 101
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@b
    .line 108
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@d
    .line 114
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@f
    const/4 p1, -0x1

    #@10
    .line 120
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@12
    const/high16 p1, -0x80000000

    #@14
    .line 126
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@16
    const/4 p1, 0x0

    #@17
    .line 130
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@19
    .line 136
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@1b
    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    #@1e
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@20
    .line 141
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    #@22
    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    #@25
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    #@27
    const/4 p1, 0x2

    #@28
    .line 146
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    #@2a
    new-array p1, p1, [I

    #@2c
    .line 151
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@2e
    .line 170
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    #@31
    .line 171
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    #@34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    #@0
    .line 183
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 67
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@6
    const/4 v1, 0x0

    #@7
    .line 94
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    #@9
    .line 101
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@b
    .line 108
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@d
    .line 114
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@f
    const/4 v0, -0x1

    #@10
    .line 120
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@12
    const/high16 v0, -0x80000000

    #@14
    .line 126
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@16
    const/4 v0, 0x0

    #@17
    .line 130
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@19
    .line 136
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@1b
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    #@1e
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@20
    .line 141
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    #@22
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    #@25
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    #@27
    const/4 v0, 0x2

    #@28
    .line 146
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    #@2a
    new-array v0, v0, [I

    #@2c
    .line 151
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@2e
    .line 184
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    #@31
    move-result-object p1

    #@32
    .line 185
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    #@34
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    #@37
    .line 186
    iget-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    #@39
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    #@3c
    .line 187
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    #@3e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    #@41
    return-void
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 8

    #@0
    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 1176
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@b
    .line 1177
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@d
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@f
    const/4 v2, 0x1

    #@10
    xor-int/2addr v0, v2

    #@11
    .line 1178
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@17
    xor-int/2addr v0, v2

    #@18
    .line 1179
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    #@1b
    move-result-object v4

    #@1c
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@1e
    move-object v0, p1

    #@1f
    move-object v2, v3

    #@20
    move-object v3, v4

    #@21
    move-object v4, p0

    #@22
    .line 1177
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    #@25
    move-result p1

    #@26
    return p1
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 9

    #@0
    .line 1162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 1165
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@b
    .line 1166
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@d
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@f
    const/4 v2, 0x1

    #@10
    xor-int/2addr v0, v2

    #@11
    .line 1167
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@17
    xor-int/2addr v0, v2

    #@18
    .line 1168
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    #@1b
    move-result-object v4

    #@1c
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@1e
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@20
    move-object v0, p1

    #@21
    move-object v2, v3

    #@22
    move-object v3, v4

    #@23
    move-object v4, p0

    #@24
    .line 1166
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    #@27
    move-result p1

    #@28
    return p1
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 8

    #@0
    .line 1184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 1187
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@b
    .line 1188
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@d
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@f
    const/4 v2, 0x1

    #@10
    xor-int/2addr v0, v2

    #@11
    .line 1189
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@17
    xor-int/2addr v0, v2

    #@18
    .line 1190
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    #@1b
    move-result-object v4

    #@1c
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@1e
    move-object v0, p1

    #@1f
    move-object v2, v3

    #@20
    move-object v3, v4

    #@21
    move-object v4, p0

    #@22
    .line 1188
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    #@25
    move-result p1

    #@26
    return p1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1897
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private findFirstReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    .line 1845
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@4
    move-result v4

    #@5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@8
    move-result v5

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;

    #@f
    move-result-object p1

    #@10
    return-object p1
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .registers 3

    #@0
    .line 1901
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, -0x1

    #@7
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private findLastReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 10

    #@0
    .line 1849
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v4, v0, -0x1

    #@6
    const/4 v5, -0x1

    #@7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@a
    move-result v6

    #@b
    move-object v1, p0

    #@c
    move-object v2, p1

    #@d
    move-object v3, p2

    #@e
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;

    #@11
    move-result-object p1

    #@12
    return-object p1
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;
    .registers 2

    #@0
    .line 1885
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    goto :goto_d

    #@9
    .line 1886
    :cond_9
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;
    .registers 2

    #@0
    .line 1892
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    goto :goto_d

    #@9
    .line 1893
    :cond_9
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    #@0
    .line 1823
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@7
    move-result-object p1

    #@8
    goto :goto_d

    #@9
    .line 1824
    :cond_9
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    :goto_d
    return-object p1
.end method

.method private findReferenceChildClosestToStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    #@0
    .line 1840
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@7
    move-result-object p1

    #@8
    goto :goto_d

    #@9
    .line 1841
    :cond_9
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    :goto_d
    return-object p1
.end method

.method private fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .registers 6

    #@0
    .line 961
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@5
    move-result v0

    #@6
    sub-int/2addr v0, p1

    #@7
    if-lez v0, :cond_23

    #@9
    neg-int v0, v0

    #@a
    .line 964
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@d
    move-result p2

    #@e
    neg-int p2, p2

    #@f
    add-int/2addr p1, p2

    #@10
    if-eqz p4, :cond_22

    #@12
    .line 972
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@14
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@17
    move-result p3

    #@18
    sub-int/2addr p3, p1

    #@19
    if-lez p3, :cond_22

    #@1b
    .line 974
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1d
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    #@20
    add-int/2addr p3, p2

    #@21
    return p3

    #@22
    :cond_22
    return p2

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return p1
.end method

.method private fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .registers 6

    #@0
    .line 986
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@5
    move-result v0

    #@6
    sub-int v0, p1, v0

    #@8
    if-lez v0, :cond_23

    #@a
    .line 990
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@d
    move-result p2

    #@e
    neg-int p2, p2

    #@f
    add-int/2addr p1, p2

    #@10
    if-eqz p4, :cond_22

    #@12
    .line 997
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@14
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@17
    move-result p3

    #@18
    sub-int/2addr p1, p3

    #@19
    if-lez p1, :cond_22

    #@1b
    .line 999
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1d
    neg-int p4, p1

    #@1e
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    #@21
    sub-int/2addr p2, p1

    #@22
    :cond_22
    return p2

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .registers 2

    #@0
    .line 1771
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_c

    #@6
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    :goto_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .registers 2

    #@0
    .line 1761
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .registers 20

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v1, p1

    #@3
    move-object/from16 v2, p2

    #@5
    .line 755
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_b5

    #@b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_b5

    #@11
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_b5

    #@17
    .line 756
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_1f

    #@1d
    goto/16 :goto_b5

    #@1f
    .line 761
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    #@22
    move-result-object v3

    #@23
    .line 762
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@26
    move-result v4

    #@27
    const/4 v5, 0x0

    #@28
    .line 763
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@2f
    move-result v6

    #@30
    move v7, v5

    #@31
    move v8, v7

    #@32
    move v9, v8

    #@33
    :goto_33
    if-ge v7, v4, :cond_6a

    #@35
    .line 765
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v10

    #@39
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3b
    .line 766
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@3e
    move-result v11

    #@3f
    if-eqz v11, :cond_42

    #@41
    goto :goto_67

    #@42
    .line 769
    :cond_42
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    #@45
    move-result v11

    #@46
    const/4 v12, 0x1

    #@47
    if-ge v11, v6, :cond_4b

    #@49
    move v11, v12

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    move v11, v5

    #@4c
    .line 770
    :goto_4c
    iget-boolean v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@4e
    const/4 v14, -0x1

    #@4f
    if-eq v11, v13, :cond_52

    #@51
    move v12, v14

    #@52
    :cond_52
    if-ne v12, v14, :cond_5e

    #@54
    .line 773
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@56
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@58
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@5b
    move-result v10

    #@5c
    add-int/2addr v8, v10

    #@5d
    goto :goto_67

    #@5e
    .line 775
    :cond_5e
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@60
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@62
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@65
    move-result v10

    #@66
    add-int/2addr v9, v10

    #@67
    :goto_67
    add-int/lit8 v7, v7, 0x1

    #@69
    goto :goto_33

    #@6a
    .line 783
    :cond_6a
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@6c
    iput-object v3, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    #@6e
    if-lez v8, :cond_8f

    #@70
    .line 785
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    #@73
    move-result-object v3

    #@74
    .line 786
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@77
    move-result v3

    #@78
    move/from16 v4, p3

    #@7a
    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    #@7d
    .line 787
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@7f
    iput v8, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@81
    .line 788
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@83
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@85
    .line 789
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@87
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    #@8a
    .line 790
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@8c
    invoke-virtual {p0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@8f
    :cond_8f
    if-lez v9, :cond_b0

    #@91
    .line 794
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    #@94
    move-result-object v3

    #@95
    .line 795
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@98
    move-result v3

    #@99
    move/from16 v4, p4

    #@9b
    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    #@9e
    .line 796
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@a0
    iput v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@a2
    .line 797
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@a4
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@a6
    .line 798
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@a8
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    #@ab
    .line 799
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@ad
    invoke-virtual {p0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@b0
    .line 801
    :cond_b0
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@b2
    const/4 v2, 0x0

    #@b3
    iput-object v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    #@b5
    :cond_b5
    :goto_b5
    return-void
.end method

.method private logChildren()V
    .registers 6

    #@0
    const-string v0, "internal representation of views on the screen"

    #@2
    const-string v1, "LinearLayoutManager"

    #@4
    .line 2089
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    const/4 v0, 0x0

    #@8
    .line 2090
    :goto_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@b
    move-result v2

    #@c
    if-ge v0, v2, :cond_3b

    #@e
    .line 2091
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    .line 2092
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    const-string v4, "item "

    #@16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@1c
    move-result v4

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string v4, ", coord:"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@29
    .line 2093
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@2c
    move-result v2

    #@2d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 2092
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_8

    #@3b
    :cond_3b
    const-string v0, "=============="

    #@3d
    .line 2095
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    return-void
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V
    .registers 6

    #@0
    .line 1546
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    #@2
    if-eqz v0, :cond_19

    #@4
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_19

    #@9
    .line 1549
    :cond_9
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@b
    .line 1550
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    #@d
    .line 1551
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@f
    const/4 v2, -0x1

    #@10
    if-ne p2, v2, :cond_16

    #@12
    .line 1552
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    #@15
    goto :goto_19

    #@16
    .line 1554
    :cond_16
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    #@19
    :cond_19
    :goto_19
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 4

    #@0
    if-ne p2, p3, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    if-le p3, p2, :cond_f

    #@5
    add-int/lit8 p3, p3, -0x1

    #@7
    :goto_7
    if-lt p3, p2, :cond_17

    #@9
    .line 1429
    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@c
    add-int/lit8 p3, p3, -0x1

    #@e
    goto :goto_7

    #@f
    :cond_f
    :goto_f
    if-le p2, p3, :cond_17

    #@11
    .line 1433
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@14
    add-int/lit8 p2, p2, -0x1

    #@16
    goto :goto_f

    #@17
    :cond_17
    return-void
.end method

.method private recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 8

    #@0
    .line 1502
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-gez p2, :cond_7

    #@6
    return-void

    #@7
    .line 1510
    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v1, p2

    #@e
    add-int/2addr v1, p3

    #@f
    .line 1511
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@11
    if-eqz p2, :cond_33

    #@13
    const/4 p2, 0x0

    #@14
    move p3, p2

    #@15
    :goto_15
    if-ge p3, v0, :cond_53

    #@17
    .line 1513
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v2

    #@1b
    .line 1514
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1d
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@20
    move-result v3

    #@21
    if-lt v3, v1, :cond_2f

    #@23
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@25
    .line 1515
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    #@28
    move-result v2

    #@29
    if-ge v2, v1, :cond_2c

    #@2b
    goto :goto_2f

    #@2c
    :cond_2c
    add-int/lit8 p3, p3, 0x1

    #@2e
    goto :goto_15

    #@2f
    .line 1517
    :cond_2f
    :goto_2f
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    #@32
    return-void

    #@33
    :cond_33
    add-int/lit8 v0, v0, -0x1

    #@35
    move p2, v0

    #@36
    :goto_36
    if-ltz p2, :cond_53

    #@38
    .line 1523
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@3b
    move-result-object p3

    #@3c
    .line 1524
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@3e
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@41
    move-result v2

    #@42
    if-lt v2, v1, :cond_50

    #@44
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@46
    .line 1525
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    #@49
    move-result p3

    #@4a
    if-ge p3, v1, :cond_4d

    #@4c
    goto :goto_50

    #@4d
    :cond_4d
    add-int/lit8 p2, p2, -0x1

    #@4f
    goto :goto_36

    #@50
    .line 1527
    :cond_50
    :goto_50
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    #@53
    :cond_53
    return-void
.end method

.method private recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 8

    #@0
    if-gez p2, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    sub-int/2addr p2, p3

    #@4
    .line 1462
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@7
    move-result p3

    #@8
    .line 1463
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@a
    if-eqz v0, :cond_2d

    #@c
    add-int/lit8 p3, p3, -0x1

    #@e
    move v0, p3

    #@f
    :goto_f
    if-ltz v0, :cond_4c

    #@11
    .line 1465
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 1466
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@17
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@1a
    move-result v2

    #@1b
    if-gt v2, p2, :cond_29

    #@1d
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1f
    .line 1467
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    #@22
    move-result v1

    #@23
    if-le v1, p2, :cond_26

    #@25
    goto :goto_29

    #@26
    :cond_26
    add-int/lit8 v0, v0, -0x1

    #@28
    goto :goto_f

    #@29
    .line 1469
    :cond_29
    :goto_29
    invoke-direct {p0, p1, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    #@2c
    return-void

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    move v1, v0

    #@2f
    :goto_2f
    if-ge v1, p3, :cond_4c

    #@31
    .line 1475
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@34
    move-result-object v2

    #@35
    .line 1476
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@37
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@3a
    move-result v3

    #@3b
    if-gt v3, p2, :cond_49

    #@3d
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@3f
    .line 1477
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    #@42
    move-result v2

    #@43
    if-le v2, p2, :cond_46

    #@45
    goto :goto_49

    #@46
    :cond_46
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_2f

    #@49
    .line 1479
    :cond_49
    :goto_49
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    #@4c
    :cond_4c
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    #@0
    .line 362
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_12

    #@5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_12

    #@c
    .line 365
    :cond_c
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    #@e
    xor-int/2addr v0, v1

    #@f
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@11
    goto :goto_16

    #@12
    .line 363
    :cond_12
    :goto_12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    #@14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@16
    :goto_16
    return-void
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 8

    #@0
    .line 834
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 837
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    const/4 v2, 0x1

    #@d
    if-eqz v0, :cond_1d

    #@f
    .line 838
    invoke-virtual {p3, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1d

    #@15
    .line 839
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@18
    move-result p1

    #@19
    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    #@1c
    return v2

    #@1d
    .line 842
    :cond_1d
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    #@1f
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@21
    if-eq v0, v3, :cond_24

    #@23
    return v1

    #@24
    .line 845
    :cond_24
    iget-boolean v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@26
    if-eqz v0, :cond_2d

    #@28
    .line 846
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@2b
    move-result-object p1

    #@2c
    goto :goto_31

    #@2d
    .line 847
    :cond_2d
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@30
    move-result-object p1

    #@31
    :goto_31
    if-eqz p1, :cond_79

    #@33
    .line 849
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@36
    move-result v0

    #@37
    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    #@3a
    .line 852
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@3d
    move-result p2

    #@3e
    if-nez p2, :cond_78

    #@40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    #@43
    move-result p2

    #@44
    if-eqz p2, :cond_78

    #@46
    .line 854
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@48
    .line 855
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@4b
    move-result p2

    #@4c
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4e
    .line 856
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@51
    move-result v0

    #@52
    if-ge p2, v0, :cond_62

    #@54
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@56
    .line 857
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@59
    move-result p1

    #@5a
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@5c
    .line 858
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@5f
    move-result p2

    #@60
    if-ge p1, p2, :cond_63

    #@62
    :cond_62
    move v1, v2

    #@63
    :cond_63
    if-eqz v1, :cond_78

    #@65
    .line 860
    iget-boolean p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@67
    if-eqz p1, :cond_70

    #@69
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@6b
    .line 861
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@6e
    move-result p1

    #@6f
    goto :goto_76

    #@70
    :cond_70
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@72
    .line 862
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@75
    move-result p1

    #@76
    :goto_76
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@78
    :cond_78
    return v2

    #@79
    :cond_79
    return v1
.end method

.method private updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 7

    #@0
    .line 875
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_100

    #@7
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v0, v2, :cond_e

    #@c
    goto/16 :goto_100

    #@e
    :cond_e
    const/high16 v3, -0x80000000

    #@10
    if-ltz v0, :cond_fc

    #@12
    .line 879
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@15
    move-result p1

    #@16
    if-lt v0, p1, :cond_1a

    #@18
    goto/16 :goto_fc

    #@1a
    .line 890
    :cond_1a
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@1c
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@1e
    .line 891
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@20
    const/4 v0, 0x1

    #@21
    if-eqz p1, :cond_4f

    #@23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    #@26
    move-result p1

    #@27
    if-eqz p1, :cond_4f

    #@29
    .line 894
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2b
    iget-boolean p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    #@2d
    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@2f
    .line 895
    iget-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@31
    if-eqz p1, :cond_41

    #@33
    .line 896
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@38
    move-result p1

    #@39
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@3b
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    #@3d
    sub-int/2addr p1, v1

    #@3e
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@40
    goto :goto_4e

    #@41
    .line 899
    :cond_41
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@46
    move-result p1

    #@47
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@49
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    #@4b
    add-int/2addr p1, v1

    #@4c
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@4e
    :goto_4e
    return v0

    #@4f
    .line 905
    :cond_4f
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@51
    if-ne p1, v3, :cond_dc

    #@53
    .line 906
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@55
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@58
    move-result-object p1

    #@59
    if-eqz p1, :cond_bc

    #@5b
    .line 908
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@5d
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@60
    move-result v2

    #@61
    .line 909
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@63
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@66
    move-result v3

    #@67
    if-le v2, v3, :cond_6d

    #@69
    .line 911
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    #@6c
    return v0

    #@6d
    .line 914
    :cond_6d
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@6f
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@72
    move-result v2

    #@73
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@75
    .line 915
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@78
    move-result v3

    #@79
    sub-int/2addr v2, v3

    #@7a
    if-gez v2, :cond_87

    #@7c
    .line 917
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@7e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@81
    move-result p1

    #@82
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@84
    .line 918
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@86
    return v0

    #@87
    .line 921
    :cond_87
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@89
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@8c
    move-result v1

    #@8d
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@8f
    .line 922
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@92
    move-result v2

    #@93
    sub-int/2addr v1, v2

    #@94
    if-gez v1, :cond_a1

    #@96
    .line 924
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@98
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@9b
    move-result p1

    #@9c
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@9e
    .line 925
    iput-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@a0
    return v0

    #@a1
    .line 928
    :cond_a1
    iget-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@a3
    if-eqz v1, :cond_b3

    #@a5
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@a7
    .line 929
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@aa
    move-result p1

    #@ab
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@ad
    .line 930
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    #@b0
    move-result v1

    #@b1
    add-int/2addr p1, v1

    #@b2
    goto :goto_b9

    #@b3
    :cond_b3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@b5
    .line 931
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@b8
    move-result p1

    #@b9
    :goto_b9
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@bb
    goto :goto_db

    #@bc
    .line 933
    :cond_bc
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@bf
    move-result p1

    #@c0
    if-lez p1, :cond_d8

    #@c2
    .line 935
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@c5
    move-result-object p1

    #@c6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@c9
    move-result p1

    #@ca
    .line 936
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@cc
    if-ge v2, p1, :cond_d0

    #@ce
    move p1, v0

    #@cf
    goto :goto_d1

    #@d0
    :cond_d0
    move p1, v1

    #@d1
    :goto_d1
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@d3
    if-ne p1, v2, :cond_d6

    #@d5
    move v1, v0

    #@d6
    :cond_d6
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@d8
    .line 939
    :cond_d8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    #@db
    :goto_db
    return v0

    #@dc
    .line 944
    :cond_dc
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@de
    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@e0
    .line 946
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@e2
    if-eqz p1, :cond_f0

    #@e4
    .line 947
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@e6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@e9
    move-result p1

    #@ea
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@ec
    sub-int/2addr p1, v1

    #@ed
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@ef
    goto :goto_fb

    #@f0
    .line 950
    :cond_f0
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@f2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@f5
    move-result p1

    #@f6
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@f8
    add-int/2addr p1, v1

    #@f9
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@fb
    :goto_fb
    return v0

    #@fc
    .line 880
    :cond_fc
    :goto_fc
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@fe
    .line 881
    iput v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@100
    :cond_100
    :goto_100
    return v1
.end method

.method private updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 5

    #@0
    .line 806
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 813
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_e

    #@d
    return-void

    #@e
    .line 822
    :cond_e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    #@11
    .line 823
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@13
    if-eqz p1, :cond_1c

    #@15
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@18
    move-result p1

    #@19
    add-int/lit8 p1, p1, -0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    :goto_1d
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@1f
    return-void
.end method

.method private updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9

    #@0
    .line 1229
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    #@5
    move-result v1

    #@6
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    #@8
    .line 1230
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@a
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@c
    .line 1231
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@e
    const/4 v1, 0x0

    #@f
    aput v1, v0, v1

    #@11
    const/4 v2, 0x1

    #@12
    .line 1232
    aput v1, v0, v2

    #@14
    .line 1233
    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    #@17
    .line 1234
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@19
    aget p4, p4, v1

    #@1b
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result p4

    #@1f
    .line 1235
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@21
    aget v0, v0, v2

    #@23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v0

    #@27
    if-ne p1, v2, :cond_2a

    #@29
    move v1, v2

    #@2a
    .line 1237
    :cond_2a
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@2c
    if-eqz v1, :cond_30

    #@2e
    move v3, v0

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move v3, p4

    #@31
    :goto_31
    iput v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@33
    .line 1238
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@35
    if-eqz v1, :cond_38

    #@37
    goto :goto_39

    #@38
    :cond_38
    move p4, v0

    #@39
    :goto_39
    iput p4, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    #@3b
    const/4 p1, -0x1

    #@3c
    if-eqz v1, :cond_7d

    #@3e
    .line 1241
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@40
    iget v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@42
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@44
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    #@47
    move-result v1

    #@48
    add-int/2addr v0, v1

    #@49
    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@4b
    .line 1243
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    #@4e
    move-result-object p4

    #@4f
    .line 1245
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@51
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@53
    if-eqz v1, :cond_56

    #@55
    move v2, p1

    #@56
    :cond_56
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@58
    .line 1247
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@5a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@5d
    move-result v0

    #@5e
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@60
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@62
    add-int/2addr v0, v1

    #@63
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@65
    .line 1248
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@67
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@69
    invoke-virtual {v0, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@6c
    move-result v0

    #@6d
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@6f
    .line 1250
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@71
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@74
    move-result p1

    #@75
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@77
    .line 1251
    invoke-virtual {p4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@7a
    move-result p4

    #@7b
    sub-int/2addr p1, p4

    #@7c
    goto :goto_bd

    #@7d
    .line 1254
    :cond_7d
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    #@80
    move-result-object p4

    #@81
    .line 1255
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@83
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@85
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@87
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@8a
    move-result v3

    #@8b
    add-int/2addr v1, v3

    #@8c
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@8e
    .line 1256
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@90
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@92
    if-eqz v1, :cond_95

    #@94
    goto :goto_96

    #@95
    :cond_95
    move v2, p1

    #@96
    :goto_96
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@98
    .line 1258
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@9a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@9d
    move-result v0

    #@9e
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@a0
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@a2
    add-int/2addr v0, v1

    #@a3
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@a5
    .line 1259
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@a7
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@a9
    invoke-virtual {v0, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@ac
    move-result v0

    #@ad
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@af
    .line 1260
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@b1
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@b4
    move-result p1

    #@b5
    neg-int p1, p1

    #@b6
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@b8
    .line 1261
    invoke-virtual {p4}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@bb
    move-result p4

    #@bc
    add-int/2addr p1, p4

    #@bd
    .line 1263
    :goto_bd
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@bf
    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@c1
    if-eqz p3, :cond_ca

    #@c3
    .line 1265
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@c5
    iget p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@c7
    sub-int/2addr p3, p1

    #@c8
    iput p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@ca
    .line 1267
    :cond_ca
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@cc
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@ce
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .registers 6

    #@0
    .line 1011
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v1, p2

    #@9
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@b
    .line 1012
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@d
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@f
    const/4 v2, 0x1

    #@10
    if-eqz v1, :cond_14

    #@12
    const/4 v1, -0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v1, v2

    #@15
    :goto_15
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@17
    .line 1014
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@19
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@1b
    .line 1015
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1d
    iput v2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@1f
    .line 1016
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@21
    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@23
    .line 1017
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@25
    const/high16 p2, -0x80000000

    #@27
    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@29
    return-void
.end method

.method private updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 3

    #@0
    .line 1007
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@2
    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@4
    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    #@7
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .registers 5

    #@0
    .line 1025
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@7
    move-result v1

    #@8
    sub-int v1, p2, v1

    #@a
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@c
    .line 1026
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@e
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@10
    .line 1027
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@14
    const/4 v1, -0x1

    #@15
    if-eqz v0, :cond_19

    #@17
    const/4 v0, 0x1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v0, v1

    #@1a
    :goto_1a
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@1c
    .line 1029
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1e
    iput v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@20
    .line 1030
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@22
    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@24
    .line 1031
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@26
    const/high16 p2, -0x80000000

    #@28
    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@2a
    return-void
.end method

.method private updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 3

    #@0
    .line 1021
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@2
    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    #@4
    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    #@7
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 1409
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 1410
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@7
    :cond_7
    return-void
.end method

.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .registers 6

    #@0
    .line 488
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    .line 489
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@6
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@8
    const/4 v1, -0x1

    #@9
    const/4 v2, 0x0

    #@a
    if-ne v0, v1, :cond_e

    #@c
    move v0, v2

    #@d
    goto :goto_10

    #@e
    :cond_e
    move v0, p1

    #@f
    move p1, v2

    #@10
    .line 495
    :goto_10
    aput p1, p2, v2

    #@12
    const/4 p1, 0x1

    #@13
    .line 496
    aput v0, p2, p1

    #@15
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    #@0
    .line 295
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    .line 303
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 6

    #@0
    .line 1368
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@2
    if-nez v0, :cond_5

    #@4
    goto :goto_6

    #@5
    :cond_5
    move p1, p2

    #@6
    .line 1369
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@9
    move-result p2

    #@a
    if-eqz p2, :cond_24

    #@c
    if-nez p1, :cond_f

    #@e
    goto :goto_24

    #@f
    .line 1374
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@12
    const/4 p2, 0x1

    #@13
    if-lez p1, :cond_17

    #@15
    move v0, p2

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v0, -0x1

    #@18
    .line 1376
    :goto_18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result p1

    #@1c
    .line 1377
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    #@1f
    .line 1378
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@21
    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    #@24
    :cond_24
    :goto_24
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 8

    #@0
    .line 1288
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_15

    #@6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_15

    #@c
    .line 1290
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@e
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    #@10
    .line 1291
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@12
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    #@14
    goto :goto_24

    #@15
    .line 1293
    :cond_15
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    #@18
    .line 1294
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@1a
    .line 1295
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@1c
    if-ne v3, v1, :cond_24

    #@1e
    if-eqz v0, :cond_23

    #@20
    add-int/lit8 v3, p1, -0x1

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v3, v2

    #@24
    :cond_24
    :goto_24
    if-eqz v0, :cond_27

    #@26
    goto :goto_28

    #@27
    :cond_27
    const/4 v1, 0x1

    #@28
    :goto_28
    move v0, v2

    #@29
    .line 1306
    :goto_29
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    #@2b
    if-ge v0, v4, :cond_38

    #@2d
    if-ltz v3, :cond_38

    #@2f
    if-ge v3, p1, :cond_38

    #@31
    .line 1308
    invoke-interface {p2, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    #@34
    add-int/2addr v3, v1

    #@35
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_29

    #@38
    :cond_38
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 5

    #@0
    .line 1277
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@2
    if-ltz v0, :cond_14

    #@4
    .line 1278
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@7
    move-result p1

    #@8
    if-ge v0, p1, :cond_14

    #@a
    const/4 p1, 0x0

    #@b
    .line 1279
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@d
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@10
    move-result p1

    #@11
    invoke-interface {p3, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    #@14
    :cond_14
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1143
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1133
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1153
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5

    #@0
    .line 510
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 513
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    if-ge p1, v1, :cond_15

    #@14
    move v0, v2

    #@15
    .line 514
    :cond_15
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@17
    if-eq v0, p1, :cond_1a

    #@19
    const/4 v2, -0x1

    #@1a
    .line 515
    :cond_1a
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@1c
    const/4 v0, 0x0

    #@1d
    if-nez p1, :cond_26

    #@1f
    .line 516
    new-instance p1, Landroid/graphics/PointF;

    #@21
    int-to-float v1, v2

    #@22
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    #@25
    return-object p1

    #@26
    .line 518
    :cond_26
    new-instance p1, Landroid/graphics/PointF;

    #@28
    int-to-float v1, v2

    #@29
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    #@2c
    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1148
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1138
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    .line 1158
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method convertFocusDirectionToLayoutDirection(I)I
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
    .line 1737
    :cond_1a
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    .line 1743
    :cond_21
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    .line 1734
    :cond_28
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    .line 1740
    :cond_2f
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    .line 1726
    :cond_36
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@38
    if-ne p1, v1, :cond_3b

    #@3a
    return v1

    #@3b
    .line 1728
    :cond_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

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
    .line 1718
    :cond_43
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@45
    if-ne p1, v1, :cond_48

    #@47
    return v0

    #@48
    .line 1720
    :cond_48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

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

.method createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .registers 2

    #@0
    .line 1051
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@2
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;-><init>()V

    #@5
    return-object v0
.end method

.method ensureLayoutState()V
    .registers 2

    #@0
    .line 1040
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@2
    if-nez v0, :cond_a

    #@4
    .line 1041
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@a
    :cond_a
    return-void
.end method

.method fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .registers 12

    #@0
    .line 1572
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@2
    .line 1573
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@4
    const/high16 v2, -0x80000000

    #@6
    if-eq v1, v2, :cond_16

    #@8
    .line 1575
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@a
    if-gez v1, :cond_13

    #@c
    .line 1576
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@e
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@10
    add-int/2addr v1, v3

    #@11
    iput v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@13
    .line 1578
    :cond_13
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    #@16
    .line 1580
    :cond_16
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@18
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@1a
    add-int/2addr v1, v3

    #@1b
    .line 1581
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    #@1d
    .line 1582
    :cond_1d
    iget-boolean v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    #@1f
    if-nez v4, :cond_23

    #@21
    if-lez v1, :cond_75

    #@23
    :cond_23
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_75

    #@29
    .line 1583
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    #@2c
    .line 1587
    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V

    #@2f
    .line 1591
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    #@31
    if-eqz v4, :cond_34

    #@33
    goto :goto_75

    #@34
    .line 1594
    :cond_34
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@36
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@38
    iget v6, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@3a
    mul-int/2addr v5, v6

    #@3b
    add-int/2addr v4, v5

    #@3c
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@3e
    .line 1601
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    #@40
    if-eqz v4, :cond_4c

    #@42
    iget-object v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    #@44
    if-nez v4, :cond_4c

    #@46
    .line 1602
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_56

    #@4c
    .line 1603
    :cond_4c
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@4e
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@50
    sub-int/2addr v4, v5

    #@51
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@53
    .line 1605
    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@55
    sub-int/2addr v1, v4

    #@56
    .line 1608
    :cond_56
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@58
    if-eq v4, v2, :cond_6f

    #@5a
    .line 1609
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@5c
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@5e
    add-int/2addr v4, v5

    #@5f
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@61
    .line 1610
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@63
    if-gez v4, :cond_6c

    #@65
    .line 1611
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@67
    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@69
    add-int/2addr v4, v5

    #@6a
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@6c
    .line 1613
    :cond_6c
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    #@6f
    :cond_6f
    if-eqz p4, :cond_1d

    #@71
    .line 1615
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    #@73
    if-eqz v4, :cond_1d

    #@75
    .line 1622
    :cond_75
    :goto_75
    iget p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@77
    sub-int/2addr v0, p1

    #@78
    return v0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .registers 4

    #@0
    .line 1940
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, -0x1

    #@d
    goto :goto_12

    #@e
    .line 1941
    :cond_e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@11
    move-result v0

    #@12
    :goto_12
    return v0
.end method

.method findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .registers 5

    #@0
    .line 1801
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    const/4 v0, 0x0

    #@5
    .line 1802
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    return-object p1

    #@e
    .line 1805
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    const/4 v1, -0x1

    #@15
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@18
    move-result-object p1

    #@19
    return-object p1
.end method

.method findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .registers 5

    #@0
    .line 1783
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2
    if-eqz v0, :cond_10

    #@4
    .line 1784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    const/4 v1, -0x1

    #@b
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@e
    move-result-object p1

    #@f
    return-object p1

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    .line 1787
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@14
    move-result v1

    #@15
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@18
    move-result-object p1

    #@19
    return-object p1
.end method

.method public findFirstVisibleItemPosition()I
    .registers 4

    #@0
    .line 1923
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v2, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, -0x1

    #@d
    goto :goto_12

    #@e
    .line 1924
    :cond_e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@11
    move-result v0

    #@12
    :goto_12
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .registers 5

    #@0
    .line 1980
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, -0x1

    #@8
    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_13

    #@f
    .line 1981
    :cond_f
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@12
    move-result v3

    #@13
    :goto_13
    return v3
.end method

.method public findLastVisibleItemPosition()I
    .registers 5

    #@0
    .line 1963
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, -0x1

    #@8
    invoke-virtual {p0, v0, v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_13

    #@f
    .line 1964
    :cond_f
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@12
    move-result v3

    #@13
    :goto_13
    return v3
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .registers 6

    #@0
    .line 2012
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@3
    if-le p2, p1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    goto :goto_c

    #@7
    :cond_7
    if-ge p2, p1, :cond_b

    #@9
    const/4 v0, -0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    if-nez v0, :cond_13

    #@e
    .line 2015
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 2019
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@15
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@1c
    move-result v0

    #@1d
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1f
    .line 2020
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@22
    move-result v1

    #@23
    if-ge v0, v1, :cond_2a

    #@25
    const/16 v0, 0x4104

    #@27
    const/16 v1, 0x4004

    #@29
    goto :goto_2e

    #@2a
    :cond_2a
    const/16 v0, 0x1041

    #@2c
    const/16 v1, 0x1001

    #@2e
    .line 2031
    :goto_2e
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@30
    if-nez v2, :cond_39

    #@32
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@34
    .line 2032
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    #@37
    move-result-object p1

    #@38
    goto :goto_3f

    #@39
    :cond_39
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@3b
    .line 2034
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    #@3e
    move-result-object p1

    #@3f
    :goto_3f
    return-object p1
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .registers 6

    #@0
    .line 1990
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@3
    const/16 v0, 0x140

    #@5
    if-eqz p3, :cond_a

    #@7
    const/16 p3, 0x6003

    #@9
    goto :goto_b

    #@a
    :cond_a
    move p3, v0

    #@b
    :goto_b
    if-eqz p4, :cond_e

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    .line 2004
    :goto_f
    iget p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@11
    if-nez p4, :cond_1a

    #@13
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@15
    .line 2005
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    #@18
    move-result-object p1

    #@19
    goto :goto_20

    #@1a
    :cond_1a
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@1c
    .line 2007
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    #@1f
    move-result-object p1

    #@20
    :goto_20
    return-object p1
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 11

    #@0
    .line 1855
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@3
    .line 1858
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@8
    move-result p1

    #@9
    .line 1859
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@e
    move-result p2

    #@f
    if-le p4, p3, :cond_13

    #@11
    const/4 v0, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, -0x1

    #@14
    :goto_14
    const/4 v1, 0x0

    #@15
    move-object v2, v1

    #@16
    :goto_16
    if-eq p3, p4, :cond_4b

    #@18
    .line 1862
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v3

    #@1c
    .line 1863
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@1f
    move-result v4

    #@20
    if-ltz v4, :cond_49

    #@22
    if-ge v4, p5, :cond_49

    #@24
    .line 1865
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@2a
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_34

    #@30
    if-nez v2, :cond_49

    #@32
    move-object v2, v3

    #@33
    goto :goto_49

    #@34
    .line 1869
    :cond_34
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@36
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@39
    move-result v4

    #@3a
    if-ge v4, p2, :cond_46

    #@3c
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@3e
    .line 1870
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@41
    move-result v4

    #@42
    if-ge v4, p1, :cond_45

    #@44
    goto :goto_46

    #@45
    :cond_45
    return-object v3

    #@46
    :cond_46
    :goto_46
    if-nez v1, :cond_49

    #@48
    move-object v1, v3

    #@49
    :cond_49
    :goto_49
    add-int/2addr p3, v0

    #@4a
    goto :goto_16

    #@4b
    :cond_4b
    if-eqz v1, :cond_4e

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    move-object v1, v2

    #@4f
    :goto_4f
    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 4

    #@0
    .line 407
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    .line 411
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@10
    move-result v1

    #@11
    sub-int v1, p1, v1

    #@13
    if-ltz v1, :cond_22

    #@15
    if-ge v1, v0, :cond_22

    #@17
    .line 414
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 415
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@1e
    move-result v1

    #@1f
    if-ne v1, p1, :cond_22

    #@21
    return-object v0

    #@22
    .line 420
    :cond_22
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@25
    move-result-object p1

    #@26
    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 3

    #@0
    .line 200
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 447
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_d

    #@6
    .line 448
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@b
    move-result p1

    #@c
    return p1

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return p1
.end method

.method public getInitialPrefetchItemCount()I
    .registers 2

    #@0
    .line 1362
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    #@2
    return v0
.end method

.method public getOrientation()I
    .registers 2

    #@0
    .line 330
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@2
    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .registers 2

    #@0
    .line 212
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    #@2
    return v0
.end method

.method public getReverseLayout()Z
    .registers 2

    #@0
    .line 376
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    #@2
    return v0
.end method

.method public getStackFromEnd()Z
    .registers 2

    #@0
    .line 319
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@2
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected isLayoutRTL()Z
    .registers 3

    #@0
    .line 1036
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

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

.method public isSmoothScrollbarEnabled()Z
    .registers 2

    #@0
    .line 1223
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@2
    return v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 12

    #@0
    .line 1627
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    const/4 p2, 0x1

    #@5
    if-nez p1, :cond_a

    #@7
    .line 1634
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    #@9
    return-void

    #@a
    .line 1637
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d
    move-result-object v0

    #@e
    move-object v6, v0

    #@f
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@11
    .line 1638
    iget-object v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    #@13
    const/4 v1, -0x1

    #@14
    const/4 v2, 0x0

    #@15
    if-nez v0, :cond_2a

    #@17
    .line 1639
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@19
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@1b
    if-ne v3, v1, :cond_1f

    #@1d
    move v3, p2

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v3, v2

    #@20
    :goto_20
    if-ne v0, v3, :cond_26

    #@22
    .line 1641
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    #@25
    goto :goto_3c

    #@26
    .line 1643
    :cond_26
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    #@29
    goto :goto_3c

    #@2a
    .line 1646
    :cond_2a
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@2c
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@2e
    if-ne v3, v1, :cond_32

    #@30
    move v3, p2

    #@31
    goto :goto_33

    #@32
    :cond_32
    move v3, v2

    #@33
    :goto_33
    if-ne v0, v3, :cond_39

    #@35
    .line 1648
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    #@38
    goto :goto_3c

    #@39
    .line 1650
    :cond_39
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    #@3c
    .line 1653
    :goto_3c
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    #@3f
    .line 1654
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@41
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@44
    move-result v0

    #@45
    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@47
    .line 1656
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@49
    if-ne v0, p2, :cond_88

    #@4b
    .line 1657
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_63

    #@51
    .line 1658
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getWidth()I

    #@54
    move-result v0

    #@55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingRight()I

    #@58
    move-result v2

    #@59
    sub-int/2addr v0, v2

    #@5a
    .line 1659
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@5c
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    #@5f
    move-result v2

    #@60
    sub-int v2, v0, v2

    #@62
    goto :goto_6e

    #@63
    .line 1661
    :cond_63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingLeft()I

    #@66
    move-result v2

    #@67
    .line 1662
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@69
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    #@6c
    move-result v0

    #@6d
    add-int/2addr v0, v2

    #@6e
    .line 1664
    :goto_6e
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@70
    if-ne v3, v1, :cond_7d

    #@72
    .line 1665
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@74
    .line 1666
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@76
    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@78
    sub-int/2addr p3, v3

    #@79
    move v3, p3

    #@7a
    move v4, v0

    #@7b
    move v5, v1

    #@7c
    goto :goto_ae

    #@7d
    .line 1668
    :cond_7d
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@7f
    .line 1669
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@81
    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@83
    add-int/2addr p3, v3

    #@84
    move v5, p3

    #@85
    move v4, v0

    #@86
    move v3, v1

    #@87
    goto :goto_ae

    #@88
    .line 1672
    :cond_88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingTop()I

    #@8b
    move-result v0

    #@8c
    .line 1673
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@8e
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    #@91
    move-result v2

    #@92
    add-int/2addr v2, v0

    #@93
    .line 1675
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@95
    if-ne v3, v1, :cond_a3

    #@97
    .line 1676
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@99
    .line 1677
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@9b
    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@9d
    sub-int/2addr p3, v3

    #@9e
    move v3, v0

    #@9f
    move v4, v1

    #@a0
    move v5, v2

    #@a1
    move v2, p3

    #@a2
    goto :goto_ae

    #@a3
    .line 1679
    :cond_a3
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@a5
    .line 1680
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@a7
    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@a9
    add-int/2addr p3, v3

    #@aa
    move v4, p3

    #@ab
    move v3, v0

    #@ac
    move v5, v2

    #@ad
    move v2, v1

    #@ae
    :goto_ae
    move-object v0, p0

    #@af
    move-object v1, p1

    #@b0
    .line 1685
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    #@b3
    .line 1692
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    #@b6
    move-result p3

    #@b7
    if-nez p3, :cond_bf

    #@b9
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    #@bc
    move-result p3

    #@bd
    if-eqz p3, :cond_c1

    #@bf
    .line 1693
    :cond_bf
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    #@c1
    .line 1695
    :cond_c1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    #@c4
    move-result p1

    #@c5
    iput-boolean p1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    #@c7
    return-void
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 5

    #@0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 3

    #@0
    .line 234
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@3
    .line 235
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    #@5
    if-eqz p1, :cond_d

    #@7
    .line 236
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@a
    .line 237
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    #@d
    :cond_d
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 8

    #@0
    .line 2041
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    #@3
    .line 2042
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@6
    move-result p1

    #@7
    const/4 v0, 0x0

    #@8
    if-nez p1, :cond_b

    #@a
    return-object v0

    #@b
    .line 2046
    :cond_b
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    #@e
    move-result p1

    #@f
    const/high16 p2, -0x80000000

    #@11
    if-ne p1, p2, :cond_14

    #@13
    return-object v0

    #@14
    .line 2050
    :cond_14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@17
    .line 2051
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@1c
    move-result v1

    #@1d
    int-to-float v1, v1

    #@1e
    const v2, 0x3eaaaaab

    #@21
    mul-float/2addr v1, v2

    #@22
    float-to-int v1, v1

    #@23
    const/4 v2, 0x0

    #@24
    .line 2052
    invoke-direct {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    #@27
    .line 2053
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@29
    iput p2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@2b
    .line 2054
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@2d
    iput-boolean v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    #@2f
    .line 2055
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@31
    const/4 v1, 0x1

    #@32
    invoke-virtual {p0, p3, p2, p4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@35
    const/4 p2, -0x1

    #@36
    if-ne p1, p2, :cond_3d

    #@38
    .line 2063
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;

    #@3b
    move-result-object p3

    #@3c
    goto :goto_41

    #@3d
    .line 2065
    :cond_3d
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;

    #@40
    move-result-object p3

    #@41
    :goto_41
    if-ne p1, p2, :cond_48

    #@43
    .line 2071
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    #@46
    move-result-object p1

    #@47
    goto :goto_4c

    #@48
    .line 2073
    :cond_48
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    #@4b
    move-result-object p1

    #@4c
    .line 2075
    :goto_4c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    #@4f
    move-result p2

    #@50
    if-eqz p2, :cond_56

    #@52
    if-nez p3, :cond_55

    #@54
    return-object v0

    #@55
    :cond_55
    return-object p1

    #@56
    :cond_56
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 243
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_17

    #@9
    .line 245
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@10
    .line 246
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    #@17
    :cond_17
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 11

    #@0
    .line 537
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2
    const/4 v1, -0x1

    #@3
    if-nez v0, :cond_9

    #@5
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@7
    if-eq v0, v1, :cond_13

    #@9
    .line 538
    :cond_9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_13

    #@f
    .line 539
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@12
    return-void

    #@13
    .line 543
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@15
    if-eqz v0, :cond_23

    #@17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_23

    #@1d
    .line 544
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@1f
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    #@21
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@23
    .line 547
    :cond_23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@26
    .line 548
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@28
    const/4 v2, 0x0

    #@29
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    #@2b
    .line 550
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    #@2e
    .line 552
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    #@31
    move-result-object v0

    #@32
    .line 553
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@34
    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    #@36
    const/4 v4, 0x1

    #@37
    if-eqz v3, :cond_6a

    #@39
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@3b
    if-ne v3, v1, :cond_6a

    #@3d
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@3f
    if-eqz v3, :cond_42

    #@41
    goto :goto_6a

    #@42
    :cond_42
    if-eqz v0, :cond_81

    #@44
    .line 560
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@46
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@49
    move-result v3

    #@4a
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4c
    .line 561
    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@4f
    move-result v5

    #@50
    if-ge v3, v5, :cond_60

    #@52
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@54
    .line 562
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@57
    move-result v3

    #@58
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@5a
    .line 563
    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@5d
    move-result v5

    #@5e
    if-gt v3, v5, :cond_81

    #@60
    .line 575
    :cond_60
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@62
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@65
    move-result v5

    #@66
    invoke-virtual {v3, v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    #@69
    goto :goto_81

    #@6a
    .line 555
    :cond_6a
    :goto_6a
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@6c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    #@6f
    .line 556
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@71
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@73
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@75
    xor-int/2addr v3, v5

    #@76
    iput-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@78
    .line 558
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@7a
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    #@7d
    .line 559
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@7f
    iput-boolean v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    #@81
    .line 584
    :cond_81
    :goto_81
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@83
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    #@85
    if-ltz v3, :cond_89

    #@87
    move v3, v4

    #@88
    goto :goto_8a

    #@89
    :cond_89
    move v3, v1

    #@8a
    :goto_8a
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@8c
    .line 586
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@8e
    aput v2, v0, v2

    #@90
    .line 587
    aput v2, v0, v4

    #@92
    .line 588
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    #@95
    .line 589
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@97
    aget v0, v0, v2

    #@99
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@9c
    move-result v0

    #@9d
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@9f
    .line 590
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@a2
    move-result v3

    #@a3
    add-int/2addr v0, v3

    #@a4
    .line 591
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    #@a6
    aget v3, v3, v4

    #@a8
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@ab
    move-result v3

    #@ac
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@ae
    .line 592
    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    #@b1
    move-result v5

    #@b2
    add-int/2addr v3, v5

    #@b3
    .line 593
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@b6
    move-result v5

    #@b7
    if-eqz v5, :cond_f2

    #@b9
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@bb
    if-eq v5, v1, :cond_f2

    #@bd
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@bf
    const/high16 v7, -0x80000000

    #@c1
    if-eq v6, v7, :cond_f2

    #@c3
    .line 598
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@c6
    move-result-object v5

    #@c7
    if-eqz v5, :cond_f2

    #@c9
    .line 602
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@cb
    if-eqz v6, :cond_dd

    #@cd
    .line 603
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@cf
    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@d2
    move-result v6

    #@d3
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@d5
    .line 604
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@d8
    move-result v5

    #@d9
    sub-int/2addr v6, v5

    #@da
    .line 605
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@dc
    goto :goto_ec

    #@dd
    .line 607
    :cond_dd
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@df
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@e2
    move-result v5

    #@e3
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@e5
    .line 608
    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@e8
    move-result v6

    #@e9
    sub-int/2addr v5, v6

    #@ea
    .line 609
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@ec
    :goto_ec
    sub-int/2addr v6, v5

    #@ed
    if-lez v6, :cond_f1

    #@ef
    add-int/2addr v0, v6

    #@f0
    goto :goto_f2

    #@f1
    :cond_f1
    sub-int/2addr v3, v6

    #@f2
    .line 621
    :cond_f2
    :goto_f2
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@f4
    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@f6
    if-eqz v5, :cond_fe

    #@f8
    .line 622
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@fa
    if-eqz v5, :cond_102

    #@fc
    :cond_fc
    move v1, v4

    #@fd
    goto :goto_102

    #@fe
    .line 625
    :cond_fe
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@100
    if-eqz v5, :cond_fc

    #@102
    .line 629
    :cond_102
    :goto_102
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@104
    invoke-virtual {p0, p1, p2, v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    #@107
    .line 630
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@10a
    .line 631
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@10c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    #@10f
    move-result v5

    #@110
    iput-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    #@112
    .line 632
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@114
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@117
    move-result v5

    #@118
    iput-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    #@11a
    .line 635
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@11c
    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    #@11e
    .line 636
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@120
    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    #@122
    if-eqz v1, :cond_17d

    #@124
    .line 638
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@126
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    #@129
    .line 639
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@12b
    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@12d
    .line 640
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@12f
    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@132
    .line 641
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@134
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@136
    .line 642
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@138
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@13a
    .line 643
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@13c
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@13e
    if-lez v5, :cond_145

    #@140
    .line 644
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@142
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@144
    add-int/2addr v3, v5

    #@145
    .line 647
    :cond_145
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@147
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    #@14a
    .line 648
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@14c
    iput v3, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@14e
    .line 649
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@150
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@152
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@154
    iget v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@156
    add-int/2addr v5, v6

    #@157
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@159
    .line 650
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@15b
    invoke-virtual {p0, p1, v3, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@15e
    .line 651
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@160
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@162
    .line 653
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@164
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@166
    if-lez v5, :cond_1d5

    #@168
    .line 655
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@16a
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@16c
    .line 656
    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    #@16f
    .line 657
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@171
    iput v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@173
    .line 658
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@175
    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@178
    .line 659
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@17a
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@17c
    goto :goto_1d5

    #@17d
    .line 663
    :cond_17d
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@17f
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    #@182
    .line 664
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@184
    iput v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@186
    .line 665
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@188
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@18b
    .line 666
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@18d
    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@18f
    .line 667
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@191
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@193
    .line 668
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@195
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@197
    if-lez v5, :cond_19e

    #@199
    .line 669
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@19b
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@19d
    add-int/2addr v0, v5

    #@19e
    .line 672
    :cond_19e
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@1a0
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    #@1a3
    .line 673
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1a5
    iput v0, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@1a7
    .line 674
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1a9
    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@1ab
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1ad
    iget v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@1af
    add-int/2addr v5, v6

    #@1b0
    iput v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@1b2
    .line 675
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1b4
    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@1b7
    .line 676
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1b9
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@1bb
    .line 678
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1bd
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@1bf
    if-lez v5, :cond_1d5

    #@1c1
    .line 679
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1c3
    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    #@1c5
    .line 681
    invoke-direct {p0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    #@1c8
    .line 682
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1ca
    iput v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    #@1cc
    .line 683
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1ce
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@1d1
    .line 684
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@1d3
    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@1d5
    .line 691
    :cond_1d5
    :goto_1d5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@1d8
    move-result v1

    #@1d9
    if-lez v1, :cond_1f9

    #@1db
    .line 695
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@1dd
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@1df
    xor-int/2addr v1, v5

    #@1e0
    if-eqz v1, :cond_1ed

    #@1e2
    .line 696
    invoke-direct {p0, v3, p1, p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@1e5
    move-result v1

    #@1e6
    add-int/2addr v0, v1

    #@1e7
    add-int/2addr v3, v1

    #@1e8
    .line 699
    invoke-direct {p0, v0, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@1eb
    move-result v1

    #@1ec
    goto :goto_1f7

    #@1ed
    .line 703
    :cond_1ed
    invoke-direct {p0, v0, p1, p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@1f0
    move-result v1

    #@1f1
    add-int/2addr v0, v1

    #@1f2
    add-int/2addr v3, v1

    #@1f3
    .line 706
    invoke-direct {p0, v3, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@1f6
    move-result v1

    #@1f7
    :goto_1f7
    add-int/2addr v0, v1

    #@1f8
    add-int/2addr v3, v1

    #@1f9
    .line 711
    :cond_1f9
    invoke-direct {p0, p1, p2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    #@1fc
    .line 712
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@1ff
    move-result p1

    #@200
    if-nez p1, :cond_208

    #@202
    .line 713
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@204
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    #@207
    goto :goto_20d

    #@208
    .line 715
    :cond_208
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@20a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    #@20d
    .line 717
    :goto_20d
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@20f
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    #@211
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 2

    #@0
    .line 725
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 726
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@6
    const/4 p1, -0x1

    #@7
    .line 727
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@9
    const/high16 p1, -0x80000000

    #@b
    .line 728
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@d
    .line 729
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    #@12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 279
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 280
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@6
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@8
    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    #@b
    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    #@0
    .line 252
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 253
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@8
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;)V

    #@b
    return-object v0

    #@c
    .line 255
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@e
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>()V

    #@11
    .line 256
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@14
    move-result v1

    #@15
    if-lez v1, :cond_57

    #@17
    .line 257
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@1a
    .line 258
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    #@1c
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@1e
    xor-int/2addr v1, v2

    #@1f
    .line 259
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    #@21
    if-eqz v1, :cond_3d

    #@23
    .line 261
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    #@26
    move-result-object v1

    #@27
    .line 262
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@29
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@2c
    move-result v2

    #@2d
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2f
    .line 263
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@32
    move-result v3

    #@33
    sub-int/2addr v2, v3

    #@34
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    #@36
    .line 264
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@39
    move-result v1

    #@3a
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    #@3c
    goto :goto_5a

    #@3d
    .line 266
    :cond_3d
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    #@40
    move-result-object v1

    #@41
    .line 267
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@44
    move-result v2

    #@45
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    #@47
    .line 268
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@49
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@4c
    move-result v1

    #@4d
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4f
    .line 269
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@52
    move-result v2

    #@53
    sub-int/2addr v1, v2

    #@54
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    #@56
    goto :goto_5a

    #@57
    .line 272
    :cond_57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    #@5a
    :goto_5a
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .registers 8

    #@0
    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    #@2
    .line 2160
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@5
    .line 2161
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@8
    .line 2162
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    #@b
    .line 2163
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@e
    move-result p3

    #@f
    .line 2164
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@12
    move-result p4

    #@13
    const/4 v0, 0x1

    #@14
    const/4 v1, -0x1

    #@15
    if-ge p3, p4, :cond_19

    #@17
    move p3, v0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move p3, v1

    #@1a
    .line 2167
    :goto_1a
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@1c
    if-eqz v2, :cond_49

    #@1e
    if-ne p3, v0, :cond_38

    #@20
    .line 2169
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@22
    .line 2170
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@25
    move-result p3

    #@26
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@28
    .line 2171
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@2b
    move-result p2

    #@2c
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2e
    .line 2172
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@31
    move-result p1

    #@32
    add-int/2addr p2, p1

    #@33
    sub-int/2addr p3, p2

    #@34
    .line 2169
    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    #@37
    goto :goto_65

    #@38
    .line 2174
    :cond_38
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@3a
    .line 2175
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@3d
    move-result p1

    #@3e
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@40
    .line 2176
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@43
    move-result p2

    #@44
    sub-int/2addr p1, p2

    #@45
    .line 2174
    invoke-virtual {p0, p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    #@48
    goto :goto_65

    #@49
    :cond_49
    if-ne p3, v1, :cond_55

    #@4b
    .line 2180
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4d
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@50
    move-result p1

    #@51
    invoke-virtual {p0, p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    #@54
    goto :goto_65

    #@55
    .line 2182
    :cond_55
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@57
    .line 2183
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@5a
    move-result p2

    #@5b
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@5d
    .line 2184
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@60
    move-result p1

    #@61
    sub-int/2addr p2, p1

    #@62
    .line 2182
    invoke-virtual {p0, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    #@65
    :goto_65
    return-void
.end method

.method resolveIsInfinite()Z
    .registers 2

    #@0
    .line 1271
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_12

    #@8
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@a
    .line 1272
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 9

    #@0
    .line 1382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_3b

    #@7
    if-nez p1, :cond_a

    #@9
    goto :goto_3b

    #@a
    .line 1385
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    #@d
    .line 1386
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@f
    const/4 v2, 0x1

    #@10
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    #@12
    if-lez p1, :cond_16

    #@14
    move v0, v2

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, -0x1

    #@17
    .line 1388
    :goto_17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@1a
    move-result v3

    #@1b
    .line 1389
    invoke-direct {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    #@1e
    .line 1390
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@20
    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@22
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@24
    .line 1391
    invoke-virtual {p0, p2, v4, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    #@27
    move-result p2

    #@28
    add-int/2addr v2, p2

    #@29
    if-gez v2, :cond_2c

    #@2b
    return v1

    #@2c
    :cond_2c
    if-le v3, v2, :cond_30

    #@2e
    mul-int p1, v0, v2

    #@30
    .line 1399
    :cond_30
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@32
    neg-int p3, p1

    #@33
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    #@36
    .line 1403
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    #@38
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    #@3a
    return p1

    #@3b
    :cond_3b
    :goto_3b
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 6

    #@0
    .line 1113
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 p1, 0x0

    #@6
    return p1

    #@7
    .line 1116
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public scrollToPosition(I)V
    .registers 2

    #@0
    .line 1070
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@2
    const/high16 p1, -0x80000000

    #@4
    .line 1071
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@6
    .line 1072
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 1073
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    #@d
    .line 1075
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    #@10
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 3

    #@0
    .line 1098
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    #@2
    .line 1099
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    #@4
    .line 1100
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 1101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    #@b
    .line 1103
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    #@e
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5

    #@0
    .line 1125
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    .line 1128
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public setInitialPrefetchItemCount(I)V
    .registers 2

    #@0
    .line 1346
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    #@2
    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    #@0
    if-eqz p1, :cond_1b

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p1, v0, :cond_6

    #@5
    goto :goto_1b

    #@6
    .line 341
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string v2, "invalid orientation:"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    #@1c
    .line 344
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@1f
    .line 346
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@21
    if-ne p1, v0, :cond_27

    #@23
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@25
    if-nez v0, :cond_36

    #@27
    .line 348
    :cond_27
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2d
    .line 349
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    #@2f
    iput-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@31
    .line 350
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    #@33
    .line 351
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    #@36
    :cond_36
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .registers 2

    #@0
    .line 229
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    #@2
    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 394
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@4
    .line 395
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    #@6
    if-ne p1, v0, :cond_9

    #@8
    return-void

    #@9
    .line 398
    :cond_9
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    #@b
    .line 399
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    #@e
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2

    #@0
    .line 1212
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    #@2
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 310
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@4
    .line 311
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@6
    if-ne v0, p1, :cond_9

    #@8
    return-void

    #@9
    .line 314
    :cond_9
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@b
    .line 315
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    #@e
    return-void
.end method

.method shouldMeasureTwice()Z
    .registers 3

    #@0
    .line 1700
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getHeightMode()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    if-eq v0, v1, :cond_16

    #@8
    .line 1701
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getWidthMode()I

    #@b
    move-result v0

    #@c
    if-eq v0, v1, :cond_16

    #@e
    .line 1702
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    :goto_17
    return v0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 4

    #@0
    .line 502
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    #@2
    .line 503
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    #@9
    .line 504
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    #@c
    .line 505
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    #@f
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 3

    #@0
    .line 2150
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2
    if-nez v0, :cond_c

    #@4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    #@6
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    #@8
    if-ne v0, v1, :cond_c

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

.method validateChildOrder()V
    .registers 11

    #@0
    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "validating child count "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    const-string v1, "LinearLayoutManager"

    #@15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 2110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@1b
    move-result v0

    #@1c
    const/4 v1, 0x1

    #@1d
    if-ge v0, v1, :cond_20

    #@1f
    return-void

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    .line 2113
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@28
    move-result v2

    #@29
    .line 2114
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2b
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@32
    move-result v3

    #@33
    .line 2115
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    #@35
    const-string v5, "detected invalid location"

    #@37
    const-string v6, "detected invalid position. loc invalid? "

    #@39
    if-eqz v4, :cond_7a

    #@3b
    move v4, v1

    #@3c
    .line 2116
    :goto_3c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3f
    move-result v7

    #@40
    if-ge v4, v7, :cond_b9

    #@42
    .line 2117
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@45
    move-result-object v7

    #@46
    .line 2118
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@49
    move-result v8

    #@4a
    .line 2119
    iget-object v9, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4c
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@4f
    move-result v7

    #@50
    if-ge v8, v2, :cond_6c

    #@52
    .line 2121
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    #@55
    .line 2122
    new-instance v2, Ljava/lang/RuntimeException;

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5c
    if-ge v7, v3, :cond_5f

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    move v1, v0

    #@60
    :goto_60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v2

    #@6c
    :cond_6c
    if-gt v7, v3, :cond_71

    #@6e
    add-int/lit8 v4, v4, 0x1

    #@70
    goto :goto_3c

    #@71
    .line 2126
    :cond_71
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    #@74
    .line 2127
    new-instance v0, Ljava/lang/RuntimeException;

    #@76
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@79
    throw v0

    #@7a
    :cond_7a
    move v4, v1

    #@7b
    .line 2131
    :goto_7b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@7e
    move-result v7

    #@7f
    if-ge v4, v7, :cond_b9

    #@81
    .line 2132
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@84
    move-result-object v7

    #@85
    .line 2133
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@88
    move-result v8

    #@89
    .line 2134
    iget-object v9, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@8b
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@8e
    move-result v7

    #@8f
    if-ge v8, v2, :cond_ab

    #@91
    .line 2136
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    #@94
    .line 2137
    new-instance v2, Ljava/lang/RuntimeException;

    #@96
    new-instance v4, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9b
    if-ge v7, v3, :cond_9e

    #@9d
    goto :goto_9f

    #@9e
    :cond_9e
    move v1, v0

    #@9f
    :goto_9f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v2

    #@ab
    :cond_ab
    if-lt v7, v3, :cond_b0

    #@ad
    add-int/lit8 v4, v4, 0x1

    #@af
    goto :goto_7b

    #@b0
    .line 2141
    :cond_b0
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    #@b3
    .line 2142
    new-instance v0, Ljava/lang/RuntimeException;

    #@b5
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v0

    #@b9
    :cond_b9
    return-void
.end method
