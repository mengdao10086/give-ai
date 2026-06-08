.class final Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;
.super Ljava/lang/Object;
.source "ObservableCount.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field count:J

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->downstream:Lio/reactivex/Observer;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 4

    #@0
    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->downstream:Lio/reactivex/Observer;

    #@2
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->count:J

    #@4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@b
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->downstream:Lio/reactivex/Observer;

    #@d
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@10
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->downstream:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6

    #@0
    .line 61
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->count:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->count:J

    #@7
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 45
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
