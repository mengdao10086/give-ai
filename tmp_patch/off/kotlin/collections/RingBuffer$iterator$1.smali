.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SlidingWindow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,207:1\n205#2:208\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:208\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "count",
        "",
        "index",
        "computeNext",
        "",
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
.field private count:I

.field private index:I

.field final synthetic this$0:Lkotlin/collections/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/RingBuffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/collections/RingBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/RingBuffer<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    #@2
    .line 111
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    #@5
    .line 112
    invoke-virtual {p1}, Lkotlin/collections/RingBuffer;->size()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    #@b
    .line 113
    # getter for: Lkotlin/collections/RingBuffer;->startIndex:I
    invoke-static {p1}, Lkotlin/collections/RingBuffer;->access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I

    #@e
    move-result p1

    #@f
    iput p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    #@11
    return-void
.end method


# virtual methods
.method protected computeNext()V
    .registers 3

    #@0
    .line 116
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 117
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer$iterator$1;->done()V

    #@7
    goto :goto_28

    #@8
    .line 120
    :cond_8
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    #@a
    # getter for: Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/RingBuffer;->access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    #@10
    aget-object v0, v0, v1

    #@12
    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer$iterator$1;->setNext(Ljava/lang/Object;)V

    #@15
    .line 121
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    #@17
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    .line 208
    # getter for: Lkotlin/collections/RingBuffer;->capacity:I
    invoke-static {v0}, Lkotlin/collections/RingBuffer;->access$getCapacity$p(Lkotlin/collections/RingBuffer;)I

    #@1e
    move-result v0

    #@1f
    rem-int/2addr v1, v0

    #@20
    .line 121
    iput v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    #@22
    .line 122
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    #@24
    add-int/lit8 v0, v0, -0x1

    #@26
    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    #@28
    :goto_28
    return-void
.end method
