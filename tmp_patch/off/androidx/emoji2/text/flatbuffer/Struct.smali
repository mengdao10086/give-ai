.class public Landroidx/emoji2/text/flatbuffer/Struct;
.super Ljava/lang/Object;
.source "Struct.java"


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field protected bb_pos:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public __reset()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 57
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/Struct;->__reset(ILjava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method protected __reset(ILjava/nio/ByteBuffer;)V
    .registers 3

    #@0
    .line 39
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/Struct;->bb:Ljava/nio/ByteBuffer;

    #@2
    if-eqz p2, :cond_7

    #@4
    .line 41
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Struct;->bb_pos:I

    #@6
    goto :goto_a

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    .line 43
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Struct;->bb_pos:I

    #@a
    :goto_a
    return-void
.end method
