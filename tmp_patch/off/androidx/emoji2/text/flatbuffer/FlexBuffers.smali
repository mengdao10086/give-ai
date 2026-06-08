.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;

.field public static final FBT_BLOB:I = 0x19

.field public static final FBT_BOOL:I = 0x1a

.field public static final FBT_FLOAT:I = 0x3

.field public static final FBT_INDIRECT_FLOAT:I = 0x8

.field public static final FBT_INDIRECT_INT:I = 0x6

.field public static final FBT_INDIRECT_UINT:I = 0x7

.field public static final FBT_INT:I = 0x1

.field public static final FBT_KEY:I = 0x4

.field public static final FBT_MAP:I = 0x9

.field public static final FBT_NULL:I = 0x0

.field public static final FBT_STRING:I = 0x5

.field public static final FBT_UINT:I = 0x2

.field public static final FBT_VECTOR:I = 0xa

.field public static final FBT_VECTOR_BOOL:I = 0x24

.field public static final FBT_VECTOR_FLOAT:I = 0xd

.field public static final FBT_VECTOR_FLOAT2:I = 0x12

.field public static final FBT_VECTOR_FLOAT3:I = 0x15

.field public static final FBT_VECTOR_FLOAT4:I = 0x18

.field public static final FBT_VECTOR_INT:I = 0xb

.field public static final FBT_VECTOR_INT2:I = 0x10

.field public static final FBT_VECTOR_INT3:I = 0x13

.field public static final FBT_VECTOR_INT4:I = 0x16

.field public static final FBT_VECTOR_KEY:I = 0xe

.field public static final FBT_VECTOR_STRING_DEPRECATED:I = 0xf

.field public static final FBT_VECTOR_UINT:I = 0xc

.field public static final FBT_VECTOR_UINT2:I = 0x11

.field public static final FBT_VECTOR_UINT3:I = 0x14

