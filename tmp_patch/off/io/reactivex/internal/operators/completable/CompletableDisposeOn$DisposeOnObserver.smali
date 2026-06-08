.class final Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;
.super Ljava/lang/Object;
.source "CompletableDisposeOn.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDisposeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisposeOnObserver"
.end annotation


# instance fields
.field volatile disposed:Z

.field final downstream:Lio/reactivex/CompletableObserver;

.field final scheduler:Lio/reactivex/Scheduler;

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/Scheduler;)V
    .registers 3

    #@0
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@5
    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->scheduler:Lio/reactivex/Scheduler;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 79
    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    #@3
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->scheduler:Lio/reactivex/Scheduler;

    #@5
    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    #@8
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 85
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    #@2
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 53
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 56
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@7
    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@a
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 61
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 62
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 65
    :cond_8
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@a
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@d
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method

.method public run()V
    .registers 2

    #@0
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 91
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method
