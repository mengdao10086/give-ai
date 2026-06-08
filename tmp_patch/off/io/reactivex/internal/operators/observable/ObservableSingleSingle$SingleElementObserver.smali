.class final Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;
.super Ljava/lang/Object;
.source "ObservableSingleSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSingleSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleElementObserver"
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

.field upstream:Lio/reactivex/disposables/Disposable;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TT;)V"
        }
    .end annotation

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->defaultValue:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 98
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 101
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    #@8
    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    #@a
    const/4 v1, 0x0

    #@b
    .line 103
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    #@d
    if-nez v0, :cond_11

    #@f
    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->defaultValue:Ljava/lang/Object;

    #@11
    :cond_11
    if-eqz v0, :cond_19

    #@13
    .line 109
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->downstream:Lio/reactivex/SingleObserver;

    #@15
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@18
    goto :goto_23

    #@19
    .line 111
    :cond_19
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->downstream:Lio/reactivex/SingleObserver;

    #@1b
    new-instance v1, Ljava/util/NoSuchElementException;

    #@1d
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@20
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@23
    :goto_23
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 88
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 89
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 92
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    #@b
    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->downstream:Lio/reactivex/SingleObserver;

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
    .line 74
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 77
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    #@7
    if-eqz v0, :cond_1e

    #@9
    const/4 p1, 0x1

    #@a
    .line 78
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    #@c
    .line 79
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@e
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@11
    .line 80
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->downstream:Lio/reactivex/SingleObserver;

    #@13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v1, "Sequence contains more than one element!"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@1d
    return-void

    #@1e
    .line 83
    :cond_1e
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    #@20
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 58
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
