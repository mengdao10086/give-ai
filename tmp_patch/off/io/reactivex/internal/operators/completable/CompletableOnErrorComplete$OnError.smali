.class final Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;
.super Ljava/lang/Object;
.source "CompletableOnErrorComplete.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnError"
.end annotation


# instance fields
.field private final downstream:Lio/reactivex/CompletableObserver;

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;Lio/reactivex/CompletableObserver;)V
    .registers 3

    #@0
    .line 42
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->this$0:Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 43
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->downstream:Lio/reactivex/CompletableObserver;

    #@7
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    #@0
    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->downstream:Lio/reactivex/CompletableObserver;

    #@2
    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7

    #@0
    .line 56
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->this$0:Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;->predicate:Lio/reactivex/functions/Predicate;

    #@4
    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@7
    move-result v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_16

    #@8
    if-eqz v0, :cond_10

    #@a
    .line 64
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->downstream:Lio/reactivex/CompletableObserver;

    #@c
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@f
    goto :goto_15

    #@10
    .line 66
    :cond_10
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->downstream:Lio/reactivex/CompletableObserver;

    #@12
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@15
    :goto_15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    .line 58
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1a
    .line 59
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->downstream:Lio/reactivex/CompletableObserver;

    #@1c
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    #@1e
    const/4 v3, 0x2

    #@1f
    new-array v3, v3, [Ljava/lang/Throwable;

    #@21
    const/4 v4, 0x0

    #@22
    aput-object p1, v3, v4

    #@24
    const/4 p1, 0x1

    #@25
    aput-object v0, v3, p1

    #@27
    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@2a
    invoke-interface {v1, v2}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@2d
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->downstream:Lio/reactivex/CompletableObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5
    return-void
.end method
