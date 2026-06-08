.class public final Landroidx/emoji2/text/flatbuffer/Utf8Safe;
.super Landroidx/emoji2/text/flatbuffer/Utf8;
.source "Utf8Safe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 63
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8;-><init>()V

    #@3
    return-void
.end method

.method private static computeEncodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    #@0
    .line 75
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_12

    #@7
    .line 80
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v2

    #@b
    const/16 v3, 0x80

    #@d
    if-ge v2, v3, :cond_12

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_5

    #@12
    :cond_12
    move v2, v0

    #@13
    :goto_13
    if-ge v1, v0, :cond_2a

    #@15
    .line 86
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v3

    #@19
    const/16 v4, 0x800

    #@1b
    if-ge v3, v4, :cond_25

    #@1d
    rsub-int/lit8 v3, v3, 0x7f

    #@1f
    ushr-int/lit8 v3, v3, 0x1f

    #@21
    add-int/2addr v2, v3

    #@22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_13

    #@25
    .line 90
    :cond_25
    invoke-static {p0, v1}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    #@28
    move-result p0

    #@29
    add-int/2addr v2, p0

    #@2a
    :cond_2a
    if-lt v2, v0, :cond_2d

    #@2c
    return v2

    #@2d
    .line 97
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v0, Ljava/lang/StringBuilder;

    #@31
    const-string v1, "UTF-8 length does not fit in int: "

    #@33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    int-to-long v1, v2

    #@37
    const-wide v3, 0x100000000L

    #@3c
    add-long/2addr v1, v3

    #@3d
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw p0
.end method

