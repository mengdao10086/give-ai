.class public final Landroidx/emoji2/text/flatbuffer/StringVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "StringVector.java"


# instance fields
.field private utf8:Landroidx/emoji2/text/flatbuffer/Utf8;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 27
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    #@3
    .line 28
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/StringVector;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    #@9
    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/StringVector;
    .registers 4

    #@0
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/StringVector;->__reset(IILjava/nio/ByteBuffer;)V

    #@3
    return-object p0
.end method

.method public get(I)Ljava/lang/String;
    .registers 4

    #@0
    .line 50
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/StringVector;->__element(I)I

    #@3
    move-result p1

    #@4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/StringVector;->bb:Ljava/nio/ByteBuffer;

    #@6
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/StringVector;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    #@8
    invoke-static {p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/Table;->__string(ILjava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method
