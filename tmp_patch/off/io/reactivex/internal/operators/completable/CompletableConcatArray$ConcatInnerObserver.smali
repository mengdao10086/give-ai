.class final Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableConcatArray.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableConcatArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerObserver"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final downstream:Lio/reactivex/CompletableObserver;

.field index:I

.field final sd:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final sources:[Lio/reactivex/CompletableSource;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;[Lio/reactivex/CompletableSource;)V
    .registers 3

    #@0
    .line 47
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@5
    .line 49
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->sources:[Lio/reactivex/CompletableSource;

    #@7
    .line 50
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    #@9
    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    #@c
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@e
    return-void
.end method


# virtual methods
.method next()V
    .registers 4

    #@0
    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@2
    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 73
    :cond_9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->getAndIncrement()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_10

    #@f
    return-void

    #@10
    .line 77
    :cond_10
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->sources:[Lio/reactivex/CompletableSource;

    #@12
    .line 79
    :cond_12
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@14
    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1b

    #@1a
    return-void

    #@1b
    .line 83
    :cond_1b
    iget v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->index:I

    #@1d
    add-int/lit8 v2, v1, 0x1

    #@1f
    iput v2, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->index:I

    #@21
    .line 84
    array-length v2, v0

    #@22
    if-ne v1, v2, :cond_2a

    #@24
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@26
    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@29
    return-void

    #@2a
    .line 89
    :cond_2a
    aget-object v1, v0, v1

    #@2c
    invoke-interface {v1, p0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@2f
    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->decrementAndGet()I

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_12

    #@35
    return-void
.end method

.method public onComplete()V
    .registers 1

    #@0
    .line 65
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->next()V

    #@3
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@5
    return-void
.end method
