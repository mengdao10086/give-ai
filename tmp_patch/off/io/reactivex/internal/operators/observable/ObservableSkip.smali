.class public final Lio/reactivex/internal/operators/observable/ObservableSkip;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableSkip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;
    }
.end annotation

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
.field final n:J


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;J)V"
        }
    .end annotation

    #@0
    .line 23
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 24
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkip;->n:J

    #@5
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 29
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip;->source:Lio/reactivex/ObservableSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;

    #@4
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableSkip;->n:J

    #@6
    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;-><init>(Lio/reactivex/Observer;J)V

    #@9
    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@c
    return-void
.end method
