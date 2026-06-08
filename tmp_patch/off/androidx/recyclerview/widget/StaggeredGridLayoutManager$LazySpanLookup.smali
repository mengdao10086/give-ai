.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 2838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .registers 6

    #@0
    .line 2981
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2
    const/4 v1, -0x1

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2984
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 2987
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@e
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@11
    .line 2990
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v0

    #@17
    const/4 v2, 0x0

    #@18
    :goto_18
    if-ge v2, v0, :cond_2a

    #@1a
    .line 2992
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@1c
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@22
    .line 2993
    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@24
    if-lt v3, p1, :cond_27

    #@26
    goto :goto_2b

    #@27
    :cond_27
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_18

    #@2a
    :cond_2a
    move v2, v1

    #@2b
    :goto_2b
    if-eq v2, v1, :cond_3d

    #@2d
    .line 2999
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2f
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object p1

    #@33
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@35
    .line 3000
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@37
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3a
    .line 3001
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@3c
    return p1

    #@3d
    :cond_3d
    return v1
.end method

.method private offsetFullSpansForAddition(II)V
    .registers 6

    #@0
    .line 2964
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 2967
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    :goto_b
    if-ltz v0, :cond_22

    #@d
    .line 2968
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@f
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@15
    .line 2969
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@17
    if-ge v2, p1, :cond_1a

    #@19
    goto :goto_1f

    #@1a
    .line 2972
    :cond_1a
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@1c
    add-int/2addr v2, p2

    #@1d
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_b

    #@22
    :cond_22
    return-void
.end method

.method private offsetFullSpansForRemoval(II)V
    .registers 7

    #@0
    .line 2934
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    add-int v1, p1, p2

    #@7
    .line 2938
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, -0x1

    #@d
    :goto_d
    if-ltz v0, :cond_2e

    #@f
    .line 2939
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@11
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@17
    .line 2940
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@19
    if-ge v3, p1, :cond_1c

    #@1b
    goto :goto_2b

    #@1c
    .line 2943
    :cond_1c
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@1e
    if-ge v3, v1, :cond_26

    #@20
    .line 2944
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@22
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@25
    goto :goto_2b

    #@26
    .line 2946
    :cond_26
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@28
    sub-int/2addr v3, p2

    #@29
    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@2b
    :goto_2b
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_d

    #@2e
    :cond_2e
    return-void
.end method


# virtual methods
.method public addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .registers 7

    #@0
    .line 3007
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 3008
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@b
    .line 3010
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@d
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x0

    #@12
    :goto_12
    if-ge v1, v0, :cond_36

    #@14
    .line 3012
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@1c
    .line 3013
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@1e
    iget v4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@20
    if-ne v3, v4, :cond_27

    #@22
    .line 3017
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@24
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@27
    .line 3020
    :cond_27
    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@29
    iget v3, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@2b
    if-lt v2, v3, :cond_33

    #@2d
    .line 3021
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2f
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@32
    return-void

    #@33
    :cond_33
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_12

    #@36
    .line 3026
    :cond_36
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@38
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    return-void
.end method

.method clear()V
    .registers 3

    #@0
    .line 2915
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v1, -0x1

    #@5
    .line 2916
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 2918
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@b
    return-void
.end method

