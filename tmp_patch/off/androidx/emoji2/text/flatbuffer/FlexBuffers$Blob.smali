.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blob"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 673
    const-class v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers;

    #@2
    .line 674
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    #@4
    # getter for: Landroidx/emoji2/text/flatbuffer/FlexBuffers;->EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    #@c
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    #@e
    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4

    #@0
    .line 677
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    #@3
    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
    .registers 1

    #@0
    .line 682
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    #@2
    return-object v0
.end method


# virtual methods
.method public data()Ljava/nio/ByteBuffer;
    .registers 4

    #@0
    .line 690
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@2
    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->data()[B

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 691
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    #@c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@f
    .line 692
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    #@11
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    #@14
    move-result v2

    #@15
    add-int/2addr v1, v2

    #@16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@19
    .line 693
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public get(I)B
    .registers 4

    #@0
    .line 715
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    #@4
    add-int/2addr v1, p1

    #@5
    invoke-interface {v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@8
    move-result p1

    #@9
    return p1
.end method

.method public getBytes()[B
    .registers 6

    #@0
    .line 701
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    #@3
    move-result v0

    #@4
    .line 702
    new-array v1, v0, [B

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v0, :cond_17

    #@9
    .line 704
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@b
    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    #@d
    add-int/2addr v4, v2

    #@e
    invoke-interface {v3, v4}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@11
    move-result v3

    #@12
    aput-byte v3, v1, v2

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_7

    #@17
    :cond_17
    return-object v1
.end method

.method public bridge synthetic size()I
    .registers 2

    #@0
    .line 673
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->size()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 723
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    #@4
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    #@7
    move-result v2

    #@8
    invoke-interface {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6

    #@0
    const/16 v0, 0x22

    #@2
    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    .line 732
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@7
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    #@9
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    #@c
    move-result v3

    #@d
    invoke-interface {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    return-object p1
.end method
