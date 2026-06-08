.class public Landroidx/databinding/ObservableArrayList;
.super Ljava/util/ArrayList;
.source "ObservableArrayList.java"

# interfaces
.implements Landroidx/databinding/ObservableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;",
        "Landroidx/databinding/ObservableList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroidx/databinding/ListChangeRegistry;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 24
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@3
    .line 25
    new-instance v0, Landroidx/databinding/ListChangeRegistry;

    #@5
    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@a
    return-void
.end method

.method private notifyAdd(II)V
    .registers 4

    #@0
    .line 117
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 118
    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/ListChangeRegistry;->notifyInserted(Landroidx/databinding/ObservableList;II)V

    #@7
    :cond_7
    return-void
.end method

.method private notifyRemove(II)V
    .registers 4

    #@0
    .line 123
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 124
    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/ListChangeRegistry;->notifyRemoved(Landroidx/databinding/ObservableList;II)V

    #@7
    :cond_7
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    #@0
    .line 51
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@3
    const/4 p2, 0x1

    #@4
    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    #@7
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 44
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3
    .line 45
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    #@6
    move-result p1

    #@7
    const/4 v0, 0x1

    #@8
    sub-int/2addr p1, v0

    #@9
    invoke-direct {p0, p1, v0}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    #@c
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    #@0
    .line 67
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@9
    move-result p2

    #@a
    invoke-direct {p0, p1, p2}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    #@d
    :cond_d
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    #@0
    .line 57
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 58
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_12

    #@a
    .line 60
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    #@d
    move-result v1

    #@e
    sub-int/2addr v1, v0

    #@f
    invoke-direct {p0, v0, v1}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    #@12
    :cond_12
    return p1
.end method

.method public addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
    .registers 3

    #@0
    .line 29
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 30
    new-instance v0, Landroidx/databinding/ListChangeRegistry;

    #@6
    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@b
    .line 32
    :cond_b
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@d
    invoke-virtual {v0, p1}, Landroidx/databinding/ListChangeRegistry;->add(Ljava/lang/Object;)V

    #@10
    return-void
.end method

.method public clear()V
    .registers 3

    #@0
    .line 76
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 77
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    #@7
    if-eqz v0, :cond_d

    #@9
    const/4 v1, 0x0

    #@a
    .line 79
    invoke-direct {p0, v1, v0}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    #@d
    :cond_d
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    .line 85
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 86
    invoke-direct {p0, p1, v1}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 92
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayList;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_b

    #@6
    .line 94
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayList;->remove(I)Ljava/lang/Object;

    #@9
    const/4 p1, 0x1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method public removeOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
    .registers 3

    #@0
    .line 37
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 38
    invoke-virtual {v0, p1}, Landroidx/databinding/ListChangeRegistry;->remove(Ljava/lang/Object;)V

    #@7
    :cond_7
    return-void
.end method

.method protected removeRange(II)V
    .registers 3

    #@0
    .line 112
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    #@3
    sub-int/2addr p2, p1

    #@4
    .line 113
    invoke-direct {p0, p1, p2}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    #@7
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    #@0
    .line 103
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p2

    #@4
    .line 104
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    #@6
    if-eqz v0, :cond_c

    #@8
    const/4 v1, 0x1

    #@9
    .line 105
    invoke-virtual {v0, p0, p1, v1}, Landroidx/databinding/ListChangeRegistry;->notifyChanged(Landroidx/databinding/ObservableList;II)V

    #@c
    :cond_c
    return-object p2
.end method
