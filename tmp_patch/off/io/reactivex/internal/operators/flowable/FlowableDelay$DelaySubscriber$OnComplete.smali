.class final Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnComplete;
.super Ljava/lang/Object;
.source "FlowableDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnComplete"
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;)V
    .registers 2

    #@0
    .line 135
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnComplete;->this$0:Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    .line 139
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnComplete;->this$0:Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@4
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    #@7
    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnComplete;->this$0:Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;

    #@9
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;->w:Lio/reactivex/Scheduler$Worker;

    #@b
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@e
    return-void

    #@f
    :catchall_f
    move-exception v0

    #@10
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnComplete;->this$0:Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;

    #@12
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber;->w:Lio/reactivex/Scheduler$Worker;

    #@14
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@17
    .line 142
    throw v0
.end method
