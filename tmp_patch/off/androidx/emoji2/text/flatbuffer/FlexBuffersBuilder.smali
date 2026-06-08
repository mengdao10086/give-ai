.class public Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BUILDER_FLAG_NONE:I = 0x0

.field public static final BUILDER_FLAG_SHARE_ALL:I = 0x7

.field public static final BUILDER_FLAG_SHARE_KEYS:I = 0x1

.field public static final BUILDER_FLAG_SHARE_KEYS_AND_STRINGS:I = 0x3

.field public static final BUILDER_FLAG_SHARE_KEY_VECTORS:I = 0x4

.field public static final BUILDER_FLAG_SHARE_STRINGS:I = 0x2

.field private static final WIDTH_16:I = 0x1

.field private static final WIDTH_32:I = 0x2

.field private static final WIDTH_64:I = 0x3

.field private static final WIDTH_8:I


# instance fields
.field private final bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

.field private finished:Z

.field private final flags:I

.field private keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x100

    #@2
    .line 126
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 119
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    #@2
    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    #@5
    const/4 p1, 0x1

    #@6
    invoke-direct {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;I)V

    #@9
    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;I)V
    .registers 4

    #@0
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@a
    .line 88
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    #@11
    .line 89
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    #@18
    const/4 v0, 0x0

    #@19
    .line 91
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->finished:Z

    #@1b
    .line 94
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$1;

    #@1d
    invoke-direct {v0, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$1;-><init>(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)V

    #@20
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyComparator:Ljava/util/Comparator;

    #@22
    .line 141
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@24
    .line 142
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->flags:I

    #@26
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Ljava/nio/ByteBuffer;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 137
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    #@2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    #@9
    invoke-direct {p0, v0, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;I)V

    #@c
    return-void
.end method

.method static synthetic access$000(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;
    .registers 1

    #@0
    .line 51
    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@2
    return-object p0
.end method

.method private align(I)I
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    shl-int p1, v0, p1

    #@3
    .line 393
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@5
    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@8
    move-result v0

    #@9
    # invokes: Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I
    invoke-static {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$100(II)I

    #@c
    move-result v0

    #@d
    :goto_d
    add-int/lit8 v1, v0, -0x1

    #@f
    if-eqz v0, :cond_19

    #@11
    .line 395
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-interface {v0, v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@17
    move v0, v1

    #@18
    goto :goto_d

    #@19
    :cond_19
    return p1
.end method

.method private createKeyVector(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 16

    #@0
    int-to-long v0, p2

    #@1
    .line 614
    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    #@4
    move-result p2

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    #@9
    move-result p2

    #@a
    move v6, p2

    #@b
    move p2, p1

    #@c
    .line 617
    :goto_c
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v3

    #@12
    if-ge p2, v3, :cond_33

    #@14
    const/4 v7, 0x4

    #@15
    const/4 v8, 0x0

    #@16
    .line 618
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@1e
    iget v3, v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    #@20
    int-to-long v9, v3

    #@21
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@23
    invoke-interface {v3}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@26
    move-result v11

    #@27
    add-int/lit8 p2, p2, 0x1

    #@29
    move v12, p2

    #@2a
    # invokes: Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I
    invoke-static/range {v7 .. v12}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$500(IIJII)I

    #@2d
    move-result v3

    #@2e
    .line 619
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v6

    #@32
    goto :goto_c

    #@33
    .line 622
    :cond_33
    invoke-direct {p0, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    #@36
    move-result p2

    #@37
    .line 624
    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    #@3a
    .line 626
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@3c
    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@3f
    move-result v0

    #@40
    .line 627
    :goto_40
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v1

    #@46
    if-ge p1, v1, :cond_63

    #@48
    .line 628
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@50
    iget v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    #@52
    .line 630
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@5a
    iget v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    #@5c
    int-to-long v3, v1

    #@5d
    invoke-direct {p0, v3, v4, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeOffset(JI)V

    #@60
    add-int/lit8 p1, p1, 0x1

    #@62
    goto :goto_40

    #@63
    .line 633
    :cond_63
    new-instance p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@65
    const/4 v4, -0x1

    #@66
    const/4 p2, 0x4

    #@67
    invoke-static {p2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->toTypedVector(II)I

    #@6a
    move-result v5

    #@6b
    int-to-long v7, v0

    #@6c
    move-object v3, p1

    #@6d
    invoke-direct/range {v3 .. v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@70
    return-object p1
.end method

.method private createVector(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 22

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v1, p6

    #@3
    move/from16 v2, p3

    #@5
    int-to-long v3, v2

    #@6
    .line 496
    invoke-static {v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    #@9
    move-result v5

    #@a
    const/4 v6, 0x0

    #@b
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v5

    #@f
    if-eqz v1, :cond_21

    #@11
    .line 501
    iget-object v7, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@13
    invoke-interface {v7}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@16
    move-result v7

    #@17
    # invokes: Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I
    invoke-static {v1, v7, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I

    #@1a
    move-result v7

    #@1b
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v5

    #@1f
    const/4 v7, 0x3

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 v7, 0x1

    #@22
    :goto_22
    const/4 v8, 0x4

    #@23
    move v12, v5

    #@24
    move/from16 v5, p2

    #@26
    .line 506
    :goto_26
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v9

    #@2c
    if-ge v5, v9, :cond_68

    #@2e
    .line 507
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v9

    #@34
    check-cast v9, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@36
    iget-object v10, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@38
    invoke-interface {v10}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@3b
    move-result v10

    #@3c
    add-int v11, v5, v7

    #@3e
    # invokes: Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I
    invoke-static {v9, v10, v11}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I

    #@41
    move-result v9

    #@42
    .line 508
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v12

    #@46
    move/from16 v9, p2

    #@48
    if-eqz p4, :cond_65

    #@4a
    if-ne v5, v9, :cond_65

    #@4c
    .line 511
    iget-object v8, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v8

    #@52
    check-cast v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@54
    iget v8, v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    #@56
    .line 512
    invoke-static {v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypedVectorElementType(I)Z

    #@59
    move-result v10

    #@5a
    if-eqz v10, :cond_5d

    #@5c
    goto :goto_65

    #@5d
    .line 513
    :cond_5d
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;

    #@5f
    const-string v2, "TypedVector does not support this element type"

    #@61
    invoke-direct {v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    #@64
    throw v1

    #@65
    :cond_65
    :goto_65
    add-int/lit8 v5, v5, 0x1

    #@67
    goto :goto_26

    #@68
    :cond_68
    move/from16 v9, p2

    #@6a
    .line 526
    invoke-direct {p0, v12}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    #@6d
    move-result v5

    #@6e
    if-eqz v1, :cond_7d

    #@70
    .line 529
    iget-wide v10, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@72
    invoke-direct {p0, v10, v11, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeOffset(JI)V

    #@75
    const-wide/16 v10, 0x1

    #@77
    .line 530
    iget v7, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    #@79
    shl-long/2addr v10, v7

    #@7a
    invoke-direct {p0, v10, v11, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    #@7d
    :cond_7d
    if-nez p5, :cond_82

    #@7f
    .line 533
    invoke-direct {p0, v3, v4, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    #@82
    .line 536
    :cond_82
    iget-object v3, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@84
    invoke-interface {v3}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@87
    move-result v3

    #@88
    move v4, v9

    #@89
    .line 537
    :goto_89
    iget-object v7, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@8e
    move-result v7

    #@8f
    if-ge v4, v7, :cond_9f

    #@91
    .line 538
    iget-object v7, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@93
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v7

    #@97
    check-cast v7, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@99
    invoke-direct {p0, v7, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeAny(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)V

    #@9c
    add-int/lit8 v4, v4, 0x1

    #@9e
    goto :goto_89

    #@9f
    :cond_9f
    if-nez p4, :cond_bd

    #@a1
    .line 542
    :goto_a1
    iget-object v4, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@a3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a6
    move-result v4

    #@a7
    if-ge v9, v4, :cond_bd

    #@a9
    .line 543
    iget-object v4, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@ab
    iget-object v5, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@ad
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b0
    move-result-object v5

    #@b1
    check-cast v5, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@b3
    # invokes: Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B
    invoke-static {v5, v12}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$400(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B

    #@b6
    move-result v5

    #@b7
    invoke-interface {v4, v5}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@ba
    add-int/lit8 v9, v9, 0x1

    #@bc
    goto :goto_a1

    #@bd
    .line 546
    :cond_bd
    new-instance v4, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@bf
    if-eqz v1, :cond_c5

    #@c1
    const/16 v1, 0x9

    #@c3
    :goto_c3
    move v11, v1

    #@c4
    goto :goto_d3

    #@c5
    :cond_c5
    if-eqz p4, :cond_d0

    #@c7
    if-eqz p5, :cond_ca

    #@c9
    goto :goto_cb

    #@ca
    :cond_ca
    move v2, v6

    #@cb
    .line 547
    :goto_cb
    invoke-static {v8, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->toTypedVector(II)I

    #@ce
    move-result v1

    #@cf
    goto :goto_c3

    #@d0
    :cond_d0
    const/16 v1, 0xa

    #@d2
    goto :goto_c3

    #@d3
    :goto_d3
    int-to-long v13, v3

    #@d4
    move-object v9, v4

    #@d5
    move/from16 v10, p1

    #@d7
    invoke-direct/range {v9 .. v14}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@da
    return-object v4
.end method

.method private putKey(Ljava/lang/String;)I
    .registers 7

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, -0x1

    #@3
    return p1

    #@4
    .line 186
    :cond_4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@6
    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@9
    move-result v0

    #@a
    .line 187
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->flags:I

    #@c
    and-int/lit8 v1, v1, 0x1

    #@e
    const/4 v2, 0x0

    #@f
    if-eqz v1, :cond_3b

    #@11
    .line 188
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    #@13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/Integer;

    #@19
    if-nez v1, :cond_36

    #@1b
    .line 190
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1d
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@20
    move-result-object v1

    #@21
    .line 191
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@23
    array-length v4, v1

    #@24
    invoke-interface {v3, v1, v2, v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put([BII)V

    #@27
    .line 192
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@29
    invoke-interface {v1, v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@2c
    .line 193
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    #@2e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    goto :goto_55

    #@36
    .line 195
    :cond_36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v0

    #@3a
    goto :goto_55

    #@3b
    .line 198
    :cond_3b
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3d
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@40
    move-result-object v1

    #@41
    .line 199
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@43
    array-length v4, v1

    #@44
    invoke-interface {v3, v1, v2, v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put([BII)V

    #@47
    .line 200
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@49
    invoke-interface {v1, v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@4c
    .line 201
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    #@4e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    :goto_55
    return v0
.end method

.method private putUInt(Ljava/lang/String;J)V
    .registers 6

    #@0
    .line 279
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    .line 282
    invoke-static {p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_10

    #@a
    long-to-int p2, p2

    #@b
    .line 285
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@e
    move-result-object p1

    #@f
    goto :goto_26

    #@10
    :cond_10
    const/4 v1, 0x1

    #@11
    if-ne v0, v1, :cond_19

    #@13
    long-to-int p2, p2

    #@14
    .line 287
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@17
    move-result-object p1

    #@18
    goto :goto_26

    #@19
    :cond_19
    const/4 v1, 0x2

    #@1a
    if-ne v0, v1, :cond_22

    #@1c
    long-to-int p2, p2

    #@1d
    .line 289
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@20
    move-result-object p1

    #@21
    goto :goto_26

    #@22
    .line 291
    :cond_22
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@25
    move-result-object p1

    #@26
    .line 293
    :goto_26
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@28
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    return-void
.end method

.method private putUInt64(Ljava/lang/String;J)V
    .registers 5

    #@0
    .line 275
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@5
    move-result p1

    #@6
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    return-void
.end method

.method static widthUInBits(J)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    .line 372
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    #@4
    move-result v1

    #@5
    int-to-long v1, v1

    #@6
    cmp-long v1, p0, v1

    #@8
    if-gtz v1, :cond_c

    #@a
    const/4 p0, 0x0

    #@b
    return p0

    #@c
    .line 373
    :cond_c
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    #@f
    move-result v1

    #@10
    int-to-long v1, v1

    #@11
    cmp-long v1, p0, v1

    #@13
    if-gtz v1, :cond_17

    #@15
    const/4 p0, 0x1

    #@16
    return p0

    #@17
    .line 374
    :cond_17
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    #@1a
    move-result-wide v0

    #@1b
    cmp-long p0, p0, v0

    #@1d
    if-gtz p0, :cond_21

    #@1f
    const/4 p0, 0x2

    #@20
    return p0

    #@21
    :cond_21
    const/4 p0, 0x3

    #@22
    return p0
.end method

.method private writeAny(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)V
    .registers 5

    #@0
    .line 558
    iget v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    #@2
    if-eqz v0, :cond_1d

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_1d

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_1d

    #@a
    const/4 v1, 0x3

    #@b
    if-eq v0, v1, :cond_17

    #@d
    const/16 v1, 0x1a

    #@f
    if-eq v0, v1, :cond_1d

    #@11
    .line 569
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@13
    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeOffset(JI)V

    #@16
    goto :goto_22

    #@17
    .line 566
    :cond_17
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    #@19
    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeDouble(DI)V

    #@1c
    goto :goto_22

    #@1d
    .line 563
    :cond_1d
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@1f
    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    #@22
    :goto_22
    return-void
.end method

.method private writeBlob(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 10

    #@0
    .line 379
    array-length v0, p2

    #@1
    int-to-long v0, v0

    #@2
    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    #@5
    move-result v0

    #@6
    .line 380
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    #@9
    move-result v1

    #@a
    .line 381
    array-length v2, p2

    #@b
    int-to-long v2, v2

    #@c
    invoke-direct {p0, v2, v3, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    #@f
    .line 382
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@11
    invoke-interface {v1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@14
    move-result v1

    #@15
    .line 383
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@17
    array-length v3, p2

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, p2, v4, v3}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put([BII)V

    #@1c
    if-eqz p4, :cond_23

    #@1e
    .line 385
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@20
    invoke-interface {p2, v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@23
    .line 387
    :cond_23
    invoke-static {p1, v1, p3, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@26
    move-result-object p1

    #@27
    return-object p1
.end method

.method private writeDouble(DI)V
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p3, v0, :cond_a

    #@3
    .line 576
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@5
    double-to-float p1, p1

    #@6
    invoke-interface {p3, p1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putFloat(F)V

    #@9
    goto :goto_13

    #@a
    :cond_a
    const/16 v0, 0x8

    #@c
    if-ne p3, v0, :cond_13

    #@e
    .line 578
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@10
    invoke-interface {p3, p1, p2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putDouble(D)V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method private writeInt(JI)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p3, v0, :cond_23

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p3, v0, :cond_1b

    #@6
    const/4 v0, 0x4

    #@7
    if-eq p3, v0, :cond_14

    #@9
    const/16 v0, 0x8

    #@b
    if-eq p3, v0, :cond_e

    #@d
    goto :goto_2a

    #@e
    .line 405
    :cond_e
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@10
    invoke-interface {p3, p1, p2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putLong(J)V

    #@13
    goto :goto_2a

    #@14
    .line 404
    :cond_14
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@16
    long-to-int p1, p1

    #@17
    invoke-interface {p3, p1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putInt(I)V

    #@1a
    goto :goto_2a

    #@1b
    .line 403
    :cond_1b
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@1d
    long-to-int p1, p1

    #@1e
    int-to-short p1, p1

    #@1f
    invoke-interface {p3, p1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putShort(S)V

    #@22
    goto :goto_2a

    #@23
    .line 402
    :cond_23
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@25
    long-to-int p1, p1

    #@26
    int-to-byte p1, p1

    #@27
    invoke-interface {p3, p1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@2a
    :goto_2a
    return-void
.end method

.method private writeOffset(JI)V
    .registers 6

    #@0
    .line 552
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@2
    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    sub-long/2addr v0, p1

    #@8
    long-to-int p1, v0

    #@9
    int-to-long p1, p1

    #@a
    .line 554
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    #@d
    return-void
.end method

.method private writeString(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 5

    #@0
    .line 367
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@5
    move-result-object p2

    #@6
    const/4 v0, 0x5

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeBlob(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method


# virtual methods
.method public endMap(Ljava/lang/String;I)I
    .registers 10

    #@0
    .line 598
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    .line 600
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@d
    move-result-object p1

    #@e
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyComparator:Ljava/util/Comparator;

    #@10
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@13
    .line 602
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@18
    move-result p1

    #@19
    sub-int/2addr p1, p2

    #@1a
    invoke-direct {p0, p2, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->createKeyVector(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@1d
    move-result-object v6

    #@1e
    .line 603
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@23
    move-result p1

    #@24
    sub-int v3, p1, p2

    #@26
    const/4 v4, 0x0

    #@27
    const/4 v5, 0x0

    #@28
    move-object v0, p0

    #@29
    move v2, p2

    #@2a
    invoke-direct/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->createVector(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2d
    move-result-object p1

    #@2e
    .line 605
    :goto_2e
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v0

    #@34
    if-le v0, p2, :cond_42

    #@36
    .line 606
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v1

    #@3c
    add-int/lit8 v1, v1, -0x1

    #@3e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@41
    goto :goto_2e

    #@42
    .line 608
    :cond_42
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@44
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    .line 609
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@49
    long-to-int p1, p1

    #@4a
    return p1
.end method

.method public endVector(Ljava/lang/String;IZZ)I
    .registers 12

    #@0
    .line 449
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    .line 450
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result p1

    #@a
    sub-int v3, p1, p2

    #@c
    const/4 v6, 0x0

    #@d
    move-object v0, p0

    #@e
    move v2, p2

    #@f
    move v4, p3

    #@10
    move v5, p4

    #@11
    invoke-direct/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->createVector(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@14
    move-result-object p1

    #@15
    .line 452
    :goto_15
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@17
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result p3

    #@1b
    if-le p3, p2, :cond_29

    #@1d
    .line 453
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@22
    move-result p4

    #@23
    add-int/lit8 p4, p4, -0x1

    #@25
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@28
    goto :goto_15

    #@29
    .line 455
    :cond_29
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 456
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@30
    long-to-int p1, p1

    #@31
    return p1
.end method

.method public finish()Ljava/nio/ByteBuffer;
    .registers 5

    #@0
    .line 472
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@9
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@b
    invoke-interface {v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@e
    move-result v2

    #@f
    # invokes: Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I
    invoke-static {v0, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I

    #@12
    move-result v0

    #@13
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    #@16
    move-result v0

    #@17
    .line 473
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@1f
    invoke-direct {p0, v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeAny(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)V

    #@22
    .line 475
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@24
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2c
    # invokes: Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType()B
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$300(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B

    #@2f
    move-result v3

    #@30
    invoke-interface {v2, v3}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@33
    .line 477
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@35
    int-to-byte v0, v0

    #@36
    invoke-interface {v2, v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    #@39
    const/4 v0, 0x1

    #@3a
    .line 478
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->finished:Z

    #@3c
    .line 479
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@3e
    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->data()[B

    #@41
    move-result-object v0

    #@42
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@44
    invoke-interface {v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    #@47
    move-result v2

    #@48
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

.method public getBuffer()Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;
    .registers 2

    #@0
    .line 162
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    #@2
    return-object v0
.end method

.method public putBlob(Ljava/lang/String;[B)I
    .registers 5

    #@0
    .line 425
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    const/16 v0, 0x19

    #@6
    const/4 v1, 0x0

    #@7
    .line 426
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeBlob(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@a
    move-result-object p1

    #@b
    .line 427
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@d
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 428
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@12
    long-to-int p1, p1

    #@13
    return p1
.end method

.method public putBlob([B)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 415
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBlob(Ljava/lang/String;[B)I

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4

    #@0
    .line 179
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@5
    move-result p1

    #@6
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->bool(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    return-void
.end method

.method public putBoolean(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 170
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBoolean(Ljava/lang/String;Z)V

    #@4
    return-void
.end method

.method public putFloat(D)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 318
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;D)V

    #@4
    return-void
.end method

.method public putFloat(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 301
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;F)V

    #@4
    return-void
.end method

.method public putFloat(Ljava/lang/String;D)V
    .registers 5

    #@0
    .line 327
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@5
    move-result p1

    #@6
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->float64(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4

    #@0
    .line 310
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@5
    move-result p1

    #@6
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->float32(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    return-void
.end method

.method public putInt(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 211
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;I)V

    #@4
    return-void
.end method

.method public putInt(J)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 246
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    #@4
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5

    #@0
    int-to-long v0, p2

    #@1
    .line 220
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    #@4
    return-void
.end method

.method public putInt(Ljava/lang/String;J)V
    .registers 6

    #@0
    .line 229
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    const-wide/16 v0, -0x80

    #@6
    cmp-long v0, v0, p2

    #@8
    if-gtz v0, :cond_1b

    #@a
    const-wide/16 v0, 0x7f

    #@c
    cmp-long v0, p2, v0

    #@e
    if-gtz v0, :cond_1b

    #@10
    .line 231
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@12
    long-to-int p2, p2

    #@13
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_54

    #@1b
    :cond_1b
    const-wide/16 v0, -0x8000

    #@1d
    cmp-long v0, v0, p2

    #@1f
    if-gtz v0, :cond_32

    #@21
    const-wide/16 v0, 0x7fff

    #@23
    cmp-long v0, p2, v0

    #@25
    if-gtz v0, :cond_32

    #@27
    .line 233
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@29
    long-to-int p2, p2

    #@2a
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_54

    #@32
    :cond_32
    const-wide/32 v0, -0x80000000

    #@35
    cmp-long v0, v0, p2

    #@37
    if-gtz v0, :cond_4b

    #@39
    const-wide/32 v0, 0x7fffffff

    #@3c
    cmp-long v0, p2, v0

    #@3e
    if-gtz v0, :cond_4b

    #@40
    .line 235
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@42
    long-to-int p2, p2

    #@43
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@46
    move-result-object p1

    #@47
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_54

    #@4b
    .line 237
    :cond_4b
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@4d
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@50
    move-result-object p1

    #@51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    :goto_54
    return-void
.end method

.method public putString(Ljava/lang/String;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 336
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)I

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    #@0
    .line 346
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    .line 347
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->flags:I

    #@6
    and-int/lit8 v0, v0, 0x2

    #@8
    if-eqz v0, :cond_49

    #@a
    .line 348
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/Integer;

    #@12
    if-nez v0, :cond_2d

    #@14
    .line 350
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeString(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@17
    move-result-object p1

    #@18
    .line 351
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    #@1a
    iget-wide v1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@1c
    long-to-int v1, v1

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 352
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@26
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 353
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@2b
    long-to-int p1, p1

    #@2c
    return p1

    #@2d
    .line 355
    :cond_2d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@30
    move-result p2

    #@31
    int-to-long v1, p2

    #@32
    invoke-static {v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    #@35
    move-result p2

    #@36
    .line 356
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3b
    move-result v2

    #@3c
    const/4 v3, 0x5

    #@3d
    invoke-static {p1, v2, v3, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@40
    move-result-object p1

    #@41
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    .line 357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@47
    move-result p1

    #@48
    return p1

    #@49
    .line 360
    :cond_49
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeString(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@4c
    move-result-object p1

    #@4d
    .line 361
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 362
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@54
    long-to-int p1, p1

    #@55
    return p1
.end method

.method public putUInt(I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    int-to-long v1, p1

    #@2
    .line 254
    invoke-direct {p0, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putUInt(Ljava/lang/String;J)V

    #@5
    return-void
.end method

.method public putUInt(J)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 262
    invoke-direct {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putUInt(Ljava/lang/String;J)V

    #@4
    return-void
.end method

.method public putUInt64(Ljava/math/BigInteger;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 271
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    #@4
    move-result-wide v1

    #@5
    invoke-direct {p0, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putUInt64(Ljava/lang/String;J)V

    #@8
    return-void
.end method

.method public startMap()I
    .registers 2

    #@0
    .line 588
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startVector()I
    .registers 2

    #@0
    .line 437
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
