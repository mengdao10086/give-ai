.class final Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelReduceFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelReduceFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SlotPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x693e266f84553f6L


# instance fields
.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final releaseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 231
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->releaseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    return-void
.end method


# virtual methods
.method releaseSlot()Z
    .registers 3

    #@0
    .line 255
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->releaseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method tryAcquireSlot()I
    .registers 3

    #@0
    .line 243
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->get()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_9

    #@7
    const/4 v0, -0x1

    #@8
    return v0

    #@9
    :cond_9
    add-int/lit8 v1, v0, 0x1

    #@b
    .line 248
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->compareAndSet(II)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    return v0
.end method
