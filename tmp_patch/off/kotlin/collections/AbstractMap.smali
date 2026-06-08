.class public abstract Lkotlin/collections/AbstractMap;
.super Ljava/lang/Object;
.source "AbstractMap.kt"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractMap$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1747#2,3:154\n1726#2,3:157\n288#2,2:160\n*S KotlinDebug\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap\n*L\n28#1:154,3\n60#1:157,3\n141#1:160,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010&\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\'\u0018\u0000 )*\u0004\u0008\u0000\u0010\u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001)B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u0013\u001a\u00020\u00142\u0010\u0010\u0015\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0016H\u0000\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0018\u0010 \u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\rH\u0016J#\u0010#\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020\u0014H\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u0012\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u001fH\u0002J\u001c\u0010&\u001a\u00020\'2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0016H\u0008R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0008X\u0088\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006*"
    }
    d2 = {
        "Lkotlin/collections/AbstractMap;",
        "K",
        "V",
        "",
        "()V",
        "_keys",
        "",
        "_values",
        "",
        "keys",
        "getKeys",
        "()Ljava/util/Set;",
        "size",
        "",
        "getSize",
        "()I",
        "values",
        "getValues",
        "()Ljava/util/Collection;",
        "containsEntry",
        "",
        "entry",
        "",
        "containsEntry$kotlin_stdlib",
        "containsKey",
        "key",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "equals",
        "other",
        "",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "hashCode",
        "implFindEntry",
        "(Ljava/lang/Object;)Ljava/util/Map$Entry;",
        "isEmpty",
        "toString",
        "",
        "o",
        "Companion",
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
.field public static final Companion:Lkotlin/collections/AbstractMap$Companion;


# instance fields
.field private volatile _keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+TK;>;"
        }
    .end annotation
.end field

