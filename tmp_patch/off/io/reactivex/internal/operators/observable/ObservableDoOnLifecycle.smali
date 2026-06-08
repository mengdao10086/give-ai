.class public final Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final onDispose:Lio/reactivex/functions/Action;

.field private final onSubscribe:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    #@0
    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 27
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;->onSubscribe:Lio/reactivex/functions/Consumer;

    #@5
    .line 28
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;->onDispose:Lio/reactivex/functions/Action;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 33
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;->source:Lio/reactivex/ObservableSource;

    #@2
    new-instance v1, Lio/reactivex/internal/observers/DisposableLambdaObserver;

    #@4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;->onSubscribe:Lio/reactivex/functions/Consumer;

    #@6
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;->onDispose:Lio/reactivex/functions/Action;

    #@8
    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/observers/DisposableLambdaObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V

    #@b
    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@e
    return-void
.end method
