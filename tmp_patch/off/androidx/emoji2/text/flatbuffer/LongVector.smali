.class public final Landroidx/emoji2/text/flatbuffer/LongVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "LongVector.java"


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
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/LongVector;
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    .line 37
    invoke-virtual {p0, p1, v0, p2}, Landroidx/emoji2/text/flatbuffer/LongVector;->__reset(IILjava/nio/ByteBuffer;)V

    #@5
    return-object p0
.end method

.method public get(I)J
    .registers 4

    #@0
    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/LongVector;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/LongVector;->__element(I)I

    #@5
    move-result p1

    #@6
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method
