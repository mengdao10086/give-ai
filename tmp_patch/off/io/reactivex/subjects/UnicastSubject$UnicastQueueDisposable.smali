.class final Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UnicastQueueDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e022e8b5b1c1e37L


# instance fields
.field final synthetic this$0:Lio/reactivex/subjects/UnicastSubject;


# direct methods
.method constructor <init>(Lio/reactivex/subjects/UnicastSubject;)V
    .registers 2

    #@0
    .line 521
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@2
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    .line 547
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@2
    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@7
    return-void
.end method

.method public dispose()V
    .registers 3

    #@0
    .line 552
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@2
    iget-boolean v0, v0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@4
    if-nez v0, :cond_36

    #@6
    .line 553
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@8
    const/4 v1, 0x1

    #@9
    iput-boolean v1, v0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@b
    .line 555
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@d
    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->doTerminate()V

    #@10
    .line 557
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@12
    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@18
    .line 558
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@1a
    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@1c
    invoke-virtual {v0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->getAndIncrement()I

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_36

    #@22
    .line 559
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@24
    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@29
    .line 560
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@2b
    iget-boolean v0, v0, Lio/reactivex/subjects/UnicastSubject;->enableOperatorFusion:Z

    #@2d
    if-nez v0, :cond_36

    #@2f
    .line 561
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@31
    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@33
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@36
    :cond_36
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 569
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@2
    iget-boolean v0, v0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@4
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 542
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@2
    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 537
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@2
    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    and-int/2addr p1, v0

    #@2
    if-eqz p1, :cond_a

    #@4
    .line 528
    iget-object p1, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/UnicastSubject;

    #@6
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p1, Lio/reactivex/subjects/UnicastSubject;->enableOperatorFusion:Z

    #@9
    return v0

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    return p1
.end method
