.class public abstract Lio/reactivex/observers/ResourceSingleObserver;
.super Ljava/lang/Object;
.source "ResourceSingleObserver.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private final resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field private final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    .line 83
    new-instance v0, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    #@c
    invoke-direct {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    #@f
    iput-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    #@11
    return-void
.end method


# virtual methods
.method public final add(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    const-string v0, "resource is null"

    #@2
    .line 93
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 94
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    #@7
    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    #@a
    return-void
.end method

.method public final dispose()V
    .registers 2

    #@0
    .line 122
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 123
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    #@a
    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose()V

    #@d
    :cond_d
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    #@0
    .line 133
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@8
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected onStart()V
    .registers 1

    #@0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 4

    #@0
    .line 99
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 100
    invoke-virtual {p0}, Lio/reactivex/observers/ResourceSingleObserver;->onStart()V

    #@f
    :cond_f
    return-void
.end method
