.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanGroupIndices:Z

.field private mCacheSpanIndices:Z

.field final mSpanGroupIndexCache:Landroid/util/SparseIntArray;

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 836
    new-instance v0, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    #@a
    .line 837
    new-instance v0, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@11
    const/4 v0, 0x0

    #@12
    .line 839
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    #@14
    .line 840
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    #@16
    return-void
.end method

.method static findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I
    .registers 6

    #@0
    .line 998
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-gt v1, v0, :cond_1b

    #@9
    add-int v2, v1, v0

    #@b
    ushr-int/lit8 v2, v2, 0x1

    #@d
    .line 1004
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@10
    move-result v3

    #@11
    if-ge v3, p1, :cond_17

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    move v1, v2

    #@16
    goto :goto_7

    #@17
    :cond_17
    add-int/lit8 v2, v2, -0x1

    #@19
    move v0, v2

    #@1a
    goto :goto_7

    #@1b
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    if-ltz v1, :cond_2a

    #@1f
    .line 1012
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@22
    move-result p1

    #@23
    if-ge v1, p1, :cond_2a

    #@25
    .line 1013
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@28
    move-result p0

    #@29
    return p0

    #@2a
    :cond_2a
    const/4 p0, -0x1

    #@2b
    return p0
.end method


# virtual methods
.method getCachedSpanGroupIndex(II)I
    .registers 5

    #@0
    .line 930
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    #@2
    if-nez v0, :cond_9

    #@4
    .line 931
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 933
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@b
    const/4 v1, -0x1

    #@c
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@f
    move-result v0

    #@10
    if-eq v0, v1, :cond_13

    #@12
    return v0

    #@13
    .line 937
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    #@16
    move-result p2

    #@17
    .line 938
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@1c
    return p2
.end method

.method getCachedSpanIndex(II)I
    .registers 5

    #@0
    .line 917
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    #@2
    if-nez v0, :cond_9

    #@4
    .line 918
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 920
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    #@b
    const/4 v1, -0x1

    #@c
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@f
    move-result v0

    #@10
    if-eq v0, v1, :cond_13

    #@12
    return v0

    #@13
    .line 924
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    #@16
    move-result p2

    #@17
    .line 925
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@1c
    return p2
.end method

.method public getSpanGroupIndex(II)I
    .registers 9

    #@0
    .line 1032
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_25

    #@5
    .line 1034
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@7
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    #@a
    move-result v0

    #@b
    const/4 v2, -0x1

    #@c
    if-eq v0, v2, :cond_25

    #@e
    .line 1036
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@10
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    #@13
    move-result v2

    #@14
    add-int/lit8 v3, v0, 0x1

    #@16
    .line 1038
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    #@19
    move-result v4

    #@1a
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@1d
    move-result v0

    #@1e
    add-int/2addr v4, v0

    #@1f
    if-ne v4, p2, :cond_28

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    move v4, v1

    #@24
    goto :goto_28

    #@25
    :cond_25
    move v2, v1

    #@26
    move v3, v2

    #@27
    move v4, v3

    #@28
    .line 1045
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@2b
    move-result v0

    #@2c
    :goto_2c
    if-ge v3, p1, :cond_41

    #@2e
    .line 1047
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@31
    move-result v5

    #@32
    add-int/2addr v4, v5

    #@33
    if-ne v4, p2, :cond_39

    #@35
    add-int/lit8 v2, v2, 0x1

    #@37
    move v4, v1

    #@38
    goto :goto_3e

    #@39
    :cond_39
    if-le v4, p2, :cond_3e

    #@3b
    add-int/lit8 v2, v2, 0x1

    #@3d
    move v4, v5

    #@3e
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_2c

    #@41
    :cond_41
    add-int/2addr v4, v0

    #@42
    if-le v4, p2, :cond_46

    #@44
    add-int/lit8 v2, v2, 0x1

    #@46
    :cond_46
    return v2
.end method

.method public getSpanIndex(II)I
    .registers 8

    #@0
    .line 966
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-ne v0, p2, :cond_8

    #@7
    return v1

    #@8
    .line 973
    :cond_8
    iget-boolean v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    #@a
    if-eqz v2, :cond_20

    #@c
    .line 974
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    #@e
    invoke-static {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    #@11
    move-result v2

    #@12
    if-ltz v2, :cond_20

    #@14
    .line 976
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    #@16
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@19
    move-result v3

    #@1a
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@1d
    move-result v4

    #@1e
    add-int/2addr v3, v4

    #@1f
    goto :goto_30

    #@20
    :cond_20
    move v2, v1

    #@21
    move v3, v2

    #@22
    :goto_22
    if-ge v2, p1, :cond_33

    #@24
    .line 981
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    #@27
    move-result v4

    #@28
    add-int/2addr v3, v4

    #@29
    if-ne v3, p2, :cond_2d

    #@2b
    move v3, v1

    #@2c
    goto :goto_30

    #@2d
    :cond_2d
    if-le v3, p2, :cond_30

    #@2f
    move v3, v4

    #@30
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_22

    #@33
    :cond_33
    add-int/2addr v0, v3

    #@34
    if-gt v0, p2, :cond_37

    #@36
    return v3

    #@37
    :cond_37
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanGroupIndexCache()V
    .registers 2

    #@0
    .line 895
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@5
    return-void
.end method

.method public invalidateSpanIndexCache()V
    .registers 2

    #@0
    .line 887
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@5
    return-void
.end method

.method public isSpanGroupIndexCacheEnabled()Z
    .registers 2

    #@0
    .line 913
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    #@2
    return v0
.end method

.method public isSpanIndexCacheEnabled()Z
    .registers 2

    #@0
    .line 904
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    #@2
    return v0
.end method

.method public setSpanGroupIndexCacheEnabled(Z)V
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    .line 877
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@4
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@7
    .line 879
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    #@9
    return-void
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    .line 860
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    #@4
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@7
    .line 862
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    #@9
    return-void
.end method
