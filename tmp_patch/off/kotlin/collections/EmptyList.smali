.class public final Lkotlin/collections/EmptyList;
.super Ljava/lang/Object;
.source "Collections.kt"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010*\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u00042\u00060\u0005j\u0002`\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u0011\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0013H\u0016J\u0013\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0011\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000bH\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u000fH\u0016J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001dH\u0096\u0002J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020 H\u0016J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020 2\u0006\u0010\u0018\u001a\u00020\u000bH\u0016J\u0008\u0010!\u001a\u00020\u0016H\u0002J\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\u000bH\u0016J\u0008\u0010%\u001a\u00020&H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlin/collections/EmptyList;",
        "",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "()V",
        "serialVersionUID",
        "",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "containsAll",
        "elements",
        "",
        "equals",
        "other",
        "",
        "get",
        "index",
        "hashCode",
        "indexOf",
        "isEmpty",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "readResolve",
        "subList",
        "fromIndex",
        "toIndex",
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


# static fields
.field public static final INSTANCE:Lkotlin/collections/EmptyList;

.field private static final serialVersionUID:J = -0x6690382f581f9fceL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lkotlin/collections/EmptyList;

    #@2
    invoke-direct {v0}, Lkotlin/collections/EmptyList;-><init>()V

    #@5
    sput-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 2

    #@0
    .line 52
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    #@2
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public add(ILjava/lang/Void;)V
    .registers 3

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
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

.method public add(Ljava/lang/Void;)Z
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

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
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

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 24
    instance-of v0, p1, Ljava/lang/Void;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    :cond_6
    check-cast p1, Ljava/lang/Void;

    #@8
    invoke-virtual {p0, p1}, Lkotlin/collections/EmptyList;->contains(Ljava/lang/Void;)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public contains(Ljava/lang/Void;)Z
    .registers 3

    #@0
    const-string v0, "element"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@8
    move-result p1

    #@9
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 27
    instance-of v0, p1, Ljava/util/List;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Ljava/util/List;

    #@6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    #@0
    .line 24
    invoke-virtual {p0, p1}, Lkotlin/collections/EmptyList;->get(I)Ljava/lang/Void;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public get(I)Ljava/lang/Void;
    .registers 5

    #@0
    .line 36
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const-string v2, "Empty list doesn\'t contain element at index "

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object p1

    #@d
    const/16 v1, 0x2e

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method public getSize()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 24
    instance-of v0, p1, Ljava/lang/Void;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, -0x1

    #@5
    return p1

    #@6
    :cond_6
    check-cast p1, Ljava/lang/Void;

    #@8
    invoke-virtual {p0, p1}, Lkotlin/collections/EmptyList;->indexOf(Ljava/lang/Void;)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public indexOf(Ljava/lang/Void;)I
    .registers 3

    #@0
    const-string v0, "element"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, -0x1

    #@6
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    #@0
    .line 40
    sget-object v0, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    #@2
    check-cast v0, Ljava/util/Iterator;

    #@4
    return-object v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 24
    instance-of v0, p1, Ljava/lang/Void;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, -0x1

    #@5
    return p1

    #@6
    :cond_6
    check-cast p1, Ljava/lang/Void;

    #@8
    invoke-virtual {p0, p1}, Lkotlin/collections/EmptyList;->lastIndexOf(Ljava/lang/Void;)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public lastIndexOf(Ljava/lang/Void;)I
    .registers 3

    #@0
    const-string v0, "element"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, -0x1

    #@6
    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    #@0
    .line 41
    sget-object v0, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    #@2
    check-cast v0, Ljava/util/ListIterator;

    #@4
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    .line 44
    sget-object p1, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    #@4
    check-cast p1, Ljava/util/ListIterator;

    #@6
    return-object p1

    #@7
    .line 43
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Index: "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
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

.method public remove(I)Ljava/lang/Void;
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

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public set(ILjava/lang/Void;)Ljava/lang/Void;
    .registers 3

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public final bridge size()I
    .registers 2

    #@0
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/EmptyList;->getSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6

    #@0
    if-nez p1, :cond_8

    #@2
    if-nez p2, :cond_8

    #@4
    .line 48
    move-object p1, p0

    #@5
    check-cast p1, Ljava/util/List;

    #@7
    return-object p1

    #@8
    .line 49
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    const-string v2, "fromIndex: "

    #@e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    const-string v1, ", toIndex: "

    #@17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    #@0
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
    .registers 2

    #@0
    const-string v0, "[]"

    #@2
    return-object v0
.end method
