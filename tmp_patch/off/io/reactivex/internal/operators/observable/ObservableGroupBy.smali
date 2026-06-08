.class public final Lio/reactivex/internal/operators/observable/ObservableGroupBy;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;,
        Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;,
        Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;",
        "Lio/reactivex/observables/GroupedObservable<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TK;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    #@0
    .line 39
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->keySelector:Lio/reactivex/functions/Function;

    #@5
    .line 41
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->valueSelector:Lio/reactivex/functions/Function;

    #@7
    .line 42
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->bufferSize:I

    #@9
    .line 43
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->delayError:Z

    #@b
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/observables/GroupedObservable<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->source:Lio/reactivex/ObservableSource;

    #@2
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    #@4
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->keySelector:Lio/reactivex/functions/Function;

    #@6
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->valueSelector:Lio/reactivex/functions/Function;

    #@8
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->bufferSize:I

    #@a
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->delayError:Z

    #@c
    move-object v1, v7

    #@d
    move-object v2, p1

    #@e
    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;IZ)V

    #@11
    invoke-interface {v0, v7}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@14
    return-void
.end method
