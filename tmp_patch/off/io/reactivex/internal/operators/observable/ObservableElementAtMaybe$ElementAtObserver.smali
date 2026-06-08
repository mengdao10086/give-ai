.class final Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;
.super Ljava/lang/Object;
.source "ObservableElementAtMaybe.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ElementAtObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field count:J

.field done:Z

.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final index:J

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;J)V"
        }
    .end annotation

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 52
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->index:J

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 100
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->done:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 101
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->done:Z

    #@7
    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@9
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@c
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 90
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 91
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 94
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->done:Z

    #@b
    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@d
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@10
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 75
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 78
    :cond_5
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->count:J

    #@7
    .line 79
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->index:J

    #@9
    cmp-long v2, v0, v2

    #@b
    if-nez v2, :cond_1b

    #@d
    const/4 v0, 0x1

    #@e
    .line 80
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->done:Z

    #@10
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@12
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@15
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@17
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@1a
    return-void

    #@1b
    :cond_1b
    const-wide/16 v2, 0x1

    #@1d
    add-long/2addr v0, v2

    #@1e
    .line 85
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->count:J

    #@20
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 59
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
