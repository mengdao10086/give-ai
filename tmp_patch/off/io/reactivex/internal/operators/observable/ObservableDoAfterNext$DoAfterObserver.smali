.class final Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;
.super Lio/reactivex/internal/observers/BasicFuseableObserver;
.source "ObservableDoAfterNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDoAfterNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoAfterObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicFuseableObserver<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final onAfterNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 46
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/Observer;)V

    #@3
    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->onAfterNext:Lio/reactivex/functions/Consumer;

    #@5
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->downstream:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@5
    .line 54
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->sourceMode:I

    #@7
    if-nez v0, :cond_13

    #@9
    .line 56
    :try_start_9
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->onAfterNext:Lio/reactivex/functions/Consumer;

    #@b
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    #@e
    goto :goto_13

    #@f
    :catchall_f
    move-exception p1

    #@10
    .line 58
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->fail(Ljava/lang/Throwable;)V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 73
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->onAfterNext:Lio/reactivex/functions/Consumer;

    #@a
    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    :cond_d
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    #@0
    .line 65
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;->transitiveBoundaryFusion(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method
