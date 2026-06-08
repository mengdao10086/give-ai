.class public final Lio/reactivex/internal/schedulers/RxThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "RxThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/RxThreadFactory$RxCustomThread;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6c1ac31a817da8a4L


# instance fields
.field final nonBlocking:Z

.field final prefix:Ljava/lang/String;

.field final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    const/4 v1, 0x0

    #@2
    .line 36
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 40
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    #@0
    .line 43
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    #@5
    .line 45
    iput p2, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->priority:I

    #@7
    .line 46
    iput-boolean p3, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->nonBlocking:Z

    #@9
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    #@0
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    const/16 v1, 0x2d

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/RxThreadFactory;->incrementAndGet()J

    #@10
    move-result-wide v1

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 74
    iget-boolean v1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->nonBlocking:Z

    #@1b
    if-eqz v1, :cond_23

    #@1d
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory$RxCustomThread;

    #@1f
    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory$RxCustomThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@22
    goto :goto_28

    #@23
    :cond_23
    new-instance v1, Ljava/lang/Thread;

    #@25
    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@28
    .line 75
    :goto_28
    iget p1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->priority:I

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    #@2d
    const/4 p1, 0x1

    #@2e
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@31
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "RxThreadFactory["

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "]"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method
