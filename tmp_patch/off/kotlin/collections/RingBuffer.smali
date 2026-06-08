.class final Lkotlin/collections/RingBuffer;
.super Lkotlin/collections/AbstractList;
.source "SlidingWindow.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n205#1:209\n205#1:210\n205#1:211\n1#2:208\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n106#1:209\n176#1:210\n189#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001d\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0018\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u000f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001fH\u0096\u0002J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0006J\u0015\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014\u00a2\u0006\u0002\u0010#J\'\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\tH\u0014\u00a2\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0082\u0008R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlin/collections/RingBuffer;",
        "T",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "filledSize",
        "([Ljava/lang/Object;I)V",
        "[Ljava/lang/Object;",
        "<set-?>",
        "size",
        "getSize",
        "()I",
        "startIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "expanded",
        "maxCapacity",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "isFull",
        "",
        "iterator",
        "",
        "removeFirst",
        "n",
        "toArray",
        "()[Ljava/lang/Object;",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "forward",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private size:I

.field private startIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 95
    new-array p1, p1, [Ljava/lang/Object;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lkotlin/collections/RingBuffer;-><init>([Ljava/lang/Object;I)V

    #@6
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 6

    #@0
    const-string v0, "buffer"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 89
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    #@8
    iput-object p1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@a
    const/4 v0, 0x1

    #@b
    const/4 v1, 0x0

    #@c
    if-ltz p2, :cond_10

    #@e
    move v2, v0

    #@f
    goto :goto_11

    #@10
    :cond_10
    move v2, v1

    #@11
    :goto_11
    if-eqz v2, :cond_44

    #@13
    .line 92
    array-length v2, p1

    #@14
    if-gt p2, v2, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    move v0, v1

    #@18
    :goto_18
    if-eqz v0, :cond_20

    #@1a
    .line 97
    array-length p1, p1

    #@1b
    iput p1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    #@1d
    .line 100
    iput p2, p0, Lkotlin/collections/RingBuffer;->size:I

    #@1f
    return-void

    #@20
    .line 92
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    const-string v1, "ring buffer filled size: "

    #@24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p2

    #@2b
    const-string v0, " cannot be larger than the buffer size: "

    #@2d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p2

    #@31
    array-length p1, p1

    #@32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@3c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw p2

    #@44
    .line 91
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    #@46
    const-string v0, "ring buffer filled size should not be negative but it is "

    #@48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object p1

    #@4f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object p1

    #@53
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@58
    move-result-object p1

    #@59
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw p2
.end method

.method public static final synthetic access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;
    .registers 1

    #@0
    .line 89
    iget-object p0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getCapacity$p(Lkotlin/collections/RingBuffer;)I
    .registers 1

    #@0
    .line 89
    iget p0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    #@2
    return p0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I
    .registers 1

    #@0
    .line 89
    iget p0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    #@2
    return p0
.end method

.method private final forward(II)I
    .registers 3

    #@0
    add-int/2addr p1, p2

    #@1
    .line 205
    # getter for: Lkotlin/collections/RingBuffer;->capacity:I
    invoke-static {p0}, Lkotlin/collections/RingBuffer;->access$getCapacity$p(Lkotlin/collections/RingBuffer;)I

    #@4
    move-result p2

    #@5
    rem-int/2addr p1, p2

    #@6
    return p1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 172
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->isFull()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1f

    #@6
    .line 176
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@8
    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    #@a
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    .line 210
    # getter for: Lkotlin/collections/RingBuffer;->capacity:I
    invoke-static {p0}, Lkotlin/collections/RingBuffer;->access$getCapacity$p(Lkotlin/collections/RingBuffer;)I

    #@12
    move-result v2

    #@13
    rem-int/2addr v1, v2

    #@14
    .line 176
    aput-object p1, v0, v1

    #@16
    .line 177
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@19
    move-result p1

    #@1a
    add-int/lit8 p1, p1, 0x1

    #@1c
    iput p1, p0, Lkotlin/collections/RingBuffer;->size:I

    #@1e
    return-void

    #@1f
    .line 173
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@21
    const-string v0, "ring buffer is full"

    #@23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw p1
.end method

.method public final expanded(I)Lkotlin/collections/RingBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/collections/RingBuffer<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 163
    iget v0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    #@2
    shr-int/lit8 v1, v0, 0x1

    #@4
    add-int/2addr v0, v1

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    #@a
    move-result p1

    #@b
    .line 164
    iget v0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    #@d
    if-nez v0, :cond_1b

    #@f
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@11
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    const-string v0, "copyOf(this, newSize)"

    #@17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    goto :goto_21

    #@1b
    :cond_1b
    new-array p1, p1, [Ljava/lang/Object;

    #@1d
    invoke-virtual {p0, p1}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@20
    move-result-object p1

    #@21
    .line 165
    :goto_21
    new-instance v0, Lkotlin/collections/RingBuffer;

    #@23
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@26
    move-result v1

    #@27
    invoke-direct {v0, p1, v1}, Lkotlin/collections/RingBuffer;-><init>([Ljava/lang/Object;I)V

    #@2a
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    .line 104
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    #@9
    .line 106
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@b
    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    #@d
    add-int/2addr v1, p1

    #@e
    .line 209
    # getter for: Lkotlin/collections/RingBuffer;->capacity:I
    invoke-static {p0}, Lkotlin/collections/RingBuffer;->access$getCapacity$p(Lkotlin/collections/RingBuffer;)I

    #@11
    move-result p1

    #@12
    rem-int/2addr v1, p1

    #@13
    aget-object p1, v0, v1

    #@15
    return-object p1
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 100
    iget v0, p0, Lkotlin/collections/RingBuffer;->size:I

    #@2
    return v0
.end method

.method public final isFull()Z
    .registers 3

    #@0
    .line 109
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    #@6
    if-ne v0, v1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 111
    new-instance v0, Lkotlin/collections/RingBuffer$iterator$1;

    #@2
    invoke-direct {v0, p0}, Lkotlin/collections/RingBuffer$iterator$1;-><init>(Lkotlin/collections/RingBuffer;)V

    #@5
    check-cast v0, Ljava/util/Iterator;

    #@7
    return-object v0
.end method

.method public final removeFirst(I)V
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ltz p1, :cond_6

    #@4
    move v2, v0

    #@5
    goto :goto_7

    #@6
    :cond_6
    move v2, v1

    #@7
    :goto_7
    if-eqz v2, :cond_64

    #@9
    .line 185
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@c
    move-result v2

    #@d
    if-gt p1, v2, :cond_10

    #@f
    goto :goto_11

    #@10
    :cond_10
    move v0, v1

    #@11
    :goto_11
    if-eqz v0, :cond_3d

    #@13
    if-lez p1, :cond_3c

    #@15
    .line 188
    iget v0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    #@17
    add-int v2, v0, p1

    #@19
    .line 211
    # getter for: Lkotlin/collections/RingBuffer;->capacity:I
    invoke-static {p0}, Lkotlin/collections/RingBuffer;->access$getCapacity$p(Lkotlin/collections/RingBuffer;)I

    #@1c
    move-result v3

    #@1d
    rem-int/2addr v2, v3

    #@1e
    const/4 v3, 0x0

    #@1f
    if-le v0, v2, :cond_2e

    #@21
    .line 192
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@23
    iget v5, p0, Lkotlin/collections/RingBuffer;->capacity:I

    #@25
    invoke-static {v4, v3, v0, v5}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@28
    .line 193
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@2a
    invoke-static {v0, v3, v1, v2}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@2d
    goto :goto_33

    #@2e
    .line 195
    :cond_2e
    iget-object v1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@30
    invoke-static {v1, v3, v0, v2}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@33
    .line 198
    :goto_33
    iput v2, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    #@35
    .line 199
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@38
    move-result v0

    #@39
    sub-int/2addr v0, p1

    #@3a
    iput v0, p0, Lkotlin/collections/RingBuffer;->size:I

    #@3c
    :cond_3c
    return-void

    #@3d
    .line 185
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f
    const-string v1, "n shouldn\'t be greater than the buffer size: n = "

    #@41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object p1

    #@48
    const-string v0, ", size = "

    #@4a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p1

    #@4e
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@51
    move-result v0

    #@52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object p1

    #@56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object p1

    #@5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5f
    move-result-object p1

    #@60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v0

    #@64
    .line 184
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    const-string v1, "n shouldn\'t be negative but it is "

    #@68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object p1

    #@6f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object p1

    #@73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@78
    move-result-object p1

    #@79
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    #@0
    .line 155
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@3
    move-result v0

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    const-string v0, "array"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 130
    array-length v0, p1

    #@6
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_19

    #@c
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@f
    move-result v0

    #@10
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    const-string v0, "copyOf(this, newSize)"

    #@16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@19
    .line 132
    :cond_19
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@1c
    move-result v0

    #@1d
    .line 135
    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    #@1f
    const/4 v2, 0x0

    #@20
    move v3, v2

    #@21
    :goto_21
    if-ge v3, v0, :cond_32

    #@23
    .line 137
    iget v4, p0, Lkotlin/collections/RingBuffer;->capacity:I

    #@25
    if-ge v1, v4, :cond_32

    #@27
    .line 138
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@29
    aget-object v4, v4, v1

    #@2b
    aput-object v4, p1, v3

    #@2d
    add-int/lit8 v3, v3, 0x1

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_21

    #@32
    :cond_32
    :goto_32
    if-ge v3, v0, :cond_3f

    #@34
    .line 145
    iget-object v1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    #@36
    aget-object v1, v1, v2

    #@38
    aput-object v1, p1, v3

    #@3a
    add-int/lit8 v3, v3, 0x1

    #@3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_32

    #@3f
    .line 149
    :cond_3f
    array-length v0, p1

    #@40
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@43
    move-result v1

    #@44
    if-le v0, v1, :cond_4d

    #@46
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    #@49
    move-result v0

    #@4a
    const/4 v1, 0x0

    #@4b
    aput-object v1, p1, v0

    #@4d
    :cond_4d
    return-object p1
.end method
