.class public final Lio/reactivex/internal/operators/parallel/ParallelConcatMap;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final errorMode:Lio/reactivex/internal/util/ErrorMode;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    #@0
    .line 43
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@5
    const-string p1, "mapper"

    #@7
    .line 45
    invoke-static {p2, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    check-cast p1, Lio/reactivex/functions/Function;

    #@d
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->mapper:Lio/reactivex/functions/Function;

    #@f
    .line 46
    iput p3, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->prefetch:I

    #@11
    const-string p1, "errorMode"

    #@13
    .line 47
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Lio/reactivex/internal/util/ErrorMode;

    #@19
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    #@1b
    return-void
.end method


# virtual methods
.method public parallelism()I
    .registers 2

    #@0
    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@2
    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    .line 57
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->validate([Lorg/reactivestreams/Subscriber;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 61
    :cond_7
    array-length v0, p1

    #@8
    .line 64
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v0, :cond_1e

    #@d
    .line 67
    aget-object v3, p1, v2

    #@f
    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->mapper:Lio/reactivex/functions/Function;

    #@11
    iget v5, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->prefetch:I

    #@13
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    #@15
    invoke-static {v3, v4, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;->subscribe(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)Lorg/reactivestreams/Subscriber;

    #@18
    move-result-object v3

    #@19
    aput-object v3, v1, v2

    #@1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_b

    #@1e
    .line 70
    :cond_1e
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@20
    invoke-virtual {p1, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    #@23
    return-void
.end method
