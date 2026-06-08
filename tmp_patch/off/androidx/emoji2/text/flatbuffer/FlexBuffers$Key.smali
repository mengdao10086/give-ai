.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 743
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    #@2
    # getter for: Landroidx/emoji2/text/flatbuffer/FlexBuffers;->EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    #@a
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    #@c
    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4

    #@0
    .line 746
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    #@3
    return-void
.end method

.method static synthetic access$700()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .registers 1

    #@0
    .line 741
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    #@2
    return-object v0
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .registers 1

    #@0
    .line 754
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    #@2
    return-object v0
.end method


# virtual methods
.method compareTo([B)I
    .registers 7

    #@0
    .line 778
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    #@2
    const/4 v1, 0x0

    #@3
    .line 782
    :cond_3
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@5
    invoke-interface {v2, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@8
    move-result v2

    #@9
    .line 783
    aget-byte v3, p1, v1

    #@b
    if-nez v2, :cond_f

    #@d
    sub-int/2addr v2, v3

    #@e
    return v2

    #@f
    :cond_f
    add-int/lit8 v0, v0, 0x1

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    .line 788
    array-length v4, p1

    #@14
    if-ne v1, v4, :cond_18

    #@16
    sub-int/2addr v2, v3

    #@17
    return v2

    #@18
    :cond_18
    if-eq v2, v3, :cond_3

    #@1a
    sub-int/2addr v2, v3

    #@1b
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    .line 805
    instance-of v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 808
    :cond_6
    check-cast p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    #@8
    iget v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    #@a
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    #@c
    if-ne v0, v2, :cond_15

    #@e
    iget p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->byteWidth:I

    #@10
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->byteWidth:I

    #@12
    if-ne p1, v0, :cond_15

    #@14
    const/4 v1, 0x1

    #@15
    :cond_15
    return v1
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 812
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->byteWidth:I

    #@4
    xor-int/2addr v0, v1

    #@5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 768
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    #@2
    .line 769
    :goto_2
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@4
    invoke-interface {v1, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_16

    #@a
    .line 770
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    #@c
    sub-int/2addr v0, v1

    #@d
    .line 774
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@f
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    #@11
    invoke-interface {v1, v2, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    :cond_16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_2
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3

    #@0
    .line 762
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method
