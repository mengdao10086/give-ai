.class public final Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ArrayCompositeSubscription.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x261d229f8c0b4b20L


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 34
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 84
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    if-eq v1, v2, :cond_2d

    #@9
    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->length()I

    #@c
    move-result v1

    #@d
    :goto_d
    if-ge v0, v1, :cond_2d

    #@f
    .line 87
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lorg/reactivestreams/Subscription;

    #@15
    .line 88
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@17
    if-eq v2, v3, :cond_2a

    #@19
    .line 89
    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@1b
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lorg/reactivestreams/Subscription;

    #@21
    .line 90
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@23
    if-eq v2, v3, :cond_2a

    #@25
    if-eqz v2, :cond_2a

    #@27
    .line 91
    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    #@2a
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_d

    #@2d
    :cond_2d
    return-void
.end method

.method public isDisposed()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 100
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    if-ne v1, v2, :cond_a

    #@9
    const/4 v0, 0x1

    #@a
    :cond_a
    return v0
.end method

.method public replaceResource(ILorg/reactivestreams/Subscription;)Lorg/reactivestreams/Subscription;
    .registers 5

    #@0
    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6
    .line 70
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    if-ne v0, v1, :cond_11

    #@a
    if-eqz p2, :cond_f

    #@c
    .line 72
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return-object p1

    #@11
    .line 76
    :cond_11
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    return-object v0
.end method

.method public setResource(ILorg/reactivestreams/Subscription;)Z
    .registers 5

    #@0
    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6
    .line 46
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    if-ne v0, v1, :cond_11

    #@a
    if-eqz p2, :cond_f

    #@c
    .line 48
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return p1

    #@11
    .line 52
    :cond_11
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    if-eqz v0, :cond_1c

    #@19
    .line 54
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@1c
    :cond_1c
    const/4 p1, 0x1

    #@1d
    return p1
.end method
