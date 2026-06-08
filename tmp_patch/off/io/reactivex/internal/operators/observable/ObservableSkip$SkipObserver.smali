.class final Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;
.super Ljava/lang/Object;
.source "ObservableSkip.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSkip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field remaining:J

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J)V"
        }
    .end annotation

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 40
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->remaining:J

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->downstream:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->downstream:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 53
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->remaining:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, v0, v2

    #@6
    if-eqz v2, :cond_e

    #@8
    const-wide/16 v2, 0x1

    #@a
    sub-long/2addr v0, v2

    #@b
    .line 54
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->remaining:J

    #@d
    goto :goto_13

    #@e
    .line 56
    :cond_e
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->downstream:Lio/reactivex/Observer;

    #@10
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@13
    :goto_13
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkip$SkipObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
