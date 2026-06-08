.class public final Lio/reactivex/observers/SafeObserver;
.super Ljava/lang/Object;
.source "SafeObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
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
.field done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 73
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 180
    iget-boolean v0, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 184
    iput-boolean v0, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    #@8
    .line 186
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    if-nez v0, :cond_10

    #@c
    .line 187
    invoke-virtual {p0}, Lio/reactivex/observers/SafeObserver;->onCompleteNoSubscription()V

    #@f
    return-void

    #@10
    .line 192
    :cond_10
    :try_start_10
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@12
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    #@15
    goto :goto_1d

    #@16
    :catchall_16
    move-exception v0

    #@17
    .line 194
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1a
    .line 195
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1d
    :goto_1d
    return-void
.end method

.method onCompleteNoSubscription()V
    .registers 7

    #@0
    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    #@2
    const-string v1, "Subscription not set!"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7
    const/4 v1, 0x1

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x2

    #@a
    .line 204
    :try_start_a
    iget-object v4, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@c
    sget-object v5, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@e
    invoke-interface {v4, v5}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_2a

    #@11
    .line 212
    :try_start_11
    iget-object v4, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@13
    invoke-interface {v4, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    #@16
    goto :goto_29

    #@17
    :catchall_17
    move-exception v4

    #@18
    .line 214
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1b
    .line 216
    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    #@1d
    new-array v3, v3, [Ljava/lang/Throwable;

    #@1f
    aput-object v0, v3, v2

    #@21
    aput-object v4, v3, v1

    #@23
    invoke-direct {v5, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@26
    invoke-static {v5}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@29
    :goto_29
    return-void

    #@2a
    :catchall_2a
    move-exception v4

    #@2b
    .line 206
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2e
    .line 208
    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    #@30
    new-array v3, v3, [Ljava/lang/Throwable;

    #@32
    aput-object v0, v3, v2

    #@34
    aput-object v4, v3, v1

    #@36
    invoke-direct {v5, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@39
    invoke-static {v5}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@3c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10

    #@0
    .line 138
    iget-boolean v0, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 139
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 142
    iput-boolean v0, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    #@b
    .line 144
    iget-object v1, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, 0x2

    #@f
    if-nez v1, :cond_5b

    #@11
    .line 145
    new-instance v1, Ljava/lang/NullPointerException;

    #@13
    const-string v4, "Subscription not set!"

    #@15
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    const/4 v4, 0x3

    #@19
    .line 148
    :try_start_19
    iget-object v5, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@1b
    sget-object v6, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@1d
    invoke-interface {v5, v6}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_46

    #@20
    .line 156
    :try_start_20
    iget-object v5, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@22
    new-instance v6, Lio/reactivex/exceptions/CompositeException;

    #@24
    new-array v7, v3, [Ljava/lang/Throwable;

    #@26
    aput-object p1, v7, v2

    #@28
    aput-object v1, v7, v0

    #@2a
    invoke-direct {v6, v7}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@2d
    invoke-interface {v5, v6}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_31

    #@30
    goto :goto_45

    #@31
    :catchall_31
    move-exception v5

    #@32
    .line 158
    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@35
    .line 160
    new-instance v6, Lio/reactivex/exceptions/CompositeException;

    #@37
    new-array v4, v4, [Ljava/lang/Throwable;

    #@39
    aput-object p1, v4, v2

    #@3b
    aput-object v1, v4, v0

    #@3d
    aput-object v5, v4, v3

    #@3f
    invoke-direct {v6, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@42
    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@45
    :goto_45
    return-void

    #@46
    :catchall_46
    move-exception v5

    #@47
    .line 150
    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@4a
    .line 152
    new-instance v6, Lio/reactivex/exceptions/CompositeException;

    #@4c
    new-array v4, v4, [Ljava/lang/Throwable;

    #@4e
    aput-object p1, v4, v2

    #@50
    aput-object v1, v4, v0

    #@52
    aput-object v5, v4, v3

    #@54
    invoke-direct {v6, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@57
    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@5a
    return-void

    #@5b
    :cond_5b
    if-nez p1, :cond_64

    #@5d
    .line 166
    new-instance p1, Ljava/lang/NullPointerException;

    #@5f
    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@61
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@64
    .line 170
    :cond_64
    :try_start_64
    iget-object v1, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@66
    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    #@69
    goto :goto_7c

    #@6a
    :catchall_6a
    move-exception v1

    #@6b
    .line 172
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@6e
    .line 174
    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    #@70
    new-array v3, v3, [Ljava/lang/Throwable;

    #@72
    aput-object p1, v3, v2

    #@74
    aput-object v1, v3, v0

    #@76
    invoke-direct {v4, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@79
    invoke-static {v4}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7c
    :goto_7c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 78
    iget-boolean v0, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 81
    :cond_5
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@7
    if-nez v0, :cond_d

    #@9
    .line 82
    invoke-virtual {p0}, Lio/reactivex/observers/SafeObserver;->onNextNoSubscription()V

    #@c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x2

    #@10
    if-nez p1, :cond_35

    #@12
    .line 87
    new-instance p1, Ljava/lang/NullPointerException;

    #@14
    const-string v3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@16
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    .line 89
    :try_start_19
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@1b
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    #@1e
    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v3

    #@23
    .line 91
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@26
    .line 92
    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    #@28
    new-array v2, v2, [Ljava/lang/Throwable;

    #@2a
    aput-object p1, v2, v1

    #@2c
    aput-object v3, v2, v0

    #@2e
    invoke-direct {v4, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@31
    invoke-virtual {p0, v4}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    #@34
    return-void

    #@35
    .line 100
    :cond_35
    :try_start_35
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@37
    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    #@3a
    goto :goto_47

    #@3b
    :catchall_3b
    move-exception p1

    #@3c
    .line 102
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3f
    .line 104
    :try_start_3f
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@41
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    #@44
    .line 110
    invoke-virtual {p0, p1}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    #@47
    :goto_47
    return-void

    #@48
    :catchall_48
    move-exception v3

    #@49
    .line 106
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@4c
    .line 107
    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    #@4e
    new-array v2, v2, [Ljava/lang/Throwable;

    #@50
    aput-object p1, v2, v1

    #@52
    aput-object v3, v2, v0

    #@54
    invoke-direct {v4, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@57
    invoke-virtual {p0, v4}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    #@5a
    return-void
.end method

.method onNextNoSubscription()V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    .line 115
    iput-boolean v0, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    #@3
    .line 117
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string v2, "Subscription not set!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x2

    #@c
    .line 120
    :try_start_c
    iget-object v4, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@e
    sget-object v5, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@10
    invoke-interface {v4, v5}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2c

    #@13
    .line 128
    :try_start_13
    iget-object v4, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@15
    invoke-interface {v4, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    #@18
    goto :goto_2b

    #@19
    :catchall_19
    move-exception v4

    #@1a
    .line 130
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1d
    .line 132
    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    #@1f
    new-array v3, v3, [Ljava/lang/Throwable;

    #@21
    aput-object v1, v3, v2

    #@23
    aput-object v4, v3, v0

    #@25
    invoke-direct {v5, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@28
    invoke-static {v5}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@2b
    :goto_2b
    return-void

    #@2c
    :catchall_2c
    move-exception v4

    #@2d
    .line 122
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@30
    .line 124
    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    #@32
    new-array v3, v3, [Ljava/lang/Throwable;

    #@34
    aput-object v1, v3, v2

    #@36
    aput-object v4, v3, v0

    #@38
    invoke-direct {v5, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@3b
    invoke-static {v5}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@3e
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 7

    #@0
    .line 46
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_32

    #@8
    .line 47
    iput-object p1, p0, Lio/reactivex/observers/SafeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 49
    :try_start_a
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    #@f
    goto :goto_32

    #@10
    :catchall_10
    move-exception v0

    #@11
    .line 51
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@14
    const/4 v1, 0x1

    #@15
    .line 52
    iput-boolean v1, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    #@17
    .line 55
    :try_start_17
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    #@1a
    .line 61
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1d
    goto :goto_32

    #@1e
    :catchall_1e
    move-exception p1

    #@1f
    .line 57
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@22
    .line 58
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    #@24
    const/4 v3, 0x2

    #@25
    new-array v3, v3, [Ljava/lang/Throwable;

    #@27
    const/4 v4, 0x0

    #@28
    aput-object v0, v3, v4

    #@2a
    aput-object p1, v3, v1

    #@2c
    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@2f
    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@32
    :cond_32
    :goto_32
    return-void
.end method
