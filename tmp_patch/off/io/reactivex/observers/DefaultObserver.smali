.class public abstract Lio/reactivex/observers/DefaultObserver;
.super Ljava/lang/Object;
.source "DefaultObserver.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected final cancel()V
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/observers/DefaultObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    .line 81
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    iput-object v1, p0, Lio/reactivex/observers/DefaultObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@6
    .line 82
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@9
    return-void
.end method

.method protected onStart()V
    .registers 1

    #@0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 4

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/observers/DefaultObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 71
    iput-object p1, p0, Lio/reactivex/observers/DefaultObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@e
    .line 72
    invoke-virtual {p0}, Lio/reactivex/observers/DefaultObserver;->onStart()V

    #@11
    :cond_11
    return-void
.end method
