.class final Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;
.super Lio/reactivex/internal/observers/BasicFuseableObserver;
.source "ObservableDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDistinct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicFuseableObserver<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "-TK;>;"
        }
    .end annotation
.end field

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Ljava/util/Collection<",
            "-TK;>;)V"
        }
    .end annotation

    #@0
    .line 62
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/Observer;)V

    #@3
    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->keySelector:Lio/reactivex/functions/Function;

    #@5
    .line 64
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    #@7
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@5
    .line 132
    invoke-super {p0}, Lio/reactivex/internal/observers/BasicFuseableObserver;->clear()V

    #@8
    return-void
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 105
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    #@2
    if-nez v0, :cond_11

    #@4
    const/4 v0, 0x1

    #@5
    .line 106
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    #@7
    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@c
    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->downstream:Lio/reactivex/Observer;

    #@e
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@11
    :cond_11
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 94
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 95
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    goto :goto_15

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 97
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    #@b
    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    #@d
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@10
    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->downstream:Lio/reactivex/Observer;

    #@12
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@15
    :goto_15
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
    .line 69
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 72
    :cond_5
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->sourceMode:I

    #@7
    if-nez v0, :cond_28

    #@9
    .line 77
    :try_start_9
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->keySelector:Lio/reactivex/functions/Function;

    #@b
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    const-string v1, "The keySelector returned a null key"

    #@11
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .line 78
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    #@17
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1a
    move-result v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_23

    #@1b
    if-eqz v0, :cond_2e

    #@1d
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->downstream:Lio/reactivex/Observer;

    #@1f
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@22
    goto :goto_2e

    #@23
    :catchall_23
    move-exception p1

    #@24
    .line 80
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->fail(Ljava/lang/Throwable;)V

    #@27
    return-void

    #@28
    .line 88
    :cond_28
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->downstream:Lio/reactivex/Observer;

    #@2a
    const/4 v0, 0x0

    #@2b
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@2e
    :cond_2e
    :goto_2e
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 5
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
    .line 121
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1c

    #@8
    .line 123
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    #@a
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->keySelector:Lio/reactivex/functions/Function;

    #@c
    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    const-string v3, "The keySelector returned a null key"

    #@12
    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    :cond_1c
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    #@0
    .line 114
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->transitiveBoundaryFusion(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method