.field private volatile _values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lkotlin/collections/AbstractMap$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lkotlin/collections/AbstractMap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lkotlin/collections/AbstractMap;->Companion:Lkotlin/collections/AbstractMap$Companion;

    #@8
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final synthetic access$toString(Lkotlin/collections/AbstractMap;Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 2

    #@0
    .line 21
    invoke-direct {p0, p1}, Lkotlin/collections/AbstractMap;->toString(Ljava/util/Map$Entry;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private final implFindEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 141
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Iterable;

    #@6
    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_22

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    move-object v2, v1

    #@15
    check-cast v2, Ljava/util/Map$Entry;

    #@17
    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_a

    #@21
    goto :goto_23

    #@22
    :cond_22
    const/4 v1, 0x0

    #@23
    .line 161
    :goto_23
    check-cast v1, Ljava/util/Map$Entry;

    #@25
    return-object v1
.end method

.method private final toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    if-ne p1, p0, :cond_5

    #@2
    const-string p1, "(this Map)"

    #@4
    goto :goto_9

    #@5
    .line 110
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    :goto_9
    return-object p1
.end method

.method private final toString(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    invoke-direct {p0, v1}, Lkotlin/collections/AbstractMap;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const/16 v1, 0x3d

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object p1

    #@1b
    invoke-direct {p0, p1}, Lkotlin/collections/AbstractMap;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p1

    #@23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    return-object p1
.end method


# virtual methods
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

.method public final containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 33
    :cond_4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 34
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    .line 35
    move-object v2, p0

    #@d
    check-cast v2, Ljava/util/Map;

    #@f
    const-string v3, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>"

    #@11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    .line 37
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result p1

    #@1c
    if-nez p1, :cond_1f

    #@1e
    return v0

    #@1f
    :cond_1f
    if-nez v3, :cond_2d

    #@21
    const-string p1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.containsKey, *>"

    #@23
    .line 42
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@26
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@29
    move-result p1

    #@2a
    if-nez p1, :cond_2d

    #@2c
    return v0

    #@2d
    :cond_2d
    const/4 p1, 0x1

    #@2e
    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 25
    invoke-direct {p0, p1}, Lkotlin/collections/AbstractMap;->implFindEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    #@0
    .line 28
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Iterable;

    #@6
    .line 154
    instance-of v1, v0, Ljava/util/Collection;

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v1, :cond_15

    #@b
    move-object v1, v0

    #@c
    check-cast v1, Ljava/util/Collection;

    #@e
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_15

    #@14
    goto :goto_30

    #@15
    .line 155
    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_30

    #@1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/Map$Entry;

    #@25
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_19

    #@2f
    const/4 v2, 0x1

    #@30
    :cond_30
    :goto_30
    return v2
.end method

.method public final bridge entrySet()Ljava/util/Set;
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
    .line 21
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->getEntries()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, p0, :cond_4

    #@3
    return v0

    #@4
    .line 57
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 58
    :cond_a
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->size()I

    #@d
    move-result v1

    #@e
    check-cast p1, Ljava/util/Map;

    #@10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@13
    move-result v3

    #@14
    if-eq v1, v3, :cond_17

    #@16
    return v2

    #@17
    .line 60
    :cond_17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Ljava/lang/Iterable;

    #@1d
    .line 157
    instance-of v1, p1, Ljava/util/Collection;

    #@1f
    if-eqz v1, :cond_2b

    #@21
    move-object v1, p1

    #@22
    check-cast v1, Ljava/util/Collection;

    #@24
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2b

    #@2a
    goto :goto_42

    #@2b
    .line 158
    :cond_2b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object p1

    #@2f
    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_42

    #@35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/util/Map$Entry;

    #@3b
    .line 60
    invoke-virtual {p0, v1}, Lkotlin/collections/AbstractMap;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_2f

    #@41
    move v0, v2

    #@42
    :cond_42
    :goto_42
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .line 63
    invoke-direct {p0, p1}, Lkotlin/collections/AbstractMap;->implFindEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    return-object p1
.end method

.method public abstract getEntries()Ljava/util/Set;
.end method

.method public getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    #@0
    .line 84
    iget-object v0, p0, Lkotlin/collections/AbstractMap;->_keys:Ljava/util/Set;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 85
    new-instance v0, Lkotlin/collections/AbstractMap$keys$1;

    #@6
    invoke-direct {v0, p0}, Lkotlin/collections/AbstractMap$keys$1;-><init>(Lkotlin/collections/AbstractMap;)V

    #@9
    check-cast v0, Ljava/util/Set;

    #@b
    iput-object v0, p0, Lkotlin/collections/AbstractMap;->_keys:Ljava/util/Set;

    #@d
    .line 99
    :cond_d
    iget-object v0, p0, Lkotlin/collections/AbstractMap;->_keys:Ljava/util/Set;

    #@f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@12
    return-object v0
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 74
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7
    move-result v0

    #@8
    return v0
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
    .line 120
    iget-object v0, p0, Lkotlin/collections/AbstractMap;->_values:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 121
    new-instance v0, Lkotlin/collections/AbstractMap$values$1;

    #@6
    invoke-direct {v0, p0}, Lkotlin/collections/AbstractMap$values$1;-><init>(Lkotlin/collections/AbstractMap;)V

    #@9
    check-cast v0, Ljava/util/Collection;

    #@b
    iput-object v0, p0, Lkotlin/collections/AbstractMap;->_values:Ljava/util/Collection;

    #@d
    .line 135
    :cond_d
    iget-object v0, p0, Lkotlin/collections/AbstractMap;->_values:Ljava/util/Collection;

    #@f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@12
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 71
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 73
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->size()I

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

.method public final bridge keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    #@0
    .line 21
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->getKeys()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Operation is not supported for read-only collection"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
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

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
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
    .line 21
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->getSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    #@0
    .line 106
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    move-object v1, v0

    #@5
    check-cast v1, Ljava/lang/Iterable;

    #@7
    const-string v0, ", "

    #@9
    move-object v2, v0

    #@a
    check-cast v2, Ljava/lang/CharSequence;

    #@c
    const-string v0, "{"

    #@e
    move-object v3, v0

    #@f
    check-cast v3, Ljava/lang/CharSequence;

    #@11
    const-string v0, "}"

    #@13
    move-object v4, v0

    #@14
    check-cast v4, Ljava/lang/CharSequence;

    #@16
    const/4 v5, 0x0

    #@17
    const/4 v6, 0x0

    #@18
    new-instance v0, Lkotlin/collections/AbstractMap$toString$1;

    #@1a
    invoke-direct {v0, p0}, Lkotlin/collections/AbstractMap$toString$1;-><init>(Lkotlin/collections/AbstractMap;)V

    #@1d
    move-object v7, v0

    #@1e
    check-cast v7, Lkotlin/jvm/functions/Function1;

    #@20
    const/16 v8, 0x18

    #@22
    const/4 v9, 0x0

    #@23
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    #@0
    .line 21
    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->getValues()Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
