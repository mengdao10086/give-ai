.class final Landroidx/collection/MapCollections$EntrySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;)V
    .registers 2

    #@0
    .line 167
    iput-object p1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 167
    check-cast p1, Ljava/util/Map$Entry;

    #@2
    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .line 170
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .line 175
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    .line 176
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object p1

    #@a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_24

    #@10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/Map$Entry;

    #@16
    .line 177
    iget-object v2, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v2, v3, v1}, Landroidx/collection/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    #@23
    goto :goto_a

    #@24
    .line 179
    :cond_24
    iget-object p1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@26
    invoke-virtual {p1}, Landroidx/collection/MapCollections;->colGetSize()I

    #@29
    move-result p1

    #@2a
    if-eq v0, p1, :cond_2e

    #@2c
    const/4 p1, 0x1

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    const/4 p1, 0x0

    #@2f
    :goto_2f
    return p1
.end method

.method public clear()V
    .registers 2

    #@0
    .line 184
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colClear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    #@0
    .line 189
    instance-of v0, p1, Ljava/util/Map$Entry;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 191
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    #@8
    .line 192
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@a
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v2}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    if-gez v0, :cond_15

    #@14
    return v1

    #@15
    .line 196
    :cond_15
    iget-object v1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@17
    const/4 v2, 0x1

    #@18
    invoke-virtual {v1, v0, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 197
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1f
    move-result-object p1

    #@20
    invoke-static {v0, p1}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result p1

    #@24
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 202
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p1

    #@4
    .line 203
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_4

    #@14
    const/4 p1, 0x0

    #@15
    return p1

    #@16
    :cond_16
    const/4 p1, 0x1

    #@17
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 253
    invoke-static {p0, p1}, Landroidx/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public hashCode()I
    .registers 7

    #@0
    .line 259
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    sub-int/2addr v0, v1

    #@8
    const/4 v2, 0x0

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ltz v0, :cond_2d

    #@c
    .line 260
    iget-object v4, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@e
    invoke-virtual {v4, v0, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    .line 261
    iget-object v5, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@14
    invoke-virtual {v5, v0, v1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    if-nez v4, :cond_1c

    #@1a
    move v4, v2

    #@1b
    goto :goto_20

    #@1c
    .line 262
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    #@1f
    move-result v4

    #@20
    :goto_20
    if-nez v5, :cond_24

    #@22
    move v5, v2

    #@23
    goto :goto_28

    #@24
    .line 263
    :cond_24
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    #@27
    move-result v5

    #@28
    :goto_28
    xor-int/2addr v4, v5

    #@29
    add-int/2addr v3, v4

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_a

    #@2d
    :cond_2d
    return v3
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 213
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    #@0
    .line 218
    new-instance v0, Landroidx/collection/MapCollections$MapIterator;

    #@2
    iget-object v1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@4
    invoke-direct {v0, v1}, Landroidx/collection/MapCollections$MapIterator;-><init>(Landroidx/collection/MapCollections;)V

    #@7
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 233
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public size()I
    .registers 2

    #@0
    .line 238
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    #@0
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 248
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method
