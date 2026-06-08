.class public final Lcom/flydigi/sdk/waspwing/WaspWingInfo$Creator;
.super Ljava/lang/Object;
.source "WaspWingInfo.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/waspwing/WaspWingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;
    .registers 35

    #@0
    move-object/from16 v0, p1

    #@2
    const-string v1, "parcel"

    #@4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    new-instance v1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v2

    #@15
    const/4 v5, 0x1

    #@16
    const/4 v6, 0x0

    #@17
    if-eqz v2, :cond_1b

    #@19
    move v7, v5

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v7, v6

    #@1c
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v9

    #@24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2c

    #@2a
    move v10, v5

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v10, v6

    #@2d
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v11

    #@31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v12

    #@35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v13

    #@39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v14

    #@3d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v15

    #@41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v16

    #@45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_4e

    #@4b
    move/from16 v17, v5

    #@4d
    goto :goto_50

    #@4e
    :cond_4e
    move/from16 v17, v6

    #@50
    :goto_50
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v18

    #@54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v19

    #@58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v20

    #@5c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v21

    #@60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v22

    #@64
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v23

    #@68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@6b
    move-result v24

    #@6c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v2

    #@70
    const/16 v25, 0x0

    #@72
    if-nez v2, :cond_77

    #@74
    move-object/from16 v2, v25

    #@76
    goto :goto_7d

    #@77
    :cond_77
    sget-object v2, Lcom/flydigi/sdk/waspwing/LedData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7c
    move-result-object v2

    #@7d
    :goto_7d
    move-object/from16 v26, v2

    #@7f
    check-cast v26, Lcom/flydigi/sdk/waspwing/LedData;

    #@81
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_8a

    #@87
    move/from16 v27, v5

    #@89
    goto :goto_8c

    #@8a
    :cond_8a
    move/from16 v27, v6

    #@8c
    :goto_8c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v2

    #@90
    if-eqz v2, :cond_95

    #@92
    move/from16 v28, v5

    #@94
    goto :goto_97

    #@95
    :cond_95
    move/from16 v28, v6

    #@97
    :goto_97
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    #@9a
    move-result-object v29

    #@9b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v2

    #@9f
    if-nez v2, :cond_a4

    #@a1
    move-object/from16 v30, v25

    #@a3
    goto :goto_ae

    #@a4
    :cond_a4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v2

    #@a8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v2

    #@ac
    move-object/from16 v30, v2

    #@ae
    :goto_ae
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v2

    #@b2
    if-nez v2, :cond_b7

    #@b4
    move-object/from16 v31, v25

    #@b6
    goto :goto_c1

    #@b7
    :cond_b7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ba
    move-result v2

    #@bb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@be
    move-result-object v2

    #@bf
    move-object/from16 v31, v2

    #@c1
    :goto_c1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_ca

    #@c7
    move/from16 v32, v5

    #@c9
    goto :goto_cc

    #@ca
    :cond_ca
    move/from16 v32, v6

    #@cc
    :goto_cc
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@cf
    move-result v2

    #@d0
    if-nez v2, :cond_d5

    #@d2
    move-object/from16 v0, v25

    #@d4
    goto :goto_dd

    #@d5
    :cond_d5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v0

    #@d9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dc
    move-result-object v0

    #@dd
    :goto_dd
    move-object v2, v1

    #@de
    move v5, v7

    #@df
    move-object v6, v8

    #@e0
    move-object v7, v9

    #@e1
    move v8, v10

    #@e2
    move v9, v11

    #@e3
    move v10, v12

    #@e4
    move v11, v13

    #@e5
    move v12, v14

    #@e6
    move v13, v15

    #@e7
    move/from16 v14, v16

    #@e9
    move/from16 v15, v17

    #@eb
    move/from16 v16, v18

    #@ed
    move/from16 v17, v19

    #@ef
    move/from16 v18, v20

    #@f1
    move/from16 v19, v21

    #@f3
    move/from16 v20, v22

    #@f5
    move/from16 v21, v23

    #@f7
    move/from16 v22, v24

    #@f9
    move-object/from16 v23, v26

    #@fb
    move/from16 v24, v27

    #@fd
    move/from16 v25, v28

    #@ff
    move-object/from16 v26, v29

    #@101
    move-object/from16 v27, v30

    #@103
    move-object/from16 v28, v31

    #@105
    move/from16 v29, v32

    #@107
    move-object/from16 v30, v0

    #@109
    invoke-direct/range {v2 .. v30}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)V

    #@10c
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public final newArray(I)[Lcom/flydigi/sdk/waspwing/WaspWingInfo;
    .registers 2

    #@0
    new-array p1, p1, [Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo$Creator;->newArray(I)[Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
