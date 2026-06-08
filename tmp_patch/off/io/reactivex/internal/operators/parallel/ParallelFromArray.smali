.class public final Lio/reactivex/internal/operators/parallel/ParallelFromArray;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelFromArray.java"


# annotations
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
.field final sources:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/reactivestreams/Publisher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 29
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromArray;->sources:[Lorg/reactivestreams/Publisher;

    #@5
    return-void
.end method


# virtual methods
.method public parallelism()I
    .registers 2

    #@0
    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromArray;->sources:[Lorg/reactivestreams/Publisher;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 40
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelFromArray;->validate([Lorg/reactivestreams/Subscriber;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 44
    :cond_7
    array-length v0, p1

    #@8
    const/4 v1, 0x0

    #@9
    :goto_9
    if-ge v1, v0, :cond_17

    #@b
    .line 47
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromArray;->sources:[Lorg/reactivestreams/Publisher;

    #@d
    aget-object v2, v2, v1

    #@f
    aget-object v3, p1, v1

    #@11
    invoke-interface {v2, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_9

    #@17
    :cond_17
    return-void
.end method
