.class public final Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final onAfterTerminate:Lio/reactivex/functions/Action;

.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    #@0
    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    #@3
    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onNext:Lio/reactivex/functions/Consumer;

    #@5
    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onError:Lio/reactivex/functions/Consumer;

    #@7
    .line 40
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onComplete:Lio/reactivex/functions/Action;

    #@9
    .line 41
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onAfterTerminate:Lio/reactivex/functions/Action;

    #@b
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 46
    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@2
    if-eqz v0, :cond_1b

    #@4
    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->source:Lio/reactivex/Flowable;

    #@6
    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;

    #@8
    move-object v2, p1

    #@9
    check-cast v2, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@b
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onNext:Lio/reactivex/functions/Consumer;

    #@d
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onError:Lio/reactivex/functions/Consumer;

    #@f
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onComplete:Lio/reactivex/functions/Action;

    #@11
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onAfterTerminate:Lio/reactivex/functions/Action;

    #@13
    move-object v1, v7

    #@14
    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    #@17
    invoke-virtual {v0, v7}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    #@1a
    goto :goto_2f

    #@1b
    .line 50
    :cond_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->source:Lio/reactivex/Flowable;

    #@1d
    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;

    #@1f
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onNext:Lio/reactivex/functions/Consumer;

    #@21
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onError:Lio/reactivex/functions/Consumer;

    #@23
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onComplete:Lio/reactivex/functions/Action;

    #@25
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;->onAfterTerminate:Lio/reactivex/functions/Action;

    #@27
    move-object v1, v7

    #@28
    move-object v2, p1

    #@29
    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    #@2c
    invoke-virtual {v0, v7}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    #@2f
    :goto_2f
    return-void
.end method
