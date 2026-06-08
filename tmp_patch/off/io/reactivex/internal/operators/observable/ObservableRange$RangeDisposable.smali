.class final Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "ObservableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x580b77479f42190L


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final end:J

.field fused:Z

.field index:J


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    .line 51
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->downstream:Lio/reactivex/Observer;

    #@5
    .line 53
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->index:J

    #@7
    .line 54
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->end:J

    #@9
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    #@0
    .line 91
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->end:J

    #@2
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->index:J

    #@4
    const/4 v0, 0x1

    #@5
    .line 92
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->lazySet(I)V

    #@8
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 97
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->set(I)V

    #@4
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 102
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->get()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public isEmpty()Z
    .registers 5

    #@0
    .line 86
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->index:J

    #@2
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->end:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public poll()Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 75
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->index:J

    #@2
    .line 76
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->end:J

    #@4
    cmp-long v2, v0, v2

    #@6
    if-eqz v2, :cond_13

    #@8
    const-wide/16 v2, 0x1

    #@a
    add-long/2addr v2, v0

    #@b
    .line 77
    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->index:J

    #@d
    long-to-int v0, v0

    #@e
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    :cond_13
    const/4 v0, 0x1

    #@14
    .line 80
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->lazySet(I)V

    #@17
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 38
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->poll()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    and-int/2addr p1, v0

    #@2
    if-eqz p1, :cond_7

    #@4
    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->fused:Z

    #@6
    return v0

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    return p1
.end method

.method run()V
    .registers 8

    #@0
    .line 58
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->fused:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 61
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->downstream:Lio/reactivex/Observer;

    #@7
    .line 62
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->end:J

    #@9
    .line 63
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->index:J

    #@b
    :goto_b
    cmp-long v5, v3, v1

    #@d
    if-eqz v5, :cond_21

    #@f
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->get()I

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_21

    #@15
    long-to-int v5, v3

    #@16
    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v0, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@1d
    const-wide/16 v5, 0x1

    #@1f
    add-long/2addr v3, v5

    #@20
    goto :goto_b

    #@21
    .line 66
    :cond_21
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->get()I

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_2e

    #@27
    const/4 v1, 0x1

    #@28
    .line 67
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->lazySet(I)V

    #@2b
    .line 68
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@2e
    :cond_2e
    return-void
.end method
