.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mUsingSpansToEstimateScrollBarDimensions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    #@0
    .line 85
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 44
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    #@6
    const/4 p1, -0x1

    #@7
    .line 45
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@9
    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    #@b
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    #@e
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    #@10
    .line 57
    new-instance p1, Landroid/util/SparseIntArray;

    #@12
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    #@15
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    #@17
    .line 58
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    #@19
    invoke-direct {p1}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    #@1c
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@1e
    .line 60
    new-instance p1, Landroid/graphics/Rect;

    #@20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    #@25
    .line 86
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    #@28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 5

    #@0
    .line 98
    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 44
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    #@6
    const/4 p1, -0x1

    #@7
    .line 45
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@9
    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    #@b
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    #@e
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    #@10
    .line 57
    new-instance p1, Landroid/util/SparseIntArray;

    #@12
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    #@15
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    #@17
    .line 58
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    #@19
    invoke-direct {p1}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    #@1c
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@1e
    .line 60
    new-instance p1, Landroid/graphics/Rect;

    #@20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    #@25
    .line 99
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    #@28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    #@0
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 44
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    #@6
    const/4 v0, -0x1

    #@7
    .line 45
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@9
    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    #@b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@e
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    #@10
    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    #@12
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@15
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    #@17
    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    #@19
    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    #@1c
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@1e
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    #@20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    #@25
    .line 74
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    #@28
    move-result-object p1

    #@29
    .line 75
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    #@2b
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    #@2e
    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IZ)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p4, :cond_8

    #@3
    const/4 p4, 0x1

    #@4
    move v1, p4

    #@5
    move p4, p3

    #@6
    move p3, v0

    #@7
    goto :goto_c

    #@8
    :cond_8
    add-int/lit8 p3, p3, -0x1

    #@a
    const/4 p4, -0x1

    #@b
    move v1, p4

    #@c
    :goto_c
    if-eq p3, p4, :cond_29

    #@e
    .line 786
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@10
    aget-object v2, v2, p3

    #@12
    .line 787
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@18
    .line 788
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@1b
    move-result v2

    #@1c
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@1f
    move-result v2

    #@20
    iput v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    #@22
    .line 789
    iput v0, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@24
    .line 790
    iget v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    #@26
    add-int/2addr v0, v2

    #@27
    add-int/2addr p3, v1

    #@28
    goto :goto_c

    #@29
    :cond_29
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .registers 7

    #@0
    .line 189
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_2a

    #@7
    .line 191
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@11
    .line 192
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    #@14
    move-result v3

    #@15
    .line 193
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    #@17
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    #@1a
    move-result v5

    #@1b
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@1e
    .line 194
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    #@20
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_5

    #@2a
    :cond_2a
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 4

    #@0
    .line 314
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@2
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@4
    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    #@7
    move-result-object p1

    #@8
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@a
    return-void
.end method

