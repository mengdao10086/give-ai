.class public final Lkotlin/UByteArray;
.super Ljava/lang/Object;
.source "UByteArray.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/UByteArray$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Lkotlin/UByte;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUByteArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1726#2,3:87\n*S KotlinDebug\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n*L\n62#1:87,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0010(\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0014\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0014\u0008\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u001b\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J \u0010\u0013\u001a\u00020\u000f2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001a\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004H\u0086\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\u000bJ\u000f\u0010\"\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00020&H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J#\u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0002H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010.\u001a\u00020/H\u00d6\u0001\u00a2\u0006\u0004\u00080\u00101R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\u00088\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u0088\u0001\u0007\u0092\u0001\u00020\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u00063"
    }
    d2 = {
        "Lkotlin/UByteArray;",
        "",
        "Lkotlin/UByte;",
        "size",
        "",
        "constructor-impl",
        "(I)[B",
        "storage",
        "",
        "([B)[B",
        "getSize-impl",
        "([B)I",
        "getStorage$annotations",
        "()V",
        "contains",
        "",
        "element",
        "contains-7apg3OU",
        "([BB)Z",
        "containsAll",
        "elements",
        "containsAll-impl",
        "([BLjava/util/Collection;)Z",
        "equals",
        "other",
        "",
        "equals-impl",
        "([BLjava/lang/Object;)Z",
        "get",
        "index",
        "get-w2LRezQ",
        "([BI)B",
        "hashCode",
        "hashCode-impl",
        "isEmpty",
        "isEmpty-impl",
        "([B)Z",
        "iterator",
        "",
        "iterator-impl",
        "([B)Ljava/util/Iterator;",
        "set",
        "",
        "value",
        "set-VurrAj0",
        "([BIB)V",
        "toString",
        "",
        "toString-impl",
        "([B)Ljava/lang/String;",
        "Iterator",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final storage:[B


# direct methods
.method private synthetic constructor <init>([B)V
    .registers 2

    #@0
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lkotlin/UByteArray;->storage:[B

    #@5
    return-void
.end method

.method public static final synthetic box-impl([B)Lkotlin/UByteArray;
    .registers 2

    #@0
    new-instance v0, Lkotlin/UByteArray;

    #@2
    invoke-direct {v0, p0}, Lkotlin/UByteArray;-><init>([B)V

    #@5
    return-object v0
.end method

.method public static constructor-impl(I)[B
    .registers 1

    #@0
    .line 20
    new-array p0, p0, [B

    #@2
    invoke-static {p0}, Lkotlin/UByteArray;->constructor-impl([B)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static constructor-impl([B)[B
    .registers 2

    #@0
    const-string v0, "storage"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public static contains-7apg3OU([BB)Z
    .registers 2

    #@0
    .line 58
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->contains([BB)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static containsAll-impl([BLjava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lkotlin/UByte;",
            ">;)Z"
        }
    .end annotation

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 62
    check-cast p1, Ljava/lang/Iterable;

    #@7
    .line 87
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
    goto :goto_37

    #@12
    .line 88
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
    if-eqz v0, :cond_37

    #@1c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 62
    instance-of v2, v0, Lkotlin/UByte;

    #@22
    const/4 v3, 0x0

    #@23
    if-eqz v2, :cond_33

    #@25
    check-cast v0, Lkotlin/UByte;

    #@27
    invoke-virtual {v0}, Lkotlin/UByte;->unbox-impl()B

    #@2a
    move-result v0

    #@2b
    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->contains([BB)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_33

    #@31
    move v0, v1

    #@32
    goto :goto_34

    #@33
    :cond_33
    move v0, v3

    #@34
    :goto_34
    if-nez v0, :cond_16

    #@36
    move v1, v3

    #@37
    :cond_37
    :goto_37
    return v1
.end method

.method public static equals-impl([BLjava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lkotlin/UByteArray;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    check-cast p1, Lkotlin/UByteArray;

    #@8
    invoke-virtual {p1}, Lkotlin/UByteArray;->unbox-impl()[B

    #@b
    move-result-object p1

    #@c
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result p0

    #@10
    if-nez p0, :cond_13

    #@12
    return v1

    #@13
    :cond_13
    const/4 p0, 0x1

    #@14
    return p0
.end method

.method public static final equals-impl0([B[B)Z
    .registers 2

    #@0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static final get-w2LRezQ([BI)B
    .registers 2

    #@0
    .line 28
    aget-byte p0, p0, p1

    #@2
    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static getSize-impl([B)I
    .registers 1

    #@0
    .line 41
    array-length p0, p0

    #@1
    return p0
.end method

.method public static synthetic getStorage$annotations()V
    .registers 0

    #@0
    return-void
.end method

.method public static hashCode-impl([B)I
    .registers 1

    #@0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isEmpty-impl([B)Z
    .registers 1

    #@0
    .line 65
    array-length p0, p0

    #@1
    if-nez p0, :cond_5

    #@3
    const/4 p0, 0x1

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 p0, 0x0

    #@6
    :goto_6
    return p0
.end method

.method public static iterator-impl([B)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Iterator<",
            "Lkotlin/UByte;",
            ">;"
        }
    .end annotation

    #@0
    .line 44
    new-instance v0, Lkotlin/UByteArray$Iterator;

    #@2
    invoke-direct {v0, p0}, Lkotlin/UByteArray$Iterator;-><init>([B)V

    #@5
    check-cast v0, Ljava/util/Iterator;

    #@7
    return-object v0
.end method

.method public static final set-VurrAj0([BIB)V
    .registers 3

    #@0
    .line 37
    aput-byte p2, p0, p1

    #@2
    return-void
.end method

.method public static toString-impl([B)Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "UByteArray(storage="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p0

    #@f
    const/16 v0, 0x29

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    return-object p0
.end method


# virtual methods
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

.method public add-7apg3OU(B)Z
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

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/UByte;",
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
    .line 12
    instance-of v0, p1, Lkotlin/UByte;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    :cond_6
    check-cast p1, Lkotlin/UByte;

    #@8
    invoke-virtual {p1}, Lkotlin/UByte;->unbox-impl()B

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lkotlin/UByteArray;->contains-7apg3OU(B)Z

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public contains-7apg3OU(B)Z
    .registers 3

    #@0
    .line 52
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    invoke-static {v0, p1}, Lkotlin/UByteArray;->contains-7apg3OU([BB)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
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
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 61
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@7
    invoke-static {v0, p1}, Lkotlin/UByteArray;->containsAll-impl([BLjava/util/Collection;)Z

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    invoke-static {v0, p1}, Lkotlin/UByteArray;->equals-impl([BLjava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 41
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    invoke-static {v0}, Lkotlin/UByteArray;->getSize-impl([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    invoke-static {v0}, Lkotlin/UByteArray;->hashCode-impl([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 65
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    invoke-static {v0}, Lkotlin/UByteArray;->isEmpty-impl([B)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/UByte;",
            ">;"
        }
    .end annotation

    #@0
    .line 44
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    invoke-static {v0}, Lkotlin/UByteArray;->iterator-impl([B)Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
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

.method public bridge synthetic size()I
    .registers 2

    #@0
    .line 12
    invoke-virtual {p0}, Lkotlin/UByteArray;->getSize()I

    #@3
    move-result v0

    #@4
    return v0
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
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    invoke-static {v0}, Lkotlin/UByteArray;->toString-impl([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final synthetic unbox-impl()[B
    .registers 2

    #@0
    iget-object v0, p0, Lkotlin/UByteArray;->storage:[B

    #@2
    return-object v0
.end method
