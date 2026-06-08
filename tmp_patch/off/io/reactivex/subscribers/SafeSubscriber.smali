.class public final Lio/reactivex/subscribers/SafeSubscriber;
.super Ljava/lang/Object;
.source "SafeSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 228
    :try_start_0
    iget-object v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    #@5
    goto :goto_d

    #@6
    :catchall_6
    move-exception v0

    #@7
    .line 230
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@a
    .line 231
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@d
    :goto_d
    return-void
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 169
    iget-boolean v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 172
    iput-boolean v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->done:Z

    #@8
    .line 174
    iget-object v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    if-nez v0, :cond_10

    #@c
    .line 175
    invoke-virtual {p0}, Lio/reactivex/subscribers/SafeSubscriber;->onCompleteNoSubscription()V

    #@f
    return-void

    #@10
    .line 180
    :cond_10
    :try_start_10
    iget-object v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@12
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    #@15
    goto :goto_1d

    #@16
    :catchall_16
    move-exception v0

    #@17
    .line 182
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1a
    .line 183
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1d
    :goto_1d
    return-void
.end method

.method onCompleteNoSubscription()V
    .registers 7

    #@0
    .line 189
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
    .line 192
    :try_start_a
    iget-object v4, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    sget-object v5, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    #@e
    invoke-interface {v4, v5}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_2a

    #@11
    .line 200
    :try_start_11
    iget-object v4, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@13
    invoke-interface {v4, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    #@16
    goto :goto_29

    #@17
    :catchall_17
    move-exception v4

    #@18
    .line 202
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1b
    .line 204
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
    .line 194
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2e
    .line 196
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
    .line 127
    iget-boolean v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 128
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 131
    iput-boolean v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->done:Z

    #@b
    .line 133
    iget-object v1, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, 0x2

    #@f
    if-nez v1, :cond_5b

    #@11
    .line 134
    new-instance v1, Ljava/lang/NullPointerException;

    #@13
    const-string v4, "Subscription not set!"

    #@15
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    const/4 v4, 0x3

    #@19
    .line 137
    :try_start_19
    iget-object v5, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@1b
    sget-object v6, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    #@1d
    invoke-interface {v5, v6}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_46

    #@20
    .line 145
    :try_start_20
    iget-object v5, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

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
    invoke-interface {v5, v6}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_31

    #@30
    goto :goto_45

    #@31
    :catchall_31
    move-exception v5

    #@32
    .line 147
    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@35
    .line 149
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
    .line 139
    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@4a
    .line 141
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
    .line 155
    new-instance p1, Ljava/lang/NullPointerException;

    #@5f
    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@61
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@64
    .line 159
    :cond_64
    :try_start_64
    iget-object v1, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@66
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    #@69
    goto :goto_7c

    #@6a
    :catchall_6a
    move-exception v1

    #@6b
    .line 161
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@6e
    .line 163
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
    .line 68
    iget-boolean v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 71
    :cond_5
    iget-object v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@7
    if-nez v0, :cond_d

    #@9
    .line 72
    invoke-virtual {p0}, Lio/reactivex/subscribers/SafeSubscriber;->onNextNoSubscription()V

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
    .line 77
    new-instance p1, Ljava/lang/NullPointerException;

    #@14
    const-string v3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@16
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    .line 79
    :try_start_19
    iget-object v3, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@1b
    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    #@1e
    .line 85
    invoke-virtual {p0, p1}, Lio/reactivex/subscribers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v3

    #@23
    .line 81
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@26
    .line 82
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
    invoke-virtual {p0, v4}, Lio/reactivex/subscribers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@34
    return-void

    #@35
    .line 90
    :cond_35
    :try_start_35
    iget-object v3, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@37
    invoke-interface {v3, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    #@3a
    goto :goto_47

    #@3b
    :catchall_3b
    move-exception p1

    #@3c
    .line 92
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3f
    .line 94
    :try_start_3f
    iget-object v3, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@41
    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    #@44
    .line 100
    invoke-virtual {p0, p1}, Lio/reactivex/subscribers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@47
    :goto_47
    return-void

    #@48
    :catchall_48
    move-exception v3

    #@49
    .line 96
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@4c
    .line 97
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
    invoke-virtual {p0, v4}, Lio/reactivex/subscribers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@5a
    return-void
.end method

.method onNextNoSubscription()V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    .line 105
    iput-boolean v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->done:Z

    #@3
    .line 106
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
    .line 109
    :try_start_c
    iget-object v4, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@e
    sget-object v5, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    #@10
    invoke-interface {v4, v5}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2c

    #@13
    .line 117
    :try_start_13
    iget-object v4, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@15
    invoke-interface {v4, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    #@18
    goto :goto_2b

    #@19
    :catchall_19
    move-exception v4

    #@1a
    .line 119
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1d
    .line 121
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
    .line 111
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@30
    .line 113
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

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 7

    #@0
    .line 46
    iget-object v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_32

    #@8
    .line 47
    iput-object p1, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 49
    :try_start_a
    iget-object v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V
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
    iput-boolean v1, p0, Lio/reactivex/subscribers/SafeSubscriber;->done:Z

    #@17
    .line 55
    :try_start_17
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V
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

.method public request(J)V
    .registers 6

    #@0
    .line 211
    :try_start_0
    iget-object v0, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    #@5
    goto :goto_12

    #@6
    :catchall_6
    move-exception p1

    #@7
    .line 213
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@a
    .line 215
    :try_start_a
    iget-object p2, p0, Lio/reactivex/subscribers/SafeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@c
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    #@f
    .line 221
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@12
    :goto_12
    return-void

    #@13
    :catchall_13
    move-exception p2

    #@14
    .line 217
    invoke-static {p2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@17
    .line 218
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    #@19
    const/4 v1, 0x2

    #@1a
    new-array v1, v1, [Ljava/lang/Throwable;

    #@1c
    const/4 v2, 0x0

    #@1d
    aput-object p1, v1, v2

    #@1f
    const/4 p1, 0x1

    #@20
    aput-object p2, v1, p1

    #@22
    invoke-direct {v0, v1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@25
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@28
    return-void
.end method