.field public static final FBT_VECTOR_UINT4:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 103
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v2, v1, [B

    #@5
    const/4 v3, 0x0

    #@6
    aput-byte v3, v2, v3

    #@8
    invoke-direct {v0, v2, v1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([BI)V

    #@b
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .registers 1

    #@0
    .line 45
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 3

    #@0
    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 3

    #@0
    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->indirect(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 3

    #@0
    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readUInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    #@3
    move-result-wide p0

    #@4
    return-wide p0
.end method

.method static synthetic access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D
    .registers 3

    #@0
    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readDouble(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    #@3
    move-result-wide p0

    #@4
    return-wide p0
.end method

.method static synthetic access$500(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 3

    #@0
    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readLong(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    #@3
    move-result-wide p0

    #@4
    return-wide p0
.end method

.method public static getRoot(Landroidx/emoji2/text/flatbuffer/ReadBuf;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 5

    #@0
    .line 214
    invoke-interface {p0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->limit()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    .line 215
    invoke-interface {p0, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@9
    move-result v1

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    .line 216
    invoke-interface {p0, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@f
    move-result v2

    #@10
    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    #@13
    move-result v2

    #@14
    sub-int/2addr v0, v1

    #@15
    .line 218
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    #@17
    invoke-direct {v3, p0, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    #@1a
    return-object v3
.end method

.method public static getRoot(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 202
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_14

    #@6
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    #@8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@f
    move-result p0

    #@10
    invoke-direct {v0, v1, p0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([BI)V

    #@13
    goto :goto_19

    #@14
    :cond_14
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;

    #@16
    invoke-direct {v0, p0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;-><init>(Ljava/nio/ByteBuffer;)V

    #@19
    :goto_19
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->getRoot(Landroidx/emoji2/text/flatbuffer/ReadBuf;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    #@1c
    move-result-object p0

    #@1d
    return-object p0
.end method

.method private static indirect(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 5

    #@0
    int-to-long v0, p1

    #@1
    .line 156
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readUInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    #@4
    move-result-wide p0

    #@5
    sub-long/2addr v0, p0

    #@6
    long-to-int p0, v0

    #@7
    return p0
.end method

.method static isTypeInline(I)Z
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    if-le p0, v0, :cond_a

    #@3
    const/16 v0, 0x1a

    #@5
    if-ne p0, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    goto :goto_b

    #@a
    :cond_a
    :goto_a
    const/4 p0, 0x1

    #@b
    :goto_b
    return p0
.end method

.method static isTypedVector(I)Z
    .registers 2

    #@0
    const/16 v0, 0xb

    #@2
    if-lt p0, v0, :cond_8

    #@4
    const/16 v0, 0xf

    #@6
    if-le p0, v0, :cond_c

    #@8
    :cond_8
    const/16 v0, 0x24

    #@a
    if-ne p0, v0, :cond_e

    #@c
    :cond_c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

.method static isTypedVectorElementType(I)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-lt p0, v0, :cond_6

    #@3
    const/4 v1, 0x4

    #@4
    if-le p0, v1, :cond_c

    #@6
    :cond_6
    const/16 v1, 0x1a

    #@8
    if-ne p0, v1, :cond_b

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :cond_c
    :goto_c
    return v0
.end method

.method private static readDouble(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    if-eq p2, v0, :cond_f

    #@3
    const/16 v0, 0x8

    #@5
    if-eq p2, v0, :cond_a

    #@7
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    #@9
    return-wide p0

    #@a
    .line 189
    :cond_a
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getDouble(I)D

    #@d
    move-result-wide p0

    #@e
    return-wide p0

    #@f
    .line 188
    :cond_f
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getFloat(I)F

    #@12
    move-result p0

    #@13
    float-to-double p0, p0

    #@14
    return-wide p0
.end method

.method private static readInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 3

    #@0
    .line 172
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readLong(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    #@3
    move-result-wide p0

    #@4
    long-to-int p0, p0

    #@5
    return p0
.end method

.method private static readLong(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p2, v0, :cond_20

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p2, v0, :cond_1b

    #@6
    const/4 v0, 0x4

    #@7
    if-eq p2, v0, :cond_15

    #@9
    const/16 v0, 0x8

    #@b
    if-eq p2, v0, :cond_10

    #@d
    const-wide/16 p0, -0x1

    #@f
    return-wide p0

    #@10
    .line 181
    :cond_10
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getLong(I)J

    #@13
    move-result-wide p0

    #@14
    return-wide p0

    #@15
    .line 180
    :cond_15
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getInt(I)I

    #@18
    move-result p0

    #@19
    :goto_19
    int-to-long p0, p0

    #@1a
    return-wide p0

    #@1b
    .line 179
    :cond_1b
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getShort(I)S

    #@1e
    move-result p0

    #@1f
    goto :goto_19

    #@20
    .line 178
    :cond_20
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@23
    move-result p0

    #@24
    goto :goto_19
.end method

.method private static readUInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p2, v0, :cond_28

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p2, v0, :cond_1e

    #@6
    const/4 v0, 0x4

    #@7
    if-eq p2, v0, :cond_15

    #@9
    const/16 v0, 0x8

    #@b
    if-eq p2, v0, :cond_10

    #@d
    const-wide/16 p0, -0x1

    #@f
    return-wide p0

    #@10
    .line 165
    :cond_10
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getLong(I)J

    #@13
    move-result-wide p0

    #@14
    return-wide p0

    #@15
    .line 164
    :cond_15
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getInt(I)I

    #@18
    move-result p0

    #@19
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    #@1c
    move-result-wide p0

    #@1d
    return-wide p0

    #@1e
    .line 163
    :cond_1e
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getShort(I)S

    #@21
    move-result p0

    #@22
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    #@25
    move-result p0

    #@26
    int-to-long p0, p0

    #@27
    return-wide p0

    #@28
    .line 162
    :cond_28
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@2b
    move-result p0

    #@2c
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    #@2f
    move-result p0

    #@30
    int-to-long p0, p0

    #@31
    return-wide p0
.end method

.method static toTypedVector(II)I
    .registers 3

    #@0
    if-eqz p1, :cond_1c

    #@2
    const/4 v0, 0x2

    #@3
    if-eq p1, v0, :cond_17

    #@5
    const/4 v0, 0x3

    #@6
    if-eq p1, v0, :cond_12

    #@8
    const/4 v0, 0x4

    #@9
    if-eq p1, v0, :cond_d

    #@b
    const/4 p0, 0x0

    #@c
    return p0

    #@d
    :cond_d
    add-int/lit8 p0, p0, -0x1

    #@f
    add-int/lit8 p0, p0, 0x16

    #@11
    return p0

    #@12
    :cond_12
    add-int/lit8 p0, p0, -0x1

    #@14
    add-int/lit8 p0, p0, 0x13

    #@16
    return p0

    #@17
    :cond_17
    add-int/lit8 p0, p0, -0x1

    #@19
    add-int/lit8 p0, p0, 0x10

    #@1b
    return p0

    #@1c
    :cond_1c
    add-int/lit8 p0, p0, -0x1

    #@1e
    add-int/lit8 p0, p0, 0xb

    #@20
    return p0
.end method

.method static toTypedVectorElementType(I)I
    .registers 1

    #@0
    add-int/lit8 p0, p0, -0xb

    #@2
    add-int/lit8 p0, p0, 0x1

    #@4
    return p0
.end method
