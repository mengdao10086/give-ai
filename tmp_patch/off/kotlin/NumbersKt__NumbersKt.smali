.class Lkotlin/NumbersKt__NumbersKt;
.super Lkotlin/NumbersKt__NumbersJVMKt;
.source "Numbers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0002\u0008\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\u0014\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\r\u0010\t\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\t\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "countLeadingZeroBits",
        "",
        "",
        "",
        "countOneBits",
        "countTrailingZeroBits",
        "rotateLeft",
        "bitCount",
        "rotateRight",
        "takeHighestOneBit",
        "takeLowestOneBit",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x31
    xs = "kotlin/NumbersKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lkotlin/NumbersKt__NumbersJVMKt;-><init>()V

    #@3
    return-void
.end method

.method private static final countLeadingZeroBits(B)I
    .registers 1

    #@0
    and-int/lit16 p0, p0, 0xff

    #@2
    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@5
    move-result p0

    #@6
    add-int/lit8 p0, p0, -0x18

    #@8
    return p0
.end method

.method private static final countLeadingZeroBits(S)I
    .registers 2

    #@0
    const v0, 0xffff

    #@3
    and-int/2addr p0, v0

    #@4
    .line 230
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@7
    move-result p0

    #@8
    add-int/lit8 p0, p0, -0x10

    #@a
    return p0
.end method

.method private static final countOneBits(B)I
    .registers 1

    #@0
    and-int/lit16 p0, p0, 0xff

    #@2
    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    #@5
    move-result p0

    #@6
    return p0
.end method

.method private static final countOneBits(S)I
    .registers 2

    #@0
    const v0, 0xffff

    #@3
    and-int/2addr p0, v0

    #@4
    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method private static final countTrailingZeroBits(B)I
    .registers 1

    #@0
    or-int/lit16 p0, p0, 0x100

    #@2
    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@5
    move-result p0

    #@6
    return p0
.end method

.method private static final countTrailingZeroBits(S)I
    .registers 2

    #@0
    const/high16 v0, 0x10000

    #@2
    or-int/2addr p0, v0

    #@3
    .line 238
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static final rotateLeft(BI)B
    .registers 3

    #@0
    and-int/lit8 p1, p1, 0x7

    #@2
    shl-int v0, p0, p1

    #@4
    and-int/lit16 p0, p0, 0xff

    #@6
    rsub-int/lit8 p1, p1, 0x8

    #@8
    ushr-int/2addr p0, p1

    #@9
    or-int/2addr p0, v0

    #@a
    int-to-byte p0, p0

    #@b
    return p0
.end method

.method public static final rotateLeft(SI)S
    .registers 4

    #@0
    and-int/lit8 p1, p1, 0xf

    #@2
    shl-int v0, p0, p1

    #@4
    const v1, 0xffff

    #@7
    and-int/2addr p0, v1

    #@8
    rsub-int/lit8 p1, p1, 0x10

    #@a
    ushr-int/2addr p0, p1

    #@b
    or-int/2addr p0, v0

    #@c
    int-to-short p0, p0

    #@d
    return p0
.end method

.method public static final rotateRight(BI)B
    .registers 3

    #@0
    and-int/lit8 p1, p1, 0x7

    #@2
    rsub-int/lit8 v0, p1, 0x8

    #@4
    shl-int v0, p0, v0

    #@6
    and-int/lit16 p0, p0, 0xff

    #@8
    ushr-int/2addr p0, p1

    #@9
    or-int/2addr p0, v0

    #@a
    int-to-byte p0, p0

    #@b
    return p0
.end method

.method public static final rotateRight(SI)S
    .registers 4

    #@0
    and-int/lit8 p1, p1, 0xf

    #@2
    rsub-int/lit8 v0, p1, 0x10

    #@4
    shl-int v0, p0, v0

    #@6
    const v1, 0xffff

    #@9
    and-int/2addr p0, v1

    #@a
    ushr-int/2addr p0, p1

    #@b
    or-int/2addr p0, v0

    #@c
    int-to-short p0, p0

    #@d
    return p0
.end method

.method private static final takeHighestOneBit(B)B
    .registers 1

    #@0
    and-int/lit16 p0, p0, 0xff

    #@2
    .line 173
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    #@5
    move-result p0

    #@6
    int-to-byte p0, p0

    #@7
    return p0
.end method

.method private static final takeHighestOneBit(S)S
    .registers 2

    #@0
    const v0, 0xffff

    #@3
    and-int/2addr p0, v0

    #@4
    .line 247
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    #@7
    move-result p0

    #@8
    int-to-short p0, p0

    #@9
    return p0
.end method

.method private static final takeLowestOneBit(B)B
    .registers 1

    #@0
    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    #@3
    move-result p0

    #@4
    int-to-byte p0, p0

    #@5
    return p0
.end method

.method private static final takeLowestOneBit(S)S
    .registers 1

    #@0
    .line 256
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    #@3
    move-result p0

    #@4
    int-to-short p0, p0

    #@5
    return p0
.end method
