.class public Landroidx/emoji2/text/flatbuffer/BaseVector;
.super Ljava/lang/Object;
.source "BaseVector.java"


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field private element_size:I

.field private length:I

.field private vector:I


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
.method protected __element(I)I
    .registers 4

    #@0
    .line 52
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->element_size:I

    #@4
    mul-int/2addr p1, v1

    #@5
    add-int/2addr v0, p1

    #@6
    return v0
.end method

.method protected __reset(IILjava/nio/ByteBuffer;)V
    .registers 4

    #@0
    .line 63
    iput-object p3, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->bb:Ljava/nio/ByteBuffer;

    #@2
    if-eqz p3, :cond_11

    #@4
    .line 65
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    #@6
    add-int/lit8 p1, p1, -0x4

    #@8
    .line 66
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@b
    move-result p1

    #@c
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->length:I

    #@e
    .line 67
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->element_size:I

    #@10
    goto :goto_18

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    .line 69
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    #@14
    .line 70
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->length:I

    #@16
    .line 71
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->element_size:I

    #@18
    :goto_18
    return-void
.end method

.method protected __vector()I
    .registers 2

    #@0
    .line 42
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    #@2
    return v0
.end method

.method public length()I
    .registers 2

    #@0
    .line 92
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->length:I

    #@2
    return v0
.end method

.method public reset()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 83
    invoke-virtual {p0, v0, v0, v1}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__reset(IILjava/nio/ByteBuffer;)V

    #@5
    return-void
.end method
