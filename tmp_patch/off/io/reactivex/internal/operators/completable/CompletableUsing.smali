.class public final Lio/reactivex/internal/operators/completable/CompletableUsing;
.super Lio/reactivex/Completable;
.source "CompletableUsing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableUsing$UsingObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;"
    }
.end annotation


# instance fields
.field final completableFunction:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TR;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final disposer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final eager:Z

.field final resourceSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TR;+",
            "Lio/reactivex/CompletableSource;",
            ">;",
            "Lio/reactivex/functions/Consumer<",
            "-TR;>;Z)V"
        }
    .end annotation

    #@0
    .line 36
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->resourceSupplier:Ljava/util/concurrent/Callable;

    #@5
    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->completableFunction:Lio/reactivex/functions/Function;

    #@7
    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    #@9
    .line 40
    iput-boolean p4, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    #@b
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 7

    #@0
    .line 48
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->resourceSupplier:Ljava/util/concurrent/Callable;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@5
    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_5a

    #@6
    .line 58
    :try_start_6
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->completableFunction:Lio/reactivex/functions/Function;

    #@8
    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    const-string v2, "The completableFunction returned a null CompletableSource"

    #@e
    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lio/reactivex/CompletableSource;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_21

    #@14
    .line 84
    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableUsing$UsingObserver;

    #@16
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    #@18
    iget-boolean v4, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    #@1a
    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/completable/CompletableUsing$UsingObserver;-><init>(Lio/reactivex/CompletableObserver;Ljava/lang/Object;Lio/reactivex/functions/Consumer;Z)V

    #@1d
    invoke-interface {v1, v2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@20
    return-void

    #@21
    :catchall_21
    move-exception v1

    #@22
    .line 60
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@25
    .line 61
    iget-boolean v2, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    #@27
    if-eqz v2, :cond_45

    #@29
    .line 63
    :try_start_29
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    #@2b
    invoke-interface {v2, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    #@2e
    goto :goto_45

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    .line 65
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@33
    .line 66
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    #@35
    const/4 v3, 0x2

    #@36
    new-array v3, v3, [Ljava/lang/Throwable;

    #@38
    const/4 v4, 0x0

    #@39
    aput-object v1, v3, v4

    #@3b
    const/4 v1, 0x1

    #@3c
    aput-object v0, v3, v1

    #@3e
    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@41
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    #@44
    return-void

    #@45
    .line 71
    :cond_45
    :goto_45
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    #@48
    .line 73
    iget-boolean p1, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    #@4a
    if-nez p1, :cond_59

    #@4c
    .line 75
    :try_start_4c
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    #@4e
    invoke-interface {p1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_52

    #@51
    goto :goto_59

    #@52
    :catchall_52
    move-exception p1

    #@53
    .line 77
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@56
    .line 78
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@59
    :cond_59
    :goto_59
    return-void

    #@5a
    :catchall_5a
    move-exception v0

    #@5b
    .line 50
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@5e
    .line 51
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    #@61
    return-void
.end method
