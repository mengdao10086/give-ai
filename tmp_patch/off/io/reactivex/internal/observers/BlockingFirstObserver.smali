.class public final Lio/reactivex/internal/observers/BlockingFirstObserver;
.super Lio/reactivex/internal/observers/BlockingBaseObserver;
.source "BlockingFirstObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BlockingBaseObserver<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 21
    invoke-direct {p0}, Lio/reactivex/internal/observers/BlockingBaseObserver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 34
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_6

    #@4
    .line 35
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->error:Ljava/lang/Throwable;

    #@6
    .line 37
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingFirstObserver;->countDown()V

    #@9
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
    .line 25
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 26
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    #@6
    .line 27
    iget-object p1, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@8
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@b
    .line 28
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingFirstObserver;->countDown()V

    #@e
    :cond_e
    return-void
.end method
