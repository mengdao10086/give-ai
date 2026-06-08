.class final Lio/reactivex/internal/operators/single/SingleDelay$Delay;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Delay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;,
        Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final sd:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleDelay;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/SingleObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/SequentialDisposable;",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@7
    .line 52
    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->downstream:Lio/reactivex/SingleObserver;

    #@9
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 7

    #@0
    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@4
    iget-object v1, v1, Lio/reactivex/internal/operators/single/SingleDelay;->scheduler:Lio/reactivex/Scheduler;

    #@6
    new-instance v2, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;

    #@8
    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;-><init>(Lio/reactivex/internal/operators/single/SingleDelay$Delay;Ljava/lang/Throwable;)V

    #@b
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@d
    iget-boolean p1, p1, Lio/reactivex/internal/operators/single/SingleDelay;->delayError:Z

    #@f
    if-eqz p1, :cond_16

    #@11
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@13
    iget-wide v3, p1, Lio/reactivex/internal/operators/single/SingleDelay;->time:J

    #@15
    goto :goto_18

    #@16
    :cond_16
    const-wide/16 v3, 0x0

    #@18
    :goto_18
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@1a
    iget-object p1, p1, Lio/reactivex/internal/operators/single/SingleDelay;->unit:Ljava/util/concurrent/TimeUnit;

    #@1c
    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@23
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@5
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@4
    iget-object v1, v1, Lio/reactivex/internal/operators/single/SingleDelay;->scheduler:Lio/reactivex/Scheduler;

    #@6
    new-instance v2, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;

    #@8
    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;-><init>(Lio/reactivex/internal/operators/single/SingleDelay$Delay;Ljava/lang/Object;)V

    #@b
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@d
    iget-wide v3, p1, Lio/reactivex/internal/operators/single/SingleDelay;->time:J

    #@f
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    #@11
    iget-object p1, p1, Lio/reactivex/internal/operators/single/SingleDelay;->unit:Ljava/util/concurrent/TimeUnit;

    #@13
    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@1a
    return-void
.end method