.method static calculateItemBorders([III)[I
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p0, :cond_e

    #@3
    .line 325
    array-length v1, p0

    #@4
    add-int/lit8 v2, p1, 0x1

    #@6
    if-ne v1, v2, :cond_e

    #@8
    array-length v1, p0

    #@9
    sub-int/2addr v1, v0

    #@a
    aget v1, p0, v1

    #@c
    if-eq v1, p2, :cond_12

    #@e
    :cond_e
    add-int/lit8 p0, p1, 0x1

    #@10
    .line 327
    new-array p0, p0, [I

    #@12
    :cond_12
    const/4 v1, 0x0

    #@13
    .line 329
    aput v1, p0, v1

    #@15
    .line 330
    div-int v2, p2, p1

    #@17
    .line 331
    rem-int/2addr p2, p1

    #@18
    move v3, v1

    #@19
    :goto_19
    if-gt v0, p1, :cond_2d

    #@1b
    add-int/2addr v1, p2

    #@1c
    if-lez v1, :cond_26

    #@1e
    sub-int v4, p1, v1

    #@20
    if-ge v4, p2, :cond_26

    #@22
    add-int/lit8 v4, v2, 0x1

    #@24
    sub-int/2addr v1, p1

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v4, v2

    #@27
    :goto_27
    add-int/2addr v3, v4

    #@28
    .line 342
    aput v3, p0, v0

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .registers 2

    #@0
    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@5
    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    #@7
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@a
    return-void
.end method

.method private computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 11

    #@0
    .line 1304
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_ad

    #@7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_f

    #@d
    goto/16 :goto_ad

    #@f
    .line 1307
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    #@12
    .line 1309
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    #@15
    move-result v0

    #@16
    xor-int/lit8 v2, v0, 0x1

    #@18
    const/4 v3, 0x1

    #@19
    .line 1310
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    #@1c
    move-result-object v2

    #@1d
    xor-int/lit8 v4, v0, 0x1

    #@1f
    .line 1311
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    #@22
    move-result-object v4

    #@23
    if-eqz v2, :cond_ad

    #@25
    if-nez v4, :cond_29

    #@27
    goto/16 :goto_ad

    #@29
    .line 1315
    :cond_29
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2b
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@2e
    move-result v6

    #@2f
    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@31
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@34
    move-result v5

    #@35
    .line 1317
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@37
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@3a
    move-result v7

    #@3b
    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@3d
    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@40
    move-result v6

    #@41
    .line 1320
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v7

    #@45
    .line 1321
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@48
    move-result v5

    #@49
    .line 1322
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@4b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@4e
    move-result p1

    #@4f
    sub-int/2addr p1, v3

    #@50
    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@52
    invoke-virtual {v6, p1, v8}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@55
    move-result p1

    #@56
    add-int/2addr p1, v3

    #@57
    .line 1325
    iget-boolean v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    #@59
    if-eqz v6, :cond_62

    #@5b
    sub-int/2addr p1, v5

    #@5c
    sub-int/2addr p1, v3

    #@5d
    .line 1326
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@60
    move-result p1

    #@61
    goto :goto_66

    #@62
    .line 1327
    :cond_62
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    #@65
    move-result p1

    #@66
    :goto_66
    if-nez v0, :cond_69

    #@68
    return p1

    #@69
    .line 1331
    :cond_69
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@6b
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@6e
    move-result v0

    #@6f
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@71
    .line 1332
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@74
    move-result v1

    #@75
    sub-int/2addr v0, v1

    #@76
    .line 1331
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@79
    move-result v0

    #@7a
    .line 1334
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@7c
    .line 1335
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@7f
    move-result v5

    #@80
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@82
    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@85
    move-result v1

    #@86
    .line 1336
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@88
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@8b
    move-result v4

    #@8c
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@8e
    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@91
    move-result v4

    #@92
    sub-int/2addr v4, v1

    #@93
    add-int/2addr v4, v3

    #@94
    int-to-float v0, v0

    #@95
    int-to-float v1, v4

    #@96
    div-float/2addr v0, v1

    #@97
    int-to-float p1, p1

    #@98
    mul-float/2addr p1, v0

    #@99
    .line 1341
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@9b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@9e
    move-result v0

    #@9f
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@a1
    .line 1342
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@a4
    move-result v1

    #@a5
    sub-int/2addr v0, v1

    #@a6
    int-to-float v0, v0

    #@a7
    add-float/2addr p1, v0

    #@a8
    .line 1341
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@ab
    move-result p1

    #@ac
    return p1

    #@ad
    :cond_ad
    :goto_ad
    return v1
.end method

.method private computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 8

    #@0
    .line 1271
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_7a

    #@7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_e

    #@d
    goto :goto_7a

    #@e
    .line 1274
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    #@11
    .line 1276
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    #@14
    move-result v0

    #@15
    const/4 v2, 0x1

    #@16
    xor-int/2addr v0, v2

    #@17
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 1277
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    #@1e
    move-result v3

    #@1f
    xor-int/2addr v3, v2

    #@20
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    #@23
    move-result-object v3

    #@24
    if-eqz v0, :cond_7a

    #@26
    if-nez v3, :cond_29

    #@28
    goto :goto_7a

    #@29
    .line 1282
    :cond_29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_3e

    #@2f
    .line 1283
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@31
    .line 1284
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@34
    move-result p1

    #@35
    sub-int/2addr p1, v2

    #@36
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@38
    .line 1283
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@3b
    move-result p1

    #@3c
    add-int/2addr p1, v2

    #@3d
    return p1

    #@3e
    .line 1288
    :cond_3e
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@40
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@43
    move-result v1

    #@44
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@46
    .line 1289
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@49
    move-result v4

    #@4a
    sub-int/2addr v1, v4

    #@4b
    .line 1291
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@4d
    .line 1292
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@50
    move-result v0

    #@51
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@53
    invoke-virtual {v4, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@56
    move-result v0

    #@57
    .line 1293
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@59
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@5c
    move-result v3

    #@5d
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@5f
    invoke-virtual {v4, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@62
    move-result v3

    #@63
    .line 1295
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@65
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@68
    move-result p1

    #@69
    sub-int/2addr p1, v2

    #@6a
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@6c
    invoke-virtual {v4, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@6f
    move-result p1

    #@70
    add-int/2addr p1, v2

    #@71
    sub-int/2addr v3, v0

    #@72
    add-int/2addr v3, v2

    #@73
    int-to-float v0, v1

    #@74
    int-to-float v1, v3

    #@75
    div-float/2addr v0, v1

    #@76
    int-to-float p1, p1

    #@77
    mul-float/2addr v0, p1

    #@78
    float-to-int p1, v0

    #@79
    return p1

    #@7a
    :cond_7a
    :goto_7a
    return v1
.end method

.method private ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p4, v0, :cond_5

    #@3
    move p4, v0

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 p4, 0x0

    #@6
    .line 393
    :goto_6
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@8
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@b
    move-result v1

    #@c
    if-eqz p4, :cond_20

    #@e
    :goto_e
    if-lez v1, :cond_36

    #@10
    .line 396
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@12
    if-lez p4, :cond_36

    #@14
    .line 397
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@16
    sub-int/2addr p4, v0

    #@17
    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@19
    .line 398
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@1b
    invoke-direct {p0, p1, p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@1e
    move-result v1

    #@1f
    goto :goto_e

    #@20
    .line 402
    :cond_20
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@23
    move-result p4

    #@24
    sub-int/2addr p4, v0

    #@25
    .line 403
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@27
    :goto_27
    if-ge v0, p4, :cond_34

    #@29
    add-int/lit8 v2, v0, 0x1

    #@2b
    .line 406
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@2e
    move-result v3

    #@2f
    if-le v3, v1, :cond_34

    #@31
    move v0, v2

    #@32
    move v1, v3

    #@33
    goto :goto_27

    #@34
    .line 414
    :cond_34
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    #@36
    :cond_36
    return-void
.end method

.method private ensureViewSet()V
    .registers 3

    #@0
    .line 368
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@2
    if-eqz v0, :cond_9

    #@4
    array-length v0, v0

    #@5
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@7
    if-eq v0, v1, :cond_f

    #@9
    .line 369
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@b
    new-array v0, v0, [Landroid/view/View;

    #@d
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@f
    :cond_f
    return-void
.end method

.method private getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 4

    #@0
    .line 455
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_f

    #@6
    .line 456
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@8
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@a
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 458
    :cond_f
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    #@12
    move-result p1

    #@13
    const/4 p2, -0x1

    #@14
    if-ne p1, p2, :cond_2c

    #@16
    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    #@18
    const-string p2, "Cannot find span size for pre layout position. "

    #@1a
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object p1

    #@21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p1

    #@25
    const-string p2, "GridLayoutManager"

    #@27
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    const/4 p1, 0x0

    #@2b
    return p1

    #@2c
    .line 467
    :cond_2c
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2e
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@30
    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    #@33
    move-result p1

    #@34
    return p1
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 5

    #@0
    .line 471
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_f

    #@6
    .line 472
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@8
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@a
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 474
    :cond_f
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    #@11
    const/4 v0, -0x1

    #@12
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result p2

    #@16
    if-eq p2, v0, :cond_19

    #@18
    return p2

    #@19
    .line 478
    :cond_19
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    #@1c
    move-result p1

    #@1d
    if-ne p1, v0, :cond_35

    #@1f
    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    #@21
    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    #@23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    const-string p2, "GridLayoutManager"

    #@30
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    const/4 p1, 0x0

    #@34
    return p1

    #@35
    .line 488
    :cond_35
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@37
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@39
    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    #@3c
    move-result p1

    #@3d
    return p1
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 5

    #@0
    .line 492
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_d

    #@6
    .line 493
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@8
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 495
    :cond_d
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    #@f
    const/4 v0, -0x1

    #@10
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    #@13
    move-result p2

    #@14
    if-eq p2, v0, :cond_17

    #@16
    return p2

    #@17
    .line 499
    :cond_17
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    #@1a
    move-result p1

    #@1b
    if-ne p1, v0, :cond_33

    #@1d
    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    #@1f
    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    #@21
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object p1

    #@28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    const-string p2, "GridLayoutManager"

    #@2e
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    const/4 p1, 0x1

    #@32
    return p1

    #@33
    .line 509
    :cond_33
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@35
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@38
    move-result p1

    #@39
    return p1
.end method

.method private guessMeasurement(FI)V
    .registers 4

    #@0
    .line 750
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@2
    int-to-float v0, v0

    #@3
    mul-float/2addr p1, v0

    #@4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@7
    move-result p1

    #@8
    .line 752
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@b
    move-result p1

    #@c
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    #@f
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .registers 12

    #@0
    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@6
    .line 717
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    .line 718
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@a
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    #@c
    add-int/2addr v2, v3

    #@d
    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    #@f
    add-int/2addr v2, v3

    #@10
    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    #@12
    add-int/2addr v2, v3

    #@13
    .line 720
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@15
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@17
    add-int/2addr v3, v1

    #@18
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    #@1a
    add-int/2addr v3, v1

    #@1b
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    #@1d
    add-int/2addr v3, v1

    #@1e
    .line 722
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@20
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    #@22
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    #@25
    move-result v1

    #@26
    .line 725
    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@28
    const/4 v5, 0x0

    #@29
    const/4 v6, 0x1

    #@2a
    if-ne v4, v6, :cond_43

    #@2c
    .line 726
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    #@2e
    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@31
    move-result p2

    #@32
    .line 728
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@34
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@37
    move-result v1

    #@38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeightMode()I

    #@3b
    move-result v3

    #@3c
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    #@3e
    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@41
    move-result v0

    #@42
    goto :goto_5c

    #@43
    .line 731
    :cond_43
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    #@45
    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@48
    move-result p2

    #@49
    .line 733
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@4b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@4e
    move-result v1

    #@4f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidthMode()I

    #@52
    move-result v2

    #@53
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    #@55
    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@58
    move-result v0

    #@59
    move v7, v0

    #@5a
    move v0, p2

    #@5b
    move p2, v7

    #@5c
    .line 736
    :goto_5c
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    #@5f
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 6

    #@0
    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    if-eqz p4, :cond_d

    #@8
    .line 760
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    #@b
    move-result p4

    #@c
    goto :goto_11

    #@d
    .line 762
    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    #@10
    move-result p4

    #@11
    :goto_11
    if-eqz p4, :cond_16

    #@13
    .line 765
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@16
    :cond_16
    return-void
.end method

.method private updateMeasurements()V
    .registers 3

    #@0
    .line 280
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_15

    #@7
    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidth()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    #@e
    move-result v1

    #@f
    sub-int/2addr v0, v1

    #@10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    #@13
    move-result v1

    #@14
    goto :goto_22

    #@15
    .line 283
    :cond_15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeight()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    #@1c
    move-result v1

    #@1d
    sub-int/2addr v0, v1

    #@1e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    #@21
    move-result v1

    #@22
    :goto_22
    sub-int/2addr v0, v1

    #@23
    .line 285
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    #@26
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 2

    #@0
    .line 256
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@2
    return p1
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9

    #@0
    .line 515
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@2
    const/4 v1, 0x0

    #@3
    move v2, v1

    #@4
    .line 517
    :goto_4
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@6
    if-ge v2, v3, :cond_2c

    #@8
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2c

    #@e
    if-lez v0, :cond_2c

    #@10
    .line 518
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@12
    .line 519
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    #@14
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v4

    #@18
    invoke-interface {p3, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    #@1b
    .line 520
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@1d
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@20
    move-result v3

    #@21
    sub-int/2addr v0, v3

    #@22
    .line 522
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@24
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@26
    add-int/2addr v3, v4

    #@27
    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@29
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_4

    #@2c
    :cond_2c
    return-void
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3

    #@0
    .line 1213
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1214
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 1216
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3

    #@0
    .line 1195
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1196
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 1198
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3

    #@0
    .line 1222
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1223
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 1225
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3

    #@0
    .line 1204
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1205
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 1207
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 13

    #@0
    .line 421
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    #@3
    .line 424
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@8
    move-result v0

    #@9
    .line 425
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    #@e
    move-result v1

    #@f
    if-le p4, p3, :cond_13

    #@11
    const/4 v2, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v2, -0x1

    #@14
    :goto_14
    const/4 v3, 0x0

    #@15
    move-object v4, v3

    #@16
    :goto_16
    if-eq p3, p4, :cond_52

    #@18
    .line 429
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v5

    #@1c
    .line 430
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    #@1f
    move-result v6

    #@20
    if-ltz v6, :cond_50

    #@22
    if-ge v6, p5, :cond_50

    #@24
    .line 432
    invoke-direct {p0, p1, p2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_2b

    #@2a
    goto :goto_50

    #@2b
    .line 436
    :cond_2b
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@31
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_3b

    #@37
    if-nez v4, :cond_50

    #@39
    move-object v4, v5

    #@3a
    goto :goto_50

    #@3b
    .line 440
    :cond_3b
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@3d
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@40
    move-result v6

    #@41
    if-ge v6, v1, :cond_4d

    #@43
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@45
    .line 441
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@48
    move-result v6

    #@49
    if-ge v6, v0, :cond_4c

    #@4b
    goto :goto_4d

    #@4c
    :cond_4c
    return-object v5

    #@4d
    :cond_4d
    :goto_4d
    if-nez v3, :cond_50

    #@4f
    move-object v3, v5

    #@50
    :cond_50
    :goto_50
    add-int/2addr p3, v2

    #@51
    goto :goto_16

    #@52
    :cond_52
    if-eqz v3, :cond_55

    #@54
    goto :goto_56

    #@55
    :cond_55
    move-object v3, v4

    #@56
    :goto_56
    return-object v3
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4

    #@0
    .line 231
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, -0x2

    #@3
    const/4 v2, -0x1

    #@4
    if-nez v0, :cond_c

    #@6
    .line 232
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@8
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    #@b
    return-object v0

    #@c
    .line 235
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@e
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    #@11
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4

    #@0
    .line 242
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 3

    #@0
    .line 247
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 248
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@6
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 250
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@e
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5

    #@0
    .line 133
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_8

    #@5
    .line 134
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@7
    return p1

    #@8
    .line 136
    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@b
    move-result v0

    #@c
    if-ge v0, v1, :cond_10

    #@e
    const/4 p1, 0x0

    #@f
    return p1

    #@10
    .line 141
    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@13
    move-result v0

    #@14
    sub-int/2addr v0, v1

    #@15
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@18
    move-result p1

    #@19
    add-int/2addr p1, v1

    #@1a
    return p1
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5

    #@0
    .line 119
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@2
    if-nez v0, :cond_7

    #@4
    .line 120
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@6
    return p1

    #@7
    .line 122
    :cond_7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x1

    #@c
    if-ge v0, v1, :cond_10

    #@e
    const/4 p1, 0x0

    #@f
    return p1

    #@10
    .line 127
    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@13
    move-result v0

    #@14
    sub-int/2addr v0, v1

    #@15
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@18
    move-result p1

    #@19
    add-int/2addr p1, v1

    #@1a
    return p1
.end method

.method getSpaceForSpanRange(II)I
    .registers 6

    #@0
    .line 348
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_19

    #@5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_19

    #@b
    .line 349
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@d
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@f
    sub-int v2, v1, p1

    #@11
    aget v2, v0, v2

    #@13
    sub-int/2addr v1, p1

    #@14
    sub-int/2addr v1, p2

    #@15
    aget p1, v0, v1

    #@17
    sub-int/2addr v2, p1

    #@18
    return v2

    #@19
    .line 352
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@1b
    add-int/2addr p2, p1

    #@1c
    aget p2, v0, p2

    #@1e
    aget p1, v0, p1

    #@20
    sub-int/2addr p2, p1

    #@21
    return p2
.end method

.method public getSpanCount()I
    .registers 2

    #@0
    .line 801
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@2
    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .registers 2

    #@0
    .line 275
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2
    return-object v0
.end method

.method public isUsingSpansToEstimateScrollbarDimensions()Z
    .registers 2

    #@0
    .line 1267
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    #@2
    return v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 22

    #@0
    move-object/from16 v6, p0

    #@2
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p2

    #@6
    move-object/from16 v2, p3

    #@8
    move-object/from16 v7, p4

    #@a
    .line 530
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@c
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    #@f
    move-result v3

    #@10
    const/4 v8, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    const/high16 v5, 0x40000000    # 2.0f

    #@14
    if-eq v3, v5, :cond_18

    #@16
    move v9, v8

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v9, v4

    #@19
    .line 532
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    #@1c
    move-result v10

    #@1d
    if-lez v10, :cond_26

    #@1f
    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@21
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@23
    aget v10, v10, v11

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v10, v4

    #@27
    :goto_27
    if-eqz v9, :cond_2c

    #@29
    .line 537
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    #@2c
    .line 539
    :cond_2c
    iget v11, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    #@2e
    if-ne v11, v8, :cond_32

    #@30
    move v11, v8

    #@31
    goto :goto_33

    #@32
    :cond_32
    move v11, v4

    #@33
    .line 543
    :goto_33
    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@35
    if-nez v11, :cond_44

    #@37
    .line 545
    iget v12, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@39
    invoke-direct {v6, v0, v1, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@3c
    move-result v12

    #@3d
    .line 546
    iget v13, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@3f
    invoke-direct {v6, v0, v1, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@42
    move-result v13

    #@43
    add-int/2addr v12, v13

    #@44
    :cond_44
    move v13, v4

    #@45
    .line 549
    :goto_45
    iget v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@47
    if-ge v13, v14, :cond_a0

    #@49
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    #@4c
    move-result v14

    #@4d
    if-eqz v14, :cond_a0

    #@4f
    if-lez v12, :cond_a0

    #@51
    .line 550
    iget v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    #@53
    .line 551
    invoke-direct {v6, v0, v1, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@56
    move-result v15

    #@57
    .line 552
    iget v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@59
    if-gt v15, v5, :cond_6f

    #@5b
    sub-int/2addr v12, v15

    #@5c
    if-gez v12, :cond_5f

    #@5e
    goto :goto_a0

    #@5f
    .line 561
    :cond_5f
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    #@62
    move-result-object v5

    #@63
    if-nez v5, :cond_66

    #@65
    goto :goto_a0

    #@66
    .line 566
    :cond_66
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@68
    aput-object v5, v14, v13

    #@6a
    add-int/lit8 v13, v13, 0x1

    #@6c
    const/high16 v5, 0x40000000    # 2.0f

    #@6e
    goto :goto_45

    #@6f
    .line 553
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@71
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    const-string v2, "Item at position "

    #@75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@78
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    const-string v2, " requires "

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    const-string v2, " spans but GridLayoutManager has only "

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    const-string v2, " spans."

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v0

    #@a0
    :cond_a0
    :goto_a0
    if-nez v13, :cond_a5

    #@a2
    .line 571
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    #@a4
    return-void

    #@a5
    .line 579
    :cond_a5
    invoke-direct {v6, v0, v1, v13, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IZ)V

    #@a8
    const/4 v0, 0x0

    #@a9
    move v1, v4

    #@aa
    move v5, v1

    #@ab
    :goto_ab
    if-ge v1, v13, :cond_f5

    #@ad
    .line 581
    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@af
    aget-object v12, v12, v1

    #@b1
    .line 582
    iget-object v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    #@b3
    if-nez v14, :cond_bf

    #@b5
    if-eqz v11, :cond_bb

    #@b7
    .line 584
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    #@ba
    goto :goto_c8

    #@bb
    .line 586
    :cond_bb
    invoke-virtual {v6, v12, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    #@be
    goto :goto_c8

    #@bf
    :cond_bf
    if-eqz v11, :cond_c5

    #@c1
    .line 590
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    #@c4
    goto :goto_c8

    #@c5
    .line 592
    :cond_c5
    invoke-virtual {v6, v12, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    #@c8
    .line 595
    :goto_c8
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    #@ca
    invoke-virtual {v6, v12, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    #@cd
    .line 597
    invoke-direct {v6, v12, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    #@d0
    .line 598
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@d2
    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@d5
    move-result v14

    #@d6
    if-le v14, v5, :cond_d9

    #@d8
    move v5, v14

    #@d9
    .line 602
    :cond_d9
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@dc
    move-result-object v14

    #@dd
    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@df
    .line 603
    iget-object v15, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@e1
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    #@e4
    move-result v12

    #@e5
    int-to-float v12, v12

    #@e6
    const/high16 v15, 0x3f800000    # 1.0f

    #@e8
    mul-float/2addr v12, v15

    #@e9
    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    #@eb
    int-to-float v14, v14

    #@ec
    div-float/2addr v12, v14

    #@ed
    cmpl-float v14, v12, v0

    #@ef
    if-lez v14, :cond_f2

    #@f1
    move v0, v12

    #@f2
    :cond_f2
    add-int/lit8 v1, v1, 0x1

    #@f4
    goto :goto_ab

    #@f5
    :cond_f5
    if-eqz v9, :cond_113

    #@f7
    .line 611
    invoke-direct {v6, v0, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    #@fa
    move v0, v4

    #@fb
    move v5, v0

    #@fc
    :goto_fc
    if-ge v0, v13, :cond_113

    #@fe
    .line 615
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@100
    aget-object v1, v1, v0

    #@102
    const/high16 v3, 0x40000000    # 2.0f

    #@104
    .line 616
    invoke-direct {v6, v1, v3, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    #@107
    .line 617
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@109
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@10c
    move-result v1

    #@10d
    if-le v1, v5, :cond_110

    #@10f
    move v5, v1

    #@110
    :cond_110
    add-int/lit8 v0, v0, 0x1

    #@112
    goto :goto_fc

    #@113
    :cond_113
    move v0, v4

    #@114
    :goto_114
    if-ge v0, v13, :cond_173

    #@116
    .line 627
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@118
    aget-object v1, v1, v0

    #@11a
    .line 628
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@11c
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@11f
    move-result v3

    #@120
    if-eq v3, v5, :cond_16e

    #@122
    .line 629
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@125
    move-result-object v3

    #@126
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@128
    .line 630
    iget-object v9, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@12a
    .line 631
    iget v10, v9, Landroid/graphics/Rect;->top:I

    #@12c
    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    #@12e
    add-int/2addr v10, v11

    #@12f
    iget v11, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    #@131
    add-int/2addr v10, v11

    #@132
    iget v11, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    #@134
    add-int/2addr v10, v11

    #@135
    .line 633
    iget v11, v9, Landroid/graphics/Rect;->left:I

    #@137
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@139
    add-int/2addr v11, v9

    #@13a
    iget v9, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    #@13c
    add-int/2addr v11, v9

    #@13d
    iget v9, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    #@13f
    add-int/2addr v11, v9

    #@140
    .line 635
    iget v9, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@142
    iget v12, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    #@144
    invoke-virtual {v6, v9, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    #@147
    move-result v9

    #@148
    .line 638
    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@14a
    if-ne v12, v8, :cond_15b

    #@14c
    .line 639
    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    #@14e
    const/high16 v12, 0x40000000    # 2.0f

    #@150
    invoke-static {v9, v12, v11, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@153
    move-result v3

    #@154
    sub-int v9, v5, v10

    #@156
    .line 641
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@159
    move-result v9

    #@15a
    goto :goto_16a

    #@15b
    :cond_15b
    const/high16 v12, 0x40000000    # 2.0f

    #@15d
    sub-int v11, v5, v11

    #@15f
    .line 644
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@162
    move-result v11

    #@163
    .line 646
    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    #@165
    invoke-static {v9, v12, v10, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@168
    move-result v9

    #@169
    move v3, v11

    #@16a
    .line 649
    :goto_16a
    invoke-direct {v6, v1, v3, v9, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    #@16d
    goto :goto_170

    #@16e
    :cond_16e
    const/high16 v12, 0x40000000    # 2.0f

    #@170
    :goto_170
    add-int/lit8 v0, v0, 0x1

    #@172
    goto :goto_114

    #@173
    .line 653
    :cond_173
    iput v5, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    #@175
    .line 656
    iget v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@177
    const/4 v1, -0x1

    #@178
    if-ne v0, v8, :cond_18b

    #@17a
    .line 657
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@17c
    if-ne v0, v1, :cond_183

    #@17e
    .line 658
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@180
    sub-int v1, v0, v5

    #@182
    goto :goto_187

    #@183
    .line 661
    :cond_183
    iget v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@185
    add-int v0, v1, v5

    #@187
    :goto_187
    move v2, v1

    #@188
    move v1, v4

    #@189
    move v3, v1

    #@18a
    goto :goto_19c

    #@18b
    .line 665
    :cond_18b
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    #@18d
    if-ne v0, v1, :cond_194

    #@18f
    .line 666
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@191
    sub-int v1, v0, v5

    #@193
    goto :goto_198

    #@194
    .line 669
    :cond_194
    iget v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    #@196
    add-int v0, v1, v5

    #@198
    :goto_198
    move v3, v1

    #@199
    move v2, v4

    #@19a
    move v1, v0

    #@19b
    move v0, v2

    #@19c
    :goto_19c
    move v9, v4

    #@19d
    :goto_19d
    if-ge v9, v13, :cond_228

    #@19f
    .line 674
    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@1a1
    aget-object v10, v4, v9

    #@1a3
    .line 675
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1a6
    move-result-object v4

    #@1a7
    move-object v11, v4

    #@1a8
    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@1aa
    .line 676
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@1ac
    if-ne v4, v8, :cond_1e6

    #@1ae
    .line 677
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    #@1b1
    move-result v1

    #@1b2
    if-eqz v1, :cond_1ce

    #@1b4
    .line 678
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    #@1b7
    move-result v1

    #@1b8
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@1ba
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@1bc
    iget v5, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@1be
    sub-int/2addr v4, v5

    #@1bf
    aget v3, v3, v4

    #@1c1
    add-int/2addr v1, v3

    #@1c2
    .line 679
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1c4
    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    #@1c7
    move-result v3

    #@1c8
    sub-int v3, v1, v3

    #@1ca
    move v12, v0

    #@1cb
    move v14, v1

    #@1cc
    move v15, v2

    #@1cd
    goto :goto_1fb

    #@1ce
    .line 681
    :cond_1ce
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    #@1d1
    move-result v1

    #@1d2
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@1d4
    iget v4, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@1d6
    aget v3, v3, v4

    #@1d8
    add-int/2addr v1, v3

    #@1d9
    .line 682
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1db
    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    #@1de
    move-result v3

    #@1df
    add-int/2addr v3, v1

    #@1e0
    move v12, v0

    #@1e1
    move/from16 v16, v1

    #@1e3
    move v15, v2

    #@1e4
    move v14, v3

    #@1e5
    goto :goto_1fd

    #@1e6
    .line 685
    :cond_1e6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    #@1e9
    move-result v0

    #@1ea
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@1ec
    iget v4, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@1ee
    aget v2, v2, v4

    #@1f0
    add-int/2addr v0, v2

    #@1f1
    .line 686
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@1f3
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    #@1f6
    move-result v2

    #@1f7
    add-int/2addr v2, v0

    #@1f8
    move v15, v0

    #@1f9
    move v14, v1

    #@1fa
    move v12, v2

    #@1fb
    :goto_1fb
    move/from16 v16, v3

    #@1fd
    :goto_1fd
    move-object/from16 v0, p0

    #@1ff
    move-object v1, v10

    #@200
    move/from16 v2, v16

    #@202
    move v3, v15

    #@203
    move v4, v14

    #@204
    move v5, v12

    #@205
    .line 690
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    #@208
    .line 698
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    #@20b
    move-result v0

    #@20c
    if-nez v0, :cond_214

    #@20e
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    #@211
    move-result v0

    #@212
    if-eqz v0, :cond_216

    #@214
    .line 699
    :cond_214
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    #@216
    .line 701
    :cond_216
    iget-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    #@218
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    #@21b
    move-result v1

    #@21c
    or-int/2addr v0, v1

    #@21d
    iput-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    #@21f
    add-int/lit8 v9, v9, 0x1

    #@221
    move v0, v12

    #@222
    move v1, v14

    #@223
    move v2, v15

    #@224
    move/from16 v3, v16

    #@226
    goto/16 :goto_19d

    #@228
    .line 703
    :cond_228
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    #@22a
    const/4 v1, 0x0

    #@22b
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@22e
    return-void
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6

    #@0
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    #@3
    .line 360
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    #@6
    .line 361
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_15

    #@c
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_15

    #@12
    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    #@15
    .line 364
    :cond_15
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    #@18
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p3

    #@4
    move-object/from16 v2, p4

    #@6
    .line 1068
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@9
    move-result-object v3

    #@a
    const/4 v4, 0x0

    #@b
    if-nez v3, :cond_e

    #@d
    return-object v4

    #@e
    .line 1072
    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@14
    .line 1073
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@16
    .line 1074
    iget v7, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@18
    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    #@1a
    add-int/2addr v7, v5

    #@1b
    .line 1075
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    #@1e
    move-result-object v5

    #@1f
    if-nez v5, :cond_22

    #@21
    return-object v4

    #@22
    :cond_22
    move/from16 v5, p2

    #@24
    .line 1081
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    #@27
    move-result v5

    #@28
    const/4 v9, 0x1

    #@29
    if-ne v5, v9, :cond_2d

    #@2b
    move v5, v9

    #@2c
    goto :goto_2e

    #@2d
    :cond_2d
    const/4 v5, 0x0

    #@2e
    .line 1082
    :goto_2e
    iget-boolean v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    #@30
    if-eq v5, v10, :cond_34

    #@32
    move v5, v9

    #@33
    goto :goto_35

    #@34
    :cond_34
    const/4 v5, 0x0

    #@35
    :goto_35
    const/4 v10, -0x1

    #@36
    if-eqz v5, :cond_40

    #@38
    .line 1085
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    #@3b
    move-result v5

    #@3c
    sub-int/2addr v5, v9

    #@3d
    move v11, v10

    #@3e
    move v12, v11

    #@3f
    goto :goto_47

    #@40
    .line 1091
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    #@43
    move-result v5

    #@44
    move v11, v5

    #@45
    move v12, v9

    #@46
    const/4 v5, 0x0

    #@47
    .line 1093
    :goto_47
    iget v13, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@49
    if-ne v13, v9, :cond_53

    #@4b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    #@4e
    move-result v13

    #@4f
    if-eqz v13, :cond_53

    #@51
    move v13, v9

    #@52
    goto :goto_54

    #@53
    :cond_53
    const/4 v13, 0x0

    #@54
    .line 1117
    :goto_54
    invoke-direct {v0, v1, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@57
    move-result v14

    #@58
    move v15, v10

    #@59
    move/from16 v16, v15

    #@5b
    const/4 v8, 0x0

    #@5c
    const/16 v17, 0x0

    #@5e
    move v10, v5

    #@5f
    move-object v5, v4

    #@60
    :goto_60
    if-eq v10, v11, :cond_14a

    #@62
    .line 1119
    invoke-direct {v0, v1, v2, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@65
    move-result v9

    #@66
    .line 1120
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    #@69
    move-result-object v1

    #@6a
    if-ne v1, v3, :cond_6e

    #@6c
    goto/16 :goto_14a

    #@6e
    .line 1125
    :cond_6e
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    #@71
    move-result v18

    #@72
    if-eqz v18, :cond_88

    #@74
    if-eq v9, v14, :cond_88

    #@76
    if-eqz v4, :cond_7a

    #@78
    goto/16 :goto_14a

    #@7a
    :cond_7a
    move-object/from16 v18, v3

    #@7c
    move-object/from16 v20, v5

    #@7e
    move/from16 p1, v8

    #@80
    move/from16 v19, v11

    #@82
    move/from16 v11, v16

    #@84
    move/from16 v5, v17

    #@86
    goto/16 :goto_136

    #@88
    .line 1136
    :cond_88
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8b
    move-result-object v9

    #@8c
    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@8e
    .line 1137
    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@90
    move-object/from16 v18, v3

    #@92
    .line 1138
    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@94
    move/from16 v19, v11

    #@96
    iget v11, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    #@98
    add-int/2addr v3, v11

    #@99
    .line 1139
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    #@9c
    move-result v11

    #@9d
    if-eqz v11, :cond_a4

    #@9f
    if-ne v2, v6, :cond_a4

    #@a1
    if-ne v3, v7, :cond_a4

    #@a3
    return-object v1

    #@a4
    .line 1144
    :cond_a4
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    #@a7
    move-result v11

    #@a8
    if-eqz v11, :cond_ac

    #@aa
    if-eqz v4, :cond_b4

    #@ac
    .line 1145
    :cond_ac
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    #@af
    move-result v11

    #@b0
    if-nez v11, :cond_be

    #@b2
    if-nez v5, :cond_be

    #@b4
    :cond_b4
    :goto_b4
    move-object/from16 v20, v5

    #@b6
    move/from16 p1, v8

    #@b8
    move/from16 v11, v16

    #@ba
    move/from16 v5, v17

    #@bc
    :goto_bc
    const/4 v8, 0x1

    #@bd
    goto :goto_107

    #@be
    .line 1148
    :cond_be
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@c1
    move-result v11

    #@c2
    .line 1149
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@c5
    move-result v20

    #@c6
    sub-int v11, v20, v11

    #@c8
    .line 1151
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    #@cb
    move-result v20

    #@cc
    if-eqz v20, :cond_db

    #@ce
    if-le v11, v8, :cond_d1

    #@d0
    goto :goto_b4

    #@d1
    :cond_d1
    if-ne v11, v8, :cond_fe

    #@d3
    if-le v2, v15, :cond_d7

    #@d5
    const/4 v11, 0x1

    #@d6
    goto :goto_d8

    #@d7
    :cond_d7
    const/4 v11, 0x0

    #@d8
    :goto_d8
    if-ne v13, v11, :cond_fe

    #@da
    goto :goto_b4

    #@db
    :cond_db
    if-nez v4, :cond_fe

    #@dd
    move-object/from16 v20, v5

    #@df
    move/from16 p1, v8

    #@e1
    const/4 v5, 0x0

    #@e2
    const/4 v8, 0x1

    #@e3
    .line 1160
    invoke-virtual {v0, v1, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    #@e6
    move-result v21

    #@e7
    if-eqz v21, :cond_102

    #@e9
    move/from16 v5, v17

    #@eb
    if-le v11, v5, :cond_f0

    #@ed
    move/from16 v11, v16

    #@ef
    goto :goto_107

    #@f0
    :cond_f0
    if-ne v11, v5, :cond_fb

    #@f2
    move/from16 v11, v16

    #@f4
    if-le v2, v11, :cond_f7

    #@f6
    goto :goto_f8

    #@f7
    :cond_f7
    const/4 v8, 0x0

    #@f8
    :goto_f8
    if-ne v13, v8, :cond_106

    #@fa
    goto :goto_bc

    #@fb
    :cond_fb
    move/from16 v11, v16

    #@fd
    goto :goto_106

    #@fe
    :cond_fe
    move-object/from16 v20, v5

    #@100
    move/from16 p1, v8

    #@102
    :cond_102
    move/from16 v11, v16

    #@104
    move/from16 v5, v17

    #@106
    :cond_106
    :goto_106
    const/4 v8, 0x0

    #@107
    :goto_107
    if-eqz v8, :cond_136

    #@109
    .line 1172
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    #@10c
    move-result v8

    #@10d
    if-eqz v8, :cond_124

    #@10f
    .line 1174
    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@111
    .line 1175
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@114
    move-result v3

    #@115
    .line 1176
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@118
    move-result v2

    #@119
    sub-int v8, v3, v2

    #@11b
    move v15, v4

    #@11c
    move/from16 v17, v5

    #@11e
    move/from16 v16, v11

    #@120
    move-object/from16 v5, v20

    #@122
    move-object v4, v1

    #@123
    goto :goto_13e

    #@124
    .line 1179
    :cond_124
    iget v5, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    #@126
    .line 1180
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@129
    move-result v3

    #@12a
    .line 1181
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@12d
    move-result v2

    #@12e
    sub-int v17, v3, v2

    #@130
    move/from16 v8, p1

    #@132
    move/from16 v16, v5

    #@134
    move-object v5, v1

    #@135
    goto :goto_13e

    #@136
    :cond_136
    :goto_136
    move/from16 v8, p1

    #@138
    move/from16 v17, v5

    #@13a
    move/from16 v16, v11

    #@13c
    move-object/from16 v5, v20

    #@13e
    :goto_13e
    add-int/2addr v10, v12

    #@13f
    move-object/from16 v1, p3

    #@141
    move-object/from16 v2, p4

    #@143
    move-object/from16 v3, v18

    #@145
    move/from16 v11, v19

    #@147
    const/4 v9, 0x1

    #@148
    goto/16 :goto_60

    #@14a
    :cond_14a
    :goto_14a
    move-object/from16 v20, v5

    #@14c
    if-eqz v4, :cond_14f

    #@14e
    goto :goto_151

    #@14f
    :cond_14f
    move-object/from16 v4, v20

    #@151
    :goto_151
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 12

    #@0
    .line 147
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 148
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@6
    if-nez v1, :cond_c

    #@8
    .line 149
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@b
    return-void

    #@c
    .line 152
    :cond_c
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    #@e
    .line 153
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    #@11
    move-result p3

    #@12
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    #@15
    move-result p1

    #@16
    .line 154
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@18
    if-nez p2, :cond_2e

    #@1a
    .line 156
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    #@21
    move-result v2

    #@22
    const/4 v4, 0x1

    #@23
    const/4 v5, 0x0

    #@24
    const/4 v6, 0x0

    #@25
    move v3, p1

    #@26
    .line 155
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@2d
    goto :goto_41

    #@2e
    :cond_2e
    const/4 v2, 0x1

    #@2f
    .line 161
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    #@32
    move-result v3

    #@33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    #@36
    move-result v4

    #@37
    const/4 v5, 0x0

    #@38
    const/4 v6, 0x0

    #@39
    move v1, p1

    #@3a
    .line 159
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@41
    :goto_41
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    #@0
    .line 200
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    #@5
    .line 201
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    #@a
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    #@0
    .line 206
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    #@5
    .line 207
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    #@a
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    #@0
    .line 225
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    #@5
    .line 226
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    #@a
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    #@0
    .line 212
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    #@5
    .line 213
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    #@a
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    #@0
    .line 219
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    #@5
    .line 220
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    #@a
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    #@0
    .line 167
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 168
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    #@9
    .line 170
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@c
    .line 174
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    #@f
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 2

    #@0
    .line 179
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 180
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    #@6
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    #@0
    .line 376
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    #@3
    .line 377
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    #@6
    .line 378
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    #@0
    .line 384
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    #@3
    .line 385
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    #@6
    .line 386
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    #@0
    .line 290
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@2
    if-nez v0, :cond_7

    #@4
    .line 291
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    #@7
    .line 294
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 295
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    #@17
    move-result v2

    #@18
    add-int/2addr v1, v2

    #@19
    .line 296
    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    #@1b
    const/4 v3, 0x1

    #@1c
    if-ne v2, v3, :cond_3b

    #@1e
    .line 297
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@21
    move-result p1

    #@22
    add-int/2addr p1, v1

    #@23
    .line 298
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    #@26
    move-result v1

    #@27
    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    #@2a
    move-result p1

    #@2b
    .line 299
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@2d
    array-length v1, p3

    #@2e
    sub-int/2addr v1, v3

    #@2f
    aget p3, p3, v1

    #@31
    add-int/2addr p3, v0

    #@32
    .line 300
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    #@35
    move-result v0

    #@36
    .line 299
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    #@39
    move-result p2

    #@3a
    goto :goto_57

    #@3b
    .line 302
    :cond_3b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@3e
    move-result p1

    #@3f
    add-int/2addr p1, v0

    #@40
    .line 303
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    #@43
    move-result v0

    #@44
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    #@47
    move-result p2

    #@48
    .line 304
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    #@4a
    array-length v0, p1

    #@4b
    sub-int/2addr v0, v3

    #@4c
    aget p1, p1, v0

    #@4e
    add-int/2addr p1, v1

    #@4f
    .line 305
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    #@52
    move-result v0

    #@53
    .line 304
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    #@56
    move-result p1

    #@57
    .line 307
    :goto_57
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setMeasuredDimension(II)V

    #@5a
    return-void
.end method

.method public setSpanCount(I)V
    .registers 5

    #@0
    .line 814
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 817
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    #@8
    if-lt p1, v0, :cond_15

    #@a
    .line 822
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    #@c
    .line 823
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    #@11
    .line 824
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->requestLayout()V

    #@14
    return-void

    #@15
    .line 819
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    const-string v2, "Span count should be at least 1. Provided "

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2

    #@0
    .line 266
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    #@2
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 113
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    #@6
    return-void

    #@7
    .line 109
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public setUsingSpansToEstimateScrollbarDimensions(Z)V
    .registers 2

    #@0
    .line 1255
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    #@2
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    #@0
    .line 1190
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    #@2
    if-nez v0, :cond_a

    #@4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method
