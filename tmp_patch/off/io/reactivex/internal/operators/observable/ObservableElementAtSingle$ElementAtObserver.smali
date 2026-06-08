.class final Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;
.super Ljava/lang/Object;
.source "ObservableElementAtSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;
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

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field done:Z

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final index:J

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;JLjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;JTT;)V"
        }
    .end annotation

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 58
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->index:J

    #@7
    .line 59
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->defaultValue:Ljava/lang/Object;

    #@9
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 107
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->done:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    const/4 v0, 0x1

    #@5
    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->done:Z

    #@7
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->defaultValue:Ljava/lang/Object;

    #@9
    if-eqz v0, :cond_11

    #@b
    .line 113
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->downstream:Lio/reactivex/SingleObserver;

    #@d
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@10
    goto :goto_1b

    #@11
    .line 115
    :cond_11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->downstream:Lio/reactivex/SingleObserver;

    #@13
    new-instance v1, Ljava/util/NoSuchElementException;

    #@15
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@18
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 97
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 98
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 101
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->done:Z

    #@b
    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->downstream:Lio/reactivex/SingleObserver;

    #@d
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

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
    .line 82
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 85
    :cond_5
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->count:J

    #@7
    .line 86
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->index:J

    #@9
    cmp-long v2, v0, v2

    #@b
    if-nez v2, :cond_1b

    #@d
    const/4 v0, 0x1

    #@e
    .line 87
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->done:Z

    #@10
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@12
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@15
    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->downstream:Lio/reactivex/SingleObserver;

    #@17
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@1a
    return-void

    #@1b
    :cond_1b
    const-wide/16 v2, 0x1

    #@1d
    add-long/2addr v0, v2

    #@1e
    .line 92
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->count:J

    #@20
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 66
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
