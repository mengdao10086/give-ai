.class public final Lkotlin/Triple;
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
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0006\u0008\u0001\u0010\u0002 \u0001*\u0006\u0008\u0002\u0010\u0003 \u00012\u00060\u0004j\u0002`\u0005B\u001d\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00028\u0001\u0012\u0006\u0010\u0008\u001a\u00028\u0002\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u000f\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u0010\u001a\u00028\u0001H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u0011\u001a\u00028\u0002H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ>\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00028\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00028\u0002H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u0013\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0007\u001a\u00028\u0001\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\r\u0010\u000bR\u0013\u0010\u0008\u001a\u00028\u0002\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/Triple;",
        "A",
        "B",
        "C",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "first",
        "second",
        "third",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V",
        "getFirst",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getSecond",
        "getThird",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Triple;",
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

.field private final third:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    #@0
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

    #@5
    .line 68
    iput-object p2, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@7
    .line 69
    iput-object p3, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@9
    return-void
.end method

.method public static synthetic copy$default(Lkotlin/Triple;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Triple;
    .registers 6

    #@0
    and-int/lit8 p5, p4, 0x1

    #@2
    if-eqz p5, :cond_6

    #@4
    iget-object p1, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

    #@6
    :cond_6
    and-int/lit8 p5, p4, 0x2

    #@8
    if-eqz p5, :cond_c

    #@a
    iget-object p2, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@c
    :cond_c
    and-int/lit8 p4, p4, 0x4

    #@e
    if-eqz p4, :cond_12

    #@10
    iget-object p3, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@12
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/Triple;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Triple;

    #@15
    move-result-object p0

    #@16
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
    iget-object v0, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

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
    iget-object v0, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final component3()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Triple;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)",
            "Lkotlin/Triple<",
            "TA;TB;TC;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lkotlin/Triple;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

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
    instance-of v1, p1, Lkotlin/Triple;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    :cond_a
    check-cast p1, Lkotlin/Triple;

    #@c
    iget-object v1, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

    #@e
    iget-object v3, p1, Lkotlin/Triple;->first:Ljava/lang/Object;

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
    iget-object v1, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@19
    iget-object v3, p1, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@1b
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_22

    #@21
    return v2

    #@22
    :cond_22
    iget-object v1, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@24
    iget-object p1, p1, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@26
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result p1

    #@2a
    if-nez p1, :cond_2d

    #@2c
    return v2

    #@2d
    :cond_2d
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
    .line 67
    iget-object v0, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

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
    .line 68
    iget-object v0, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getThird()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    #@0
    .line 69
    iget-object v0, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    iget-object v0, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

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
    iget-object v2, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@f
    if-nez v2, :cond_13

    #@11
    move v2, v1

    #@12
    goto :goto_17

    #@13
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@16
    move-result v2

    #@17
    :goto_17
    add-int/2addr v0, v2

    #@18
    mul-int/lit8 v0, v0, 0x1f

    #@1a
    iget-object v2, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@1c
    if-nez v2, :cond_1f

    #@1e
    goto :goto_23

    #@1f
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@22
    move-result v1

    #@23
    :goto_23
    add-int/2addr v0, v1

    #@24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

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
    iget-object v2, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const/16 v1, 0x29

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method
