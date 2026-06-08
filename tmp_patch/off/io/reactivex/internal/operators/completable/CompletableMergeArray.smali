.class public final Lio/reactivex/internal/operators/completable/CompletableMergeArray;
.super Lio/reactivex/Completable;
.source "CompletableMergeArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;
    }
.end annotation


# instance fields
.field final sources:[Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>([Lio/reactivex/CompletableSource;)V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    #@5
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 8

    #@0
    .line 31
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    #@2
    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    #@5
    .line 32
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@a
    .line 34
    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;

    #@c
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    #@e
    array-length v3, v3

    #@f
    add-int/lit8 v3, v3, 0x1

    #@11
    invoke-direct {v2, p1, v1, v0, v3}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;I)V

    #@14
    .line 35
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@17
    .line 37
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    #@19
    array-length v1, p1

    #@1a
    const/4 v3, 0x0

    #@1b
    :goto_1b
    if-ge v3, v1, :cond_3c

    #@1d
    aget-object v4, p1, v3

    #@1f
    .line 38
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_26

    #@25
    return-void

    #@26
    :cond_26
    if-nez v4, :cond_36

    #@28
    .line 43
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@2b
    .line 44
    new-instance p1, Ljava/lang/NullPointerException;

    #@2d
    const-string v0, "A completable source is null"

    #@2f
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@32
    .line 45
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@35
    return-void

    #@36
    .line 49
    :cond_36
    invoke-interface {v4, v2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@39
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_1b

    #@3c
    .line 52
    :cond_3c
    invoke-virtual {v2}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;->onComplete()V

    #@3f
    return-void
.end method