.method ensureSize(I)V
    .registers 6

    #@0
    .line 2903
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2
    const/4 v1, -0x1

    #@3
    if-nez v0, :cond_15

    #@5
    const/16 v0, 0xa

    #@7
    .line 2904
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@a
    move-result p1

    #@b
    add-int/lit8 p1, p1, 0x1

    #@d
    new-array p1, p1, [I

    #@f
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@11
    .line 2905
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    #@14
    goto :goto_2c

    #@15
    .line 2906
    :cond_15
    array-length v2, v0

    #@16
    if-lt p1, v2, :cond_2c

    #@18
    .line 2908
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    #@1b
    move-result p1

    #@1c
    new-array p1, p1, [I

    #@1e
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@20
    .line 2909
    array-length v2, v0

    #@21
    const/4 v3, 0x0

    #@22
    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@25
    .line 2910
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@27
    array-length v0, v0

    #@28
    array-length v2, p1

    #@29
    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    #@2c
    :cond_2c
    :goto_2c
    return-void
.end method

.method forceInvalidateAfter(I)I
    .registers 4

    #@0
    .line 2849
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2
    if-eqz v0, :cond_20

    #@4
    .line 2850
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    :goto_a
    if-ltz v0, :cond_20

    #@c
    .line 2851
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@14
    .line 2852
    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@16
    if-lt v1, p1, :cond_1d

    #@18
    .line 2853
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@1a
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1d
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_a

    #@20
    .line 2857
    :cond_20
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    #@23
    move-result p1

    #@24
    return p1
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 10

    #@0
    .line 3051
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 3054
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v0, :cond_2e

    #@d
    .line 3056
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@f
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@15
    .line 3057
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@17
    if-lt v4, p2, :cond_1a

    #@19
    return-object v1

    #@1a
    .line 3060
    :cond_1a
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@1c
    if-lt v4, p1, :cond_2b

    #@1e
    if-eqz p3, :cond_2a

    #@20
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    #@22
    if-eq v4, p3, :cond_2a

    #@24
    if-eqz p4, :cond_2b

    #@26
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    #@28
    if-eqz v4, :cond_2b

    #@2a
    :cond_2a
    return-object v3

    #@2b
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_b

    #@2e
    :cond_2e
    return-object v1
.end method

.method public getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6

    #@0
    .line 3030
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 3033
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    :goto_c
    if-ltz v0, :cond_1e

    #@e
    .line 3034
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    #@10
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    #@16
    .line 3035
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    #@18
    if-ne v3, p1, :cond_1b

    #@1a
    return-object v2

    #@1b
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_c

    #@1e
    :cond_1e
    return-object v1
.end method

.method getSpan(I)I
    .registers 4

    #@0
    .line 2882
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2
    if-eqz v0, :cond_b

    #@4
    array-length v1, v0

    #@5
    if-lt p1, v1, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 2885
    :cond_8
    aget p1, v0, p1

    #@a
    return p1

    #@b
    :cond_b
    :goto_b
    const/4 p1, -0x1

    #@c
    return p1
.end method

.method invalidateAfter(I)I
    .registers 5

    #@0
    .line 2864
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2
    const/4 v1, -0x1

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2867
    :cond_6
    array-length v0, v0

    #@7
    if-lt p1, v0, :cond_a

    #@9
    return v1

    #@a
    .line 2870
    :cond_a
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    #@d
    move-result v0

    #@e
    if-ne v0, v1, :cond_1a

    #@10
    .line 2872
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@12
    array-length v2, v0

    #@13
    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    #@16
    .line 2873
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@18
    array-length p1, p1

    #@19
    return p1

    #@1a
    .line 2876
    :cond_1a
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    invoke-static {v2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    #@21
    return v0
.end method

.method offsetForAddition(II)V
    .registers 6

    #@0
    .line 2952
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2
    if-eqz v0, :cond_1e

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_1e

    #@8
    :cond_8
    add-int v0, p1, p2

    #@a
    .line 2955
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    #@d
    .line 2956
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@f
    array-length v2, v1

    #@10
    sub-int/2addr v2, p1

    #@11
    sub-int/2addr v2, p2

    #@12
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 2958
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@17
    const/4 v2, -0x1

    #@18
    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    #@1b
    .line 2960
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    #@1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method offsetForRemoval(II)V
    .registers 7

    #@0
    .line 2922
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2
    if-eqz v0, :cond_21

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_21

    #@8
    :cond_8
    add-int v0, p1, p2

    #@a
    .line 2925
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    #@d
    .line 2926
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@f
    array-length v2, v1

    #@10
    sub-int/2addr v2, p1

    #@11
    sub-int/2addr v2, p2

    #@12
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 2928
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@17
    array-length v1, v0

    #@18
    sub-int/2addr v1, p2

    #@19
    array-length v2, v0

    #@1a
    const/4 v3, -0x1

    #@1b
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    #@1e
    .line 2930
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    #@21
    :cond_21
    :goto_21
    return-void
.end method

.method setSpan(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V
    .registers 4

    #@0
    .line 2890
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    #@3
    .line 2891
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@5
    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    #@7
    aput p2, v0, p1

    #@9
    return-void
.end method

.method sizeForPosition(I)I
    .registers 3

    #@0
    .line 2895
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    #@2
    array-length v0, v0

    #@3
    :goto_3
    if-gt v0, p1, :cond_8

    #@5
    mul-int/lit8 v0, v0, 0x2

    #@7
    goto :goto_3

    #@8
    :cond_8
    return v0
.end method
