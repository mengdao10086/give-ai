.class public final Lcom/flydigi/sdk/waspwing/LedData;
.super Ljava/lang/Object;
.source "WaspWingInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0018\u0008\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u0019\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008H\u00c6\u0003J7\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0018\u0008\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008H\u00c6\u0001J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0008\u0010\u001d\u001a\u00020\u0007H\u0016J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\u0019\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u00d6\u0001R*\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/flydigi/sdk/waspwing/LedData;",
        "Landroid/os/Parcelable;",
        "ledType",
        "",
        "period",
        "colors",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "(BBLjava/util/ArrayList;)V",
        "getColors",
        "()Ljava/util/ArrayList;",
        "setColors",
        "(Ljava/util/ArrayList;)V",
        "getLedType",
        "()B",
        "setLedType",
        "(B)V",
        "getPeriod",
        "setPeriod",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "sdk_waspwing_release"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/flydigi/sdk/waspwing/LedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ledType:B

.field private period:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/flydigi/sdk/waspwing/LedData$Creator;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/waspwing/LedData$Creator;-><init>()V

    #@5
    check-cast v0, Landroid/os/Parcelable$Creator;

    #@7
    sput-object v0, Lcom/flydigi/sdk/waspwing/LedData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9
    return-void
.end method

.method public constructor <init>(BBLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "colors"

    #@2
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 148
    iput-byte p1, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@a
    .line 149
    iput-byte p2, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@c
    .line 150
    iput-object p3, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@e
    return-void
.end method

.method public synthetic constructor <init>(BBLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    #@0
    and-int/lit8 p4, p4, 0x4

    #@2
    if-eqz p4, :cond_9

    #@4
    .line 150
    new-instance p3, Ljava/util/ArrayList;

    #@6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 147
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/flydigi/sdk/waspwing/LedData;-><init>(BBLjava/util/ArrayList;)V

    #@c
    return-void
.end method

.method public static synthetic copy$default(Lcom/flydigi/sdk/waspwing/LedData;BBLjava/util/ArrayList;ILjava/lang/Object;)Lcom/flydigi/sdk/waspwing/LedData;
    .registers 6

    #@0
    and-int/lit8 p5, p4, 0x1

    #@2
    if-eqz p5, :cond_6

    #@4
    iget-byte p1, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@6
    :cond_6
    and-int/lit8 p5, p4, 0x2

    #@8
    if-eqz p5, :cond_c

    #@a
    iget-byte p2, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@c
    :cond_c
    and-int/lit8 p4, p4, 0x4

    #@e
    if-eqz p4, :cond_12

    #@10
    iget-object p3, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@12
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/flydigi/sdk/waspwing/LedData;->copy(BBLjava/util/ArrayList;)Lcom/flydigi/sdk/waspwing/LedData;

    #@15
    move-result-object p0

    #@16
    return-object p0
.end method


# virtual methods
.method public final component1()B
    .registers 2

    #@0
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@2
    return v0
.end method

.method public final component2()B
    .registers 2

    #@0
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@2
    return v0
.end method

.method public final component3()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public final copy(BBLjava/util/ArrayList;)Lcom/flydigi/sdk/waspwing/LedData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/flydigi/sdk/waspwing/LedData;"
        }
    .end annotation

    #@0
    const-string v0, "colors"

    #@2
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/flydigi/sdk/waspwing/LedData;

    #@7
    invoke-direct {v0, p1, p2, p3}, Lcom/flydigi/sdk/waspwing/LedData;-><init>(BBLjava/util/ArrayList;)V

    #@a
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 154
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    if-eqz p1, :cond_f

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v2, 0x0

    #@10
    :goto_10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    const/4 v2, 0x0

    #@15
    if-nez v1, :cond_18

    #@17
    return v2

    #@18
    :cond_18
    const-string v1, "null cannot be cast to non-null type com.flydigi.sdk.waspwing.LedData"

    #@1a
    .line 156
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@1d
    check-cast p1, Lcom/flydigi/sdk/waspwing/LedData;

    #@1f
    .line 158
    iget-byte v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@21
    iget-byte v3, p1, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@23
    if-eq v1, v3, :cond_26

    #@25
    return v2

    #@26
    .line 159
    :cond_26
    iget-byte v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@28
    iget-byte v3, p1, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@2a
    if-eq v1, v3, :cond_2d

    #@2c
    return v2

    #@2d
    .line 160
    :cond_2d
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@2f
    iget-object p1, p1, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

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

.method public final getColors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 150
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public final getLedType()B
    .registers 2

    #@0
    .line 148
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@2
    return v0
.end method

.method public final getPeriod()B
    .registers 2

    #@0
    .line 149
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 166
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    .line 167
    iget-byte v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x1f

    #@9
    .line 168
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    return v0
.end method

.method public final setColors(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "<set-?>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 150
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@7
    return-void
.end method

.method public final setLedType(B)V
    .registers 2

    #@0
    .line 148
    iput-byte p1, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@2
    return-void
.end method

.method public final setPeriod(B)V
    .registers 2

    #@0
    .line 149
    iput-byte p1, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "LedData(ledType="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-byte v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", period="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-byte v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", colors="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const/16 v1, 0x29

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    const-string p2, "out"

    #@2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    iget-byte p2, p0, Lcom/flydigi/sdk/waspwing/LedData;->ledType:B

    #@7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    #@a
    iget-byte p2, p0, Lcom/flydigi/sdk/waspwing/LedData;->period:B

    #@c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    #@f
    iget-object p2, p0, Lcom/flydigi/sdk/waspwing/LedData;->colors:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object p2

    #@1c
    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_30

    #@22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/Number;

    #@28
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    #@2b
    move-result v0

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    goto :goto_1c

    #@30
    :cond_30
    return-void
.end method
