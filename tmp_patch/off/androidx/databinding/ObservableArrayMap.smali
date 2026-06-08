.class public Landroidx/databinding/ObservableArrayMap;
.super Landroidx/collection/ArrayMap;
.source "ObservableArrayMap.java"

# interfaces
.implements Landroidx/databinding/ObservableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/ArrayMap<",
        "TK;TV;>;",
        "Landroidx/databinding/ObservableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroidx/databinding/MapChangeRegistry;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 22
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    #@3
    return-void
.end method

.method private notifyChange(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 103
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v1, 0x0

    #@5
    .line 104
    invoke-virtual {v0, p0, v1, p1}, Landroidx/databinding/MapChangeRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    #@8
    :cond_8
    return-void
.end method


# virtual methods
.method public addOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableMap$OnMapChangedCallback<",
            "+",
            "Landroidx/databinding/ObservableMap<",
            "TK;TV;>;TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 29
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 30
    new-instance v0, Landroidx/databinding/MapChangeRegistry;

    #@6
    invoke-direct {v0}, Landroidx/databinding/MapChangeRegistry;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    #@b
    .line 32
    :cond_b
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    #@d
    invoke-virtual {v0, p1}, Landroidx/databinding/MapChangeRegistry;->add(Ljava/lang/Object;)V

    #@10
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    .line 45
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayMap;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_d

    #@6
    .line 47
    invoke-super {p0}, Landroidx/collection/ArrayMap;->clear()V

    #@9
    const/4 v0, 0x0

    #@a
    .line 48
    invoke-direct {p0, v0}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    #@d
    :cond_d
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .line 53
    invoke-super {p0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 54
    invoke-direct {p0, p1}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    #@6
    return-object p2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1a

    #@b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 62
    invoke-virtual {p0, v1}, Landroidx/databinding/ObservableArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    if-ltz v1, :cond_5

    #@15
    .line 65
    invoke-virtual {p0, v1}, Landroidx/databinding/ObservableArrayMap;->removeAt(I)Ljava/lang/Object;

    #@18
    const/4 v0, 0x1

    #@19
    goto :goto_5

    #@1a
    :cond_1a
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    .line 86
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 87
    invoke-super {p0, p1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 89
    invoke-direct {p0, v0}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    #@d
    :cond_d
    return-object p1
.end method

.method public removeOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableMap$OnMapChangedCallback<",
            "+",
            "Landroidx/databinding/ObservableMap<",
            "TK;TV;>;TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 38
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 39
    invoke-virtual {v0, p1}, Landroidx/databinding/MapChangeRegistry;->remove(Ljava/lang/Object;)V

    #@7
    :cond_7
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 74
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayMap;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ltz v0, :cond_1a

    #@9
    .line 75
    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    .line 76
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_17

    #@13
    .line 77
    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableArrayMap;->removeAt(I)Ljava/lang/Object;

    #@16
    move v2, v1

    #@17
    :cond_17
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_7

    #@1a
    :cond_1a
    return v2
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    #@0
    .line 96
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 97
    invoke-super {p0, p1, p2}, Landroidx/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    .line 98
    invoke-direct {p0, v0}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    #@b
    return-object p1
.end method
