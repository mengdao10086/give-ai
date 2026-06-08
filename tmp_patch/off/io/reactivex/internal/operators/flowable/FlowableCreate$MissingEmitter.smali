.class final Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;
.super Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;
.source "FlowableCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MissingEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34699b00190316f1L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 357
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@3
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 362
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->isCancelled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    if-eqz p1, :cond_23

    #@9
    .line 367
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->downstream:Lorg/reactivestreams/Subscriber;

    #@b
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@e
    .line 374
    :cond_e
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->get()J

    #@11
    move-result-wide v0

    #@12
    const-wide/16 v2, 0x0

    #@14
    cmp-long p1, v0, v2

    #@16
    if-eqz p1, :cond_22

    #@18
    const-wide/16 v2, 0x1

    #@1a
    sub-long v2, v0, v2

    #@1c
    .line 375
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->compareAndSet(JJ)Z

    #@1f
    move-result p1

    #@20
    if-eqz p1, :cond_e

    #@22
    :cond_22
    return-void

    #@23
    .line 369
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    #@25
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@27
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->onError(Ljava/lang/Throwable;)V

    #@2d
    return-void
.end method
