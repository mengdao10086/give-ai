.class public final Lio/reactivex/internal/operators/flowable/FlowableLift;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableLift.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final operator:Lio/reactivex/FlowableOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableOperator<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/FlowableOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lio/reactivex/FlowableOperator<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    #@0
    .line 36
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    #@3
    .line 37
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableLift;->operator:Lio/reactivex/FlowableOperator;

    #@5
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Operator "

    #@2
    .line 43
    :try_start_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLift;->operator:Lio/reactivex/FlowableOperator;

    #@4
    invoke-interface {v1, p1}, Lio/reactivex/FlowableOperator;->apply(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    #@7
    move-result-object p1

    #@8
    if-eqz p1, :cond_10

    #@a
    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLift;->source:Lio/reactivex/Flowable;

    #@c
    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@f
    return-void

    #@10
    .line 46
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLift;->operator:Lio/reactivex/FlowableOperator;

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, " returned a null Subscriber"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p1
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2b} :catch_3d
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2b

    #@2b
    :catchall_2b
    move-exception p1

    #@2c
    .line 53
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2f
    .line 56
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@32
    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    #@34
    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    #@36
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@39
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3c
    .line 60
    throw v0

    #@3d
    :catch_3d
    move-exception p1

    #@3e
    .line 51
    throw p1
.end method
