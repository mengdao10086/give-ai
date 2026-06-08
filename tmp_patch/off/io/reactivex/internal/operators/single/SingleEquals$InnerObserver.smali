.class Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;
.super Ljava/lang/Object;
.source "SingleEquals.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleEquals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final index:I

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Lio/reactivex/SingleObserver;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/disposables/CompositeDisposable;",
            "[",
            "Ljava/lang/Object;",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    #@0
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput p1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->index:I

    #@5
    .line 55
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@7
    .line 56
    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->values:[Ljava/lang/Object;

    #@9
    .line 57
    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->downstream:Lio/reactivex/SingleObserver;

    #@b
    .line 58
    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 78
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-lt v0, v1, :cond_d

    #@9
    .line 80
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@c
    return-void

    #@d
    .line 83
    :cond_d
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@17
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@1a
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->downstream:Lio/reactivex/SingleObserver;

    #@1c
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@1f
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    #@5
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->values:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->index:I

    #@4
    aput-object p1, v0, v1

    #@6
    .line 70
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@b
    move-result p1

    #@c
    const/4 v0, 0x2

    #@d
    if-ne p1, v0, :cond_24

    #@f
    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->downstream:Lio/reactivex/SingleObserver;

    #@11
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->values:[Ljava/lang/Object;

    #@13
    const/4 v1, 0x0

    #@14
    aget-object v1, v0, v1

    #@16
    const/4 v2, 0x1

    #@17
    aget-object v0, v0, v2

    #@19
    invoke-static {v1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@20
    move-result-object v0

    #@21
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@24
    :cond_24
    return-void
.end method
