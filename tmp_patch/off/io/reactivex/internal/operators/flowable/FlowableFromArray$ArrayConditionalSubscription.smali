.class final Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    #@0
    .line 196
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;-><init>([Ljava/lang/Object;)V

    #@3
    .line 197
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 6

    #@0
    .line 202
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    #@2
    .line 203
    array-length v1, v0

    #@3
    .line 204
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@5
    .line 206
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    #@7
    :goto_7
    if-eq v3, v1, :cond_36

    #@9
    .line 207
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    #@b
    if-eqz v4, :cond_e

    #@d
    return-void

    #@e
    .line 210
    :cond_e
    aget-object v4, v0, v3

    #@10
    if-nez v4, :cond_30

    #@12
    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    const-string v4, "The element at index "

    #@18
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string v3, " is null"

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-interface {v2, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@2f
    return-void

    #@30
    .line 215
    :cond_30
    invoke-interface {v2, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@33
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_7

    #@36
    .line 218
    :cond_36
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    #@38
    if-eqz v0, :cond_3b

    #@3a
    return-void

    #@3b
    .line 221
    :cond_3b
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@3e
    return-void
.end method

.method slowPath(J)V
    .registers 13

    #@0
    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    #@2
    .line 228
    array-length v1, v0

    #@3
    .line 229
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    #@5
    .line 230
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@7
    const-wide/16 v4, 0x0

    #@9
    :cond_9
    move-wide v6, v4

    #@a
    :cond_a
    :goto_a
    cmp-long v8, v6, p1

    #@c
    if-eqz v8, :cond_43

    #@e
    if-eq v2, v1, :cond_43

    #@10
    .line 235
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    #@12
    if-eqz v8, :cond_15

    #@14
    return-void

    #@15
    .line 239
    :cond_15
    aget-object v8, v0, v2

    #@17
    if-nez v8, :cond_37

    #@19
    .line 242
    new-instance p1, Ljava/lang/NullPointerException;

    #@1b
    new-instance p2, Ljava/lang/StringBuilder;

    #@1d
    const-string v0, "The element at index "

    #@1f
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object p2

    #@26
    const-string v0, " is null"

    #@28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p2

    #@2c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p2

    #@30
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@33
    invoke-interface {v3, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@36
    return-void

    #@37
    .line 245
    :cond_37
    invoke-interface {v3, v8}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_40

    #@3d
    const-wide/16 v8, 0x1

    #@3f
    add-long/2addr v6, v8

    #@40
    :cond_40
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_a

    #@43
    :cond_43
    if-ne v2, v1, :cond_4d

    #@45
    .line 254
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    #@47
    if-nez p1, :cond_4c

    #@49
    .line 255
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@4c
    :cond_4c
    return-void

    #@4d
    .line 260
    :cond_4d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->get()J

    #@50
    move-result-wide p1

    #@51
    cmp-long v8, v6, p1

    #@53
    if-nez v8, :cond_a

    #@55
    .line 262
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    #@57
    neg-long p1, v6

    #@58
    .line 263
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->addAndGet(J)J

    #@5b
    move-result-wide p1

    #@5c
    cmp-long v6, p1, v4

    #@5e
    if-nez v6, :cond_9

    #@60
    return-void
.end method
