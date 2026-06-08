.class final Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;
.source "FlowableFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final filter:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 111
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;)V

    #@3
    .line 112
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/functions/Predicate;

    #@5
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@3
    move-result p1

    #@4
    if-nez p1, :cond_d

    #@6
    .line 118
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@8
    const-wide/16 v0, 0x1

    #@a
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@d
    :cond_d
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 5
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
    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@2
    .line 151
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/functions/Predicate;

    #@4
    .line 154
    :cond_4
    :goto_4
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    if-nez v2, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 159
    :cond_c
    invoke-interface {v1, v2}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_13

    #@12
    return-object v2

    #@13
    .line 163
    :cond_13
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->sourceMode:I

    #@15
    const/4 v3, 0x2

    #@16
    if-ne v2, v3, :cond_4

    #@18
    const-wide/16 v2, 0x1

    #@1a
    .line 164
    invoke-interface {v0, v2, v3}, Lio/reactivex/internal/fuseable/QueueSubscription;->request(J)V

    #@1d
    goto :goto_4
.end method

.method public requestFusion(I)I
    .registers 2

    #@0
    .line 144
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->transitiveBoundaryFusion(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 124
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->done:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 128
    :cond_6
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->sourceMode:I

    #@8
    if-eqz v0, :cond_12

    #@a
    .line 129
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@c
    const/4 v0, 0x0

    #@d
    invoke-interface {p1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@10
    move-result p1

    #@11
    return p1

    #@12
    :cond_12
    const/4 v0, 0x1

    #@13
    .line 134
    :try_start_13
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/functions/Predicate;

    #@15
    invoke-interface {v2, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@18
    move-result v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_25

    #@19
    if-eqz v2, :cond_24

    #@1b
    .line 139
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@1d
    invoke-interface {v2, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@20
    move-result p1

    #@21
    if-eqz p1, :cond_24

    #@23
    move v1, v0

    #@24
    :cond_24
    return v1

    #@25
    :catchall_25
    move-exception p1

    #@26
    .line 136
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    #@29
    return v0
.end method
