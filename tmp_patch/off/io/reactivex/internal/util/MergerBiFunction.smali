.class public final Lio/reactivex/internal/util/MergerBiFunction;
.super Ljava/lang/Object;
.source "MergerBiFunction.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/util/List<",
        "TT;>;",
        "Ljava/util/List<",
        "TT;>;",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lio/reactivex/internal/util/MergerBiFunction;->comparator:Ljava/util/Comparator;

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 24
    check-cast p1, Ljava/util/List;

    #@2
    check-cast p2, Ljava/util/List;

    #@4
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/util/MergerBiFunction;->apply(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public apply(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    if-nez v0, :cond_11

    #@b
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    #@d
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@10
    return-object p1

    #@11
    .line 38
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@16
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object p1

    #@1a
    .line 41
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object p2

    #@1e
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    const/4 v2, 0x0

    #@23
    if-eqz v0, :cond_2a

    #@25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    move-object v0, v2

    #@2b
    .line 44
    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_36

    #@31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    goto :goto_37

    #@36
    :cond_36
    move-object v3, v2

    #@37
    :goto_37
    if-eqz v0, :cond_61

    #@39
    if-eqz v3, :cond_61

    #@3b
    .line 47
    iget-object v4, p0, Lio/reactivex/internal/util/MergerBiFunction;->comparator:Ljava/util/Comparator;

    #@3d
    invoke-interface {v4, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@40
    move-result v4

    #@41
    if-gez v4, :cond_53

    #@43
    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_51

    #@4c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    goto :goto_37

    #@51
    :cond_51
    move-object v0, v2

    #@52
    goto :goto_37

    #@53
    .line 51
    :cond_53
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@56
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_36

    #@5c
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    goto :goto_37

    #@61
    :cond_61
    if-eqz v0, :cond_74

    #@63
    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    .line 58
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result p2

    #@6a
    if-eqz p2, :cond_85

    #@6c
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object p2

    #@70
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@73
    goto :goto_66

    #@74
    .line 62
    :cond_74
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@77
    .line 63
    :goto_77
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result p1

    #@7b
    if-eqz p1, :cond_85

    #@7d
    .line 64
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object p1

    #@81
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@84
    goto :goto_77

    #@85
    :cond_85
    return-object v1
.end method
