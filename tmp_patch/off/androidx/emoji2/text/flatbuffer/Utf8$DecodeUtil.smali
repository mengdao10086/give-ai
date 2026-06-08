.class Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecodeUtil"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static handleFourBytes(BBBB[CI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 140
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_41

    #@6
    shl-int/lit8 v0, p0, 0x1c

    #@8
    add-int/lit8 v1, p1, 0x70

    #@a
    add-int/2addr v0, v1

    #@b
    shr-int/lit8 v0, v0, 0x1e

    #@d
    if-nez v0, :cond_41

    #@f
    .line 149
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_41

    #@15
    .line 150
    invoke-static {p3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_41

    #@1b
    and-int/lit8 p0, p0, 0x7

    #@1d
    shl-int/lit8 p0, p0, 0x12

    #@1f
    .line 154
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    #@22
    move-result p1

    #@23
    shl-int/lit8 p1, p1, 0xc

    #@25
    or-int/2addr p0, p1

    #@26
    .line 155
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    #@29
    move-result p1

    #@2a
    shl-int/lit8 p1, p1, 0x6

    #@2c
    or-int/2addr p0, p1

    #@2d
    .line 156
    invoke-static {p3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    #@30
    move-result p1

    #@31
    or-int/2addr p0, p1

    #@32
    .line 157
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->highSurrogate(I)C

    #@35
    move-result p1

    #@36
    aput-char p1, p4, p5

    #@38
    add-int/lit8 p5, p5, 0x1

    #@3a
    .line 158
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->lowSurrogate(I)C

    #@3d
    move-result p0

    #@3e
    aput-char p0, p4, p5

    #@40
    return-void

    #@41
    .line 151
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@43
    const-string p1, "Invalid UTF-8"

    #@45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw p0
.end method

.method static handleOneByte(B[CI)V
    .registers 3

    #@0
    int-to-char p0, p0

    #@1
    .line 105
    aput-char p0, p1, p2

    #@3
    return-void
.end method

.method static handleThreeBytes(BBB[CI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 125
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_2e

    #@6
    const/16 v0, -0x20

    #@8
    const/16 v1, -0x60

    #@a
    if-ne p0, v0, :cond_e

    #@c
    if-lt p1, v1, :cond_2e

    #@e
    :cond_e
    const/16 v0, -0x13

    #@10
    if-ne p0, v0, :cond_14

    #@12
    if-ge p1, v1, :cond_2e

    #@14
    .line 130
    :cond_14
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2e

    #@1a
    and-int/lit8 p0, p0, 0xf

    #@1c
    shl-int/lit8 p0, p0, 0xc

    #@1e
    .line 134
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    #@21
    move-result p1

    #@22
    shl-int/lit8 p1, p1, 0x6

    #@24
    or-int/2addr p0, p1

    #@25
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    #@28
    move-result p1

    #@29
    or-int/2addr p0, p1

    #@2a
    int-to-char p0, p0

    #@2b
    aput-char p0, p3, p4

    #@2d
    return-void

    #@2e
    .line 131
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@30
    const-string p1, "Invalid UTF-8"

    #@32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw p0
.end method

.method static handleTwoBytes(BB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/16 v0, -0x3e

    #@2
    if-lt p0, v0, :cond_1f

    #@4
    .line 116
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_17

    #@a
    and-int/lit8 p0, p0, 0x1f

    #@c
    shl-int/lit8 p0, p0, 0x6

    #@e
    .line 119
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    #@11
    move-result p1

    #@12
    or-int/2addr p0, p1

    #@13
    int-to-char p0, p0

    #@14
    aput-char p0, p2, p3

    #@16
    return-void

    #@17
    .line 117
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string p1, "Invalid UTF-8: Illegal trailing byte in 2 bytes utf"

    #@1b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw p0

    #@1f
    .line 114
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string p1, "Invalid UTF-8: Illegal leading byte in 2 bytes utf"

    #@23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw p0
.end method

.method private static highSurrogate(I)C
    .registers 2

    #@0
    ushr-int/lit8 p0, p0, 0xa

    #@2
    const v0, 0xd7c0

    #@5
    add-int/2addr p0, v0

    #@6
    int-to-char p0, p0

    #@7
    return p0
.end method

.method private static isNotTrailingByte(B)Z
    .registers 2

    #@0
    const/16 v0, -0x41

    #@2
    if-le p0, v0, :cond_6

    #@4
    const/4 p0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p0, 0x0

    #@7
    :goto_7
    return p0
.end method

.method static isOneByte(B)Z
    .registers 1

    #@0
    if-ltz p0, :cond_4

    #@2
    const/4 p0, 0x1

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 p0, 0x0

    #@5
    :goto_5
    return p0
.end method

.method static isThreeBytes(B)Z
    .registers 2

    #@0
    const/16 v0, -0x10

    #@2
    if-ge p0, v0, :cond_6

    #@4
    const/4 p0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p0, 0x0

    #@7
    :goto_7
    return p0
.end method

.method static isTwoBytes(B)Z
    .registers 2

    #@0
    const/16 v0, -0x20

    #@2
    if-ge p0, v0, :cond_6

    #@4
    const/4 p0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p0, 0x0

    #@7
    :goto_7
    return p0
.end method

.method private static lowSurrogate(I)C
    .registers 2

    #@0
    and-int/lit16 p0, p0, 0x3ff

    #@2
    const v0, 0xdc00

    #@5
    add-int/2addr p0, v0

    #@6
    int-to-char p0, p0

    #@7
    return p0
.end method

.method private static trailingByteValue(B)I
    .registers 1

    #@0
    and-int/lit8 p0, p0, 0x3f

    #@2
    return p0
.end method
