.class final Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 115
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;-><init>(II)V

    #@3
    .line 116
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 5

    #@0
    .line 121
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->end:I

    #@2
    .line 122
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@4
    .line 124
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    #@6
    :goto_6
    if-eq v2, v0, :cond_17

    #@8
    .line 125
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    #@a
    if-eqz v3, :cond_d

    #@c
    return-void

    #@d
    .line 128
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v1, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_6

    #@17
    .line 130
    :cond_17
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    #@19
    if-eqz v0, :cond_1c

    #@1b
    return-void

    #@1c
    .line 133
    :cond_1c
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@1f
    return-void
.end method

.method slowPath(J)V
    .registers 12

    #@0
    .line 139
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->end:I

    #@2
    .line 140
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    #@4
    .line 141
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@6
    const-wide/16 v3, 0x0

    #@8
    :cond_8
    move-wide v5, v3

    #@9
    :cond_9
    :goto_9
    cmp-long v7, v5, p1

    #@b
    if-eqz v7, :cond_21

    #@d
    if-eq v1, v0, :cond_21

    #@f
    .line 146
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    #@11
    if-eqz v7, :cond_14

    #@13
    return-void

    #@14
    .line 150
    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v7

    #@18
    invoke-interface {v2, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@1b
    const-wide/16 v7, 0x1

    #@1d
    add-long/2addr v5, v7

    #@1e
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_9

    #@21
    :cond_21
    if-ne v1, v0, :cond_2b

    #@23
    .line 157
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    #@25
    if-nez p1, :cond_2a

    #@27
    .line 158
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@2a
    :cond_2a
    return-void

    #@2b
    .line 163
    :cond_2b
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->get()J

    #@2e
    move-result-wide p1

    #@2f
    cmp-long v7, v5, p1

    #@31
    if-nez v7, :cond_9

    #@33
    .line 165
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    #@35
    neg-long p1, v5

    #@36
    .line 166
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->addAndGet(J)J

    #@39
    move-result-wide p1

    #@3a
    cmp-long v5, p1, v3

    #@3c
    if-nez v5, :cond_8

    #@3e
    return-void
.end method
