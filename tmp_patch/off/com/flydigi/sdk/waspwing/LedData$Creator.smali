.class public final Lcom/flydigi/sdk/waspwing/LedData$Creator;
.super Ljava/lang/Object;
.source "WaspWingInfo.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/waspwing/LedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/flydigi/sdk/waspwing/LedData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/flydigi/sdk/waspwing/LedData;
    .registers 8

    #@0
    const-string v0, "parcel"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@8
    move-result v0

    #@9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@c
    move-result v1

    #@d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v2

    #@11
    new-instance v3, Ljava/util/ArrayList;

    #@13
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@16
    const/4 v4, 0x0

    #@17
    :goto_17
    if-eq v4, v2, :cond_27

    #@19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v5

    #@1d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_17

    #@27
    :cond_27
    new-instance p1, Lcom/flydigi/sdk/waspwing/LedData;

    #@29
    invoke-direct {p1, v0, v1, v3}, Lcom/flydigi/sdk/waspwing/LedData;-><init>(BBLjava/util/ArrayList;)V

    #@2c
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/waspwing/LedData$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/flydigi/sdk/waspwing/LedData;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public final newArray(I)[Lcom/flydigi/sdk/waspwing/LedData;
    .registers 2

    #@0
    new-array p1, p1, [Lcom/flydigi/sdk/waspwing/LedData;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/waspwing/LedData$Creator;->newArray(I)[Lcom/flydigi/sdk/waspwing/LedData;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
