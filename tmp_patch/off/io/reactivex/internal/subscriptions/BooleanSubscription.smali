.class public final Lio/reactivex/internal/subscriptions/BooleanSubscription;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "BooleanSubscription.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = -0x70cb99b904892f56L


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 23
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 34
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/BooleanSubscription;->lazySet(Z)V

    #@4
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    #@0
    .line 42
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/BooleanSubscription;->get()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public request(J)V
    .registers 3

    #@0
    .line 29
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "BooleanSubscription(cancelled="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/BooleanSubscription;->get()Z

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ")"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method
