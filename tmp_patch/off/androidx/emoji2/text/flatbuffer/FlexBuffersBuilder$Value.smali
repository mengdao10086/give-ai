.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final dValue:D

.field iValue:J

.field key:I

.field final minBitWidth:I

.field final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 636
    const-class v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;

    #@2
    return-void
.end method

.method constructor <init>(IIID)V
    .registers 6

    #@0
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 658
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    #@5
    .line 659
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    #@7
    .line 660
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    #@9
    .line 661
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    #@b
    const-wide/high16 p1, -0x8000000000000000L

    #@d
    .line 662
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@f
    return-void
.end method

.method constructor <init>(IIIJ)V
    .registers 6

    #@0
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 650
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    #@5
    .line 651
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    #@7
    .line 652
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    #@9
    .line 653
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@b
    const-wide/16 p1, 0x1

    #@d
    .line 654
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    #@f
    return-void
.end method

.method static synthetic access$100(II)I
    .registers 2

    #@0
    .line 636
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I
    .registers 3

    #@0
    .line 636
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$300(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B
    .registers 1

    #@0
    .line 636
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType()B

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$400(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B
    .registers 2

    #@0
    .line 636
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$500(IIJII)I
    .registers 6

    #@0
    .line 636
    invoke-static/range {p0 .. p5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 11

    #@0
    .line 670
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    int-to-long v4, p1

    #@3
    move-object v0, v6

    #@4
    move v1, p0

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method static bool(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 666
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/16 v2, 0x1a

    #@4
    const/4 v3, 0x0

    #@5
    if-eqz p1, :cond_a

    #@7
    const-wide/16 v0, 0x1

    #@9
    goto :goto_c

    #@a
    :cond_a
    const-wide/16 v0, 0x0

    #@c
    :goto_c
    move-wide v4, v0

    #@d
    move-object v0, v6

    #@e
    move v1, p0

    #@f
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@12
    return-object v6
.end method

.method private elemWidth(II)I
    .registers 9

    #@0
    .line 734
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    #@4
    iget-wide v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    #@6
    move v4, p1

    #@7
    move v5, p2

    #@8
    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method private static elemWidth(IIJII)I
    .registers 10

    #@0
    .line 738
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_7

    #@6
    return p1

    #@7
    :cond_7
    const/4 p0, 0x1

    #@8
    :goto_8
    const/16 p1, 0x20

    #@a
    if-gt p0, p1, :cond_28

    #@c
    .line 751
    invoke-static {p4, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    #@f
    move-result p1

    #@10
    add-int/2addr p1, p4

    #@11
    mul-int v0, p5, p0

    #@13
    add-int/2addr p1, v0

    #@14
    int-to-long v0, p1

    #@15
    sub-long/2addr v0, p2

    #@16
    long-to-int p1, v0

    #@17
    int-to-long v0, p1

    #@18
    .line 755
    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    #@1b
    move-result p1

    #@1c
    const-wide/16 v0, 0x1

    #@1e
    shl-long/2addr v0, p1

    #@1f
    int-to-long v2, p0

    #@20
    cmp-long v0, v0, v2

    #@22
    if-nez v0, :cond_25

    #@24
    return p1

    #@25
    :cond_25
    mul-int/lit8 p0, p0, 0x2

    #@27
    goto :goto_8

    #@28
    :cond_28
    const/4 p0, 0x3

    #@29
    return p0
.end method

.method static float32(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 706
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x3

    #@3
    const/4 v3, 0x2

    #@4
    float-to-double v4, p1

    #@5
    move-object v0, v6

    #@6
    move v1, p0

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    #@a
    return-object v6
.end method

.method static float64(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 10

    #@0
    .line 710
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x3

    #@3
    const/4 v3, 0x3

    #@4
    move-object v0, v6

    #@5
    move v1, p0

    #@6
    move-wide v4, p1

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    #@a
    return-object v6
.end method

.method static int16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 678
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x1

    #@4
    int-to-long v4, p1

    #@5
    move-object v0, v6

    #@6
    move v1, p0

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method static int32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 682
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x2

    #@4
    int-to-long v4, p1

    #@5
    move-object v0, v6

    #@6
    move v1, p0

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method static int64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 10

    #@0
    .line 686
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x3

    #@4
    move-object v0, v6

    #@5
    move v1, p0

    #@6
    move-wide v4, p1

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method static int8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 674
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    int-to-long v4, p1

    #@5
    move-object v0, v6

    #@6
    move v1, p0

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method private static packedType(II)B
    .registers 2

    #@0
    shl-int/lit8 p1, p1, 0x2

    #@2
    or-int/2addr p0, p1

    #@3
    int-to-byte p0, p0

    #@4
    return p0
.end method

.method private static paddingBytes(II)I
    .registers 2

    #@0
    not-int p0, p0

    #@1
    add-int/lit8 p0, p0, 0x1

    #@3
    add-int/lit8 p1, p1, -0x1

    #@5
    and-int/2addr p0, p1

    #@6
    return p0
.end method

.method private storedPackedType()B
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 714
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private storedPackedType(I)B
    .registers 3

    #@0
    .line 718
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedWidth(I)I

    #@3
    move-result p1

    #@4
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    #@6
    invoke-static {p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->packedType(II)B

    #@9
    move-result p1

    #@a
    return p1
.end method

.method private storedWidth(I)I
    .registers 3

    #@0
    .line 726
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    #@2
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 727
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    #@a
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 729
    :cond_f
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    #@11
    return p1
.end method

.method static uInt16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 694
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    int-to-long v4, p1

    #@5
    move-object v0, v6

    #@6
    move v1, p0

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method static uInt32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 698
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v3, 0x2

    #@4
    int-to-long v4, p1

    #@5
    move-object v0, v6

    #@6
    move v1, p0

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method static uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 10

    #@0
    .line 702
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v3, 0x3

    #@4
    move-object v0, v6

    #@5
    move v1, p0

    #@6
    move-wide v4, p1

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method

.method static uInt8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .registers 9

    #@0
    .line 690
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v3, 0x0

    #@4
    int-to-long v4, p1

    #@5
    move-object v0, v6

    #@6
    move v1, p0

    #@7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    #@a
    return-object v6
.end method
