.class final Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;
.super Ljava/lang/Object;
.source "ObservableLastSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableLastSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastObserver"
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
.field final defaultItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->defaultItem:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 64
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 95
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_11

    #@8
    const/4 v1, 0x0

    #@9
    .line 98
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    #@b
    .line 99
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    #@d
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@10
    goto :goto_25

    #@11
    .line 101
    :cond_11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->defaultItem:Ljava/lang/Object;

    #@13
    if-eqz v0, :cond_1b

    #@15
    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    #@17
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@1a
    goto :goto_25

    #@1b
    .line 105
    :cond_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    #@1d
    new-instance v1, Ljava/util/NoSuchElementException;

    #@1f
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@22
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@25
    :goto_25
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 88
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    const/4 v0, 0x0

    #@5
    .line 89
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    #@7
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    #@9
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    #@2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 77
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
