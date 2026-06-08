.class public final Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;
.super Lio/reactivex/Single;
.source "ObservableElementAtSingle.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/FuseToObservable<",
        "TT;>;"
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

.field final index:J

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JTT;)V"
        }
    .end annotation

    #@0
    .line 29
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->source:Lio/reactivex/ObservableSource;

    #@5
    .line 31
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->index:J

    #@7
    .line 32
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->defaultValue:Ljava/lang/Object;

    #@9
    return-void
.end method


# virtual methods
.method public fuseToObservable()Lio/reactivex/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 42
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableElementAt;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->source:Lio/reactivex/ObservableSource;

    #@4
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->index:J

    #@6
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->defaultValue:Ljava/lang/Object;

    #@8
    const/4 v5, 0x1

    #@9
    move-object v0, v6

    #@a
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableElementAt;-><init>(Lio/reactivex/ObservableSource;JLjava/lang/Object;Z)V

    #@d
    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 37
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->source:Lio/reactivex/ObservableSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;

    #@4
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->index:J

    #@6
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->defaultValue:Ljava/lang/Object;

    #@8
    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;-><init>(Lio/reactivex/SingleObserver;JLjava/lang/Object;)V

    #@b
    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@e
    return-void
.end method
