.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# static fields
.field private static final EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 925
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    #@2
    # getter for: Landroidx/emoji2/text/flatbuffer/FlexBuffers;->EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    #@a
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    #@c
    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4

    #@0
    .line 928
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    #@3
    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .registers 1

    #@0
    .line 936
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    #@2
    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 11

    #@0
    .line 971
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    int-to-long v2, p1

    #@6
    cmp-long v4, v2, v0

    #@8
    if-ltz v4, :cond_f

    #@a
    .line 973
    # getter for: Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->NULL_REFERENCE:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    .line 975
    :cond_f
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@11
    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->end:I

    #@13
    int-to-long v5, v5

    #@14
    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    #@16
    int-to-long v7, v7

    #@17
    mul-long/2addr v0, v7

    #@18
    add-long/2addr v5, v0

    #@19
    add-long/2addr v5, v2

    #@1a
    long-to-int v0, v5

    #@1b
    invoke-interface {v4, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    #@22
    move-result v0

    #@23
    .line 976
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->end:I

    #@25
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    #@27
    mul-int/2addr p1, v2

    #@28
    add-int/2addr v1, p1

    #@29
    .line 977
    new-instance p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    #@2b
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    #@2d
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    #@2f
    invoke-direct {p1, v2, v1, v3, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    #@32
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 944
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    #@2
    if-ne p0, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public bridge synthetic size()I
    .registers 2

    #@0
    .line 923
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->size()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 923
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    #@0
    const-string v0, "[ "

    #@2
    .line 952
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    .line 953
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_1f

    #@c
    .line 955
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@13
    add-int/lit8 v2, v0, -0x1

    #@15
    if-eq v1, v2, :cond_1c

    #@17
    const-string v2, ", "

    #@19
    .line 957
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_a

    #@1f
    :cond_1f
    const-string v0, " ]"

    #@21
    .line 960
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    return-object p1
.end method
