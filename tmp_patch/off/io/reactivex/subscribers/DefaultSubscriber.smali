.class public abstract Lio/reactivex/subscribers/DefaultSubscriber;
.super Ljava/lang/Object;
.source "DefaultSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected final cancel()V
    .registers 3

    #@0
    .line 102
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    .line 103
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@4
    iput-object v1, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@6
    .line 104
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@9
    return-void
.end method

.method protected onStart()V
    .registers 3

    #@0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    .line 113
    invoke-virtual {p0, v0, v1}, Lio/reactivex/subscribers/DefaultSubscriber;->request(J)V

    #@8
    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 81
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 82
    iput-object p1, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@e
    .line 83
    invoke-virtual {p0}, Lio/reactivex/subscribers/DefaultSubscriber;->onStart()V

    #@11
    :cond_11
    return-void
.end method

.method protected final request(J)V
    .registers 4

    #@0
    .line 92
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 94
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@7
    :cond_7
    return-void
.end method
