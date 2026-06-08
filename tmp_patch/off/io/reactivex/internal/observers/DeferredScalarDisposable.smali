.class public Lio/reactivex/internal/observers/DeferredScalarDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "DeferredScalarDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final DISPOSED:I = 0x4

.field static final FUSED_CONSUMED:I = 0x20

.field static final FUSED_EMPTY:I = 0x8

.field static final FUSED_READY:I = 0x10

.field static final TERMINATED:I = 0x2

.field private static final serialVersionUID:J = -0x4c5c90f80ed9d471L


# instance fields
.field protected final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 52
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/Observer;

    #@5
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    #@0
    const/16 v0, 0x20

    #@2
    .line 134
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    #@5
    const/4 v0, 0x0

    #@6
    .line 135
    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    #@8
    return-void
.end method

.method public final complete()V
    .registers 2

    #@0
    .line 107
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x36

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x2

    #@a
    .line 111
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    #@d
    .line 112
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/Observer;

    #@f
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@12
    return-void
.end method

.method public final complete(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 71
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v1, v0, 0x36

    #@6
    if-eqz v1, :cond_9

    #@8
    return-void

    #@9
    .line 75
    :cond_9
    iget-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/Observer;

    #@b
    const/16 v2, 0x8

    #@d
    if-ne v0, v2, :cond_1b

    #@f
    .line 77
    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    #@11
    const/16 p1, 0x10

    #@13
    .line 78
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    #@16
    const/4 p1, 0x0

    #@17
    .line 79
    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@1a
    goto :goto_22

    #@1b
    :cond_1b
    const/4 v0, 0x2

    #@1c
    .line 81
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    #@1f
    .line 82
    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@22
    .line 84
    :goto_22
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    #@25
    move-result p1

    #@26
    const/4 v0, 0x4

    #@27
    if-eq p1, v0, :cond_2c

    #@29
    .line 85
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    #@2c
    :cond_2c
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    .line 140
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->set(I)V

    #@4
    const/4 v0, 0x0

    #@5
    .line 141
    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 94
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x36

    #@6
    if-eqz v0, :cond_c

    #@8
    .line 96
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x2

    #@d
    .line 99
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    #@10
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/Observer;

    #@12
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@15
    return-void
.end method

.method public final isDisposed()Z
    .registers 3

    #@0
    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public final isEmpty()Z
    .registers 3

    #@0
    .line 129
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x10

    #@6
    if-eq v0, v1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x10

    #@6
    const/4 v2, 0x0

    #@7
    if-ne v0, v1, :cond_13

    #@9
    .line 119
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    #@b
    .line 120
    iput-object v2, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    #@d
    const/16 v1, 0x20

    #@f
    .line 121
    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    #@12
    return-object v0

    #@13
    :cond_13
    return-object v2
.end method

.method public final requestFusion(I)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    and-int/2addr p1, v0

    #@2
    if-eqz p1, :cond_a

    #@4
    const/16 p1, 0x8

    #@6
    .line 59
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    #@9
    return v0

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    return p1
.end method

.method public final tryDispose()Z
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    .line 149
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->getAndSet(I)I

    #@4
    move-result v1

    #@5
    if-eq v1, v0, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method
