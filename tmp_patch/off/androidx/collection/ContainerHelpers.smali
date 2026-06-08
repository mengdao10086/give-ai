.class Landroidx/collection/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [I

    #@3
    .line 20
    sput-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    #@5
    new-array v1, v0, [J

    #@7
    .line 21
    sput-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_LONGS:[J

    #@9
    new-array v0, v0, [Ljava/lang/Object;

    #@b
    .line 22
    sput-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static binarySearch([III)I
    .registers 6

    #@0
    add-int/lit8 p1, p1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    if-gt v0, p1, :cond_18

    #@5
    add-int v1, v0, p1

    #@7
    ushr-int/lit8 v1, v1, 0x1

    #@9
    .line 51
    aget v2, p0, v1

    #@b
    if-ge v2, p2, :cond_11

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    move v0, v1

    #@10
    goto :goto_3

    #@11
    :cond_11
    if-le v2, p2, :cond_17

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    move p1, v1

    #@16
    goto :goto_3

    #@17
    :cond_17
    return v1

    #@18
    :cond_18
    not-int p0, v0

    #@19
    return p0
.end method

.method static binarySearch([JIJ)I
    .registers 8

    #@0
    add-int/lit8 p1, p1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    if-gt v0, p1, :cond_1a

    #@5
    add-int v1, v0, p1

    #@7
    ushr-int/lit8 v1, v1, 0x1

    #@9
    .line 70
    aget-wide v2, p0, v1

    #@b
    cmp-long v2, v2, p2

    #@d
    if-gez v2, :cond_13

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    move v0, v1

    #@12
    goto :goto_3

    #@13
    :cond_13
    if-lez v2, :cond_19

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    move p1, v1

    #@18
    goto :goto_3

    #@19
    :cond_19
    return v1

    #@1a
    :cond_1a
    not-int p0, v0

    #@1b
    return p0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    if-eq p0, p1, :cond_d

    #@2
    if-eqz p0, :cond_b

    #@4
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result p0

    #@8
    if-eqz p0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p0, 0x1

    #@e
    :goto_e
    return p0
.end method

.method public static idealByteArraySize(I)I
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    :goto_1
    const/16 v1, 0x20

    #@3
    if-ge v0, v1, :cond_f

    #@5
    const/4 v1, 0x1

    #@6
    shl-int/2addr v1, v0

    #@7
    add-int/lit8 v1, v1, -0xc

    #@9
    if-gt p0, v1, :cond_c

    #@b
    return v1

    #@c
    :cond_c
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_1

    #@f
    :cond_f
    return p0
.end method

.method public static idealIntArraySize(I)I
    .registers 1

    #@0
    mul-int/lit8 p0, p0, 0x4

    #@2
    .line 25
    invoke-static {p0}, Landroidx/collection/ContainerHelpers;->idealByteArraySize(I)I

    #@5
    move-result p0

    #@6
    div-int/lit8 p0, p0, 0x4

    #@8
    return p0
.end method

.method public static idealLongArraySize(I)I
    .registers 1

    #@0
    mul-int/lit8 p0, p0, 0x8

    #@2
    .line 29
    invoke-static {p0}, Landroidx/collection/ContainerHelpers;->idealByteArraySize(I)I

    #@5
    move-result p0

    #@6
    div-int/lit8 p0, p0, 0x8

    #@8
    return p0
.end method
