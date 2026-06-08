.class public Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;
.super Ljava/lang/Object;
.source "ArrayReadWriteBuf.java"

# interfaces
.implements Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;


# instance fields
.field private buffer:[B

.field private writePos:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0xa

    #@2
    .line 20
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 24
    new-array p1, p1, [B

    #@2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    #@5
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    #@0
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@5
    const/4 p1, 0x0

    #@6
    .line 29
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@8
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@5
    .line 34
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    return-void
.end method


# virtual methods
.method public data()[B
    .registers 2

    #@0
    .line 89
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    return-object v0
.end method

.method public get(I)B
    .registers 3

    #@0
    .line 44
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    aget-byte p1, v0, p1

    #@4
    return p1
.end method

.method public getBoolean(I)Z
    .registers 3

    #@0
    .line 39
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    aget-byte p1, v0, p1

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public getDouble(I)D
    .registers 4

    #@0
    .line 79
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getLong(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getFloat(I)F
    .registers 2

    #@0
    .line 74
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getInt(I)I

    #@3
    move-result p1

    #@4
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getInt(I)I
    .registers 5

    #@0
    .line 54
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    add-int/lit8 v1, p1, 0x3

    #@4
    aget-byte v1, v0, v1

    #@6
    shl-int/lit8 v1, v1, 0x18

    #@8
    add-int/lit8 v2, p1, 0x2

    #@a
    aget-byte v2, v0, v2

    #@c
    and-int/lit16 v2, v2, 0xff

    #@e
    shl-int/lit8 v2, v2, 0x10

    #@10
    or-int/2addr v1, v2

    #@11
    add-int/lit8 v2, p1, 0x1

    #@13
    aget-byte v2, v0, v2

    #@15
    and-int/lit16 v2, v2, 0xff

    #@17
    shl-int/lit8 v2, v2, 0x8

    #@19
    or-int/2addr v1, v2

    #@1a
    aget-byte p1, v0, p1

    #@1c
    and-int/lit16 p1, p1, 0xff

    #@1e
    or-int/2addr p1, v1

    #@1f
    return p1
.end method

.method public getLong(I)J
    .registers 10

    #@0
    .line 62
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    aget-byte p1, v0, p1

    #@6
    int-to-long v2, p1

    #@7
    const-wide/16 v4, 0xff

    #@9
    and-long/2addr v2, v4

    #@a
    add-int/lit8 p1, v1, 0x1

    #@c
    aget-byte v1, v0, v1

    #@e
    int-to-long v6, v1

    #@f
    and-long/2addr v6, v4

    #@10
    const/16 v1, 0x8

    #@12
    shl-long/2addr v6, v1

    #@13
    or-long v1, v2, v6

    #@15
    add-int/lit8 v3, p1, 0x1

    #@17
    aget-byte p1, v0, p1

    #@19
    int-to-long v6, p1

    #@1a
    and-long/2addr v6, v4

    #@1b
    const/16 p1, 0x10

    #@1d
    shl-long/2addr v6, p1

    #@1e
    or-long/2addr v1, v6

    #@1f
    add-int/lit8 p1, v3, 0x1

    #@21
    aget-byte v3, v0, v3

    #@23
    int-to-long v6, v3

    #@24
    and-long/2addr v6, v4

    #@25
    const/16 v3, 0x18

    #@27
    shl-long/2addr v6, v3

    #@28
    or-long/2addr v1, v6

    #@29
    add-int/lit8 v3, p1, 0x1

    #@2b
    aget-byte p1, v0, p1

    #@2d
    int-to-long v6, p1

    #@2e
    and-long/2addr v6, v4

    #@2f
    const/16 p1, 0x20

    #@31
    shl-long/2addr v6, p1

    #@32
    or-long/2addr v1, v6

    #@33
    add-int/lit8 p1, v3, 0x1

    #@35
    aget-byte v3, v0, v3

    #@37
    int-to-long v6, v3

    #@38
    and-long/2addr v6, v4

    #@39
    const/16 v3, 0x28

    #@3b
    shl-long/2addr v6, v3

    #@3c
    or-long/2addr v1, v6

    #@3d
    add-int/lit8 v3, p1, 0x1

    #@3f
    aget-byte p1, v0, p1

    #@41
    int-to-long v6, p1

    #@42
    and-long/2addr v4, v6

    #@43
    const/16 p1, 0x30

    #@45
    shl-long/2addr v4, p1

    #@46
    or-long/2addr v1, v4

    #@47
    aget-byte p1, v0, v3

    #@49
    int-to-long v3, p1

    #@4a
    const/16 p1, 0x38

    #@4c
    shl-long/2addr v3, p1

    #@4d
    or-long v0, v1, v3

    #@4f
    return-wide v0
.end method

.method public getShort(I)S
    .registers 4

    #@0
    .line 49
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    aget-byte v1, v0, v1

    #@6
    shl-int/lit8 v1, v1, 0x8

    #@8
    aget-byte p1, v0, p1

    #@a
    and-int/lit16 p1, p1, 0xff

    #@c
    or-int/2addr p1, v1

    #@d
    int-to-short p1, p1

    #@e
    return p1
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4

    #@0
    .line 84
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    invoke-static {v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Array([BII)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public limit()I
    .registers 2

    #@0
    .line 222
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    return v0
.end method

.method public put(B)V
    .registers 3

    #@0
    .line 107
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(IB)V

    #@5
    .line 108
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/lit8 p1, p1, 0x1

    #@9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@b
    return-void
.end method

.method public put([BII)V
    .registers 5

    #@0
    .line 101
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(I[BII)V

    #@5
    .line 102
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/2addr p1, p3

    #@8
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@a
    return-void
.end method

.method public putBoolean(Z)V
    .registers 3

    #@0
    .line 95
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setBoolean(IZ)V

    #@5
    .line 96
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/lit8 p1, p1, 0x1

    #@9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@b
    return-void
.end method

.method public putDouble(D)V
    .registers 4

    #@0
    .line 137
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setDouble(ID)V

    #@5
    .line 138
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/lit8 p1, p1, 0x8

    #@9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@b
    return-void
.end method

.method public putFloat(F)V
    .registers 3

    #@0
    .line 131
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setFloat(IF)V

    #@5
    .line 132
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/lit8 p1, p1, 0x4

    #@9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@b
    return-void
.end method

.method public putInt(I)V
    .registers 3

    #@0
    .line 119
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setInt(II)V

    #@5
    .line 120
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/lit8 p1, p1, 0x4

    #@9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@b
    return-void
.end method

.method public putLong(J)V
    .registers 4

    #@0
    .line 125
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setLong(IJ)V

    #@5
    .line 126
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/lit8 p1, p1, 0x8

    #@9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@b
    return-void
.end method

.method public putShort(S)V
    .registers 3

    #@0
    .line 113
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setShort(IS)V

    #@5
    .line 114
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@7
    add-int/lit8 p1, p1, 0x2

    #@9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@b
    return-void
.end method

.method public requestCapacity(I)Z
    .registers 5

    #@0
    .line 232
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x1

    #@4
    if-le v1, p1, :cond_7

    #@6
    return v2

    #@7
    .line 236
    :cond_7
    array-length p1, v0

    #@8
    shr-int/lit8 v1, p1, 0x1

    #@a
    add-int/2addr p1, v1

    #@b
    .line 238
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@11
    return v2
.end method

.method public set(IB)V
    .registers 4

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 148
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    #@5
    .line 149
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@7
    aput-byte p2, v0, p1

    #@9
    return-void
.end method

.method public set(I[BII)V
    .registers 6

    #@0
    sub-int v0, p4, p3

    #@2
    add-int/2addr v0, p1

    #@3
    .line 154
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    #@6
    .line 155
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@8
    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    return-void
.end method

.method public setBoolean(IZ)V
    .registers 3

    #@0
    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(IB)V

    #@3
    return-void
.end method

.method public setDouble(ID)V
    .registers 8

    #@0
    add-int/lit8 v0, p1, 0x8

    #@2
    .line 205
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    #@5
    .line 207
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@8
    move-result-wide p2

    #@9
    long-to-int v0, p2

    #@a
    .line 209
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@c
    add-int/lit8 v2, p1, 0x1

    #@e
    and-int/lit16 v3, v0, 0xff

    #@10
    int-to-byte v3, v3

    #@11
    aput-byte v3, v1, p1

    #@13
    add-int/lit8 p1, v2, 0x1

    #@15
    shr-int/lit8 v3, v0, 0x8

    #@17
    and-int/lit16 v3, v3, 0xff

    #@19
    int-to-byte v3, v3

    #@1a
    .line 210
    aput-byte v3, v1, v2

    #@1c
    add-int/lit8 v2, p1, 0x1

    #@1e
    shr-int/lit8 v3, v0, 0x10

    #@20
    and-int/lit16 v3, v3, 0xff

    #@22
    int-to-byte v3, v3

    #@23
    .line 211
    aput-byte v3, v1, p1

    #@25
    add-int/lit8 p1, v2, 0x1

    #@27
    shr-int/lit8 v0, v0, 0x18

    #@29
    and-int/lit16 v0, v0, 0xff

    #@2b
    int-to-byte v0, v0

    #@2c
    .line 212
    aput-byte v0, v1, v2

    #@2e
    const/16 v0, 0x20

    #@30
    shr-long/2addr p2, v0

    #@31
    long-to-int p2, p2

    #@32
    add-int/lit8 p3, p1, 0x1

    #@34
    and-int/lit16 v0, p2, 0xff

    #@36
    int-to-byte v0, v0

    #@37
    .line 214
    aput-byte v0, v1, p1

    #@39
    add-int/lit8 p1, p3, 0x1

    #@3b
    shr-int/lit8 v0, p2, 0x8

    #@3d
    and-int/lit16 v0, v0, 0xff

    #@3f
    int-to-byte v0, v0

    #@40
    .line 215
    aput-byte v0, v1, p3

    #@42
    add-int/lit8 p3, p1, 0x1

    #@44
    shr-int/lit8 v0, p2, 0x10

    #@46
    and-int/lit16 v0, v0, 0xff

    #@48
    int-to-byte v0, v0

    #@49
    .line 216
    aput-byte v0, v1, p1

    #@4b
    shr-int/lit8 p1, p2, 0x18

    #@4d
    and-int/lit16 p1, p1, 0xff

    #@4f
    int-to-byte p1, p1

    #@50
    .line 217
    aput-byte p1, v1, p3

    #@52
    return-void
.end method

.method public setFloat(IF)V
    .registers 6

    #@0
    add-int/lit8 v0, p1, 0x4

    #@2
    .line 194
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    #@5
    .line 196
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@8
    move-result p2

    #@9
    .line 197
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@b
    add-int/lit8 v1, p1, 0x1

    #@d
    and-int/lit16 v2, p2, 0xff

    #@f
    int-to-byte v2, v2

    #@10
    aput-byte v2, v0, p1

    #@12
    add-int/lit8 p1, v1, 0x1

    #@14
    shr-int/lit8 v2, p2, 0x8

    #@16
    and-int/lit16 v2, v2, 0xff

    #@18
    int-to-byte v2, v2

    #@19
    .line 198
    aput-byte v2, v0, v1

    #@1b
    add-int/lit8 v1, p1, 0x1

    #@1d
    shr-int/lit8 v2, p2, 0x10

    #@1f
    and-int/lit16 v2, v2, 0xff

    #@21
    int-to-byte v2, v2

    #@22
    .line 199
    aput-byte v2, v0, p1

    #@24
    shr-int/lit8 p1, p2, 0x18

    #@26
    and-int/lit16 p1, p1, 0xff

    #@28
    int-to-byte p1, p1

    #@29
    .line 200
    aput-byte p1, v0, v1

    #@2b
    return-void
.end method

.method public setInt(II)V
    .registers 6

    #@0
    add-int/lit8 v0, p1, 0x4

    #@2
    .line 168
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    #@5
    .line 170
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@7
    add-int/lit8 v1, p1, 0x1

    #@9
    and-int/lit16 v2, p2, 0xff

    #@b
    int-to-byte v2, v2

    #@c
    aput-byte v2, v0, p1

    #@e
    add-int/lit8 p1, v1, 0x1

    #@10
    shr-int/lit8 v2, p2, 0x8

    #@12
    and-int/lit16 v2, v2, 0xff

    #@14
    int-to-byte v2, v2

    #@15
    .line 171
    aput-byte v2, v0, v1

    #@17
    add-int/lit8 v1, p1, 0x1

    #@19
    shr-int/lit8 v2, p2, 0x10

    #@1b
    and-int/lit16 v2, v2, 0xff

    #@1d
    int-to-byte v2, v2

    #@1e
    .line 172
    aput-byte v2, v0, p1

    #@20
    shr-int/lit8 p1, p2, 0x18

    #@22
    and-int/lit16 p1, p1, 0xff

    #@24
    int-to-byte p1, p1

    #@25
    .line 173
    aput-byte p1, v0, v1

    #@27
    return-void
.end method

.method public setLong(IJ)V
    .registers 8

    #@0
    add-int/lit8 v0, p1, 0x8

    #@2
    .line 178
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    #@5
    long-to-int v0, p2

    #@6
    .line 181
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@8
    add-int/lit8 v2, p1, 0x1

    #@a
    and-int/lit16 v3, v0, 0xff

    #@c
    int-to-byte v3, v3

    #@d
    aput-byte v3, v1, p1

    #@f
    add-int/lit8 p1, v2, 0x1

    #@11
    shr-int/lit8 v3, v0, 0x8

    #@13
    and-int/lit16 v3, v3, 0xff

    #@15
    int-to-byte v3, v3

    #@16
    .line 182
    aput-byte v3, v1, v2

    #@18
    add-int/lit8 v2, p1, 0x1

    #@1a
    shr-int/lit8 v3, v0, 0x10

    #@1c
    and-int/lit16 v3, v3, 0xff

    #@1e
    int-to-byte v3, v3

    #@1f
    .line 183
    aput-byte v3, v1, p1

    #@21
    add-int/lit8 p1, v2, 0x1

    #@23
    shr-int/lit8 v0, v0, 0x18

    #@25
    and-int/lit16 v0, v0, 0xff

    #@27
    int-to-byte v0, v0

    #@28
    .line 184
    aput-byte v0, v1, v2

    #@2a
    const/16 v0, 0x20

    #@2c
    shr-long/2addr p2, v0

    #@2d
    long-to-int p2, p2

    #@2e
    add-int/lit8 p3, p1, 0x1

    #@30
    and-int/lit16 v0, p2, 0xff

    #@32
    int-to-byte v0, v0

    #@33
    .line 186
    aput-byte v0, v1, p1

    #@35
    add-int/lit8 p1, p3, 0x1

    #@37
    shr-int/lit8 v0, p2, 0x8

    #@39
    and-int/lit16 v0, v0, 0xff

    #@3b
    int-to-byte v0, v0

    #@3c
    .line 187
    aput-byte v0, v1, p3

    #@3e
    add-int/lit8 p3, p1, 0x1

    #@40
    shr-int/lit8 v0, p2, 0x10

    #@42
    and-int/lit16 v0, v0, 0xff

    #@44
    int-to-byte v0, v0

    #@45
    .line 188
    aput-byte v0, v1, p1

    #@47
    shr-int/lit8 p1, p2, 0x18

    #@49
    and-int/lit16 p1, p1, 0xff

    #@4b
    int-to-byte p1, p1

    #@4c
    .line 189
    aput-byte p1, v1, p3

    #@4e
    return-void
.end method

.method public setShort(IS)V
    .registers 6

    #@0
    add-int/lit8 v0, p1, 0x2

    #@2
    .line 160
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    #@5
    .line 162
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    #@7
    add-int/lit8 v1, p1, 0x1

    #@9
    and-int/lit16 v2, p2, 0xff

    #@b
    int-to-byte v2, v2

    #@c
    aput-byte v2, v0, p1

    #@e
    shr-int/lit8 p1, p2, 0x8

    #@10
    and-int/lit16 p1, p1, 0xff

    #@12
    int-to-byte p1, p1

    #@13
    .line 163
    aput-byte p1, v0, v1

    #@15
    return-void
.end method

.method public writePosition()I
    .registers 2

    #@0
    .line 227
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    #@2
    return v0
.end method
