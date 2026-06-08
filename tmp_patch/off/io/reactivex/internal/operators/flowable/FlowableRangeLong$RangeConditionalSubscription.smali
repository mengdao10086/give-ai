.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeConditionalSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    .line 185
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    #@3
    .line 186
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 8

    #@0
    .line 191
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    #@2
    .line 192
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@4
    .line 194
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    #@6
    :goto_6
    cmp-long v5, v3, v0

    #@8
    if-eqz v5, :cond_1a

    #@a
    .line 195
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    #@c
    if-eqz v5, :cond_f

    #@e
    return-void

    #@f
    .line 198
    :cond_f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v2, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@16
    const-wide/16 v5, 0x1

    #@18
    add-long/2addr v3, v5

    #@19
    goto :goto_6

    #@1a
    .line 200
    :cond_1a
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    return-void

    #@1f
    .line 203
    :cond_1f
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@22
    return-void
.end method

.method slowPath(J)V
    .registers 15

    #@0
    .line 209
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    #@2
    .line 210
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    #@4
    .line 211
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

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
    if-eqz v9, :cond_25

    #@d
    cmp-long v9, v2, v0

    #@f
    if-eqz v9, :cond_25

    #@11
    .line 216
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    #@13
    if-eqz v9, :cond_16

    #@15
    return-void

    #@16
    .line 220
    :cond_16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v9

    #@1a
    invoke-interface {v4, v9}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@1d
    move-result v9

    #@1e
    const-wide/16 v10, 0x1

    #@20
    if-eqz v9, :cond_23

    #@22
    add-long/2addr v7, v10

    #@23
    :cond_23
    add-long/2addr v2, v10

    #@24
    goto :goto_9

    #@25
    :cond_25
    cmp-long p1, v2, v0

    #@27
    if-nez p1, :cond_31

    #@29
    .line 228
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    #@2b
    if-nez p1, :cond_30

    #@2d
    .line 229
    invoke-interface {v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@30
    :cond_30
    return-void

    #@31
    .line 234
    :cond_31
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->get()J

    #@34
    move-result-wide p1

    #@35
    cmp-long v9, v7, p1

    #@37
    if-nez v9, :cond_9

    #@39
    .line 236
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    #@3b
    neg-long p1, v7

    #@3c
    .line 237
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->addAndGet(J)J

    #@3f
    move-result-wide p1

    #@40
    cmp-long v7, p1, v5

    #@42
    if-nez v7, :cond_8

    #@44
    return-void
.end method
