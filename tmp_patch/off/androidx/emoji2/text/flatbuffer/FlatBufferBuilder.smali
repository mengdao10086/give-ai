.class public Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferBackedInputStream;,
        Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;,
        Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

.field finished:Z

.field force_defaults:Z

.field minalign:I

.field nested:Z

.field num_vtables:I

.field object_start:I

.field space:I

.field final utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

.field vector_num_elems:I

.field vtable:[I

.field vtable_in_use:I

.field vtables:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x400

    #@2
    .line 100
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    #@0
    .line 93
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;->INSTANCE:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    #@6
    move-result-object v2

    #@7
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V

    #@a
    return-void
.end method

.method public constructor <init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 59
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V

    #@8
    return-void
.end method

.method public constructor <init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V
    .registers 8

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 38
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    #@6
    const/4 v1, 0x0

    #@7
    .line 39
    iput-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@9
    const/4 v1, 0x0

    #@a
    .line 40
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    #@c
    .line 41
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@e
    .line 42
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    #@10
    const/16 v2, 0x10

    #@12
    new-array v2, v2, [I

    #@14
    .line 44
    iput-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    #@16
    .line 45
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    #@18
    .line 46
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    #@1a
    .line 47
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@1c
    if-gtz p1, :cond_1f

    #@1e
    move p1, v0

    #@1f
    .line 75
    :cond_1f
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    #@21
    if-eqz p3, :cond_30

    #@23
    .line 77
    iput-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@25
    .line 78
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@28
    .line 79
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2a
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2c
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@2f
    goto :goto_36

    #@30
    .line 81
    :cond_30
    invoke-virtual {p2, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    #@33
    move-result-object p1

    #@34
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@36
    .line 83
    :goto_36
    iput-object p4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    #@38
    .line 84
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@3a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@3d
    move-result p1

    #@3e
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@40
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    #@0
    .line 124
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)V

    #@8
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)V
    .registers 5

    #@0
    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, p2, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V

    #@b
    return-void
.end method

.method private dataStart()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 990
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    #@3
    .line 991
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@5
    return v0
.end method

.method static growByteBuffer(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;
    .registers 5

    #@0
    .line 239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x40000000    # -2.0f

    #@6
    and-int/2addr v1, v0

    #@7
    if-nez v1, :cond_27

    #@9
    if-nez v0, :cond_d

    #@b
    const/4 v1, 0x1

    #@c
    goto :goto_f

    #@d
    :cond_d
    shl-int/lit8 v1, v0, 0x1

    #@f
    :goto_f
    const/4 v2, 0x0

    #@10
    .line 243
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 244
    invoke-virtual {p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    #@16
    move-result-object p1

    #@17
    .line 245
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    #@1e
    move-result v1

    #@1f
    sub-int/2addr v1, v0

    #@20
    .line 246
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@23
    .line 247
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@26
    return-object p1

    #@27
    .line 241
    :cond_27
    new-instance p0, Ljava/lang/AssertionError;

    #@29
    const-string p1, "FlatBuffers: cannot grow buffer beyond 2 gigabytes."

    #@2b
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2e
    throw p0
.end method

.method public static isFieldPresent(Landroidx/emoji2/text/flatbuffer/Table;I)Z
    .registers 2

    #@0
    .line 210
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    :goto_9
    return p0
.end method


# virtual methods
.method public Nested(I)V
    .registers 3

    #@0
    .line 635
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_7

    #@6
    return-void

    #@7
    .line 636
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    #@9
    const-string v0, "FlatBuffers: struct must be serialized inline."

    #@b
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@e
    throw p1
.end method

.method public addBoolean(IZZ)V
    .registers 5

    #@0
    .line 697
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_6

    #@4
    if-eq p2, p3, :cond_c

    #@6
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addBoolean(Z)V

    #@9
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@c
    :cond_c
    return-void
.end method

.method public addBoolean(Z)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 360
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@5
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putBoolean(Z)V

    #@8
    return-void
.end method

.method public addByte(B)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 367
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@5
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putByte(B)V

    #@8
    return-void
.end method

.method public addByte(IBI)V
    .registers 5

    #@0
    .line 708
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_6

    #@4
    if-eq p2, p3, :cond_c

    #@6
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    #@9
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@c
    :cond_c
    return-void
.end method

.method public addDouble(D)V
    .registers 5

    #@0
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    .line 402
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@6
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putDouble(D)V

    #@9
    return-void
.end method

.method public addDouble(IDD)V
    .registers 7

    #@0
    .line 763
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_8

    #@4
    cmpl-double p4, p2, p4

    #@6
    if-eqz p4, :cond_e

    #@8
    :cond_8
    invoke-virtual {p0, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addDouble(D)V

    #@b
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@e
    :cond_e
    return-void
.end method

.method public addFloat(F)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    .line 395
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@5
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putFloat(F)V

    #@8
    return-void
.end method

.method public addFloat(IFD)V
    .registers 7

    #@0
    .line 752
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_9

    #@4
    float-to-double v0, p2

    #@5
    cmpl-double p3, v0, p3

    #@7
    if-eqz p3, :cond_f

    #@9
    :cond_9
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addFloat(F)V

    #@c
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@f
    :cond_f
    return-void
.end method

.method public addInt(I)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    .line 381
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@5
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putInt(I)V

    #@8
    return-void
.end method

.method public addInt(III)V
    .registers 5

    #@0
    .line 730
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_6

    #@4
    if-eq p2, p3, :cond_c

    #@6
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    #@9
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@c
    :cond_c
    return-void
.end method

.method public addLong(IJJ)V
    .registers 7

    #@0
    .line 741
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_8

    #@4
    cmp-long p4, p2, p4

    #@6
    if-eqz p4, :cond_e

    #@8
    :cond_8
    invoke-virtual {p0, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addLong(J)V

    #@b
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@e
    :cond_e
    return-void
.end method

.method public addLong(J)V
    .registers 5

    #@0
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    .line 388
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@6
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putLong(J)V

    #@9
    return-void
.end method

.method public addOffset(I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    .line 410
    invoke-virtual {p0, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@5
    .line 412
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@8
    move-result v0

    #@9
    sub-int/2addr v0, p1

    #@a
    add-int/2addr v0, v1

    #@b
    .line 413
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putInt(I)V

    #@e
    return-void
.end method

.method public addOffset(III)V
    .registers 5

    #@0
    .line 774
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_6

    #@4
    if-eq p2, p3, :cond_c

    #@6
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

    #@9
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@c
    :cond_c
    return-void
.end method

.method public addShort(ISI)V
    .registers 5

    #@0
    .line 719
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    if-nez v0, :cond_6

    #@4
    if-eq p2, p3, :cond_c

    #@6
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    #@9
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@c
    :cond_c
    return-void
.end method

.method public addShort(S)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 374
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@5
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putShort(S)V

    #@8
    return-void
.end method

.method public addStruct(III)V
    .registers 4

    #@0
    if-eq p2, p3, :cond_8

    #@2
    .line 785
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->Nested(I)V

    #@5
    .line 786
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    #@8
    :cond_8
    return-void
.end method

.method public clear()V
    .registers 4

    #@0
    .line 217
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    .line 218
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@d
    const/4 v0, 0x1

    #@e
    .line 219
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    #@10
    .line 220
    :goto_10
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    #@12
    const/4 v1, 0x0

    #@13
    if-lez v0, :cond_1e

    #@15
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@17
    add-int/lit8 v0, v0, -0x1

    #@19
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    #@1b
    aput v1, v2, v0

    #@1d
    goto :goto_10

    #@1e
    .line 221
    :cond_1e
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    #@20
    .line 222
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@22
    .line 223
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    #@24
    .line 224
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    #@26
    .line 225
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    #@28
    .line 226
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    #@2a
    return-void
.end method

.method public createByteVector(Ljava/nio/ByteBuffer;)I
    .registers 5

    #@0
    .line 600
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 601
    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@8
    .line 602
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@a
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@c
    sub-int/2addr v2, v0

    #@d
    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@f
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 603
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@14
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@17
    .line 604
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    #@1a
    move-result p1

    #@1b
    return p1
.end method

.method public createByteVector([B)I
    .registers 5

    #@0
    .line 568
    array-length v0, p1

    #@1
    const/4 v1, 0x1

    #@2
    .line 569
    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@5
    .line 570
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@7
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@9
    sub-int/2addr v2, v0

    #@a
    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@c
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@f
    .line 571
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@11
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@14
    .line 572
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    #@17
    move-result p1

    #@18
    return p1
.end method

.method public createByteVector([BII)I
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 584
    invoke-virtual {p0, v0, p3, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@4
    .line 585
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@6
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    sub-int/2addr v1, p3

    #@9
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@b
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@e
    .line 586
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@10
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@13
    .line 587
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    #@16
    move-result p1

    #@17
    return p1
.end method

.method public createSortedVectorOfTables(Landroidx/emoji2/text/flatbuffer/Table;[I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/emoji2/text/flatbuffer/Table;",
            ">(TT;[I)I"
        }
    .end annotation

    #@0
    .line 526
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/Table;->sortTables([ILjava/nio/ByteBuffer;)V

    #@5
    .line 527
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->createVectorOfTables([I)I

    #@8
    move-result p1

    #@9
    return p1
.end method

.method public createString(Ljava/lang/CharSequence;)I
    .registers 5

    #@0
    .line 538
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    .line 539
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    #@a
    const/4 v1, 0x1

    #@b
    .line 540
    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@e
    .line 541
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@10
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@12
    sub-int/2addr v2, v0

    #@13
    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@15
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@18
    .line 542
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    #@1a
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@1c
    invoke-virtual {v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    #@1f
    .line 543
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    #@22
    move-result p1

    #@23
    return p1
.end method

.method public createString(Ljava/nio/ByteBuffer;)I
    .registers 5

    #@0
    .line 553
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 554
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    #@8
    const/4 v1, 0x1

    #@9
    .line 555
    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@c
    .line 556
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@e
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@10
    sub-int/2addr v2, v0

    #@11
    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@16
    .line 557
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@18
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@1b
    .line 558
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    #@1e
    move-result p1

    #@1f
    return p1
.end method

.method public createUnintializedVector(III)Ljava/nio/ByteBuffer;
    .registers 5

    #@0
    mul-int v0, p1, p2

    #@2
    .line 495
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@5
    .line 497
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@7
    iget p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@9
    sub-int/2addr p2, v0

    #@a
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@c
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@f
    .line 500
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@14
    move-result-object p1

    #@15
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@17
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1a
    move-result-object p1

    #@1b
    .line 501
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1e
    return-object p1
.end method

.method public createVectorOfTables([I)I
    .registers 4

    #@0
    .line 512
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->notNested()V

    #@3
    const/4 v0, 0x4

    #@4
    .line 513
    array-length v1, p1

    #@5
    invoke-virtual {p0, v0, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    #@8
    .line 514
    array-length v0, p1

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    :goto_b
    if-ltz v0, :cond_15

    #@d
    aget v1, p1, v0

    #@f
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_b

    #@15
    .line 515
    :cond_15
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    #@18
    move-result p1

    #@19
    return p1
.end method

.method public dataBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    #@0
    .line 976
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    #@3
    .line 977
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@5
    return-object v0
.end method

.method public endTable()I
    .registers 12

    #@0
    .line 807
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@2
    if-eqz v0, :cond_c5

    #@4
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@6
    if-eqz v0, :cond_c5

    #@8
    const/4 v0, 0x0

    #@9
    .line 809
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    #@c
    .line 810
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@f
    move-result v1

    #@10
    .line 812
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    #@12
    add-int/lit8 v2, v2, -0x1

    #@14
    :goto_14
    if-ltz v2, :cond_1f

    #@16
    .line 814
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@18
    aget v3, v3, v2

    #@1a
    if-nez v3, :cond_1f

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    goto :goto_14

    #@1f
    :cond_1f
    add-int/lit8 v3, v2, 0x1

    #@21
    :goto_21
    if-ltz v2, :cond_34

    #@23
    .line 818
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@25
    aget v4, v4, v2

    #@27
    if-eqz v4, :cond_2c

    #@29
    sub-int v4, v1, v4

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v4, v0

    #@2d
    :goto_2d
    int-to-short v4, v4

    #@2e
    .line 819
    invoke-virtual {p0, v4}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    #@31
    add-int/lit8 v2, v2, -0x1

    #@33
    goto :goto_21

    #@34
    .line 823
    :cond_34
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    #@36
    sub-int v2, v1, v2

    #@38
    int-to-short v2, v2

    #@39
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    #@3c
    const/4 v2, 0x2

    #@3d
    add-int/2addr v3, v2

    #@3e
    mul-int/2addr v3, v2

    #@3f
    int-to-short v3, v3

    #@40
    .line 824
    invoke-virtual {p0, v3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    #@43
    move v3, v0

    #@44
    .line 829
    :goto_44
    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    #@46
    if-ge v3, v4, :cond_84

    #@48
    .line 830
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@4a
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    #@4d
    move-result v4

    #@4e
    iget-object v5, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    #@50
    aget v5, v5, v3

    #@52
    sub-int/2addr v4, v5

    #@53
    .line 831
    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@55
    .line 832
    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@57
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@5a
    move-result v6

    #@5b
    .line 833
    iget-object v7, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@5d
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@60
    move-result v7

    #@61
    if-ne v6, v7, :cond_81

    #@63
    move v7, v2

    #@64
    :goto_64
    if-ge v7, v6, :cond_7c

    #@66
    .line 835
    iget-object v8, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@68
    add-int v9, v4, v7

    #@6a
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@6d
    move-result v8

    #@6e
    iget-object v9, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@70
    add-int v10, v5, v7

    #@72
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@75
    move-result v9

    #@76
    if-eq v8, v9, :cond_79

    #@78
    goto :goto_81

    #@79
    :cond_79
    add-int/lit8 v7, v7, 0x2

    #@7b
    goto :goto_64

    #@7c
    .line 839
    :cond_7c
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    #@7e
    aget v3, v4, v3

    #@80
    goto :goto_85

    #@81
    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_44

    #@84
    :cond_84
    move v3, v0

    #@85
    :goto_85
    if-eqz v3, :cond_97

    #@87
    .line 847
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@89
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    #@8c
    move-result v2

    #@8d
    sub-int/2addr v2, v1

    #@8e
    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@90
    .line 849
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@92
    sub-int/2addr v3, v1

    #@93
    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    #@96
    goto :goto_c2

    #@97
    .line 853
    :cond_97
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    #@99
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    #@9b
    array-length v5, v4

    #@9c
    if-ne v3, v5, :cond_a5

    #@9e
    mul-int/2addr v3, v2

    #@9f
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    #@a2
    move-result-object v2

    #@a3
    iput-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    #@a5
    .line 854
    :cond_a5
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    #@a7
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    #@a9
    add-int/lit8 v4, v3, 0x1

    #@ab
    iput v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    #@ad
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@b0
    move-result v4

    #@b1
    aput v4, v2, v3

    #@b3
    .line 856
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@b5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    #@b8
    move-result v3

    #@b9
    sub-int/2addr v3, v1

    #@ba
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@bd
    move-result v4

    #@be
    sub-int/2addr v4, v1

    #@bf
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    #@c2
    .line 859
    :goto_c2
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@c4
    return v1

    #@c5
    .line 808
    :cond_c5
    new-instance v0, Ljava/lang/AssertionError;

    #@c7
    const-string v1, "FlatBuffers: endTable called without startTable"

    #@c9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@cc
    throw v0
.end method

.method public endVector()I
    .registers 3

    #@0
    .line 475
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@2
    if-eqz v0, :cond_11

    #@4
    const/4 v0, 0x0

    #@5
    .line 477
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@7
    .line 478
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    #@9
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putInt(I)V

    #@c
    .line 479
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 476
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    const-string v1, "FlatBuffers: endVector called without startVector"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v0
.end method

.method public finish(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 902
    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(IZ)V

    #@4
    return-void
.end method

.method public finish(ILjava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 941
    invoke-virtual {p0, p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(ILjava/lang/String;Z)V

    #@4
    return-void
.end method

.method protected finish(ILjava/lang/String;Z)V
    .registers 7

    #@0
    .line 923
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eqz p3, :cond_7

    #@5
    move v2, v1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v2, 0x0

    #@8
    :goto_8
    add-int/lit8 v2, v2, 0x8

    #@a
    invoke-virtual {p0, v0, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@d
    .line 924
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    if-ne v0, v1, :cond_25

    #@13
    const/4 v0, 0x3

    #@14
    :goto_14
    if-ltz v0, :cond_21

    #@16
    .line 928
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v1

    #@1a
    int-to-byte v1, v1

    #@1b
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_14

    #@21
    .line 930
    :cond_21
    invoke-virtual {p0, p1, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(IZ)V

    #@24
    return-void

    #@25
    .line 925
    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    #@27
    const-string p2, "FlatBuffers: file identifier must be length 4"

    #@29
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2c
    throw p1
.end method

.method protected finish(IZ)V
    .registers 6

    #@0
    .line 887
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eqz p2, :cond_7

    #@5
    move v2, v1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v2, 0x0

    #@8
    :goto_8
    add-int/2addr v2, v1

    #@9
    invoke-virtual {p0, v0, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@c
    .line 888
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

    #@f
    if-eqz p2, :cond_1d

    #@11
    .line 890
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@16
    move-result p1

    #@17
    iget p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@19
    sub-int/2addr p1, p2

    #@1a
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    #@1d
    .line 892
    :cond_1d
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@1f
    iget p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@21
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@24
    const/4 p1, 0x1

    #@25
    .line 893
    iput-boolean p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    #@27
    return-void
.end method

.method public finishSizePrefixed(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 911
    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(IZ)V

    #@4
    return-void
.end method

.method public finishSizePrefixed(ILjava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 952
    invoke-virtual {p0, p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(ILjava/lang/String;Z)V

    #@4
    return-void
.end method

.method public finished()V
    .registers 3

    #@0
    .line 612
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 613
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    const-string v1, "FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish()."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0
.end method

.method public forceDefaults(Z)Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .registers 2

    #@0
    .line 964
    iput-boolean p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    #@2
    return-object p0
.end method

.method public init(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .registers 3

    #@0
    .line 138
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    #@2
    .line 139
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@4
    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@7
    .line 141
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@9
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@b
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@e
    const/4 p1, 0x1

    #@f
    .line 142
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    #@11
    .line 143
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@16
    move-result p1

    #@17
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@19
    const/4 p1, 0x0

    #@1a
    .line 144
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    #@1c
    .line 145
    iput-boolean p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@1e
    .line 146
    iput-boolean p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    #@20
    .line 147
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    #@22
    .line 148
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    #@24
    .line 149
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    #@26
    return-object p0
.end method

.method public notNested()V
    .registers 3

    #@0
    .line 623
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 624
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    const-string v1, "FlatBuffers: object serialization must not be nested."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0
.end method

.method public offset()I
    .registers 3

    #@0
    .line 257
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public pad(I)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    if-ge v1, p1, :cond_12

    #@4
    .line 266
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@6
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    add-int/lit8 v3, v3, -0x1

    #@a
    iput v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@c
    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_2

    #@12
    :cond_12
    return-void
.end method

.method public prep(II)V
    .registers 7

    #@0
    .line 281
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    #@2
    if-le p1, v0, :cond_6

    #@4
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    #@6
    .line 284
    :cond_6
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@b
    move-result v0

    #@c
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@e
    sub-int/2addr v0, v1

    #@f
    add-int/2addr v0, p2

    #@10
    not-int v0, v0

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    add-int/lit8 v1, p1, -0x1

    #@15
    and-int/2addr v0, v1

    #@16
    .line 286
    :goto_16
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@18
    add-int v2, v0, p1

    #@1a
    add-int/2addr v2, p2

    #@1b
    if-ge v1, v2, :cond_41

    #@1d
    .line 287
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@1f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@22
    move-result v1

    #@23
    .line 288
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@25
    .line 289
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    #@27
    invoke-static {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->growByteBuffer(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v3

    #@2b
    iput-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2d
    if-eq v2, v3, :cond_34

    #@2f
    .line 291
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    #@31
    invoke-virtual {v3, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    #@34
    .line 293
    :cond_34
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@36
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@38
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    #@3b
    move-result v3

    #@3c
    sub-int/2addr v3, v1

    #@3d
    add-int/2addr v2, v3

    #@3e
    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@40
    goto :goto_16

    #@41
    .line 295
    :cond_41
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->pad(I)V

    #@44
    return-void
.end method

.method public putBoolean(Z)V
    .registers 4

    #@0
    .line 304
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    int-to-byte p1, p1

    #@9
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@c
    return-void
.end method

.method public putByte(B)V
    .registers 4

    #@0
    .line 312
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@b
    return-void
.end method

.method public putDouble(D)V
    .registers 5

    #@0
    .line 352
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@4
    add-int/lit8 v1, v1, -0x8

    #@6
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    #@b
    return-void
.end method

.method public putFloat(F)V
    .registers 4

    #@0
    .line 344
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@4
    add-int/lit8 v1, v1, -0x4

    #@6
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    #@b
    return-void
.end method

.method public putInt(I)V
    .registers 4

    #@0
    .line 328
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@4
    add-int/lit8 v1, v1, -0x4

    #@6
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    #@b
    return-void
.end method

.method public putLong(J)V
    .registers 5

    #@0
    .line 336
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@4
    add-int/lit8 v1, v1, -0x8

    #@6
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    #@b
    return-void
.end method

.method public putShort(S)V
    .registers 4

    #@0
    .line 320
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@4
    add-int/lit8 v1, v1, -0x2

    #@6
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@b
    return-void
.end method

.method public required(II)V
    .registers 5

    #@0
    .line 871
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@5
    move-result v0

    #@6
    sub-int/2addr v0, p1

    #@7
    .line 872
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@c
    move-result p1

    #@d
    sub-int/2addr v0, p1

    #@e
    .line 873
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@10
    add-int/2addr v0, p2

    #@11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_19

    #@17
    const/4 p1, 0x1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    :goto_1a
    if-eqz p1, :cond_1d

    #@1c
    return-void

    #@1d
    .line 876
    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    #@1f
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    const-string v1, "FlatBuffers: field "

    #@23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object p2

    #@2a
    const-string v0, " must be set"

    #@2c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p2

    #@30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p2

    #@34
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@37
    throw p1
.end method

.method public sizedByteArray()[B
    .registers 4

    #@0
    .line 1017
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@2
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@7
    move-result v1

    #@8
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@a
    sub-int/2addr v1, v2

    #@b
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->sizedByteArray(II)[B

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public sizedByteArray(II)[B
    .registers 4

    #@0
    .line 1004
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    #@3
    .line 1005
    new-array p2, p2, [B

    #@5
    .line 1006
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@a
    .line 1007
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@f
    return-object p2
.end method

.method public sizedInputStream()Ljava/io/InputStream;
    .registers 3

    #@0
    .line 1027
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    #@3
    .line 1028
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@8
    move-result-object v0

    #@9
    .line 1029
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    #@b
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@e
    .line 1030
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    #@10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@17
    .line 1031
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferBackedInputStream;

    #@19
    invoke-direct {v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferBackedInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    #@1c
    return-object v1
.end method

.method public slot(I)V
    .registers 4

    #@0
    .line 797
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@2
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@5
    move-result v1

    #@6
    aput v1, v0, p1

    #@8
    return-void
.end method

.method public startTable(I)V
    .registers 4

    #@0
    .line 680
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->notNested()V

    #@3
    .line 681
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@5
    if-eqz v0, :cond_a

    #@7
    array-length v0, v0

    #@8
    if-ge v0, p1, :cond_e

    #@a
    :cond_a
    new-array v0, p1, [I

    #@c
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@e
    .line 682
    :cond_e
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    #@10
    .line 683
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    #@12
    const/4 v1, 0x0

    #@13
    invoke-static {v0, v1, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    #@16
    const/4 p1, 0x1

    #@17
    .line 684
    iput-boolean p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@19
    .line 685
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    #@1c
    move-result p1

    #@1d
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    #@1f
    return-void
.end method

.method public startVector(III)V
    .registers 4

    #@0
    .line 460
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->notNested()V

    #@3
    .line 461
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    #@5
    mul-int/2addr p1, p2

    #@6
    const/4 p2, 0x4

    #@7
    .line 462
    invoke-virtual {p0, p2, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@a
    .line 463
    invoke-virtual {p0, p3, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    #@d
    const/4 p1, 0x1

    #@e
    .line 464
    iput-boolean p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    #@10
    return-void
.end method
