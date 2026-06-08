.class public Landroidx/emoji2/text/flatbuffer/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field protected bb_pos:I

.field utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

.field private vtable_size:I

.field private vtable_start:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    #@9
    return-void
.end method

.method protected static __has_identifier(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .registers 7

    #@0
    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_22

    #@7
    const/4 v0, 0x0

    #@8
    move v2, v0

    #@9
    :goto_9
    if-ge v2, v1, :cond_20

    #@b
    .line 218
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v3

    #@f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@12
    move-result v4

    #@13
    add-int/2addr v4, v1

    #@14
    add-int/2addr v4, v2

    #@15
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@18
    move-result v4

    #@19
    int-to-char v4, v4

    #@1a
    if-eq v3, v4, :cond_1d

    #@1c
    return v0

    #@1d
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_9

    #@20
    :cond_20
    const/4 p0, 0x1

    #@21
    return p0

    #@22
    .line 215
    :cond_22
    new-instance p0, Ljava/lang/AssertionError;

    #@24
    const-string p1, "FlatBuffers: file identifier must be length 4"

    #@26
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw p0
.end method

.method protected static __indirect(ILjava/nio/ByteBuffer;)I
    .registers 2

    #@0
    .line 79
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3
    move-result p1

    #@4
    add-int/2addr p0, p1

    #@5
    return p0
.end method

.method protected static __offset(IILjava/nio/ByteBuffer;)I
    .registers 4

    #@0
    .line 57
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    #@3
    move-result v0

    #@4
    sub-int/2addr v0, p1

    #@5
    add-int/2addr p0, v0

    #@6
    .line 58
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@9
    move-result p1

    #@a
    sub-int/2addr p0, p1

    #@b
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@e
    move-result p0

    #@f
    add-int/2addr p0, v0

    #@10
    return p0
.end method

.method protected static __string(ILjava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)Ljava/lang/String;
    .registers 4

    #@0
    .line 111
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3
    move-result v0

    #@4
    add-int/2addr p0, v0

    #@5
    .line 112
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@8
    move-result v0

    #@9
    add-int/lit8 p0, p0, 0x4

    #@b
    .line 113
    invoke-virtual {p2, p1, p0, v0}, Landroidx/emoji2/text/flatbuffer/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method protected static __union(Landroidx/emoji2/text/flatbuffer/Table;ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/Table;
    .registers 3

    #@0
    .line 201
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__indirect(ILjava/nio/ByteBuffer;)I

    #@3
    move-result p1

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__reset(ILjava/nio/ByteBuffer;)V

    #@7
    return-object p0
.end method

.method protected static compareStrings(IILjava/nio/ByteBuffer;)I
    .registers 11

    #@0
    .line 257
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3
    move-result v0

    #@4
    add-int/2addr p0, v0

    #@5
    .line 258
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@8
    move-result v0

    #@9
    add-int/2addr p1, v0

    #@a
    .line 259
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@d
    move-result v0

    #@e
    .line 260
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@11
    move-result v1

    #@12
    add-int/lit8 p0, p0, 0x4

    #@14
    add-int/lit8 p1, p1, 0x4

    #@16
    .line 263
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v2

    #@1a
    const/4 v3, 0x0

    #@1b
    :goto_1b
    if-ge v3, v2, :cond_38

    #@1d
    add-int v4, v3, p0

    #@1f
    .line 265
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@22
    move-result v5

    #@23
    add-int v6, v3, p1

    #@25
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@28
    move-result v7

    #@29
    if-eq v5, v7, :cond_35

    #@2b
    .line 266
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@2e
    move-result p0

    #@2f
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@32
    move-result p1

    #@33
    sub-int/2addr p0, p1

    #@34
    return p0

    #@35
    :cond_35
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_1b

    #@38
    :cond_38
    sub-int/2addr v0, v1

    #@39
    return v0
.end method

.method protected static compareStrings(I[BLjava/nio/ByteBuffer;)I
    .registers 10

    #@0
    .line 279
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3
    move-result v0

    #@4
    add-int/2addr p0, v0

    #@5
    .line 280
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@8
    move-result v0

    #@9
    .line 281
    array-length v1, p1

    #@a
    add-int/lit8 p0, p0, 0x4

    #@c
    .line 283
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x0

    #@11
    :goto_11
    if-ge v3, v2, :cond_28

    #@13
    add-int v4, v3, p0

    #@15
    .line 285
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@18
    move-result v5

    #@19
    aget-byte v6, p1, v3

    #@1b
    if-eq v5, v6, :cond_25

    #@1d
    .line 286
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@20
    move-result p0

    #@21
    aget-byte p1, p1, v3

    #@23
    sub-int/2addr p0, p1

    #@24
    return p0

    #@25
    :cond_25
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_11

    #@28
    :cond_28
    sub-int/2addr v0, v1

    #@29
    return v0
.end method


# virtual methods
.method protected __indirect(I)I
    .registers 3

    #@0
    .line 68
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@5
    move-result v0

    #@6
    add-int/2addr p1, v0

    #@7
    return p1
.end method

.method protected __offset(I)I
    .registers 4

    #@0
    .line 53
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    #@2
    if-ge p1, v0, :cond_e

    #@4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@6
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    #@8
    add-int/2addr v1, p1

    #@9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@c
    move-result p1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method public __reset()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 318
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/Table;->__reset(ILjava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method protected __reset(ILjava/nio/ByteBuffer;)V
    .registers 3

    #@0
    .line 298
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@2
    if-eqz p2, :cond_16

    #@4
    .line 300
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    #@6
    .line 301
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@9
    move-result p2

    #@a
    sub-int/2addr p1, p2

    #@b
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    #@d
    .line 302
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@12
    move-result p1

    #@13
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    #@15
    goto :goto_1d

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    .line 304
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    #@19
    .line 305
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    #@1b
    .line 306
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    #@1d
    :goto_1d
    return-void
.end method

.method protected __string(I)Ljava/lang/String;
    .registers 4

    #@0
    .line 94
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/Table;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    #@4
    invoke-static {p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/Table;->__string(ILjava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method protected __union(Landroidx/emoji2/text/flatbuffer/Table;I)Landroidx/emoji2/text/flatbuffer/Table;
    .registers 4

    #@0
    .line 189
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-static {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/Table;->__union(Landroidx/emoji2/text/flatbuffer/Table;ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/Table;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method protected __vector(I)I
    .registers 3

    #@0
    .line 135
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    #@2
    add-int/2addr p1, v0

    #@3
    .line 136
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@8
    move-result v0

    #@9
    add-int/2addr p1, v0

    #@a
    add-int/lit8 p1, p1, 0x4

    #@c
    return p1
.end method

.method protected __vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;
    .registers 5

    #@0
    .line 151
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    #@3
    move-result p1

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 153
    :cond_8
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@d
    move-result-object v0

    #@e
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    move-result-object v0

    #@14
    .line 154
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__vector(I)I

    #@17
    move-result v1

    #@18
    .line 155
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1b
    .line 156
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__vector_len(I)I

    #@1e
    move-result p1

    #@1f
    mul-int/2addr p1, p2

    #@20
    add-int/2addr v1, p1

    #@21
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@24
    return-object v0
.end method

.method protected __vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 5

    #@0
    .line 172
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 174
    :cond_8
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__vector(I)I

    #@b
    move-result v0

    #@c
    .line 175
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@f
    .line 176
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__vector_len(I)I

    #@12
    move-result p2

    #@13
    mul-int/2addr p2, p3

    #@14
    add-int/2addr p2, v0

    #@15
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@18
    .line 177
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1b
    return-object p1
.end method

.method protected __vector_len(I)I
    .registers 3

    #@0
    .line 123
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    #@2
    add-int/2addr p1, v0

    #@3
    .line 124
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@8
    move-result v0

    #@9
    add-int/2addr p1, v0

    #@a
    .line 125
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    #@0
    .line 44
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    #@2
    return-object v0
.end method

.method protected keysCompare(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method protected sortTables([ILjava/nio/ByteBuffer;)V
    .registers 7

    #@0
    .line 230
    array-length v0, p1

    #@1
    new-array v0, v0, [Ljava/lang/Integer;

    #@3
    const/4 v1, 0x0

    #@4
    move v2, v1

    #@5
    .line 231
    :goto_5
    array-length v3, p1

    #@6
    if-ge v2, v3, :cond_13

    #@8
    aget v3, p1, v2

    #@a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    aput-object v3, v0, v2

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_5

    #@13
    .line 232
    :cond_13
    new-instance v2, Landroidx/emoji2/text/flatbuffer/Table$1;

    #@15
    invoke-direct {v2, p0, p2}, Landroidx/emoji2/text/flatbuffer/Table$1;-><init>(Landroidx/emoji2/text/flatbuffer/Table;Ljava/nio/ByteBuffer;)V

    #@18
    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1b
    .line 237
    :goto_1b
    array-length p2, p1

    #@1c
    if-ge v1, p2, :cond_29

    #@1e
    aget-object p2, v0, v1

    #@20
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result p2

    #@24
    aput p2, p1, v1

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_1b

    #@29
    :cond_29
    return-void
.end method
