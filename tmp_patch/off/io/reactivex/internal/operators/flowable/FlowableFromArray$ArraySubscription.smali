.class final Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraySubscription"
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
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    #@0
    .line 113
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;-><init>([Ljava/lang/Object;)V

    #@3
    .line 114
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 6

    #@0
    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->array:[Ljava/lang/Object;

    #@2
    .line 120
    array-length v1, v0

    #@3
    .line 121
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 123
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    #@7
    :goto_7
    if-eq v3, v1, :cond_36

    #@9
    .line 124
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    #@b
    if-eqz v4, :cond_e

    #@d
    return-void

    #@e
    .line 127
    :cond_e
    aget-object v4, v0, v3

    #@10
    if-nez v4, :cond_30

    #@12
    .line 129
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
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@2f
    return-void

    #@30
    .line 132
    :cond_30
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@33
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_7

    #@36
    .line 135
    :cond_36
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    #@38
    if-eqz v0, :cond_3b

    #@3a
    return-void

    #@3b
    .line 138
    :cond_3b
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@3e
    return-void
.end method

.method slowPath(J)V
    .registers 13

    #@0
    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->array:[Ljava/lang/Object;

    #@2
    .line 145
    array-length v1, v0

    #@3
    .line 146
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    #@5
    .line 147
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->downstream:Lorg/reactivestreams/Subscriber;

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
    if-eqz v8, :cond_40

    #@e
    if-eq v2, v1, :cond_40

    #@10
    .line 152
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    #@12
    if-eqz v8, :cond_15

    #@14
    return-void

    #@15
    .line 156
    :cond_15
    aget-object v8, v0, v2

    #@17
    if-nez v8, :cond_37

    #@19
    .line 159
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
    invoke-interface {v3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@36
    return-void

    #@37
    .line 162
    :cond_37
    invoke-interface {v3, v8}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@3a
    const-wide/16 v8, 0x1

    #@3c
    add-long/2addr v6, v8

    #@3d
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_a

    #@40
    :cond_40
    if-ne v2, v1, :cond_4a

    #@42
    .line 170
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    #@44
    if-nez p1, :cond_49

    #@46
    .line 171
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@49
    :cond_49
    return-void

    #@4a
    .line 176
    :cond_4a
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->get()J

    #@4d
    move-result-wide p1

    #@4e
    cmp-long v8, v6, p1

    #@50
    if-nez v8, :cond_a

    #@52
    .line 178
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    #@54
    neg-long p1, v6

    #@55
    .line 179
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->addAndGet(J)J

    #@58
    move-result-wide p1

    #@59
    cmp-long v6, p1, v4

    #@5b
    if-nez v6, :cond_9

    #@5d
    return-void
.end method
