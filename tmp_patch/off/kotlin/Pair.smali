.class public final Lkotlin/Pair;
.super Ljava/lang/Object;
.source "Tuples.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u00060\u0003j\u0002`\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u000c\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\r\u001a\u00028\u0001H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ.\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00028\u0001H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0013\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0006\u001a\u00028\u0001\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/Pair;",
        "A",
        "B",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "first",
        "second",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "getFirst",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getSecond",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@5
    .line 28
    iput-object p2, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public static synthetic copy$default(Lkotlin/Pair;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Pair;
    .registers 5

    #@0
    and-int/lit8 p4, p3, 0x1

    #@2
    if-eqz p4, :cond_6

    #@4
    iget-object p1, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@6
    :cond_6
    and-int/lit8 p3, p3, 0x2

    #@8
    if-eqz p3, :cond_c

    #@a
    iget-object p2, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    #@c
    :cond_c
    invoke-virtual {p0, p1, p2}, Lkotlin/Pair;->copy(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final copy(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lkotlin/Pair<",
            "TA;TB;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lkotlin/Pair;

    #@2
    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    instance-of v1, p1, Lkotlin/Pair;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    :cond_a
    check-cast p1, Lkotlin/Pair;

    #@c
    iget-object v1, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@e
    iget-object v3, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@10
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_17

    #@16
    return v2

    #@17
    :cond_17
    iget-object v1, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    #@19
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    #@1b
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result p1

    #@1f
    if-nez p1, :cond_22

    #@21
    return v2

    #@22
    :cond_22
    return v0
.end method

.method public final getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    #@0
    .line 27
    iget-object v0, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getSecond()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    #@0
    .line 28
    iget-object v0, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    iget-object v0, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_7

    #@5
    move v0, v1

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@a
    move-result v0

    #@b
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    #@d
    iget-object v2, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    #@f
    if-nez v2, :cond_12

    #@11
    goto :goto_16

    #@12
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@15
    move-result v1

    #@16
    :goto_16
    add-int/2addr v0, v1

    #@17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

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
