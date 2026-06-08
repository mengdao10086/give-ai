.class public final Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;
.super Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;
.source "BlockingFirstSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BlockingBaseSubscriber<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 23
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 36
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 37
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->error:Ljava/lang/Throwable;

    #@6
    goto :goto_a

    #@7
    .line 39
    :cond_7
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@a
    .line 41
    :goto_a
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->countDown()V

    #@d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 27
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 28
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->value:Ljava/lang/Object;

    #@6
    .line 29
    iget-object p1, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@8
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@b
    .line 30
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->countDown()V

    #@e
    :cond_e
    return-void
.end method
