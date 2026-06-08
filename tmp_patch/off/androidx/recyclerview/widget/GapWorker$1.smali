.class final Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I
    .registers 8

    #@0
    .line 194
    iget-object v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-nez v0, :cond_8

    #@6
    move v0, v2

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v0, v1

    #@9
    :goto_9
    iget-object v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    #@b
    if-nez v3, :cond_f

    #@d
    move v3, v2

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v3, v1

    #@10
    :goto_10
    const/4 v4, -0x1

    #@11
    if-eq v0, v3, :cond_1a

    #@13
    .line 195
    iget-object p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    #@15
    if-nez p1, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v2, v4

    #@19
    :goto_19
    return v2

    #@1a
    .line 199
    :cond_1a
    iget-boolean v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    #@1c
    iget-boolean v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    #@1e
    if-eq v0, v3, :cond_26

    #@20
    .line 200
    iget-boolean p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    #@22
    if-eqz p1, :cond_25

    #@24
    move v2, v4

    #@25
    :cond_25
    return v2

    #@26
    .line 204
    :cond_26
    iget v0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    #@28
    iget v2, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    #@2a
    sub-int/2addr v0, v2

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    return v0

    #@2e
    .line 208
    :cond_2e
    iget p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    #@30
    iget p2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    #@32
    sub-int/2addr p1, p2

    #@33
    if-eqz p1, :cond_36

    #@35
    return p1

    #@36
    :cond_36
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 190
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    #@2
    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker$1;->compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I

    #@7
    move-result p1

    #@8
    return p1
.end method
