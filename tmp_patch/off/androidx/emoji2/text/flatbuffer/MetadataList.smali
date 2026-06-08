.class public final Landroidx/emoji2/text/flatbuffer/MetadataList;
.super Landroidx/emoji2/text/flatbuffer/Table;
.source "MetadataList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
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
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__indirect(ILjava/nio/ByteBuffer;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static addList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 58
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(III)V

    #@5
    return-void
.end method

.method public static addSourceSha(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(III)V

    #@5
    return-void
.end method

.method public static addVersion(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 57
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(III)V

    #@4
    return-void
.end method

.method public static createListVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;[I)I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 59
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
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

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

.method public static createMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;III)I
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    .line 49
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    #@4
    .line 50
    invoke-static {p0, p3}, Landroidx/emoji2/text/flatbuffer/MetadataList;->addSourceSha(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    #@7
    .line 51
    invoke-static {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->addList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    #@a
    .line 52
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->addVersion(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    #@d
    .line 53
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->endMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I

    #@10
    move-result p0

    #@11
    return p0
.end method

.method public static endMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I
    .registers 1

    #@0
    .line 63
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endTable()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static finishMetadataListBuffer(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 2

    #@0
    .line 66
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(I)V

    #@3
    return-void
.end method

.method public static finishSizePrefixedMetadataListBuffer(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 2

    #@0
    .line 67
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finishSizePrefixed(I)V

    #@3
    return-void
.end method

.method public static getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 2

    #@0
    .line 30
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    #@5
    invoke-static {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataList;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getRootAsMetadataList(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataList;)Landroidx/emoji2/text/flatbuffer/MetadataList;
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
    invoke-virtual {p1, v0, p0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@15
    move-result-object p0

    #@16
    return-object p0
.end method

.method public static startListVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    .line 60
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@4
    return-void
.end method

.method public static startMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)V
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    .line 56
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    #@4
    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 3

    #@0
    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__init(ILjava/nio/ByteBuffer;)V

    #@3
    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    #@0
    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__reset(ILjava/nio/ByteBuffer;)V

    #@3
    return-void
.end method

.method public list(I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 3

    #@0
    .line 36
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    #@5
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 4

    #@0
    const/4 v0, 0x6

    #@1
    .line 37
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_19

    #@7
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector(I)I

    #@a
    move-result v0

    #@b
    mul-int/lit8 p2, p2, 0x4

    #@d
    add-int/2addr v0, p2

    #@e
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__indirect(I)I

    #@11
    move-result p2

    #@12
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb:Ljava/nio/ByteBuffer;

    #@14
    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@17
    move-result-object p1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    :goto_1a
    return-object p1
.end method

.method public listLength()I
    .registers 2

    #@0
    const/4 v0, 0x6

    #@1
    .line 38
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector_len(I)I

    #@a
    move-result v0

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public listVector()Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    .registers 2

    #@0
    .line 39
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listVector(Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public listVector(Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    .registers 5

    #@0
    const/4 v0, 0x6

    #@1
    .line 40
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_13

    #@7
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector(I)I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x4

    #@c
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb:Ljava/nio/ByteBuffer;

    #@e
    invoke-virtual {p1, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->__assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;

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

.method public sourceSha()Ljava/lang/String;
    .registers 3

    #@0
    const/16 v0, 0x8

    #@2
    .line 41
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb_pos:I

    #@a
    add-int/2addr v0, v1

    #@b
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__string(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return-object v0
.end method

.method public sourceShaAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    #@0
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    .line 42
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public sourceShaInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public version()I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 35
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_11

    #@7
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb:Ljava/nio/ByteBuffer;

    #@9
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb_pos:I

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
