.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "FlowableConcatMap.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleScalarSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 358
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@3
    .line 359
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->value:Ljava/lang/Object;

    #@5
    .line 360
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@7
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    #@0
    return-void
.end method

.method public request(J)V
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long p1, p1, v0

    #@4
    if-lez p1, :cond_18

    #@6
    const/4 p1, 0x0

    #@7
    const/4 p2, 0x1

    #@8
    .line 365
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->compareAndSet(ZZ)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_18

    #@e
    .line 366
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@10
    .line 367
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->value:Ljava/lang/Object;

    #@12
    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@15
    .line 368
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@18
    :cond_18
    return-void
.end method
