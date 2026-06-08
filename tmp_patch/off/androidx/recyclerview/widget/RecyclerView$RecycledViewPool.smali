.class public Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 5635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5658
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@a
    const/4 v0, 0x0

    #@b
    .line 5660
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    #@d
    return-void
.end method

.method private getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    .registers 4

    #@0
    .line 5815
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@8
    if-nez v0, :cond_14

    #@a
    .line 5817
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@c
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    #@f
    .line 5818
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    :cond_14
    return-object v0
.end method


# virtual methods
.method attach()V
    .registers 2

    #@0
    .line 5782
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    #@6
    return-void
.end method

.method public clear()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 5666
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_19

    #@9
    .line 5667
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@11
    .line 5668
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    :cond_19
    return-void
.end method

.method detach()V
    .registers 2

    #@0
    .line 5786
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    #@6
    return-void
.end method

.method factorInBindTime(IJ)V
    .registers 6

    #@0
    .line 5766
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@3
    move-result-object p1

    #@4
    .line 5767
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    #@6
    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    #@9
    move-result-wide p2

    #@a
    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    #@c
    return-void
.end method

.method factorInCreateTime(IJ)V
    .registers 6

    #@0
    .line 5760
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@3
    move-result-object p1

    #@4
    .line 5761
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    #@6
    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    #@9
    move-result-wide p2

    #@a
    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    #@c
    return-void
.end method

.method public getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4

    #@0
    .line 5704
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@8
    if-eqz p1, :cond_32

    #@a
    .line 5705
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_32

    #@12
    .line 5706
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    #@14
    .line 5707
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v0

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    :goto_1a
    if-ltz v0, :cond_32

    #@1c
    .line 5708
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_2f

    #@28
    .line 5709
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2b
    move-result-object p1

    #@2c
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2e
    return-object p1

    #@2f
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    #@31
    goto :goto_1a

    #@32
    :cond_32
    const/4 p1, 0x0

    #@33
    return-object p1
.end method

.method public getRecycledViewCount(I)I
    .registers 2

    #@0
    .line 5691
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    #@6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .registers 4

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 5804
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    #@5
    :cond_5
    if-nez p3, :cond_e

    #@7
    .line 5806
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    #@9
    if-nez p1, :cond_e

    #@b
    .line 5807
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    #@e
    :cond_e
    if-eqz p2, :cond_13

    #@10
    .line 5810
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->attach()V

    #@13
    :cond_13
    return-void
.end method

.method public putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5

    #@0
    .line 5740
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    #@3
    move-result v0

    #@4
    .line 5741
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    #@a
    .line 5742
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@12
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    #@14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v2

    #@18
    if-gt v0, v2, :cond_1b

    #@1a
    return-void

    #@1b
    .line 5748
    :cond_1b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    #@1e
    .line 5749
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    return-void
.end method

.method runningAverage(JJ)J
    .registers 9

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-wide p3

    #@7
    :cond_7
    const-wide/16 v0, 0x4

    #@9
    .line 5756
    div-long/2addr p1, v0

    #@a
    const-wide/16 v2, 0x3

    #@c
    mul-long/2addr p1, v2

    #@d
    div-long/2addr p3, v0

    #@e
    add-long/2addr p1, p3

    #@f
    return-wide p1
.end method

.method public setMaxRecycledViews(II)V
    .registers 4

    #@0
    .line 5679
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@3
    move-result-object p1

    #@4
    .line 5680
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    #@6
    .line 5681
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    #@8
    .line 5682
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-le v0, p2, :cond_18

    #@e
    .line 5683
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method size()I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 5723
    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v2

    #@8
    if-ge v0, v2, :cond_1e

    #@a
    .line 5724
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@12
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    #@14
    if-eqz v2, :cond_1b

    #@16
    .line 5726
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v2

    #@1a
    add-int/2addr v1, v2

    #@1b
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_2

    #@1e
    :cond_1e
    return v1
.end method

.method willBindInTime(IJJ)Z
    .registers 10

    #@0
    .line 5777
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@3
    move-result-object p1

    #@4
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long p1, v0, v2

    #@a
    if-eqz p1, :cond_14

    #@c
    add-long/2addr p2, v0

    #@d
    cmp-long p1, p2, p4

    #@f
    if-gez p1, :cond_12

    #@11
    goto :goto_14

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    goto :goto_15

    #@14
    :cond_14
    :goto_14
    const/4 p1, 0x1

    #@15
    :goto_15
    return p1
.end method

.method willCreateInTime(IJJ)Z
    .registers 10

    #@0
    .line 5772
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    #@3
    move-result-object p1

    #@4
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long p1, v0, v2

    #@a
    if-eqz p1, :cond_14

    #@c
    add-long/2addr p2, v0

    #@d
    cmp-long p1, p2, p4

    #@f
    if-gez p1, :cond_12

    #@11
    goto :goto_14

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    goto :goto_15

    #@14
    :cond_14
    :goto_14
    const/4 p1, 0x1

    #@15
    :goto_15
    return p1
.end method
