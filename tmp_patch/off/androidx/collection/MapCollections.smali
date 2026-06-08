.class abstract Landroidx/collection/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/MapCollections$ValuesCollection;,
        Landroidx/collection/MapCollections$KeySet;,
        Landroidx/collection/MapCollections$EntrySet;,
        Landroidx/collection/MapCollections$MapIterator;,
        Landroidx/collection/MapCollections$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Landroidx/collection/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Landroidx/collection/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Landroidx/collection/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 459
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p1

    #@4
    .line 460
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 461
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_4

    #@14
    const/4 p0, 0x0

    #@15
    return p0

    #@16
    :cond_16
    const/4 p0, 0x1

    #@17
    return p0
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 518
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_1e

    #@9
    .line 519
    check-cast p1, Ljava/util/Set;

    #@b
    .line 522
    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    #@e
    move-result v1

    #@f
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@12
    move-result v3

    #@13
    if-ne v1, v3, :cond_1c

    #@15
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@18
    move-result p0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_19} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_19} :catch_1e

    #@19
    if-eqz p0, :cond_1c

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v0, v2

    #@1d
    :goto_1d
    return v0

    #@1e
    :catch_1e
    :cond_1e
    return v2
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 469
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    .line 470
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object p1

    #@8
    .line 471
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_16

    #@e
    .line 472
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    goto :goto_8

    #@16
    .line 474
    :cond_16
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@19
    move-result p0

    #@1a
    if-eq v0, p0, :cond_1e

    #@1c
    const/4 p0, 0x1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 p0, 0x0

    #@1f
    :goto_1f
    return p0
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 478
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    .line 479
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .line 480
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_20

    #@12
    .line 481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_c

    #@1c
    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@1f
    goto :goto_c

    #@20
    .line 485
    :cond_20
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@23
    move-result p0

    #@24
    if-eq v0, p0, :cond_28

    #@26
    const/4 p0, 0x1

    #@27
    goto :goto_29

    #@28
    :cond_28
    const/4 p0, 0x0

    #@29
    :goto_29
    return p0
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    #@0
    .line 533
    iget-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 534
    new-instance v0, Landroidx/collection/MapCollections$EntrySet;

    #@6
    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$EntrySet;-><init>(Landroidx/collection/MapCollections;)V

    #@9
    iput-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    #@b
    .line 536
    :cond_b
    iget-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    #@d
    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    #@0
    .line 540
    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 541
    new-instance v0, Landroidx/collection/MapCollections$KeySet;

    #@6
    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$KeySet;-><init>(Landroidx/collection/MapCollections;)V

    #@9
    iput-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    #@b
    .line 543
    :cond_b
    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    #@d
    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    #@0
    .line 547
    iget-object v0, p0, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 548
    new-instance v0, Landroidx/collection/MapCollections$ValuesCollection;

    #@6
    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$ValuesCollection;-><init>(Landroidx/collection/MapCollections;)V

    #@9
    iput-object v0, p0, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    #@b
    .line 550
    :cond_b
    iget-object v0, p0, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    #@d
    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .registers 6

    #@0
    .line 490
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    #@3
    move-result v0

    #@4
    .line 491
    new-array v1, v0, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v0, :cond_12

    #@9
    .line 493
    invoke-virtual {p0, v2, p1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    aput-object v3, v1, v2

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_7

    #@12
    :cond_12
    return-object v1
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    #@0
    .line 499
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    #@3
    move-result v0

    #@4
    .line 500
    array-length v1, p1

    #@5
    if-ge v1, v0, :cond_17

    #@7
    .line 502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object p1

    #@f
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    check-cast p1, [Ljava/lang/Object;

    #@15
    check-cast p1, [Ljava/lang/Object;

    #@17
    :cond_17
    const/4 v1, 0x0

    #@18
    :goto_18
    if-ge v1, v0, :cond_23

    #@1a
    .line 506
    invoke-virtual {p0, v1, p2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, p1, v1

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_18

    #@23
    .line 508
    :cond_23
    array-length p2, p1

    #@24
    if-le p2, v0, :cond_29

    #@26
    const/4 p2, 0x0

    #@27
    .line 509
    aput-object p2, p1, v0

    #@29
    :cond_29
    return-object p1
.end method
