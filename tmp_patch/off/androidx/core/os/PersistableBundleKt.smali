.class public final Landroidx/core/os/PersistableBundleKt;
.super Ljava/lang/Object;
.source "PersistableBundle.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistableBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistableBundle.kt\nandroidx/core/os/PersistableBundleKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,155:1\n13543#2,2:156\n*S KotlinDebug\n*F\n+ 1 PersistableBundle.kt\nandroidx/core/os/PersistableBundleKt\n*L\n35#1:156,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0007\u001a=\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0007\u00a2\u0006\u0002\u0010\u0007\u001a\u001a\u0010\u0008\u001a\u00020\u0001*\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "persistableBundleOf",
        "Landroid/os/PersistableBundle;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/os/PersistableBundle;",
        "toPersistableBundle",
        "",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final persistableBundleOf()Landroid/os/PersistableBundle;
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-static {v0}, Landroidx/core/os/PersistableBundleApi21ImplKt;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final varargs persistableBundleOf([Lkotlin/Pair;)Landroid/os/PersistableBundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    #@0
    const-string v0, "pairs"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 34
    array-length v0, p0

    #@6
    invoke-static {v0}, Landroidx/core/os/PersistableBundleApi21ImplKt;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    #@9
    move-result-object v0

    #@a
    .line 156
    array-length v1, p0

    #@b
    const/4 v2, 0x0

    #@c
    :goto_c
    if-ge v2, v1, :cond_20

    #@e
    aget-object v3, p0, v2

    #@10
    .line 35
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Ljava/lang/String;

    #@16
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    .line 36
    invoke-static {v0, v4, v3}, Landroidx/core/os/PersistableBundleApi21ImplKt;->putValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)V

    #@1d
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_c

    #@20
    :cond_20
    return-object v0
.end method

.method public static final toPersistableBundle(Ljava/util/Map;)Landroid/os/PersistableBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 59
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Landroidx/core/os/PersistableBundleApi21ImplKt;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    #@c
    move-result-object v0

    #@d
    .line 61
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object p0

    #@11
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object p0

    #@15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2f

    #@1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Map$Entry;

    #@21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/String;

    #@27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    .line 62
    invoke-static {v0, v2, v1}, Landroidx/core/os/PersistableBundleApi21ImplKt;->putValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)V

    #@2e
    goto :goto_15

    #@2f
    :cond_2f
    return-object v0
.end method
