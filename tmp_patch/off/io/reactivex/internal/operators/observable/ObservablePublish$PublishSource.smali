.class final Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;
.super Ljava/lang/Object;
.source "ObservablePublish.java"

# interfaces
.implements Lio/reactivex/ObservableSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final curr:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;)V"
        }
    .end annotation

    #@0
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 329
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 335
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;-><init>(Lio/reactivex/Observer;)V

    #@5
    .line 336
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8
    .line 341
    :cond_8
    :goto_8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;

    #@10
    if-eqz p1, :cond_18

    #@12
    .line 343
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->isDisposed()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_29

    #@18
    .line 345
    :cond_18
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;

    #@1a
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@1c
    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    #@1f
    .line 347
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@21
    invoke-static {v2, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result p1

    #@25
    if-nez p1, :cond_28

    #@27
    goto :goto_8

    #@28
    :cond_28
    move-object p1, v1

    #@29
    .line 360
    :cond_29
    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->add(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_8

    #@2f
    .line 361
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->setParent(Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;)V

    #@32
    return-void
.end method
