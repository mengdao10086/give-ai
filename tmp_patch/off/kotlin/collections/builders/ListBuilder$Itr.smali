.class final Lkotlin/collections/builders/ListBuilder$Itr;
.super Ljava/lang/Object;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,429:1\n1#2:430\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0008\u0016\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\r\u001a\u00020\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u000e\u0010\u0010\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0006H\u0016J\r\u0010\u0013\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016J\u0008\u0010\u0015\u001a\u00020\nH\u0016J\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder$Itr;",
        "E",
        "",
        "list",
        "Lkotlin/collections/builders/ListBuilder;",
        "index",
        "",
        "(Lkotlin/collections/builders/ListBuilder;I)V",
        "lastIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "hasNext",
        "",
        "hasPrevious",
        "next",
        "()Ljava/lang/Object;",
        "nextIndex",
        "previous",
        "previousIndex",
        "remove",
        "set",
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

.field private final list:Lkotlin/collections/builders/ListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/ListBuilder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;I)V"
        }
    .end annotation

    #@0
    const-string v0, "list"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 290
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@a
    .line 291
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@c
    const/4 p1, -0x1

    #@d
    .line 292
    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@f
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .line 319
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@8
    invoke-virtual {v0, v1, p1}, Lkotlin/collections/builders/ListBuilder;->add(ILjava/lang/Object;)V

    #@b
    const/4 p1, -0x1

    #@c
    .line 320
    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@e
    return-void
.end method

.method public hasNext()Z
    .registers 3

    #@0
    .line 296
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@2
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@4
    # getter for: Lkotlin/collections/builders/ListBuilder;->length:I
    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder;->access$getLength$p(Lkotlin/collections/builders/ListBuilder;)I

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

.method public hasPrevious()Z
    .registers 2

    #@0
    .line 295
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@2
    if-lez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 308
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@2
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@4
    # getter for: Lkotlin/collections/builders/ListBuilder;->length:I
    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder;->access$getLength$p(Lkotlin/collections/builders/ListBuilder;)I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_24

    #@a
    .line 309
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@c
    add-int/lit8 v1, v0, 0x1

    #@e
    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@10
    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@12
    .line 310
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@14
    # getter for: Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getArray$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@1a
    # getter for: Lkotlin/collections/builders/ListBuilder;->offset:I
    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder;->access$getOffset$p(Lkotlin/collections/builders/ListBuilder;)I

    #@1d
    move-result v1

    #@1e
    iget v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@20
    add-int/2addr v1, v2

    #@21
    aget-object v0, v0, v1

    #@23
    return-object v0

    #@24
    .line 308
    :cond_24
    new-instance v0, Ljava/util/NoSuchElementException;

    #@26
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@29
    throw v0
.end method

.method public nextIndex()I
    .registers 2

    #@0
    .line 299
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@2
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 302
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@2
    if-lez v0, :cond_1c

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    .line 303
    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@8
    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@a
    .line 304
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@c
    # getter for: Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getArray$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@12
    # getter for: Lkotlin/collections/builders/ListBuilder;->offset:I
    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder;->access$getOffset$p(Lkotlin/collections/builders/ListBuilder;)I

    #@15
    move-result v1

    #@16
    iget v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@18
    add-int/2addr v1, v2

    #@19
    aget-object v0, v0, v1

    #@1b
    return-object v0

    #@1c
    .line 302
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    #@1e
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@21
    throw v0
.end method

.method public previousIndex()I
    .registers 2

    #@0
    .line 298
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method public remove()V
    .registers 4

    #@0
    .line 324
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_7

    #@5
    const/4 v2, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-eqz v2, :cond_16

    #@a
    .line 325
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@c
    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder;->remove(I)Ljava/lang/Object;

    #@f
    .line 326
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@11
    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    #@13
    .line 327
    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@15
    return-void

    #@16
    .line 324
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    const-string v1, "Call next() or previous() before removing element from the iterator."

    #@1a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .line 314
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_7

    #@5
    const/4 v1, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v1, 0x0

    #@8
    :goto_8
    if-eqz v1, :cond_10

    #@a
    .line 315
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    #@c
    invoke-virtual {v1, v0, p1}, Lkotlin/collections/builders/ListBuilder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@f
    return-void

    #@10
    .line 314
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    #@12
    const-string v0, "Call next() or previous() before replacing element from the iterator."

    #@14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p1
.end method
