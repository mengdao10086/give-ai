.class public final Landroidx/emoji2/text/flatbuffer/FloatVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "FloatVector.java"


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
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/FloatVector;
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 37
    invoke-virtual {p0, p1, v0, p2}, Landroidx/emoji2/text/flatbuffer/FloatVector;->__reset(IILjava/nio/ByteBuffer;)V

    #@4
    return-object p0
.end method

.method public get(I)F
    .registers 3

    #@0
    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FloatVector;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FloatVector;->__element(I)I

    #@5
    move-result p1

    #@6
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@9
    move-result p1

    #@a
    return p1
.end method
