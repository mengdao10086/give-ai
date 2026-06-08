.class public final Lio/reactivex/internal/queue/SpscArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscArrayQueue.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/SimplePlainQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "TE;>;",
        "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x11fe70baff9afb41L


# instance fields
.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final lookAheadStep:I

.field final mask:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "jctools.spsc.max.lookahead.step"

    #@2
    const/16 v1, 0x1000

    #@4
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lio/reactivex/internal/queue/SpscArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    #@a
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 51
    invoke-static {p1}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    #@7
    .line 52
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->length()I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, -0x1

    #@d
    iput v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->mask:I

    #@f
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@14
    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@16
    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@18
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@1b
    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@1d
    .line 55
    div-int/lit8 p1, p1, 0x4

    #@1f
    sget-object v0, Lio/reactivex/internal/queue/SpscArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    #@21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v0

    #@25
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@28
    move-result p1

    #@29
    iput p1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->lookAheadStep:I

    #@2b
    return-void
.end method


# virtual methods
.method calcElementOffset(J)I
    .registers 3

    #@0
    long-to-int p1, p1

    #@1
    .line 125
    iget p2, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->mask:I

    #@3
    and-int/2addr p1, p2

    #@4
    return p1
.end method

.method calcElementOffset(JI)I
    .registers 4

    #@0
    long-to-int p1, p1

    #@1
    and-int/2addr p1, p3

    #@2
    return p1
.end method

.method public clear()V
    .registers 2

    #@0
    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_d

    #@c
    goto :goto_0

    #@d
    :cond_d
    return-void
.end method

.method public isEmpty()Z
    .registers 5

    #@0
    .line 103
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    iget-object v2, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@b
    move-result-wide v2

    #@c
    cmp-long v0, v0, v2

    #@e
    if-nez v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method lvElement(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 133
    invoke-virtual {p0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->get(I)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_38

    #@2
    .line 64
    iget v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->mask:I

    #@4
    .line 65
    iget-object v1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@9
    move-result-wide v1

    #@a
    .line 66
    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->calcElementOffset(JI)I

    #@d
    move-result v3

    #@e
    .line 67
    iget-wide v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerLookAhead:J

    #@10
    cmp-long v4, v1, v4

    #@12
    if-ltz v4, :cond_2d

    #@14
    .line 68
    iget v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->lookAheadStep:I

    #@16
    int-to-long v4, v4

    #@17
    add-long/2addr v4, v1

    #@18
    .line 69
    invoke-virtual {p0, v4, v5, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->calcElementOffset(JI)I

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p0, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->lvElement(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    if-nez v0, :cond_25

    #@22
    .line 70
    iput-wide v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerLookAhead:J

    #@24
    goto :goto_2d

    #@25
    .line 71
    :cond_25
    invoke-virtual {p0, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->lvElement(I)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    if-eqz v0, :cond_2d

    #@2b
    const/4 p1, 0x0

    #@2c
    return p1

    #@2d
    .line 75
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v3, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->soElement(ILjava/lang/Object;)V

    #@30
    const-wide/16 v3, 0x1

    #@32
    add-long/2addr v1, v3

    #@33
    .line 76
    invoke-virtual {p0, v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->soProducerIndex(J)V

    #@36
    const/4 p1, 0x1

    #@37
    return p1

    #@38
    .line 61
    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    #@3a
    const-string v0, "Null is not a valid element"

    #@3c
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3f
    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)Z"
        }
    .end annotation

    #@0
    .line 83
    invoke-virtual {p0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_e

    #@6
    invoke-virtual {p0, p2}, Lio/reactivex/internal/queue/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method public poll()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 89
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    .line 90
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->calcElementOffset(J)I

    #@9
    move-result v2

    #@a
    .line 92
    invoke-virtual {p0, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->lvElement(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    if-nez v3, :cond_12

    #@11
    return-object v4

    #@12
    :cond_12
    const-wide/16 v5, 0x1

    #@14
    add-long/2addr v0, v5

    #@15
    .line 96
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->soConsumerIndex(J)V

    #@18
    .line 97
    invoke-virtual {p0, v2, v4}, Lio/reactivex/internal/queue/SpscArrayQueue;->soElement(ILjava/lang/Object;)V

    #@1b
    return-object v3
.end method

.method soConsumerIndex(J)V
    .registers 4

    #@0
    .line 111
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    #@5
    return-void
.end method

.method soElement(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .line 129
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/queue/SpscArrayQueue;->lazySet(ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method soProducerIndex(J)V
    .registers 4

    #@0
    .line 107
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    #@5
    return-void
.end method
