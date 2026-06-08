.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemDelayFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final itemDelay:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;)V"
        }
    .end annotation

    #@0
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;->itemDelay:Lio/reactivex/functions/Function;

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 71
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;->apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;->itemDelay:Lio/reactivex/functions/Function;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The itemDelay returned a null Publisher"

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/reactivestreams/Publisher;

    #@e
    .line 81
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTakePublisher;

    #@10
    const-wide/16 v2, 0x1

    #@12
    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableTakePublisher;-><init>(Lorg/reactivestreams/Publisher;J)V

    #@15
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->justFunction(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableTakePublisher;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Flowable;

    #@20
    move-result-object p1

    #@21
    return-object p1
.end method
