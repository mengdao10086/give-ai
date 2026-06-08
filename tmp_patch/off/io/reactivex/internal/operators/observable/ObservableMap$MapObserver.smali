.class final Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;
.super Lio/reactivex/internal/observers/BasicFuseableObserver;
.source "ObservableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicFuseableObserver<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    #@0
    .line 39
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/Observer;)V

    #@3
    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/functions/Function;

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
    .line 45
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 49
    :cond_5
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->sourceMode:I

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->downstream:Lio/reactivex/Observer;

    #@b
    const/4 v0, 0x0

    #@c
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@f
    return-void

    #@10
    .line 57
    :cond_10
    :try_start_10
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/functions/Function;

    #@12
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    const-string v0, "The mapper function returned a null value."

    #@18
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object p1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_22

    #@1c
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->downstream:Lio/reactivex/Observer;

    #@1e
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@21
    return-void

    #@22
    :catchall_22
    move-exception p1

    #@23
    .line 59
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->fail(Ljava/lang/Throwable;)V

    #@26
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 74
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/functions/Function;

    #@a
    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    const-string v1, "The mapper function returned a null value."

    #@10
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    :goto_16
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    #@0
    .line 67
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->transitiveBoundaryFusion(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method
