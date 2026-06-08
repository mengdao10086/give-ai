.class final Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;
.super Ljava/lang/Object;
.source "SingleDoOnEvent.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDoOnEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DoOnEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDoOnEvent;Lio/reactivex/SingleObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 44
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/SingleObserver;

    #@7
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 68
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDoOnEvent;->onEvent:Lio/reactivex/functions/BiConsumer;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1, p1}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    #@8
    goto :goto_1c

    #@9
    :catchall_9
    move-exception v0

    #@a
    .line 70
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@d
    .line 71
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    #@f
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [Ljava/lang/Throwable;

    #@12
    const/4 v3, 0x0

    #@13
    aput-object p1, v2, v3

    #@15
    const/4 p1, 0x1

    #@16
    aput-object v0, v2, p1

    #@18
    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@1b
    move-object p1, v1

    #@1c
    .line 73
    :goto_1c
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/SingleObserver;

    #@1e
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@21
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/SingleObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 55
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDoOnEvent;->onEvent:Lio/reactivex/functions/BiConsumer;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, p1, v1}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    #@8
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/SingleObserver;

    #@a
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@d
    return-void

    #@e
    :catchall_e
    move-exception p1

    #@f
    .line 57
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@12
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/SingleObserver;

    #@14
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@17
    return-void
.end method
