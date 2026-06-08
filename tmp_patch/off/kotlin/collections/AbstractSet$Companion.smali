.class public final Lkotlin/collections/AbstractSet$Companion;
.super Ljava/lang/Object;
.source "AbstractSet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0010\u001e\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0000\u00a2\u0006\u0002\u0008\u0008J\u0019\u0010\t\u001a\u00020\n2\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0000\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/collections/AbstractSet$Companion;",
        "",
        "()V",
        "setEquals",
        "",
        "c",
        "",
        "other",
        "setEquals$kotlin_stdlib",
        "unorderedHashCode",
        "",
        "",
        "unorderedHashCode$kotlin_stdlib",
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
.method private constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lkotlin/collections/AbstractSet$Companion;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final setEquals$kotlin_stdlib(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Set<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "c"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "other"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 43
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@d
    move-result v0

    #@e
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@11
    move-result v1

    #@12
    if-eq v0, v1, :cond_16

    #@14
    const/4 p1, 0x0

    #@15
    return p1

    #@16
    .line 44
    :cond_16
    check-cast p1, Ljava/util/Collection;

    #@18
    check-cast p2, Ljava/util/Collection;

    #@1a
    invoke-interface {p1, p2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    #@1d
    move-result p1

    #@1e
    return p1
.end method

.method public final unorderedHashCode$kotlin_stdlib(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    #@0
    const-string v0, "c"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p1

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1f

    #@11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    if-eqz v2, :cond_1c

    #@17
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@1a
    move-result v2

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v2, v0

    #@1d
    :goto_1d
    add-int/2addr v1, v2

    #@1e
    goto :goto_b

    #@1f
    :cond_1f
    return v1
.end method
