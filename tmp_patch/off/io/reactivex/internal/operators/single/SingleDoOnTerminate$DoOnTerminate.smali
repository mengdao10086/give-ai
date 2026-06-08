.class final Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;
.super Ljava/lang/Object;
.source "SingleDoOnTerminate.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDoOnTerminate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DoOnTerminate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleDoOnTerminate;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDoOnTerminate;Lio/reactivex/SingleObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnTerminate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->downstream:Lio/reactivex/SingleObserver;

    #@7
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 69
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnTerminate;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate;->onTerminate:Lio/reactivex/functions/Action;

    #@4
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    #@7
    goto :goto_1b

    #@8
    :catchall_8
    move-exception v0

    #@9
    .line 71
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@c
    .line 72
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
    .line 75
    :goto_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->downstream:Lio/reactivex/SingleObserver;

    #@1d
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@20
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->downstream:Lio/reactivex/SingleObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 56
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnTerminate;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate;->onTerminate:Lio/reactivex/functions/Action;

    #@4
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    #@7
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->downstream:Lio/reactivex/SingleObserver;

    #@9
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@c
    return-void

    #@d
    :catchall_d
    move-exception p1

    #@e
    .line 58
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@11
    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate;->downstream:Lio/reactivex/SingleObserver;

    #@13
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@16
    return-void
.end method
