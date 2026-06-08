.class public final Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "MetadataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/MetadataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 82
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    .registers 4

    #@0
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    #@3
    return-object p0
.end method

.method public get(I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 3

    #@0
    .line 85
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    #@5
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->get(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 4

    #@0
    .line 86
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->__element(I)I

    #@3
    move-result p2

    #@4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->bb:Ljava/nio/ByteBuffer;

    #@6
    # invokes: Landroidx/emoji2/text/flatbuffer/MetadataItem;->__indirect(ILjava/nio/ByteBuffer;)I
    invoke-static {p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->access$000(ILjava/nio/ByteBuffer;)I

    #@9
    move-result p2

    #@a
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->bb:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@f
    move-result-object p1

    #@10
    return-object p1
.end method