.method public static decodeUtf8Array([BII)Ljava/lang/String;
    .registers 14

    #@0
    or-int v0, p1, p2

    #@2
    .line 128
    array-length v1, p0

    #@3
    sub-int/2addr v1, p1

    #@4
    sub-int/2addr v1, p2

    #@5
    or-int/2addr v0, v1

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x1

    #@8
    if-ltz v0, :cond_b3

    #@a
    add-int v0, p1, p2

    #@c
    .line 138
    new-array p2, p2, [C

    #@e
    move v3, v1

    #@f
    :goto_f
    if-ge p1, v0, :cond_23

    #@11
    .line 144
    aget-byte v4, p0, p1

    #@13
    .line 145
    invoke-static {v4}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_1a

    #@19
    goto :goto_23

    #@1a
    :cond_1a
    add-int/lit8 p1, p1, 0x1

    #@1c
    add-int/lit8 v5, v3, 0x1

    #@1e
    .line 149
    invoke-static {v4, p2, v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    #@21
    move v3, v5

    #@22
    goto :goto_f

    #@23
    :cond_23
    :goto_23
    move v8, v3

    #@24
    :goto_24
    if-ge p1, v0, :cond_ad

    #@26
    add-int/lit8 v3, p1, 0x1

    #@28
    .line 153
    aget-byte p1, p0, p1

    #@2a
    .line 154
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_4c

    #@30
    add-int/lit8 v4, v8, 0x1

    #@32
    .line 155
    invoke-static {p1, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    #@35
    :goto_35
    if-ge v3, v0, :cond_49

    #@37
    .line 159
    aget-byte p1, p0, v3

    #@39
    .line 160
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_40

    #@3f
    goto :goto_49

    #@40
    :cond_40
    add-int/lit8 v3, v3, 0x1

    #@42
    add-int/lit8 v5, v4, 0x1

    #@44
    .line 164
    invoke-static {p1, p2, v4}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    #@47
    move v4, v5

    #@48
    goto :goto_35

    #@49
    :cond_49
    :goto_49
    move p1, v3

    #@4a
    move v8, v4

    #@4b
    goto :goto_24

    #@4c
    .line 166
    :cond_4c
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isTwoBytes(B)Z

    #@4f
    move-result v4

    #@50
    const-string v5, "Invalid UTF-8"

    #@52
    if-eqz v4, :cond_68

    #@54
    if-ge v3, v0, :cond_62

    #@56
    add-int/lit8 v4, v3, 0x1

    #@58
    .line 170
    aget-byte v3, p0, v3

    #@5a
    add-int/lit8 v5, v8, 0x1

    #@5c
    invoke-static {p1, v3, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    #@5f
    move p1, v4

    #@60
    move v8, v5

    #@61
    goto :goto_24

    #@62
    .line 168
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@64
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw p0

    #@68
    .line 171
    :cond_68
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isThreeBytes(B)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_88

    #@6e
    add-int/lit8 v4, v0, -0x1

    #@70
    if-ge v3, v4, :cond_82

    #@72
    add-int/lit8 v4, v3, 0x1

    #@74
    .line 175
    aget-byte v3, p0, v3

    #@76
    add-int/lit8 v5, v4, 0x1

    #@78
    aget-byte v4, p0, v4

    #@7a
    add-int/lit8 v6, v8, 0x1

    #@7c
    invoke-static {p1, v3, v4, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    #@7f
    move p1, v5

    #@80
    move v8, v6

    #@81
    goto :goto_24

    #@82
    .line 173
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@84
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw p0

    #@88
    :cond_88
    add-int/lit8 v4, v0, -0x2

    #@8a
    if-ge v3, v4, :cond_a7

    #@8c
    add-int/lit8 v4, v3, 0x1

    #@8e
    .line 185
    aget-byte v5, p0, v3

    #@90
    add-int/lit8 v3, v4, 0x1

    #@92
    aget-byte v6, p0, v4

    #@94
    add-int/lit8 v9, v3, 0x1

    #@96
    aget-byte v7, p0, v3

    #@98
    add-int/lit8 v10, v8, 0x1

    #@9a
    move v3, p1

    #@9b
    move v4, v5

    #@9c
    move v5, v6

    #@9d
    move v6, v7

    #@9e
    move-object v7, p2

    #@9f
    invoke-static/range {v3 .. v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    #@a2
    add-int/2addr v10, v2

    #@a3
    move p1, v9

    #@a4
    move v8, v10

    #@a5
    goto/16 :goto_24

    #@a7
    .line 183
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@a9
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ac
    throw p0

    #@ad
    .line 197
    :cond_ad
    new-instance p0, Ljava/lang/String;

    #@af
    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    #@b2
    return-object p0

    #@b3
    .line 129
    :cond_b3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b5
    const/4 v3, 0x3

    #@b6
    new-array v3, v3, [Ljava/lang/Object;

    #@b8
    array-length p0, p0

    #@b9
    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object p0

    #@bd
    aput-object p0, v3, v1

    #@bf
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c2
    move-result-object p0

    #@c3
    aput-object p0, v3, v2

    #@c5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c8
    move-result-object p0

    #@c9
    const/4 p1, 0x2

    #@ca
    aput-object p0, v3, p1

    #@cc
    const-string p0, "buffer length=%d, index=%d, size=%d"

    #@ce
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d1
    move-result-object p0

    #@d2
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d5
    throw v0
.end method

.method public static decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 14

    #@0
    or-int v0, p1, p2

    #@2
    .line 203
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@5
    move-result v1

    #@6
    sub-int/2addr v1, p1

    #@7
    sub-int/2addr v1, p2

    #@8
    or-int/2addr v0, v1

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v2, 0x1

    #@b
    if-ltz v0, :cond_c8

    #@d
    add-int v0, p1, p2

    #@f
    .line 213
    new-array p2, p2, [C

    #@11
    move v3, v1

    #@12
    :goto_12
    if-ge p1, v0, :cond_28

    #@14
    .line 219
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    #@17
    move-result v4

    #@18
    .line 220
    invoke-static {v4}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_1f

    #@1e
    goto :goto_28

    #@1f
    :cond_1f
    add-int/lit8 p1, p1, 0x1

    #@21
    add-int/lit8 v5, v3, 0x1

    #@23
    .line 224
    invoke-static {v4, p2, v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    #@26
    move v3, v5

    #@27
    goto :goto_12

    #@28
    :cond_28
    :goto_28
    move v8, v3

    #@29
    :goto_29
    if-ge p1, v0, :cond_c2

    #@2b
    add-int/lit8 v3, p1, 0x1

    #@2d
    .line 228
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    #@30
    move-result p1

    #@31
    .line 229
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_55

    #@37
    add-int/lit8 v4, v8, 0x1

    #@39
    .line 230
    invoke-static {p1, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    #@3c
    :goto_3c
    if-ge v3, v0, :cond_52

    #@3e
    .line 234
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@41
    move-result p1

    #@42
    .line 235
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_49

    #@48
    goto :goto_52

    #@49
    :cond_49
    add-int/lit8 v3, v3, 0x1

    #@4b
    add-int/lit8 v5, v4, 0x1

    #@4d
    .line 239
    invoke-static {p1, p2, v4}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    #@50
    move v4, v5

    #@51
    goto :goto_3c

    #@52
    :cond_52
    :goto_52
    move p1, v3

    #@53
    move v8, v4

    #@54
    goto :goto_29

    #@55
    .line 241
    :cond_55
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isTwoBytes(B)Z

    #@58
    move-result v4

    #@59
    const-string v5, "Invalid UTF-8"

    #@5b
    if-eqz v4, :cond_73

    #@5d
    if-ge v3, v0, :cond_6d

    #@5f
    add-int/lit8 v4, v3, 0x1

    #@61
    .line 246
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@64
    move-result v3

    #@65
    add-int/lit8 v5, v8, 0x1

    #@67
    .line 245
    invoke-static {p1, v3, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    #@6a
    move p1, v4

    #@6b
    move v8, v5

    #@6c
    goto :goto_29

    #@6d
    .line 243
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@6f
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw p0

    #@73
    .line 247
    :cond_73
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isThreeBytes(B)Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_97

    #@79
    add-int/lit8 v4, v0, -0x1

    #@7b
    if-ge v3, v4, :cond_91

    #@7d
    add-int/lit8 v4, v3, 0x1

    #@7f
    .line 253
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@82
    move-result v3

    #@83
    add-int/lit8 v5, v4, 0x1

    #@85
    .line 254
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@88
    move-result v4

    #@89
    add-int/lit8 v6, v8, 0x1

    #@8b
    .line 251
    invoke-static {p1, v3, v4, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    #@8e
    move p1, v5

    #@8f
    move v8, v6

    #@90
    goto :goto_29

    #@91
    .line 249
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@93
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@96
    throw p0

    #@97
    :cond_97
    add-int/lit8 v4, v0, -0x2

    #@99
    if-ge v3, v4, :cond_bc

    #@9b
    add-int/lit8 v4, v3, 0x1

    #@9d
    .line 263
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@a0
    move-result v5

    #@a1
    add-int/lit8 v3, v4, 0x1

    #@a3
    .line 264
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@a6
    move-result v6

    #@a7
    add-int/lit8 v9, v3, 0x1

    #@a9
    .line 265
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@ac
    move-result v7

    #@ad
    add-int/lit8 v10, v8, 0x1

    #@af
    move v3, p1

    #@b0
    move v4, v5

    #@b1
    move v5, v6

    #@b2
    move v6, v7

    #@b3
    move-object v7, p2

    #@b4
    .line 261
    invoke-static/range {v3 .. v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    #@b7
    add-int/2addr v10, v2

    #@b8
    move p1, v9

    #@b9
    move v8, v10

    #@ba
    goto/16 :goto_29

    #@bc
    .line 259
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@be
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c1
    throw p0

    #@c2
    .line 273
    :cond_c2
    new-instance p0, Ljava/lang/String;

    #@c4
    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    #@c7
    return-object p0

    #@c8
    .line 204
    :cond_c8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@ca
    const/4 v3, 0x3

    #@cb
    new-array v3, v3, [Ljava/lang/Object;

    #@cd
    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@d0
    move-result p0

    #@d1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d4
    move-result-object p0

    #@d5
    aput-object p0, v3, v1

    #@d7
    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@da
    move-result-object p0

    #@db
    aput-object p0, v3, v2

    #@dd
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e0
    move-result-object p0

    #@e1
    const/4 p1, 0x2

    #@e2
    aput-object p0, v3, p1

    #@e4
    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    #@e6
    .line 205
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e9
    move-result-object p0

    #@ea
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v0
.end method

.method private static encodeUtf8Array(Ljava/lang/CharSequence;[BII)I
    .registers 11

    #@0
    .line 370
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    add-int/2addr p3, p2

    #@5
    const/4 v1, 0x0

    #@6
    :goto_6
    const/16 v2, 0x80

    #@8
    if-ge v1, v0, :cond_1a

    #@a
    add-int v3, v1, p2

    #@c
    if-ge v3, p3, :cond_1a

    #@e
    .line 376
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v4

    #@12
    if-ge v4, v2, :cond_1a

    #@14
    int-to-byte v2, v4

    #@15
    .line 377
    aput-byte v2, p1, v3

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    if-ne v1, v0, :cond_1e

    #@1c
    add-int/2addr p2, v0

    #@1d
    return p2

    #@1e
    :cond_1e
    add-int/2addr p2, v1

    #@1f
    :goto_1f
    if-ge v1, v0, :cond_fd

    #@21
    .line 384
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@24
    move-result v3

    #@25
    if-ge v3, v2, :cond_31

    #@27
    if-ge p2, p3, :cond_31

    #@29
    add-int/lit8 v4, p2, 0x1

    #@2b
    int-to-byte v3, v3

    #@2c
    .line 386
    aput-byte v3, p1, p2

    #@2e
    :goto_2e
    move p2, v4

    #@2f
    goto/16 :goto_b5

    #@31
    :cond_31
    const/16 v4, 0x800

    #@33
    if-ge v3, v4, :cond_4b

    #@35
    add-int/lit8 v4, p3, -0x2

    #@37
    if-gt p2, v4, :cond_4b

    #@39
    add-int/lit8 v4, p2, 0x1

    #@3b
    ushr-int/lit8 v5, v3, 0x6

    #@3d
    or-int/lit16 v5, v5, 0x3c0

    #@3f
    int-to-byte v5, v5

    #@40
    .line 388
    aput-byte v5, p1, p2

    #@42
    add-int/lit8 p2, v4, 0x1

    #@44
    and-int/lit8 v3, v3, 0x3f

    #@46
    or-int/2addr v3, v2

    #@47
    int-to-byte v3, v3

    #@48
    .line 389
    aput-byte v3, p1, v4

    #@4a
    goto :goto_b5

    #@4b
    :cond_4b
    const v4, 0xdfff

    #@4e
    const v5, 0xd800

    #@51
    if-lt v3, v5, :cond_55

    #@53
    if-ge v4, v3, :cond_75

    #@55
    :cond_55
    add-int/lit8 v6, p3, -0x3

    #@57
    if-gt p2, v6, :cond_75

    #@59
    add-int/lit8 v4, p2, 0x1

    #@5b
    ushr-int/lit8 v5, v3, 0xc

    #@5d
    or-int/lit16 v5, v5, 0x1e0

    #@5f
    int-to-byte v5, v5

    #@60
    .line 392
    aput-byte v5, p1, p2

    #@62
    add-int/lit8 p2, v4, 0x1

    #@64
    ushr-int/lit8 v5, v3, 0x6

    #@66
    and-int/lit8 v5, v5, 0x3f

    #@68
    or-int/2addr v5, v2

    #@69
    int-to-byte v5, v5

    #@6a
    .line 393
    aput-byte v5, p1, v4

    #@6c
    add-int/lit8 v4, p2, 0x1

    #@6e
    and-int/lit8 v3, v3, 0x3f

    #@70
    or-int/2addr v3, v2

    #@71
    int-to-byte v3, v3

    #@72
    .line 394
    aput-byte v3, p1, p2

    #@74
    goto :goto_2e

    #@75
    :cond_75
    add-int/lit8 v6, p3, -0x4

    #@77
    if-gt p2, v6, :cond_c2

    #@79
    add-int/lit8 v4, v1, 0x1

    #@7b
    .line 399
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@7e
    move-result v5

    #@7f
    if-eq v4, v5, :cond_ba

    #@81
    .line 400
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@84
    move-result v1

    #@85
    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@88
    move-result v5

    #@89
    if-eqz v5, :cond_b9

    #@8b
    .line 403
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@8e
    move-result v1

    #@8f
    add-int/lit8 v3, p2, 0x1

    #@91
    ushr-int/lit8 v5, v1, 0x12

    #@93
    or-int/lit16 v5, v5, 0xf0

    #@95
    int-to-byte v5, v5

    #@96
    .line 404
    aput-byte v5, p1, p2

    #@98
    add-int/lit8 p2, v3, 0x1

    #@9a
    ushr-int/lit8 v5, v1, 0xc

    #@9c
    and-int/lit8 v5, v5, 0x3f

    #@9e
    or-int/2addr v5, v2

    #@9f
    int-to-byte v5, v5

    #@a0
    .line 405
    aput-byte v5, p1, v3

    #@a2
    add-int/lit8 v3, p2, 0x1

    #@a4
    ushr-int/lit8 v5, v1, 0x6

    #@a6
    and-int/lit8 v5, v5, 0x3f

    #@a8
    or-int/2addr v5, v2

    #@a9
    int-to-byte v5, v5

    #@aa
    .line 406
    aput-byte v5, p1, p2

    #@ac
    add-int/lit8 p2, v3, 0x1

    #@ae
    and-int/lit8 v1, v1, 0x3f

    #@b0
    or-int/2addr v1, v2

    #@b1
    int-to-byte v1, v1

    #@b2
    .line 407
    aput-byte v1, p1, v3

    #@b4
    move v1, v4

    #@b5
    :goto_b5
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto/16 :goto_1f

    #@b9
    :cond_b9
    move v1, v4

    #@ba
    .line 401
    :cond_ba
    new-instance p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    #@bc
    add-int/lit8 v1, v1, -0x1

    #@be
    invoke-direct {p0, v1, v0}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    #@c1
    throw p0

    #@c2
    :cond_c2
    if-gt v5, v3, :cond_de

    #@c4
    if-gt v3, v4, :cond_de

    #@c6
    add-int/lit8 p1, v1, 0x1

    #@c8
    .line 412
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@cb
    move-result p3

    #@cc
    if-eq p1, p3, :cond_d8

    #@ce
    .line 413
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@d1
    move-result p0

    #@d2
    invoke-static {v3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@d5
    move-result p0

    #@d6
    if-nez p0, :cond_de

    #@d8
    .line 414
    :cond_d8
    new-instance p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    #@da
    invoke-direct {p0, v1, v0}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    #@dd
    throw p0

    #@de
    .line 416
    :cond_de
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e0
    new-instance p1, Ljava/lang/StringBuilder;

    #@e2
    const-string p3, "Failed writing "

    #@e4
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ea
    move-result-object p1

    #@eb
    const-string p3, " at index "

    #@ed
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object p1

    #@f1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object p1

    #@f5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object p1

    #@f9
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@fc
    throw p0

    #@fd
    :cond_fd
    return p2
.end method

.method private static encodeUtf8Buffer(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 9

    #@0
    .line 298
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    const/16 v3, 0x80

    #@b
    if-ge v2, v0, :cond_1c

    #@d
    .line 308
    :try_start_d
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@10
    move-result v4

    #@11
    if-ge v4, v3, :cond_1c

    #@13
    add-int v3, v1, v2

    #@15
    int-to-byte v4, v4

    #@16
    .line 309
    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_9

    #@1c
    :cond_1c
    if-ne v2, v0, :cond_24

    #@1e
    add-int v0, v1, v2

    #@20
    .line 313
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@23
    return-void

    #@24
    :cond_24
    add-int/2addr v1, v2

    #@25
    :goto_25
    if-ge v2, v0, :cond_c3

    #@27
    .line 319
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@2a
    move-result v4

    #@2b
    if-ge v4, v3, :cond_33

    #@2d
    int-to-byte v4, v4

    #@2e
    .line 322
    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_31} :catch_c7

    #@31
    goto/16 :goto_bd

    #@33
    :cond_33
    const/16 v5, 0x800

    #@35
    if-ge v4, v5, :cond_4e

    #@37
    add-int/lit8 v5, v1, 0x1

    #@39
    ushr-int/lit8 v6, v4, 0x6

    #@3b
    or-int/lit16 v6, v6, 0xc0

    #@3d
    int-to-byte v6, v6

    #@3e
    .line 327
    :try_start_3e
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@41
    and-int/lit8 v1, v4, 0x3f

    #@43
    or-int/2addr v1, v3

    #@44
    int-to-byte v1, v1

    #@45
    .line 328
    invoke-virtual {p1, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_48} :catch_4b

    #@48
    move v1, v5

    #@49
    goto/16 :goto_bd

    #@4b
    :catch_4b
    move v1, v5

    #@4c
    goto/16 :goto_c7

    #@4e
    :cond_4e
    const v5, 0xd800

    #@51
    if-lt v4, v5, :cond_a1

    #@53
    const v5, 0xdfff

    #@56
    if-ge v5, v4, :cond_59

    #@58
    goto :goto_a1

    #@59
    :cond_59
    add-int/lit8 v5, v2, 0x1

    #@5b
    if-eq v5, v0, :cond_9b

    #@5d
    .line 343
    :try_start_5d
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@60
    move-result v2

    #@61
    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@64
    move-result v6

    #@65
    if-eqz v6, :cond_97

    #@67
    .line 347
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@6a
    move-result v2
    :try_end_6b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_6b} :catch_99

    #@6b
    add-int/lit8 v4, v1, 0x1

    #@6d
    ushr-int/lit8 v6, v2, 0x12

    #@6f
    or-int/lit16 v6, v6, 0xf0

    #@71
    int-to-byte v6, v6

    #@72
    .line 348
    :try_start_72
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_75
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_72 .. :try_end_75} :catch_95

    #@75
    add-int/lit8 v1, v4, 0x1

    #@77
    ushr-int/lit8 v6, v2, 0xc

    #@79
    and-int/lit8 v6, v6, 0x3f

    #@7b
    or-int/2addr v6, v3

    #@7c
    int-to-byte v6, v6

    #@7d
    .line 349
    :try_start_7d
    invoke-virtual {p1, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7d .. :try_end_80} :catch_99

    #@80
    add-int/lit8 v4, v1, 0x1

    #@82
    ushr-int/lit8 v6, v2, 0x6

    #@84
    and-int/lit8 v6, v6, 0x3f

    #@86
    or-int/2addr v6, v3

    #@87
    int-to-byte v6, v6

    #@88
    .line 350
    :try_start_88
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@8b
    and-int/lit8 v1, v2, 0x3f

    #@8d
    or-int/2addr v1, v3

    #@8e
    int-to-byte v1, v1

    #@8f
    .line 351
    invoke-virtual {p1, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_88 .. :try_end_92} :catch_95

    #@92
    move v1, v4

    #@93
    move v2, v5

    #@94
    goto :goto_bd

    #@95
    :catch_95
    move v1, v4

    #@96
    goto :goto_99

    #@97
    :cond_97
    move v2, v5

    #@98
    goto :goto_9b

    #@99
    :catch_99
    :goto_99
    move v2, v5

    #@9a
    goto :goto_c7

    #@9b
    .line 344
    :cond_9b
    :goto_9b
    :try_start_9b
    new-instance v3, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    #@9d
    invoke-direct {v3, v2, v0}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    #@a0
    throw v3
    :try_end_a1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9b .. :try_end_a1} :catch_c7

    #@a1
    :cond_a1
    :goto_a1
    add-int/lit8 v5, v1, 0x1

    #@a3
    ushr-int/lit8 v6, v4, 0xc

    #@a5
    or-int/lit16 v6, v6, 0xe0

    #@a7
    int-to-byte v6, v6

    #@a8
    .line 334
    :try_start_a8
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_ab
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a8 .. :try_end_ab} :catch_4b

    #@ab
    add-int/lit8 v1, v5, 0x1

    #@ad
    ushr-int/lit8 v6, v4, 0x6

    #@af
    and-int/lit8 v6, v6, 0x3f

    #@b1
    or-int/2addr v6, v3

    #@b2
    int-to-byte v6, v6

    #@b3
    .line 335
    :try_start_b3
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@b6
    and-int/lit8 v4, v4, 0x3f

    #@b8
    or-int/2addr v4, v3

    #@b9
    int-to-byte v4, v4

    #@ba
    .line 336
    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@bd
    :goto_bd
    add-int/lit8 v2, v2, 0x1

    #@bf
    add-int/lit8 v1, v1, 0x1

    #@c1
    goto/16 :goto_25

    #@c3
    .line 356
    :cond_c3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b3 .. :try_end_c6} :catch_c7

    #@c6
    return-void

    #@c7
    .line 362
    :catch_c7
    :goto_c7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@ca
    move-result v0

    #@cb
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@ce
    move-result p1

    #@cf
    sub-int/2addr v1, p1

    #@d0
    add-int/lit8 v1, v1, 0x1

    #@d2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@d5
    move-result p1

    #@d6
    add-int/2addr v0, p1

    #@d7
    .line 363
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d9
    new-instance v1, Ljava/lang/StringBuilder;

    #@db
    const-string v3, "Failed writing "

    #@dd
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e0
    .line 364
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@e3
    move-result p0

    #@e4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e7
    move-result-object p0

    #@e8
    const-string v1, " at index "

    #@ea
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object p0

    #@ee
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f1
    move-result-object p0

    #@f2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object p0

    #@f6
    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f9
    throw p1
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    #@0
    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge p1, v0, :cond_35

    #@7
    .line 107
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v2

    #@b
    const/16 v3, 0x800

    #@d
    if-ge v2, v3, :cond_15

    #@f
    rsub-int/lit8 v2, v2, 0x7f

    #@11
    ushr-int/lit8 v2, v2, 0x1f

    #@13
    add-int/2addr v1, v2

    #@14
    goto :goto_32

    #@15
    :cond_15
    add-int/lit8 v1, v1, 0x2

    #@17
    const v3, 0xd800

    #@1a
    if-gt v3, v2, :cond_32

    #@1c
    const v3, 0xdfff

    #@1f
    if-gt v2, v3, :cond_32

    #@21
    .line 115
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@24
    move-result v2

    #@25
    const/high16 v3, 0x10000

    #@27
    if-lt v2, v3, :cond_2c

    #@29
    add-int/lit8 p1, p1, 0x1

    #@2b
    goto :goto_32

    #@2c
    .line 117
    :cond_2c
    new-instance p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    #@2e
    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    #@31
    throw p0

    #@32
    :cond_32
    :goto_32
    add-int/lit8 p1, p1, 0x1

    #@34
    goto :goto_5

    #@35
    :cond_35
    return v1
.end method


# virtual methods
.method public decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@d
    move-result p1

    #@e
    add-int/2addr p1, p2

    #@f
    invoke-static {v0, p1, p3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Array([BII)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    return-object p1

    #@14
    .line 292
    :cond_14
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    return-object p1
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 7

    #@0
    .line 433
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_20

    #@6
    .line 434
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@9
    move-result v0

    #@a
    .line 435
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@11
    move-result v2

    #@12
    add-int/2addr v2, v0

    #@13
    .line 436
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@16
    move-result v3

    #@17
    .line 435
    invoke-static {p1, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->encodeUtf8Array(Ljava/lang/CharSequence;[BII)I

    #@1a
    move-result p1

    #@1b
    sub-int/2addr p1, v0

    #@1c
    .line 437
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1f
    goto :goto_23

    #@20
    .line 439
    :cond_20
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->encodeUtf8Buffer(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    #@23
    :goto_23
    return-void
.end method

.method public encodedLength(Ljava/lang/CharSequence;)I
    .registers 2

    #@0
    .line 278
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->computeEncodedLength(Ljava/lang/CharSequence;)I

    #@3
    move-result p1

    #@4
    return p1
.end method
