.class public final Lio/reactivex/internal/operators/completable/CompletableHide;
.super Lio/reactivex/Completable;
.source "CompletableHide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableHide$HideCompletableObserver;
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .registers 2

    #@0
    .line 29
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableHide;->source:Lio/reactivex/CompletableSource;

    #@5
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 4

    #@0
    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableHide;->source:Lio/reactivex/CompletableSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableHide$HideCompletableObserver;

    #@4
    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/completable/CompletableHide$HideCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;)V

    #@7
    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@a
    return-void
.end method
