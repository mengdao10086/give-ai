.class final Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/CompletableSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/subjects/CompletableSubject;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a2d77ea7e969284L


# instance fields
.field final downstream:Lio/reactivex/CompletableObserver;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/subjects/CompletableSubject;)V
    .registers 3

    #@0
    .line 265
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 266
    iput-object p1, p0, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->downstream:Lio/reactivex/CompletableObserver;

    #@5
    .line 267
    invoke-virtual {p0, p2}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->lazySet(Ljava/lang/Object;)V

    #@8
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 272
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lio/reactivex/subjects/CompletableSubject;

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 274
    invoke-virtual {v0, p0}, Lio/reactivex/subjects/CompletableSubject;->remove(Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;)V

    #@c
    :cond_c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 280
    invoke-virtual {p0}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method
