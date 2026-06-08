.class public final Lio/reactivex/internal/operators/parallel/ParallelFilterTry;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final errorHandler:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 40
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@5
    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    .line 43
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->errorHandler:Lio/reactivex/functions/BiFunction;

    #@9
    return-void
.end method


# virtual methods
.method public parallelism()I
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->source:Lio/reactivex/parallel/ParallelFlowable;

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
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 48
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->validate([Lorg/reactivestreams/Subscriber;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 52
    :cond_7
    array-length v0, p1

    #@8
    .line 54
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v0, :cond_2f

    #@d
    .line 57
    aget-object v3, p1, v2

    #@f
    .line 58
    instance-of v4, v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@11
    if-eqz v4, :cond_21

    #@13
    .line 59
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;

    #@15
    check-cast v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@17
    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->predicate:Lio/reactivex/functions/Predicate;

    #@19
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->errorHandler:Lio/reactivex/functions/BiFunction;

    #@1b
    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    #@1e
    aput-object v4, v1, v2

    #@20
    goto :goto_2c

    #@21
    .line 61
    :cond_21
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;

    #@23
    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->predicate:Lio/reactivex/functions/Predicate;

    #@25
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->errorHandler:Lio/reactivex/functions/BiFunction;

    #@27
    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    #@2a
    aput-object v4, v1, v2

    #@2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_b

    #@2f
    .line 65
    :cond_2f
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@31
    invoke-virtual {p1, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    #@34
    return-void
.end method
