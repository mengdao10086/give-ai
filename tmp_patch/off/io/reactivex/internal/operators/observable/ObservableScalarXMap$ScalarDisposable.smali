.class public final Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableScalarXMap.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/QueueDisposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableScalarXMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScalarDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/fuseable/QueueDisposable<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final FUSED:I = 0x1

.field static final ON_COMPLETE:I = 0x3

.field static final ON_NEXT:I = 0x2

.field static final START:I = 0x0

.field private static final serialVersionUID:J = 0x35dc0e519322c4a3L


# instance fields
.field final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;TT;)V"
        }
    .end annotation

    #@0
    .line 191
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 192
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->observer:Lio/reactivex/Observer;

    #@5
    .line 193
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->value:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    .line 223
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    #@4
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    .line 228
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->set(I)V

    #@4
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 233
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

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

.method public isEmpty()Z
    .registers 3

    #@0
    .line 218
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    :goto_9
    return v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Should not be called!"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    #@0
    .line 203
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Should not be called!"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
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
    .line 209
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_e

    #@7
    const/4 v0, 0x3

    #@8
    .line 210
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    #@b
    .line 211
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->value:Ljava/lang/Object;

    #@d
    return-object v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    and-int/2addr p1, v0

    #@2
    if-eqz p1, :cond_8

    #@4
    .line 239
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    #@7
    return v0

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    return p1
.end method

.method public run()V
    .registers 4

    #@0
    .line 247
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_24

    #@6
    const/4 v0, 0x0

    #@7
    const/4 v1, 0x2

    #@8
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->compareAndSet(II)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_24

    #@e
    .line 248
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->observer:Lio/reactivex/Observer;

    #@10
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->value:Ljava/lang/Object;

    #@12
    invoke-interface {v0, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@15
    .line 249
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    #@18
    move-result v0

    #@19
    if-ne v0, v1, :cond_24

    #@1b
    const/4 v0, 0x3

    #@1c
    .line 250
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    #@1f
    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->observer:Lio/reactivex/Observer;

    #@21
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@24
    :cond_24
    return-void
.end method
