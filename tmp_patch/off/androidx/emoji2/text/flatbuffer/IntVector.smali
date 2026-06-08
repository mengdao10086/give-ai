.class public final Landroidx/emoji2/text/flatbuffer/IntVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "IntVector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 27
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/IntVector;
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 37
    invoke-virtual {p0, p1, v0, p2}, Landroidx/emoji2/text/flatbuffer/IntVector;->__reset(IILjava/nio/ByteBuffer;)V

    #@4
    return-object p0
.end method

.method public get(I)I
    .registers 3

    #@0
    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/IntVector;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/IntVector;->__element(I)I

    #@5
    move-result p1

    #@6
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public getAsUnsigned(I)J
    .registers 6

    #@0
    .line 58
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/IntVector;->get(I)I

    #@3
    move-result p1

    #@4
    int-to-long v0, p1

    #@5
    const-wide v2, 0xffffffffL

    #@a
    and-long/2addr v0, v2

    #@b
    return-wide v0
.end method
