.class public final Landroidx/emoji2/text/flatbuffer/UnionVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "UnionVector.java"


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
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/UnionVector;
    .registers 4

    #@0
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/UnionVector;->__reset(IILjava/nio/ByteBuffer;)V

    #@3
    return-object p0
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/Table;I)Landroidx/emoji2/text/flatbuffer/Table;
    .registers 4

    #@0
    .line 50
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/UnionVector;->__element(I)I

    #@3
    move-result p2

    #@4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/UnionVector;->bb:Ljava/nio/ByteBuffer;

    #@6
    invoke-static {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/Table;->__union(Landroidx/emoji2/text/flatbuffer/Table;ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/Table;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method
