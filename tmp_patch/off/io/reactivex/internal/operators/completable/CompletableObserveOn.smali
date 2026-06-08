.class public final Lio/reactivex/internal/operators/completable/CompletableObserveOn;
.super Lio/reactivex/Completable;
.source "CompletableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;
    }
.end annotation


# instance fields
.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/Scheduler;)V
    .registers 3

    #@0
    .line 27
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->source:Lio/reactivex/CompletableSource;

    #@5
    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->scheduler:Lio/reactivex/Scheduler;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 5

    #@0
    .line 34
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->source:Lio/reactivex/CompletableSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;

    #@4
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->scheduler:Lio/reactivex/Scheduler;

    #@6
    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/Scheduler;)V

    #@9
    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@c
    return-void
.end method
