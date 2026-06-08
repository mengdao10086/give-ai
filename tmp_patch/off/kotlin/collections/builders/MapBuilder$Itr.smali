.class public Lkotlin/collections/builders/MapBuilder$Itr;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Itr"
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,694:1\n1#2:695\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0010\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J\u0006\u0010\u0017\u001a\u00020\u0015R\u001a\u0010\u0007\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$Itr;",
        "K",
        "V",
        "",
        "map",
        "Lkotlin/collections/builders/MapBuilder;",
        "(Lkotlin/collections/builders/MapBuilder;)V",
        "index",
        "",
        "getIndex$kotlin_stdlib",
        "()I",
        "setIndex$kotlin_stdlib",
        "(I)V",
        "lastIndex",
        "getLastIndex$kotlin_stdlib",
        "setLastIndex$kotlin_stdlib",
        "getMap$kotlin_stdlib",
        "()Lkotlin/collections/builders/MapBuilder;",
        "hasNext",
        "",
        "initNext",
        "",
        "initNext$kotlin_stdlib",
        "remove",
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


# instance fields
.field private index:I

.field private lastIndex:I

.field private final map:Lkotlin/collections/builders/MapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "map"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 474
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    #@a
    const/4 p1, -0x1

    #@b
    .line 477
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    #@d
    .line 480
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    #@10
    return-void
.end method


# virtual methods
.method public final getIndex$kotlin_stdlib()I
    .registers 2

    #@0
    .line 476
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    #@2
    return v0
.end method

.method public final getLastIndex$kotlin_stdlib()I
    .registers 2

    #@0
    .line 477
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    #@2
    return v0
.end method

.method public final getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 474
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    #@2
    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    #@0
    .line 488
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    #@2
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    #@4
    # getter for: Lkotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public final initNext$kotlin_stdlib()V
    .registers 3

    #@0
    .line 484
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    #@2
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    #@4
    # getter for: Lkotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_1b

    #@a
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    #@c
    # getter for: Lkotlin/collections/builders/MapBuilder;->presenceArray:[I
    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I

    #@f
    move-result-object v0

    #@10
    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    #@12
    aget v0, v0, v1

    #@14
    if-gez v0, :cond_1b

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    .line 485
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    #@1a
    goto :goto_0

    #@1b
    :cond_1b
    return-void
.end method

.method public final remove()V
    .registers 4

    #@0
    .line 491
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    if-eqz v0, :cond_19

    #@a
    .line 492
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    #@c
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@f
    .line 493
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    #@11
    iget v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    #@13
    # invokes: Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V
    invoke-static {v0, v2}, Lkotlin/collections/builders/MapBuilder;->access$removeKeyAt(Lkotlin/collections/builders/MapBuilder;I)V

    #@16
    .line 494
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    #@18
    return-void

    #@19
    .line 491
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    const-string v1, "Call next() before removing element from the iterator."

    #@1d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public final setIndex$kotlin_stdlib(I)V
    .registers 2

    #@0
    .line 476
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    #@2
    return-void
.end method

.method public final setLastIndex$kotlin_stdlib(I)V
    .registers 2

    #@0
    .line 477
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    #@2
    return-void
.end method
