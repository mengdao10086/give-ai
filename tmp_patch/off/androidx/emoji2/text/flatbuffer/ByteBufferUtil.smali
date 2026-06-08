.class public Landroidx/emoji2/text/flatbuffer/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getSizePrefix(Ljava/nio/ByteBuffer;)I
    .registers 2

    #@0
    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static removeSizePrefix(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    #@0
    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@3
    move-result-object p0

    #@4
    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, 0x4

    #@a
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@d
    return-object p0
.end method
