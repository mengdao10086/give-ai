.class final Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRange;
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 183
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;-><init>(II)V

    #@3
    .line 184
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 5

    #@0
    .line 189
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->end:I

    #@2
    .line 190
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@4
    .line 192
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    #@6
    :goto_6
    if-eq v2, v0, :cond_17

    #@8
    .line 193
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    #@a
    if-eqz v3, :cond_d

    #@c
    return-void

    #@d
    .line 196
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v1, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_6

    #@17
    .line 198
    :cond_17
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    #@19
    if-eqz v0, :cond_1c

    #@1b
    return-void

    #@1c
    .line 201
    :cond_1c
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@1f
    return-void
.end method

.method slowPath(J)V
    .registers 12

    #@0
    .line 207
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->end:I

    #@2
    .line 208
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    #@4
    .line 209
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

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
    if-eqz v7, :cond_24

    #@d
    if-eq v1, v0, :cond_24

    #@f
    .line 214
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    #@11
    if-eqz v7, :cond_14

    #@13
    return-void

    #@14
    .line 218
    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v7

    #@18
    invoke-interface {v2, v7}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_21

    #@1e
    const-wide/16 v7, 0x1

    #@20
    add-long/2addr v5, v7

    #@21
    :cond_21
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_9

    #@24
    :cond_24
    if-ne v1, v0, :cond_2e

    #@26
    .line 226
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    #@28
    if-nez p1, :cond_2d

    #@2a
    .line 227
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@2d
    :cond_2d
    return-void

    #@2e
    .line 232
    :cond_2e
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->get()J

    #@31
    move-result-wide p1

    #@32
    cmp-long v7, v5, p1

    #@34
    if-nez v7, :cond_9

    #@36
    .line 234
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    #@38
    neg-long p1, v5

    #@39
    .line 235
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->addAndGet(J)J

    #@3c
    move-result-wide p1

    #@3d
    cmp-long v5, p1, v3

    #@3f
    if-nez v5, :cond_8

    #@41
    return-void
.end method
