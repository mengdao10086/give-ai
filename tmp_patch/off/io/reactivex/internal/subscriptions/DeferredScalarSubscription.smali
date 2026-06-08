.class public Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "DeferredScalarSubscription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = 0x4

.field static final FUSED_CONSUMED:I = 0x20

.field static final FUSED_EMPTY:I = 0x8

.field static final FUSED_READY:I = 0x10

.field static final HAS_REQUEST_HAS_VALUE:I = 0x3

.field static final HAS_REQUEST_NO_VALUE:I = 0x2

.field static final NO_REQUEST_HAS_VALUE:I = 0x1

.field static final NO_REQUEST_NO_VALUE:I = 0x0

.field private static final serialVersionUID:J = -0x1ddae1b13717dd41L


# instance fields
.field protected final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
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
    .line 68
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    .line 184
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->set(I)V

    #@4
    const/4 v0, 0x0

    #@5
    .line 185
    iput-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public final clear()V
    .registers 2

    #@0
    const/16 v0, 0x20

    #@2
    .line 178
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->lazySet(I)V

    #@5
    const/4 v0, 0x0

    #@6
    .line 179
    iput-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@8
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
    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

    #@3
    move-result v0

    #@4
    :cond_4
    const/16 v1, 0x8

    #@6
    const/4 v2, 0x4

    #@7
    if-ne v0, v1, :cond_1f

    #@9
    .line 113
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@b
    const/16 v0, 0x10

    #@d
    .line 114
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->lazySet(I)V

    #@10
    .line 116
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@12
    .line 117
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@15
    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

    #@18
    move-result p1

    #@19
    if-eq p1, v2, :cond_1e

    #@1b
    .line 119
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@1e
    :cond_1e
    return-void

    #@1f
    :cond_1f
    and-int/lit8 v1, v0, -0x3

    #@21
    if-eqz v1, :cond_24

    #@23
    return-void

    #@24
    :cond_24
    const/4 v1, 0x2

    #@25
    if-ne v0, v1, :cond_3a

    #@27
    const/4 v0, 0x3

    #@28
    .line 130
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->lazySet(I)V

    #@2b
    .line 131
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@2d
    .line 132
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@30
    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

    #@33
    move-result p1

    #@34
    if-eq p1, v2, :cond_39

    #@36
    .line 134
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@39
    :cond_39
    return-void

    #@3a
    .line 138
    :cond_3a
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@3c
    const/4 v0, 0x0

    #@3d
    const/4 v1, 0x1

    #@3e
    .line 139
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->compareAndSet(II)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_45

    #@44
    return-void

    #@45
    .line 142
    :cond_45
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

    #@48
    move-result v0

    #@49
    if-ne v0, v2, :cond_4

    #@4b
    const/4 p1, 0x0

    #@4c
    .line 144
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@4e
    return-void
.end method

.method public final isCancelled()Z
    .registers 3

    #@0
    .line 193
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

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
    .line 173
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

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

    #@0
    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x10

    #@6
    const/4 v2, 0x0

    #@7
    if-ne v0, v1, :cond_13

    #@9
    const/16 v0, 0x20

    #@b
    .line 163
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->lazySet(I)V

    #@e
    .line 164
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@10
    .line 165
    iput-object v2, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@12
    return-object v0

    #@13
    :cond_13
    return-object v2
.end method

.method public final request(J)V
    .registers 4

    #@0
    .line 74
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_38

    #@6
    .line 76
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

    #@9
    move-result p1

    #@a
    and-int/lit8 p2, p1, -0x2

    #@c
    if-eqz p2, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 p2, 0x1

    #@10
    if-ne p1, p2, :cond_30

    #@12
    const/4 p1, 0x3

    #@13
    .line 83
    invoke-virtual {p0, p2, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->compareAndSet(II)Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_2f

    #@19
    .line 84
    iget-object p1, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@1b
    if-eqz p1, :cond_2f

    #@1d
    const/4 p2, 0x0

    #@1e
    .line 86
    iput-object p2, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->value:Ljava/lang/Object;

    #@20
    .line 87
    iget-object p2, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@22
    .line 88
    invoke-interface {p2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@25
    .line 89
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->get()I

    #@28
    move-result p1

    #@29
    const/4 v0, 0x4

    #@2a
    if-eq p1, v0, :cond_2f

    #@2c
    .line 90
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@2f
    :cond_2f
    return-void

    #@30
    :cond_30
    const/4 p1, 0x0

    #@31
    const/4 p2, 0x2

    #@32
    .line 96
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->compareAndSet(II)Z

    #@35
    move-result p1

    #@36
    if-eqz p1, :cond_6

    #@38
    :cond_38
    return-void
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
    .line 153
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->lazySet(I)V

    #@9
    return v0

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    return p1
.end method

.method public final tryCancel()Z
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    .line 202
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->getAndSet(I)I

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
