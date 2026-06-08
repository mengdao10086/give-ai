.class public final Lio/reactivex/internal/operators/completable/CompletableDoFinally;
.super Lio/reactivex/Completable;
.source "CompletableDoFinally.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableDoFinally$DoFinallyObserver;
    }
.end annotation


# instance fields
.field final onFinally:Lio/reactivex/functions/Action;

.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Action;)V
    .registers 3

    #@0
    .line 36
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDoFinally;->source:Lio/reactivex/CompletableSource;

    #@5
    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableDoFinally;->onFinally:Lio/reactivex/functions/Action;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 5

    #@0
    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDoFinally;->source:Lio/reactivex/CompletableSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableDoFinally$DoFinallyObserver;

    #@4
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableDoFinally;->onFinally:Lio/reactivex/functions/Action;

    #@6
    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/CompletableDoFinally$DoFinallyObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Action;)V

    #@9
    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@c
    return-void
.end method
