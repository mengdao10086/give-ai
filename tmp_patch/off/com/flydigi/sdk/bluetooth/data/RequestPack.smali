.class public final Lcom/flydigi/sdk/bluetooth/data/RequestPack;
.super Ljava/lang/Object;
.source "RequestPack.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010 \u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ<\u0010!\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020\u0016H\u00d6\u0001J\t\u0010&\u001a\u00020\'H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006("
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/data/RequestPack;",
        "",
        "uuid",
        "Ljava/util/UUID;",
        "data",
        "",
        "requireCallback",
        "",
        "delay",
        "",
        "(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;)V",
        "getData",
        "()[B",
        "getDelay",
        "()Ljava/lang/Long;",
        "setDelay",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getRequireCallback",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "retryCount",
        "",
        "getRetryCount",
        "()I",
        "setRetryCount",
        "(I)V",
        "getUuid",
        "()Ljava/util/UUID;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;)Lcom/flydigi/sdk/bluetooth/data/RequestPack;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "bluetooth_release"
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
.field private final data:[B

.field private delay:Ljava/lang/Long;

.field private final requireCallback:Ljava/lang/Boolean;

.field private retryCount:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;)V
    .registers 6

    #@0
    const-string v0, "data"

    #@2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 10
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

    #@a
    .line 11
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

    #@c
    .line 12
    iput-object p3, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@e
    .line 13
    iput-object p4, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@10
    const/4 p1, 0x1

    #@11
    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@14
    move-result-object p1

    #@15
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_1d

    #@1b
    const/4 p1, 0x3

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    :goto_1e
    iput p1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->retryCount:I

    #@20
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    #@0
    and-int/lit8 p6, p5, 0x1

    #@2
    if-eqz p6, :cond_5

    #@4
    const/4 p1, 0x0

    #@5
    :cond_5
    and-int/lit8 p6, p5, 0x4

    #@7
    if-eqz p6, :cond_e

    #@9
    const/4 p3, 0x0

    #@a
    .line 12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object p3

    #@e
    :cond_e
    and-int/lit8 p5, p5, 0x8

    #@10
    if-eqz p5, :cond_18

    #@12
    const-wide/16 p4, 0x0

    #@14
    .line 13
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object p4

    #@18
    .line 9
    :cond_18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flydigi/sdk/bluetooth/data/RequestPack;-><init>(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;)V

    #@1b
    return-void
.end method

.method public static synthetic copy$default(Lcom/flydigi/sdk/bluetooth/data/RequestPack;Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;ILjava/lang/Object;)Lcom/flydigi/sdk/bluetooth/data/RequestPack;
    .registers 7

    #@0
    and-int/lit8 p6, p5, 0x1

    #@2
    if-eqz p6, :cond_6

    #@4
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

    #@6
    :cond_6
    and-int/lit8 p6, p5, 0x2

    #@8
    if-eqz p6, :cond_c

    #@a
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

    #@c
    :cond_c
    and-int/lit8 p6, p5, 0x4

    #@e
    if-eqz p6, :cond_12

    #@10
    iget-object p3, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@12
    :cond_12
    and-int/lit8 p5, p5, 0x8

    #@14
    if-eqz p5, :cond_18

    #@16
    iget-object p4, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@18
    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->copy(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;)Lcom/flydigi/sdk/bluetooth/data/RequestPack;

    #@1b
    move-result-object p0

    #@1c
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/UUID;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public final component2()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

    #@2
    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@2
    return-object v0
.end method

.method public final copy(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;)Lcom/flydigi/sdk/bluetooth/data/RequestPack;
    .registers 6

    #@0
    const-string v0, "data"

    #@2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;

    #@7
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flydigi/sdk/bluetooth/data/RequestPack;-><init>(Ljava/util/UUID;[BLjava/lang/Boolean;Ljava/lang/Long;)V

    #@a
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
    instance-of v1, p1, Lcom/flydigi/sdk/bluetooth/data/RequestPack;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    :cond_a
    check-cast p1, Lcom/flydigi/sdk/bluetooth/data/RequestPack;

    #@c
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

    #@e
    iget-object v3, p1, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

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
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

    #@19
    iget-object v3, p1, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

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
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@24
    iget-object v3, p1, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_2d

    #@2c
    return v2

    #@2d
    :cond_2d
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@2f
    iget-object p1, p1, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@31
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result p1

    #@35
    if-nez p1, :cond_38

    #@37
    return v2

    #@38
    :cond_38
    return v0
.end method

.method public final getData()[B
    .registers 2

    #@0
    .line 11
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

    #@2
    return-object v0
.end method

.method public final getDelay()Ljava/lang/Long;
    .registers 2

    #@0
    .line 13
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@2
    return-object v0
.end method

.method public final getRequireCallback()Ljava/lang/Boolean;
    .registers 2

    #@0
    .line 12
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public final getRetryCount()I
    .registers 2

    #@0
    .line 15
    iget v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->retryCount:I

    #@2
    return v0
.end method

.method public final getUuid()Ljava/util/UUID;
    .registers 2

    #@0
    .line 10
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

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
    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    #@a
    move-result v0

    #@b
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    #@d
    iget-object v2, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

    #@f
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@12
    move-result v2

    #@13
    add-int/2addr v0, v2

    #@14
    mul-int/lit8 v0, v0, 0x1f

    #@16
    iget-object v2, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@18
    if-nez v2, :cond_1c

    #@1a
    move v2, v1

    #@1b
    goto :goto_20

    #@1c
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@1f
    move-result v2

    #@20
    :goto_20
    add-int/2addr v0, v2

    #@21
    mul-int/lit8 v0, v0, 0x1f

    #@23
    iget-object v2, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@25
    if-nez v2, :cond_28

    #@27
    goto :goto_2c

    #@28
    :cond_28
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@2b
    move-result v1

    #@2c
    :goto_2c
    add-int/2addr v0, v1

    #@2d
    return v0
.end method

.method public final setDelay(Ljava/lang/Long;)V
    .registers 2

    #@0
    .line 13
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@2
    return-void
.end method

.method public final setRetryCount(I)V
    .registers 2

    #@0
    .line 15
    iput p1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->retryCount:I

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "RequestPack(uuid="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->uuid:Ljava/util/UUID;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", data="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->data:[B

    #@15
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ", requireCallback="

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->requireCallback:Ljava/lang/Boolean;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, ", delay="

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->delay:Ljava/lang/Long;

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const/16 v1, 0x29

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0
.end method
