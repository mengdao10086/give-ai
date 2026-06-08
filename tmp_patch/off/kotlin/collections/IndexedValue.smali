.class public final Lkotlin/collections/IndexedValue;
.super Ljava/lang/Object;
.source "IndexedValue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000c\u001a\u00020\u0004H\u00c6\u0003J\u000e\u0010\r\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00028\u0000H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/collections/IndexedValue;",
        "T",
        "",
        "index",
        "",
        "value",
        "(ILjava/lang/Object;)V",
        "getIndex",
        "()I",
        "getValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "component1",
        "component2",
        "copy",
        "(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;",
        "equals",
        "",
        "other",
        "hashCode",
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


# instance fields
.field private final index:I

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    #@0
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lkotlin/collections/IndexedValue;->index:I

    #@5
    iput-object p2, p0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public static synthetic copy$default(Lkotlin/collections/IndexedValue;ILjava/lang/Object;ILjava/lang/Object;)Lkotlin/collections/IndexedValue;
    .registers 5

    #@0
    and-int/lit8 p4, p3, 0x1

    #@2
    if-eqz p4, :cond_6

    #@4
    iget p1, p0, Lkotlin/collections/IndexedValue;->index:I

    #@6
    :cond_6
    and-int/lit8 p3, p3, 0x2

    #@8
    if-eqz p3, :cond_c

    #@a
    iget-object p2, p0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@c
    :cond_c
    invoke-virtual {p0, p1, p2}, Lkotlin/collections/IndexedValue;->copy(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    #@0
    iget v0, p0, Lkotlin/collections/IndexedValue;->index:I

    #@2
    return v0
.end method

.method public final component2()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final copy(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lkotlin/collections/IndexedValue<",
            "TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lkotlin/collections/IndexedValue;

    #@2
    invoke-direct {v0, p1, p2}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    instance-of v1, p1, Lkotlin/collections/IndexedValue;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    :cond_a
    check-cast p1, Lkotlin/collections/IndexedValue;

    #@c
    iget v1, p0, Lkotlin/collections/IndexedValue;->index:I

    #@e
    iget v3, p1, Lkotlin/collections/IndexedValue;->index:I

    #@10
    if-eq v1, v3, :cond_13

    #@12
    return v2

    #@13
    :cond_13
    iget-object v1, p0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@15
    iget-object p1, p1, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result p1

    #@1b
    if-nez p1, :cond_1e

    #@1d
    return v2

    #@1e
    :cond_1e
    return v0
.end method

.method public final getIndex()I
    .registers 2

    #@0
    .line 14
    iget v0, p0, Lkotlin/collections/IndexedValue;->index:I

    #@2
    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 14
    iget-object v0, p0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget v0, p0, Lkotlin/collections/IndexedValue;->index:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-object v1, p0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@a
    if-nez v1, :cond_e

    #@c
    const/4 v1, 0x0

    #@d
    goto :goto_12

    #@e
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v1

    #@12
    :goto_12
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "IndexedValue(index="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Lkotlin/collections/IndexedValue;->index:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", value="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const/16 v1, 0x29

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
