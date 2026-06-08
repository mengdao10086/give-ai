.class final Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;
.super Ljava/lang/Object;
.source "CompletableDoOnEvent.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DoOnEvent"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/CompletableObserver;

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;Lio/reactivex/CompletableObserver;)V
    .registers 3

    #@0
    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->observer:Lio/reactivex/CompletableObserver;

    #@7
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    #@0
    .line 48
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;->onEvent:Lio/reactivex/functions/Consumer;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    #@8
    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->observer:Lio/reactivex/CompletableObserver;

    #@a
    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@d
    return-void

    #@e
    :catchall_e
    move-exception v0

    #@f
    .line 50
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@12
    .line 51
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->observer:Lio/reactivex/CompletableObserver;

    #@14
    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@17
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 61
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent;->onEvent:Lio/reactivex/functions/Consumer;

    #@4
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    #@7
    goto :goto_1b

    #@8
    :catchall_8
    move-exception v0

    #@9
    .line 63
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@c
    .line 64
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    #@e
    const/4 v2, 0x2

    #@f
    new-array v2, v2, [Ljava/lang/Throwable;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object p1, v2, v3

    #@14
    const/4 p1, 0x1

    #@15
    aput-object v0, v2, p1

    #@17
    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@1a
    move-object p1, v1

    #@1b
    .line 67
    :goto_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->observer:Lio/reactivex/CompletableObserver;

    #@1d
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@20
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent;->observer:Lio/reactivex/CompletableObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5
    return-void
.end method
