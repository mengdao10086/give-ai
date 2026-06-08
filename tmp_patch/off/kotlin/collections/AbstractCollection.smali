.class public abstract Lkotlin/collections/AbstractCollection;
.super Ljava/lang/Object;
.source "AbstractCollection.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1747#2,3:43\n1726#2,3:46\n*S KotlinDebug\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n*L\n19#1:43,3\n22#1:46,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\'\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\u000c\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u00a6\u0002J\u0015\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012H\u0015\u00a2\u0006\u0002\u0010\u0014J\'\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0012\"\u0004\u0008\u0001\u0010\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0012H\u0014\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/collections/AbstractCollection;",
        "E",
        "",
        "()V",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "containsAll",
        "elements",
        "isEmpty",
        "iterator",
        "",
        "toArray",
        "",
        "",
        "()[Ljava/lang/Object;",
        "T",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    #@0
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public clear()V
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .line 19
    move-object v0, p0

    #@1
    check-cast v0, Ljava/lang/Iterable;

    #@3
    .line 43
    instance-of v1, v0, Ljava/util/Collection;

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v1, :cond_12

    #@8
    move-object v1, v0

    #@9
    check-cast v1, Ljava/util/Collection;

    #@b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_12

    #@11
    goto :goto_27

    #@12
    .line 44
    :cond_12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_27

    #@1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .line 19
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_16

    #@26
    const/4 v2, 0x1

    #@27
    :cond_27
    :goto_27
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    #@7
    .line 46
    move-object v0, p1

    #@8
    check-cast v0, Ljava/util/Collection;

    #@a
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-eqz v0, :cond_12

    #@11
    goto :goto_27

    #@12
    .line 47
    :cond_12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object p1

    #@16
    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_27

    #@1c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 22
    invoke-virtual {p0, v0}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_16

    #@26
    const/4 v1, 0x0

    #@27
    :cond_27
    :goto_27
    return v1
.end method

.method public abstract getSize()I
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/AbstractCollection;->size()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public final bridge size()I
    .registers 2

    #@0
    .line 14
    invoke-virtual {p0}, Lkotlin/collections/AbstractCollection;->getSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    #@0
    .line 34
    move-object v0, p0

    #@1
    check-cast v0, Ljava/util/Collection;

    #@3
    invoke-static {v0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    const-string v0, "array"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 40
    move-object v0, p0

    #@6
    check-cast v0, Ljava/util/Collection;

    #@8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    #@0
    .line 26
    move-object v0, p0

    #@1
    check-cast v0, Ljava/lang/Iterable;

    #@3
    const-string v1, ", "

    #@5
    check-cast v1, Ljava/lang/CharSequence;

    #@7
    const-string v2, "["

    #@9
    check-cast v2, Ljava/lang/CharSequence;

    #@b
    const-string v3, "]"

    #@d
    check-cast v3, Ljava/lang/CharSequence;

    #@f
    const/4 v4, 0x0

    #@10
    const/4 v5, 0x0

    #@11
    new-instance v6, Lkotlin/collections/AbstractCollection$toString$1;

    #@13
    invoke-direct {v6, p0}, Lkotlin/collections/AbstractCollection$toString$1;-><init>(Lkotlin/collections/AbstractCollection;)V

    #@16
    check-cast v6, Lkotlin/jvm/functions/Function1;

    #@18
    const/16 v7, 0x18

    #@1a
    const/4 v8, 0x0

    #@1b
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
