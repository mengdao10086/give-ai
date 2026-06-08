.class Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 12242
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .registers 2

    #@0
    .line 12244
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    xor-int/lit8 v0, v0, 0x1

    #@8
    return v0
.end method

.method public notifyChanged()V
    .registers 3

    #@0
    .line 12252
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_18

    #@a
    .line 12253
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method public notifyItemMoved(II)V
    .registers 6

    #@0
    .line 12293
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    sub-int/2addr v0, v1

    #@8
    :goto_8
    if-ltz v0, :cond_18

    #@a
    .line 12294
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@12
    invoke-virtual {v2, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 12258
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    #@4
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 6

    #@0
    .line 12267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_18

    #@a
    .line 12268
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@12
    invoke-virtual {v1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .registers 5

    #@0
    .line 12277
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_18

    #@a
    .line 12278
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@12
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .registers 5

    #@0
    .line 12287
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_18

    #@a
    .line 12288
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    #@12
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method
