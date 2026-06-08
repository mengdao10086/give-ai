.class public final Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;
.super Lio/reactivex/Flowable;
.source "FlowableAutoConnect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final clients:Ljava/util/concurrent/atomic/AtomicInteger;

.field final connection:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final numberOfSubscribers:I

.field final source:Lio/reactivex/flowables/ConnectableFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;ILio/reactivex/functions/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "+TT;>;I",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 39
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->source:Lio/reactivex/flowables/ConnectableFlowable;

    #@5
    .line 41
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->numberOfSubscribers:I

    #@7
    .line 42
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->connection:Lio/reactivex/functions/Consumer;

    #@9
    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@e
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->clients:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->source:Lio/reactivex/flowables/ConnectableFlowable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/flowables/ConnectableFlowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@5
    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->clients:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@a
    move-result p1

    #@b
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->numberOfSubscribers:I

    #@d
    if-ne p1, v0, :cond_16

    #@f
    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->source:Lio/reactivex/flowables/ConnectableFlowable;

    #@11
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;->connection:Lio/reactivex/functions/Consumer;

    #@13
    invoke-virtual {p1, v0}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    #@16
    :cond_16
    return-void
.end method
