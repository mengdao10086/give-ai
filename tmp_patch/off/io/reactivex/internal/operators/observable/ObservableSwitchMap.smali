.class public final Lio/reactivex/internal/operators/observable/ObservableSwitchMap;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableSwitchMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayErrors:Z

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    #@0
    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->mapper:Lio/reactivex/functions/Function;

    #@5
    .line 40
    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->bufferSize:I

    #@7
    .line 41
    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->delayErrors:Z

    #@9
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->source:Lio/reactivex/ObservableSource;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->mapper:Lio/reactivex/functions/Function;

    #@4
    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->tryScalarXMapSubscribe(Lio/reactivex/ObservableSource;Lio/reactivex/Observer;Lio/reactivex/functions/Function;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-void

    #@b
    .line 51
    :cond_b
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->source:Lio/reactivex/ObservableSource;

    #@d
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    #@f
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->mapper:Lio/reactivex/functions/Function;

    #@11
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->bufferSize:I

    #@13
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->delayErrors:Z

    #@15
    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IZ)V

    #@18
    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@1b
    return-void
.end method
