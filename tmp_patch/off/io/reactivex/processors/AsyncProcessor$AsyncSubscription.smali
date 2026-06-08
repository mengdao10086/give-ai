.class final Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "AsyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/AsyncProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e215678802bc8d0L


# instance fields
.field final parent:Lio/reactivex/processors/AsyncProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/AsyncProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/processors/AsyncProcessor<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 380
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@3
    .line 381
    iput-object p2, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->parent:Lio/reactivex/processors/AsyncProcessor;

    #@5
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 386
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->tryCancel()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 387
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->parent:Lio/reactivex/processors/AsyncProcessor;

    #@8
    invoke-virtual {v0, p0}, Lio/reactivex/processors/AsyncProcessor;->remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    #@b
    :cond_b
    return-void
.end method

.method onComplete()V
    .registers 2

    #@0
    .line 392
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 393
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@8
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@b
    :cond_b
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 398
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 399
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@9
    goto :goto_f

    #@a
    .line 401
    :cond_a
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@f
    :goto_f
    return-void
.end method
