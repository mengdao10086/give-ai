.class public final Lio/reactivex/internal/operators/observable/ObservableAnySingle;
.super Lio/reactivex/Single;
.source "ObservableAnySingle.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/internal/fuseable/FuseToObservable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 28
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle;->source:Lio/reactivex/ObservableSource;

    #@5
    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public fuseToObservable()Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .line 40
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableAny;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle;->source:Lio/reactivex/ObservableSource;

    #@4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle;->predicate:Lio/reactivex/functions/Predicate;

    #@6
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableAny;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Predicate;)V

    #@9
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle;->source:Lio/reactivex/ObservableSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;

    #@4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle;->predicate:Lio/reactivex/functions/Predicate;

    #@6
    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Predicate;)V

    #@9
    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@c
    return-void
.end method
