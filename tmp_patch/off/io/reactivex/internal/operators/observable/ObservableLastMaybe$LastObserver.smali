.class final Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;
.super Ljava/lang/Object;
.source "ObservableLastMaybe.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableLastMaybe;
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
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
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
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 56
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 87
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_11

    #@8
    const/4 v1, 0x0

    #@9
    .line 90
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    #@b
    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@d
    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@10
    goto :goto_16

    #@11
    .line 93
    :cond_11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@13
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@16
    :goto_16
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 80
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    const/4 v0, 0x0

    #@5
    .line 81
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    #@7
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@9
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

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
    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    #@2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 69
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
