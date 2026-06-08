.class final Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;
.super Ljava/lang/Object;
.source "ObservableToListSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableToListSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToListObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TU;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TU;>;TU;)V"
        }
    .end annotation

    #@0
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 75
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    #@2
    const/4 v1, 0x0

    #@3
    .line 110
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    #@5
    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    #@7
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 103
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    #@3
    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@8
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
    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 82
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
