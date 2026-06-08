.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    .line 117
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    #@3
    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 8

    #@0
    .line 123
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    #@2
    .line 124
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@4
    .line 126
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    #@6
    :goto_6
    cmp-long v5, v3, v0

    #@8
    if-eqz v5, :cond_1a

    #@a
    .line 127
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    #@c
    if-eqz v5, :cond_f

    #@e
    return-void

    #@f
    .line 130
    :cond_f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@16
    const-wide/16 v5, 0x1

    #@18
    add-long/2addr v3, v5

    #@19
    goto :goto_6

    #@1a
    .line 132
    :cond_1a
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    return-void

    #@1f
    .line 135
    :cond_1f
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@22
    return-void
.end method

.method slowPath(J)V
    .registers 14

    #@0
    .line 141
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    #@2
    .line 142
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    #@4
    .line 143
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@6
    const-wide/16 v5, 0x0

    #@8
    :cond_8
    move-wide v7, v5

    #@9
    :cond_9
    :goto_9
    cmp-long v9, v7, p1

    #@b
    if-eqz v9, :cond_22

    #@d
    cmp-long v9, v2, v0

    #@f
    if-eqz v9, :cond_22

    #@11
    .line 148
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    #@13
    if-eqz v9, :cond_16

    #@15
    return-void

    #@16
    .line 152
    :cond_16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v9

    #@1a
    invoke-interface {v4, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@1d
    const-wide/16 v9, 0x1

    #@1f
    add-long/2addr v7, v9

    #@20
    add-long/2addr v2, v9

    #@21
    goto :goto_9

    #@22
    :cond_22
    cmp-long p1, v2, v0

    #@24
    if-nez p1, :cond_2e

    #@26
    .line 159
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    #@28
    if-nez p1, :cond_2d

    #@2a
    .line 160
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@2d
    :cond_2d
    return-void

    #@2e
    .line 165
    :cond_2e
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->get()J

    #@31
    move-result-wide p1

    #@32
    cmp-long v9, v7, p1

    #@34
    if-nez v9, :cond_9

    #@36
    .line 167
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    #@38
    neg-long p1, v7

    #@39
    .line 168
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->addAndGet(J)J

    #@3c
    move-result-wide p1

    #@3d
    cmp-long v7, p1, v5

    #@3f
    if-nez v7, :cond_8

    #@41
    return-void
.end method
