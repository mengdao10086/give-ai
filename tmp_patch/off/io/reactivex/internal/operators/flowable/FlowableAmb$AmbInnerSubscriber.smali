.class final Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableAmb.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10756d62aa142dccL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final index:I

.field final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator<",
            "TT;>;"
        }
    .end annotation
.end field

.field won:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;ILorg/reactivestreams/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator<",
            "TT;>;I",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 161
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    .line 162
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;

    #@c
    .line 163
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->index:I

    #@e
    .line 164
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@10
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    #@0
    .line 222
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    return-void
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 208
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->won:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@6
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@9
    goto :goto_26

    #@a
    .line 211
    :cond_a
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;

    #@c
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->index:I

    #@e
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->win(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1d

    #@14
    const/4 v0, 0x1

    #@15
    .line 212
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->won:Z

    #@17
    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@19
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@1c
    goto :goto_26

    #@1d
    .line 215
    :cond_1d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->get()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@23
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@26
    :goto_26
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 193
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->won:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@6
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@9
    goto :goto_29

    #@a
    .line 196
    :cond_a
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;

    #@c
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->index:I

    #@e
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->win(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1d

    #@14
    const/4 v0, 0x1

    #@15
    .line 197
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->won:Z

    #@17
    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@19
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@1c
    goto :goto_29

    #@1d
    .line 200
    :cond_1d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->get()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@23
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@26
    .line 201
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@29
    :goto_29
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 179
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->won:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@6
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@9
    goto :goto_26

    #@a
    .line 182
    :cond_a
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;

    #@c
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->index:I

    #@e
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->win(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1d

    #@14
    const/4 v0, 0x1

    #@15
    .line 183
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->won:Z

    #@17
    .line 184
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@19
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@1c
    goto :goto_26

    #@1d
    .line 186
    :cond_1d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->get()Ljava/lang/Object;

    #@20
    move-result-object p1

    #@21
    check-cast p1, Lorg/reactivestreams/Subscription;

    #@23
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@26
    :goto_26
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    #@0
    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-static {p0, v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/reactivestreams/Subscription;)Z

    #@5
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-static {p0, v0, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    #@5
    return-void
.end method
