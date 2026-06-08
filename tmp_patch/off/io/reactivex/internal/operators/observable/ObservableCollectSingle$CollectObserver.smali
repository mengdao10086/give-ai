.class final Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;
.super Ljava/lang/Object;
.source "ObservableCollectSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCollectSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollectObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final collector:Lio/reactivex/functions/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;Lio/reactivex/functions/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TU;>;TU;",
            "Lio/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    #@0
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 68
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->collector:Lio/reactivex/functions/BiConsumer;

    #@7
    .line 69
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->u:Ljava/lang/Object;

    #@9
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 115
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 118
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->done:Z

    #@8
    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->downstream:Lio/reactivex/SingleObserver;

    #@a
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->u:Ljava/lang/Object;

    #@c
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 105
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 106
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 109
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->done:Z

    #@b
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->downstream:Lio/reactivex/SingleObserver;

    #@d
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@10
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
    .line 92
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 96
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->collector:Lio/reactivex/functions/BiConsumer;

    #@7
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->u:Ljava/lang/Object;

    #@9
    invoke-interface {v0, v1, p1}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    #@c
    goto :goto_16

    #@d
    :catchall_d
    move-exception p1

    #@e
    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@10
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@13
    .line 99
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->onError(Ljava/lang/Throwable;)V

    #@16
    :goto_16
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
