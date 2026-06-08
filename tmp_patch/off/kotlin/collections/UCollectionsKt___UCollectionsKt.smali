.class Lkotlin/collections/UCollectionsKt___UCollectionsKt;
.super Ljava/lang/Object;
.source "_UCollections.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\n0\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0005\u001a\u001a\u0010\u000c\u001a\u00020\r*\u0008\u0012\u0004\u0012\u00020\u00030\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\u001a\u0010\u0010\u001a\u00020\u0011*\u0008\u0012\u0004\u0012\u00020\u00010\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012\u001a\u001a\u0010\u0013\u001a\u00020\u0014*\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001a\u001a\u0010\u0016\u001a\u00020\u0017*\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "sum",
        "Lkotlin/UInt;",
        "",
        "Lkotlin/UByte;",
        "sumOfUByte",
        "(Ljava/lang/Iterable;)I",
        "sumOfUInt",
        "Lkotlin/ULong;",
        "sumOfULong",
        "(Ljava/lang/Iterable;)J",
        "Lkotlin/UShort;",
        "sumOfUShort",
        "toUByteArray",
        "Lkotlin/UByteArray;",
        "",
        "(Ljava/util/Collection;)[B",
        "toUIntArray",
        "Lkotlin/UIntArray;",
        "(Ljava/util/Collection;)[I",
        "toULongArray",
        "Lkotlin/ULongArray;",
        "(Ljava/util/Collection;)[J",
        "toUShortArray",
        "Lkotlin/UShortArray;",
        "(Ljava/util/Collection;)[S",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x31
    xs = "kotlin/collections/UCollectionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final sumOfUByte(Ljava/lang/Iterable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/UByte;",
            ">;)I"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_26

    #@10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lkotlin/UByte;

    #@16
    invoke-virtual {v1}, Lkotlin/UByte;->unbox-impl()B

    #@19
    move-result v1

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    .line 109
    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    #@1f
    move-result v1

    #@20
    add-int/2addr v0, v1

    #@21
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    #@24
    move-result v0

    #@25
    goto :goto_a

    #@26
    :cond_26
    return v0
.end method

.method public static final sumOfUInt(Ljava/lang/Iterable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/UInt;",
            ">;)I"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 80
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_20

    #@10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lkotlin/UInt;

    #@16
    invoke-virtual {v1}, Lkotlin/UInt;->unbox-impl()I

    #@19
    move-result v1

    #@1a
    add-int/2addr v0, v1

    #@1b
    .line 81
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    #@1e
    move-result v0

    #@1f
    goto :goto_a

    #@20
    :cond_20
    return v0
.end method

.method public static final sumOfULong(Ljava/lang/Iterable;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/ULong;",
            ">;)J"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 94
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p0

    #@9
    const-wide/16 v0, 0x0

    #@b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_21

    #@11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lkotlin/ULong;

    #@17
    invoke-virtual {v2}, Lkotlin/ULong;->unbox-impl()J

    #@1a
    move-result-wide v2

    #@1b
    add-long/2addr v0, v2

    #@1c
    .line 95
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    #@1f
    move-result-wide v0

    #@20
    goto :goto_b

    #@21
    :cond_21
    return-wide v0
.end method

.method public static final sumOfUShort(Ljava/lang/Iterable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/UShort;",
            ">;)I"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 122
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_28

    #@10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lkotlin/UShort;

    #@16
    invoke-virtual {v1}, Lkotlin/UShort;->unbox-impl()S

    #@19
    move-result v1

    #@1a
    const v2, 0xffff

    #@1d
    and-int/2addr v1, v2

    #@1e
    .line 123
    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    #@21
    move-result v1

    #@22
    add-int/2addr v0, v1

    #@23
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    #@26
    move-result v0

    #@27
    goto :goto_a

    #@28
    :cond_28
    return v0
.end method

.method public static final toUByteArray(Ljava/util/Collection;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/UByte;",
            ">;)[B"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 26
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Lkotlin/UByteArray;->constructor-impl(I)[B

    #@c
    move-result-object v0

    #@d
    .line 28
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p0

    #@11
    const/4 v1, 0x0

    #@12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_29

    #@18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lkotlin/UByte;

    #@1e
    invoke-virtual {v2}, Lkotlin/UByte;->unbox-impl()B

    #@21
    move-result v2

    #@22
    add-int/lit8 v3, v1, 0x1

    #@24
    .line 29
    invoke-static {v0, v1, v2}, Lkotlin/UByteArray;->set-VurrAj0([BIB)V

    #@27
    move v1, v3

    #@28
    goto :goto_12

    #@29
    :cond_29
    return-object v0
.end method

.method public static final toUIntArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/UInt;",
            ">;)[I"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Lkotlin/UIntArray;->constructor-impl(I)[I

    #@c
    move-result-object v0

    #@d
    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p0

    #@11
    const/4 v1, 0x0

    #@12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_29

    #@18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lkotlin/UInt;

    #@1e
    invoke-virtual {v2}, Lkotlin/UInt;->unbox-impl()I

    #@21
    move-result v2

    #@22
    add-int/lit8 v3, v1, 0x1

    #@24
    .line 42
    invoke-static {v0, v1, v2}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    #@27
    move v1, v3

    #@28
    goto :goto_12

    #@29
    :cond_29
    return-object v0
.end method

.method public static final toULongArray(Ljava/util/Collection;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/ULong;",
            ">;)[J"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 52
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Lkotlin/ULongArray;->constructor-impl(I)[J

    #@c
    move-result-object v0

    #@d
    .line 54
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p0

    #@11
    const/4 v1, 0x0

    #@12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_29

    #@18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lkotlin/ULong;

    #@1e
    invoke-virtual {v2}, Lkotlin/ULong;->unbox-impl()J

    #@21
    move-result-wide v2

    #@22
    add-int/lit8 v4, v1, 0x1

    #@24
    .line 55
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    #@27
    move v1, v4

    #@28
    goto :goto_12

    #@29
    :cond_29
    return-object v0
.end method

.method public static final toUShortArray(Ljava/util/Collection;)[S
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/UShort;",
            ">;)[S"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 65
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Lkotlin/UShortArray;->constructor-impl(I)[S

    #@c
    move-result-object v0

    #@d
    .line 67
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p0

    #@11
    const/4 v1, 0x0

    #@12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_29

    #@18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lkotlin/UShort;

    #@1e
    invoke-virtual {v2}, Lkotlin/UShort;->unbox-impl()S

    #@21
    move-result v2

    #@22
    add-int/lit8 v3, v1, 0x1

    #@24
    .line 68
    invoke-static {v0, v1, v2}, Lkotlin/UShortArray;->set-01HTLdE([SIS)V

    #@27
    move v1, v3

    #@28
    goto :goto_12

    #@29
    :cond_29
    return-object v0
.end method
