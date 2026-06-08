.class final Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;
.super Lio/reactivex/internal/observers/BasicQueueDisposable;
.source "ObservableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromIterableDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicQueueDisposable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field checkNext:Z

.field volatile disposed:Z

.field done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field fusionMode:Z

.field final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 76
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicQueueDisposable;-><init>()V

    #@3
    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex/Observer;

    #@5
    .line 78
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    #@7
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 151
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    #@3
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 156
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->disposed:Z

    #@3
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 161
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->disposed:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 146
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    #@2
    return v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 129
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 132
    :cond_6
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->checkNext:Z

    #@8
    const/4 v2, 0x1

    #@9
    if-eqz v0, :cond_16

    #@b
    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_18

    #@13
    .line 134
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    #@15
    return-object v1

    #@16
    .line 138
    :cond_16
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->checkNext:Z

    #@18
    .line 141
    :cond_18
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    #@1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    const-string v1, "The iterator returned a null value"

    #@20
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    and-int/2addr p1, v0

    #@2
    if-eqz p1, :cond_7

    #@4
    .line 120
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->fusionMode:Z

    #@6
    return v0

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    return p1
.end method

.method run()V
    .registers 3

    #@0
    .line 85
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->isDisposed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 91
    :cond_7
    :try_start_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    #@9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    const-string v1, "The iterator returned a null value"

    #@f
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_3d

    #@13
    .line 98
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex/Observer;

    #@15
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@18
    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->isDisposed()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    return-void

    #@1f
    .line 104
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    #@21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_33

    #@25
    if-nez v0, :cond_0

    #@27
    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->isDisposed()Z

    #@2a
    move-result v0

    #@2b
    if-nez v0, :cond_32

    #@2d
    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex/Observer;

    #@2f
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@32
    :cond_32
    return-void

    #@33
    :catchall_33
    move-exception v0

    #@34
    .line 106
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@37
    .line 107
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex/Observer;

    #@39
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@3c
    return-void

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    .line 93
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@41
    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex/Observer;

    #@43
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@46
    return-void
.end method
