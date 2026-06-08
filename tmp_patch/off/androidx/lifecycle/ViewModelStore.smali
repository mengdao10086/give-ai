.class public Landroidx/lifecycle/ViewModelStore;
.super Ljava/lang/Object;
.source "ViewModelStore.java"


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    #@a
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    #@0
    .line 61
    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1a

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/lifecycle/ViewModel;

    #@16
    .line 62
    invoke-virtual {v1}, Landroidx/lifecycle/ViewModel;->clear()V

    #@19
    goto :goto_a

    #@1a
    .line 64
    :cond_1a
    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@1f
    return-void
.end method

.method final get(Ljava/lang/String;)Landroidx/lifecycle/ViewModel;
    .registers 3

    #@0
    .line 50
    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/lifecycle/ViewModel;

    #@8
    return-object p1
.end method

.method keys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 54
    new-instance v0, Ljava/util/HashSet;

    #@2
    iget-object v1, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method

.method final put(Ljava/lang/String;Landroidx/lifecycle/ViewModel;)V
    .registers 4

    #@0
    .line 43
    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/lifecycle/ViewModel;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 45
    invoke-virtual {p1}, Landroidx/lifecycle/ViewModel;->onCleared()V

    #@d
    :cond_d
    return-void
.end method
