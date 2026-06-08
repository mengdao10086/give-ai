.class public final enum Lio/reactivex/internal/subscriptions/SubscriptionHelper;
.super Ljava/lang/Enum;
.source "SubscriptionHelper.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/subscriptions/SubscriptionHelper;",
        ">;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/subscriptions/SubscriptionHelper;

.field public static final enum CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 33
    new-instance v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    const-string v1, "CANCELLED"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 28
    sput-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->$VALUES:[Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@11
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 176
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6
    .line 177
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    if-eq v0, v1, :cond_19

    #@a
    .line 178
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p0

    #@e
    check-cast p0, Lorg/reactivestreams/Subscription;

    #@10
    if-eq p0, v1, :cond_19

    #@12
    if-eqz p0, :cond_17

    #@14
    .line 181
    invoke-interface {p0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@17
    :cond_17
    const/4 p0, 0x1

    #@18
    return p0

    #@19
    :cond_19
    const/4 p0, 0x0

    #@1a
    return p0
.end method

.method public static deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J)V"
        }
    .end annotation

    #@0
    .line 217
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6
    if-eqz v0, :cond_c

    #@8
    .line 219
    invoke-interface {v0, p2, p3}, Lorg/reactivestreams/Subscription;->request(J)V

    #@b
    goto :goto_2a

    #@c
    .line 221
    :cond_c
    invoke-static {p2, p3}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2a

    #@12
    .line 222
    invoke-static {p1, p2, p3}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@15
    .line 224
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@18
    move-result-object p0

    #@19
    check-cast p0, Lorg/reactivestreams/Subscription;

    #@1b
    if-eqz p0, :cond_2a

    #@1d
    const-wide/16 p2, 0x0

    #@1f
    .line 226
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@22
    move-result-wide v0

    #@23
    cmp-long p1, v0, p2

    #@25
    if-eqz p1, :cond_2a

    #@27
    .line 228
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@2a
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/reactivestreams/Subscription;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lorg/reactivestreams/Subscription;",
            ")Z"
        }
    .end annotation

    #@0
    .line 199
    invoke-static {p0, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_15

    #@6
    const-wide/16 v0, 0x0

    #@8
    .line 200
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@b
    move-result-wide p0

    #@c
    cmp-long v0, p0, v0

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 202
    invoke-interface {p2, p0, p1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@13
    :cond_13
    const/4 p0, 0x1

    #@14
    return p0

    #@15
    :cond_15
    const/4 p0, 0x0

    #@16
    return p0
.end method

.method public static replace(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Lorg/reactivestreams/Subscription;",
            ")Z"
        }
    .end annotation

    #@0
    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6
    .line 155
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    if-ne v0, v1, :cond_11

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 157
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    return p0

    #@11
    .line 161
    :cond_11
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    const/4 p0, 0x1

    #@18
    return p0
.end method

.method public static reportMoreProduced(J)V
    .registers 5

    #@0
    .line 93
    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const-string v2, "More produced than requested: "

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    invoke-direct {v0, p0}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@17
    return-void
.end method

.method public static reportSubscriptionSet()V
    .registers 2

    #@0
    .line 71
    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    #@2
    const-string v1, "Subscription already set!"

    #@4
    invoke-direct {v0, v1}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@a
    return-void
.end method

.method public static set(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Lorg/reactivestreams/Subscription;",
            ")Z"
        }
    .end annotation

    #@0
    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6
    .line 108
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    if-ne v0, v1, :cond_11

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 110
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    return p0

    #@11
    .line 114
    :cond_11
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    if-eqz v0, :cond_1c

    #@19
    .line 116
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@1c
    :cond_1c
    const/4 p0, 0x1

    #@1d
    return p0
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Lorg/reactivestreams/Subscription;",
            ")Z"
        }
    .end annotation

    #@0
    const-string v0, "s is null"

    #@2
    .line 132
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    const/4 v0, 0x0

    #@6
    .line 133
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1c

    #@c
    .line 134
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@f
    .line 135
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@12
    move-result-object p0

    #@13
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@15
    if-eq p0, p1, :cond_1a

    #@17
    .line 136
    invoke-static {}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportSubscriptionSet()V

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    return p0

    #@1c
    :cond_1c
    const/4 p0, 0x1

    #@1d
    return p0
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Lorg/reactivestreams/Subscription;",
            "J)Z"
        }
    .end annotation

    #@0
    .line 248
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_b

    #@6
    .line 249
    invoke-interface {p1, p2, p3}, Lorg/reactivestreams/Subscription;->request(J)V

    #@9
    const/4 p0, 0x1

    #@a
    return p0

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method public static validate(J)Z
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gtz v0, :cond_1f

    #@6
    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string v2, "n > 0 required but it was "

    #@c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12
    move-result-object p0

    #@13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p0

    #@17
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1d
    const/4 p0, 0x0

    #@1e
    return p0

    #@1f
    :cond_1f
    const/4 p0, 0x1

    #@20
    return p0
.end method

.method public static validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_e

    #@3
    .line 55
    new-instance p0, Ljava/lang/NullPointerException;

    #@5
    const-string p1, "next is null"

    #@7
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@d
    return v0

    #@e
    :cond_e
    if-eqz p0, :cond_17

    #@10
    .line 59
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@13
    .line 60
    invoke-static {}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportSubscriptionSet()V

    #@16
    return v0

    #@17
    :cond_17
    const/4 p0, 0x1

    #@18
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/subscriptions/SubscriptionHelper;
    .registers 2

    #@0
    .line 28
    const-class v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/subscriptions/SubscriptionHelper;
    .registers 1

    #@0
    .line 28
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->$VALUES:[Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/subscriptions/SubscriptionHelper;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    #@0
    return-void
.end method

.method public request(J)V
    .registers 3

    #@0
    return-void
.end method
