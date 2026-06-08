.class public final Landroidx/emoji2/text/flatbuffer/MetadataItem;
.super Landroidx/emoji2/text/flatbuffer/Table;
.source "MetadataItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 28
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Table;-><init>()V

    #@3
    return-void
.end method

.method public static ValidateVersion()V
    .registers 0

    #@0
    .line 29
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Constants;->FLATBUFFERS_1_12_0()V

    #@3
    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .registers 2

    #@0
    .line 28
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__indirect(ILjava/nio/ByteBuffer;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static addCodepoints(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 4

    #@0
    const/4 v0, 0x6

    #@1
    const/4 v1, 0x0

    #@2
    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(III)V

    #@5
    return-void
.end method

.method public static addCompatAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    .line 71
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    #@5
    return-void
.end method

.method public static addEmojiStyle(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;Z)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addBoolean(IZZ)V

    #@5
    return-void
.end method

.method public static addHeight(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    const/4 v1, 0x0

    #@2
    .line 73
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    #@5
    return-void
.end method

.method public static addId(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 68
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(III)V

    #@4
    return-void
.end method

.method public static addSdkAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    #@5
    return-void
.end method

.method public static addWidth(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    .line 72
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    #@5
    return-void
.end method

.method public static createCodepointsVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;[I)I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 75
    array-length v1, p1

    #@2
    invoke-virtual {p0, v0, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@5
    array-length v0, p1

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_12

    #@a
    aget v1, p1, v0

    #@c
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static createMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;IZSSSSI)I
    .registers 9

    #@0
    const/4 v0, 0x7

    #@1
    .line 56
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    #@4
    .line 57
    invoke-static {p0, p7}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addCodepoints(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    #@7
    .line 58
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addId(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    #@a
    .line 59
    invoke-static {p0, p6}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addHeight(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    #@d
    .line 60
    invoke-static {p0, p5}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addWidth(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    #@10
    .line 61
    invoke-static {p0, p4}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addCompatAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    #@13
    .line 62
    invoke-static {p0, p3}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addSdkAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    #@16
    .line 63
    invoke-static {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addEmojiStyle(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;Z)V

    #@19
    .line 64
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->endMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I

    #@1c
    move-result p0

    #@1d
    return p0
.end method

.method public static endMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I
    .registers 1

    #@0
    .line 78
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endTable()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getRootAsMetadataItem(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 2

    #@0
    .line 30
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    #@5
    invoke-static {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->getRootAsMetadataItem(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataItem;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getRootAsMetadataItem(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataItem;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 4

    #@0
    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    invoke-virtual {p1, v0, p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@15
    move-result-object p0

    #@16
    return-object p0
.end method

.method public static startCodepointsVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    .line 76
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@4
    return-void
.end method

.method public static startMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)V
    .registers 2

    #@0
    const/4 v0, 0x7

    #@1
    .line 67
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    #@4
    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 3

    #@0
    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__init(ILjava/nio/ByteBuffer;)V

    #@3
    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    #@0
    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__reset(ILjava/nio/ByteBuffer;)V

    #@3
    return-void
.end method

.method public codepoints(I)I
    .registers 4

    #@0
    const/16 v0, 0x10

    #@2
    .line 41
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_16

    #@8
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@a
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector(I)I

    #@d
    move-result v0

    #@e
    mul-int/lit8 p1, p1, 0x4

    #@10
    add-int/2addr v0, p1

    #@11
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@14
    move-result p1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    :goto_17
    return p1
.end method

.method public codepointsAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    #@0
    const/16 v0, 0x10

    #@2
    const/4 v1, 0x4

    #@3
    .line 45
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public codepointsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4

    #@0
    const/16 v0, 0x10

    #@2
    const/4 v1, 0x4

    #@3
    .line 46
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public codepointsLength()I
    .registers 2

    #@0
    const/16 v0, 0x10

    #@2
    .line 42
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_len(I)I

    #@b
    move-result v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method public codepointsVector()Landroidx/emoji2/text/flatbuffer/IntVector;
    .registers 2

    #@0
    .line 43
    new-instance v0, Landroidx/emoji2/text/flatbuffer/IntVector;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/IntVector;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsVector(Landroidx/emoji2/text/flatbuffer/IntVector;)Landroidx/emoji2/text/flatbuffer/IntVector;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public codepointsVector(Landroidx/emoji2/text/flatbuffer/IntVector;)Landroidx/emoji2/text/flatbuffer/IntVector;
    .registers 4

    #@0
    const/16 v0, 0x10

    #@2
    .line 44
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_13

    #@8
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector(I)I

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@e
    invoke-virtual {p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/IntVector;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/IntVector;

    #@11
    move-result-object p1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    :goto_14
    return-object p1
.end method

.method public compatAdded()S
    .registers 4

    #@0
    const/16 v0, 0xa

    #@2
    .line 38
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@a
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    #@c
    add-int/2addr v0, v2

    #@d
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@10
    move-result v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method public emojiStyle()Z
    .registers 5

    #@0
    const/4 v0, 0x6

    #@1
    .line 36
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz v0, :cond_14

    #@8
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@a
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    #@c
    add-int/2addr v0, v3

    #@d
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_14

    #@13
    const/4 v1, 0x1

    #@14
    :cond_14
    return v1
.end method

.method public height()S
    .registers 4

    #@0
    const/16 v0, 0xe

    #@2
    .line 40
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@a
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    #@c
    add-int/2addr v0, v2

    #@d
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@10
    move-result v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method public id()I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 35
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_11

    #@7
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@9
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    #@b
    add-int/2addr v0, v2

    #@c
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@f
    move-result v0

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0
.end method

.method public sdkAdded()S
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    .line 37
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@a
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    #@c
    add-int/2addr v0, v2

    #@d
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@10
    move-result v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method public width()S
    .registers 4

    #@0
    const/16 v0, 0xc

    #@2
    .line 39
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    #@a
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    #@c
    add-int/2addr v0, v2

    #@d
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@10
    move-result v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method
