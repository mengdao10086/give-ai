.class public final Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "MetadataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/MetadataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 69
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
    .registers 4

    #@0
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    #@3
    return-object p0
.end method

.method public get(I)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 3

    #@0
    .line 72
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    #@5
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->get(Landroidx/emoji2/text/flatbuffer/MetadataList;I)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/MetadataList;I)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 4

    #@0
    .line 73
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->__element(I)I

    #@3
    move-result p2

    #@4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->bb:Ljava/nio/ByteBuffer;

    #@6
    # invokes: Landroidx/emoji2/text/flatbuffer/MetadataList;->__indirect(ILjava/nio/ByteBuffer;)I
    invoke-static {p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->access$000(ILjava/nio/ByteBuffer;)I

    #@9
    move-result p2

    #@a
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->bb:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@f
    move-result-object p1

    #@10
    return-object p1
.end method
