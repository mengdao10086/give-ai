.class final Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;
.super Ljava/lang/Object;
.source "ObservableDetach.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachObserver"
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
.field downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    #@0
    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    .line 51
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    #@4
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@6
    .line 52
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asObserver()Lio/reactivex/Observer;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@c
    .line 53
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@f
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@2
    .line 86
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    #@4
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@6
    .line 87
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asObserver()Lio/reactivex/Observer;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@c
    .line 88
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@2
    .line 78
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    #@4
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@6
    .line 79
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asObserver()Lio/reactivex/Observer;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@c
    .line 80
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@f
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 66
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
