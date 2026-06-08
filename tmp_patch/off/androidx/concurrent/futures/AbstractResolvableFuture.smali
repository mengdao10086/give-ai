.class public abstract Landroidx/concurrent/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

.field volatile value:Ljava/lang/Object;

.field volatile waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    #@2
    const-string v1, "false"

    #@4
    .line 66
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    sput-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    #@e
    .line 69
    const-class v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    #@10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@17
    move-result-object v1

    #@18
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    #@1a
    .line 85
    :try_start_1a
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;

    #@1c
    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@1e
    const-class v3, Ljava/lang/Thread;

    #@20
    const-string v4, "thread"

    #@22
    .line 87
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@25
    move-result-object v3

    #@26
    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@28
    const-class v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@2a
    const-string v5, "next"

    #@2c
    .line 88
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@2f
    move-result-object v4

    #@30
    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@32
    const-string v5, "waiters"

    #@34
    .line 89
    invoke-static {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@37
    move-result-object v5

    #@38
    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@3a
    const-string v6, "listeners"

    #@3c
    .line 90
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@3f
    move-result-object v6

    #@40
    const-class v2, Ljava/lang/Object;

    #@42
    const-string v7, "value"

    #@44
    .line 94
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@47
    move-result-object v7

    #@48
    move-object v2, v1

    #@49
    invoke-direct/range {v2 .. v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_4c
    .catchall {:try_start_1a .. :try_end_4c} :catchall_4e

    #@4c
    const/4 v0, 0x0

    #@4d
    goto :goto_54

    #@4e
    :catchall_4e
    move-exception v0

    #@4f
    .line 101
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;

    #@51
    invoke-direct {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;-><init>()V

    #@54
    .line 104
    :goto_54
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@56
    .line 109
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@58
    if-eqz v0, :cond_63

    #@5a
    .line 114
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    #@5c
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@5e
    const-string v3, "SafeAtomicHelper is broken!"

    #@60
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    .line 217
    :cond_63
    new-instance v0, Ljava/lang/Object;

    #@65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@68
    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    #@6a
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    #@0
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .registers 5

    #@0
    const-string v0, "]"

    #@2
    .line 1023
    :try_start_2
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    const-string v2, "SUCCESS, result=["

    #@8
    .line 1024
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_17} :catch_33
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_17} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_17} :catch_18

    #@17
    goto :goto_45

    #@18
    :catch_18
    move-exception v0

    #@19
    const-string v1, "UNKNOWN, cause=["

    #@1b
    .line 1030
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    const-string v0, " thrown from get()]"

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_45

    #@2d
    :catch_2d
    const-string v0, "CANCELLED"

    #@2f
    .line 1028
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    goto :goto_45

    #@33
    :catch_33
    move-exception v1

    #@34
    const-string v2, "FAILURE, cause=["

    #@36
    .line 1026
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object p1

    #@42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    :goto_45
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3

    #@0
    .line 1192
    new-instance v0, Ljava/util/concurrent/CancellationException;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    #@5
    .line 1193
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .line 1201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    return-object p0
.end method

.method private clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    .registers 6

    #@0
    .line 960
    :cond_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@2
    .line 961
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@4
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@6
    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    move-object v3, v0

    #@d
    move-object v0, p1

    #@e
    move-object p1, v3

    #@f
    :goto_f
    if-eqz p1, :cond_18

    #@11
    .line 965
    iget-object v1, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@13
    .line 966
    iput-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@15
    move-object v0, p1

    #@16
    move-object p1, v1

    #@17
    goto :goto_f

    #@18
    :cond_18
    return-object v0
.end method

.method static complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 871
    :goto_1
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->releaseWaiters()V

    #@4
    .line 877
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->afterDone()V

    #@7
    .line 879
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@a
    move-result-object p0

    #@b
    :goto_b
    if-eqz p0, :cond_33

    #@d
    .line 883
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@f
    .line 884
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->task:Ljava/lang/Runnable;

    #@11
    .line 885
    instance-of v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@13
    if-eqz v2, :cond_2c

    #@15
    .line 886
    check-cast v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@17
    .line 893
    iget-object p0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    #@19
    .line 894
    iget-object v2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@1b
    if-ne v2, v1, :cond_31

    #@1d
    .line 895
    iget-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    #@1f
    invoke-static {v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    .line 896
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@25
    invoke-virtual {v3, p0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_31

    #@2b
    goto :goto_1

    #@2c
    .line 902
    :cond_2c
    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    #@2e
    invoke-static {v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    #@31
    :cond_31
    move-object p0, v0

    #@32
    goto :goto_b

    #@33
    :cond_33
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    #@0
    .line 1053
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    #@3
    goto :goto_25

    #@4
    :catch_4
    move-exception v0

    #@5
    .line 1058
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    #@7
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    const-string v4, "RuntimeException while executing runnable "

    #@d
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p0

    #@14
    const-string v3, " with executor "

    #@16
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p0

    #@1e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    :goto_25
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .line 513
    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@2
    if-nez v0, :cond_18

    #@4
    .line 517
    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@6
    if-nez v0, :cond_e

    #@8
    .line 519
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    #@a
    if-ne p1, v0, :cond_d

    #@c
    const/4 p1, 0x0

    #@d
    :cond_d
    return-object p1

    #@e
    .line 518
    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    #@10
    check-cast p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@12
    iget-object p1, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    #@14
    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@17
    throw v0

    #@18
    .line 514
    :cond_18
    check-cast p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@1a
    iget-object p1, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    #@1c
    const-string v0, "Task was cancelled."

    #@1e
    invoke-static {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    #@21
    move-result-object p1

    #@22
    throw p1
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .line 800
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_23

    #@5
    .line 806
    check-cast p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    #@7
    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@9
    .line 807
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@b
    if-eqz v0, :cond_22

    #@d
    .line 811
    move-object v0, p0

    #@e
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@10
    .line 812
    iget-boolean v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    #@12
    if-eqz v2, :cond_22

    #@14
    .line 813
    iget-object p0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    #@16
    if-eqz p0, :cond_20

    #@18
    new-instance p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@1a
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    #@1c
    invoke-direct {p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    #@1f
    goto :goto_22

    #@20
    :cond_20
    sget-object p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@22
    :cond_22
    :goto_22
    return-object p0

    #@23
    .line 819
    :cond_23
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    #@26
    move-result v0

    #@27
    .line 821
    sget-boolean v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    #@29
    xor-int/lit8 v2, v2, 0x1

    #@2b
    and-int/2addr v2, v0

    #@2c
    if-eqz v2, :cond_31

    #@2e
    .line 822
    sget-object p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@30
    return-object p0

    #@31
    .line 826
    :cond_31
    :try_start_31
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    if-nez v2, :cond_39

    #@37
    .line 827
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;
    :try_end_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_31 .. :try_end_39} :catch_64
    .catch Ljava/util/concurrent/CancellationException; {:try_start_31 .. :try_end_39} :catch_41
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    #@39
    :cond_39
    return-object v2

    #@3a
    :catchall_3a
    move-exception p0

    #@3b
    .line 841
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@3d
    invoke-direct {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    #@40
    return-object v0

    #@41
    :catch_41
    move-exception v2

    #@42
    if-nez v0, :cond_5e

    #@44
    .line 832
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    #@4c
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object p0

    #@53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object p0

    #@57
    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    #@5d
    return-object v0

    #@5e
    .line 839
    :cond_5e
    new-instance p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@60
    invoke-direct {p0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    #@63
    return-object p0

    #@64
    :catch_64
    move-exception p0

    #@65
    .line 829
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@67
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    #@6a
    move-result-object p0

    #@6b
    invoke-direct {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    #@6e
    return-object v0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 853
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    #@4
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    #@5
    if-eqz v0, :cond_e

    #@7
    .line 860
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@e
    :cond_e
    return-object p0

    #@f
    :catchall_f
    move-exception p0

    #@10
    if-eqz v0, :cond_19

    #@12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@19
    .line 862
    :cond_19
    throw p0

    #@1a
    :catch_1a
    const/4 v0, 0x1

    #@1b
    goto :goto_1
.end method

.method private releaseWaiters()V
    .registers 4

    #@0
    .line 939
    :cond_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@2
    .line 940
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@4
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@6
    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    :goto_c
    if-eqz v0, :cond_14

    #@e
    .line 943
    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->unpark()V

    #@11
    .line 942
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@13
    goto :goto_c

    #@14
    :cond_14
    return-void
.end method

.method private removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 171
    iput-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    #@3
    .line 175
    :goto_3
    iget-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@5
    .line 176
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@7
    if-ne p1, v1, :cond_a

    #@9
    return-void

    #@a
    :cond_a
    move-object v1, v0

    #@b
    :goto_b
    if-eqz p1, :cond_29

    #@d
    .line 181
    iget-object v2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@f
    .line 182
    iget-object v3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    #@11
    if-eqz v3, :cond_15

    #@13
    move-object v1, p1

    #@14
    goto :goto_27

    #@15
    :cond_15
    if-eqz v1, :cond_1e

    #@17
    .line 185
    iput-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@19
    .line 186
    iget-object p1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    #@1b
    if-nez p1, :cond_27

    #@1d
    goto :goto_3

    #@1e
    .line 190
    :cond_1e
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@20
    invoke-virtual {v3, p0, p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    #@23
    move-result p1

    #@24
    if-nez p1, :cond_27

    #@26
    goto :goto_3

    #@27
    :cond_27
    :goto_27
    move-object p1, v2

    #@28
    goto :goto_b

    #@29
    :cond_29
    return-void
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    if-ne p1, p0, :cond_5

    #@2
    const-string p1, "this future"

    #@4
    return-object p1

    #@5
    .line 1044
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    #@0
    .line 653
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 654
    invoke-static {p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 655
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@8
    .line 656
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@a
    if-eq v0, v1, :cond_22

    #@c
    .line 657
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@e
    invoke-direct {v1, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    #@11
    .line 659
    :cond_11
    iput-object v0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@13
    .line 660
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@15
    invoke-virtual {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1c

    #@1b
    return-void

    #@1c
    .line 663
    :cond_1c
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@1e
    .line 664
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    #@20
    if-ne v0, v2, :cond_11

    #@22
    .line 668
    :cond_22
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    #@25
    return-void
.end method

.method protected afterDone()V
    .registers 1

    #@0
    return-void
.end method

.method public final cancel(Z)Z
    .registers 9

    #@0
    .line 555
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-nez v0, :cond_8

    #@6
    move v3, v1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v3, v2

    #@9
    .line 557
    :goto_9
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@b
    or-int/2addr v3, v4

    #@c
    if-eqz v3, :cond_61

    #@e
    .line 560
    sget-boolean v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    #@10
    if-eqz v3, :cond_1f

    #@12
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@14
    new-instance v4, Ljava/util/concurrent/CancellationException;

    #@16
    const-string v5, "Future.cancel() was called."

    #@18
    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-direct {v3, p1, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    #@1e
    goto :goto_26

    #@1f
    :cond_1f
    if-eqz p1, :cond_24

    #@21
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@23
    goto :goto_26

    #@24
    :cond_24
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@26
    :goto_26
    move-object v4, p0

    #@27
    move v5, v2

    #@28
    .line 570
    :cond_28
    :goto_28
    sget-object v6, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@2a
    invoke-virtual {v6, v4, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_59

    #@30
    if-eqz p1, :cond_35

    #@32
    .line 575
    invoke-virtual {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->interruptTask()V

    #@35
    .line 577
    :cond_35
    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    #@38
    .line 578
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@3a
    if-eqz v4, :cond_62

    #@3c
    .line 582
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@3e
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    #@40
    .line 583
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    #@42
    if-eqz v4, :cond_55

    #@44
    .line 592
    move-object v4, v0

    #@45
    check-cast v4, Landroidx/concurrent/futures/AbstractResolvableFuture;

    #@47
    .line 594
    iget-object v0, v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@49
    if-nez v0, :cond_4d

    #@4b
    move v5, v1

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    move v5, v2

    #@4e
    .line 595
    :goto_4e
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@50
    or-int/2addr v5, v6

    #@51
    if-eqz v5, :cond_62

    #@53
    move v5, v1

    #@54
    goto :goto_28

    #@55
    .line 601
    :cond_55
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    #@58
    goto :goto_62

    #@59
    .line 607
    :cond_59
    iget-object v0, v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@5b
    .line 608
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@5d
    if-nez v6, :cond_28

    #@5f
    move v1, v5

    #@60
    goto :goto_62

    #@61
    :cond_61
    move v1, v2

    #@62
    :cond_62
    :goto_62
    return v1
.end method

.method public final get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .line 470
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_61

    #@6
    .line 473
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    if-eqz v0, :cond_e

    #@c
    move v3, v2

    #@d
    goto :goto_f

    #@e
    :cond_e
    move v3, v1

    #@f
    .line 474
    :goto_f
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@11
    xor-int/2addr v4, v2

    #@12
    and-int/2addr v3, v4

    #@13
    if-eqz v3, :cond_1a

    #@15
    .line 475
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 477
    :cond_1a
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@1c
    .line 478
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@1e
    if-eq v0, v3, :cond_5a

    #@20
    .line 479
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@22
    invoke-direct {v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    #@25
    .line 481
    :cond_25
    invoke-virtual {v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    #@28
    .line 482
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@2a
    invoke-virtual {v4, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_54

    #@30
    .line 485
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@33
    .line 488
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_4b

    #@39
    .line 495
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@3b
    if-eqz v0, :cond_3f

    #@3d
    move v4, v2

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v4, v1

    #@40
    .line 496
    :goto_40
    instance-of v5, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@42
    xor-int/2addr v5, v2

    #@43
    and-int/2addr v4, v5

    #@44
    if-eqz v4, :cond_30

    #@46
    .line 497
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    return-object v0

    #@4b
    .line 489
    :cond_4b
    invoke-direct {p0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    #@4e
    .line 490
    new-instance v0, Ljava/lang/InterruptedException;

    #@50
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@53
    throw v0

    #@54
    .line 501
    :cond_54
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@56
    .line 502
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@58
    if-ne v0, v4, :cond_25

    #@5a
    .line 506
    :cond_5a
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@5c
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    return-object v0

    #@61
    .line 471
    :cond_61
    new-instance v0, Ljava/lang/InterruptedException;

    #@63
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@66
    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-wide/from16 v1, p1

    #@4
    move-object/from16 v3, p3

    #@6
    .line 359
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@9
    move-result-wide v4

    #@a
    .line 361
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_1c2

    #@10
    .line 364
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@12
    const/4 v8, 0x1

    #@13
    if-eqz v6, :cond_17

    #@15
    move v9, v8

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v9, 0x0

    #@18
    .line 365
    :goto_18
    instance-of v10, v6, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@1a
    xor-int/2addr v10, v8

    #@1b
    and-int/2addr v9, v10

    #@1c
    if-eqz v9, :cond_23

    #@1e
    .line 366
    invoke-direct {v0, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    :cond_23
    const-wide/16 v9, 0x0

    #@25
    cmp-long v6, v4, v9

    #@27
    if-lez v6, :cond_2f

    #@29
    .line 369
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@2c
    move-result-wide v11

    #@2d
    add-long/2addr v11, v4

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move-wide v11, v9

    #@30
    :goto_30
    const-wide/16 v13, 0x3e8

    #@32
    cmp-long v6, v4, v13

    #@34
    if-ltz v6, :cond_8b

    #@36
    .line 372
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@38
    .line 373
    sget-object v15, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@3a
    if-eq v6, v15, :cond_84

    #@3c
    .line 374
    new-instance v15, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@3e
    invoke-direct {v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    #@41
    .line 376
    :cond_41
    invoke-virtual {v15, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    #@44
    .line 377
    sget-object v7, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@46
    invoke-virtual {v7, v0, v6, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_7e

    #@4c
    .line 379
    :cond_4c
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@4f
    .line 382
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@52
    move-result v4

    #@53
    if-nez v4, :cond_75

    #@55
    .line 389
    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@57
    if-eqz v4, :cond_5b

    #@59
    move v5, v8

    #@5a
    goto :goto_5c

    #@5b
    :cond_5b
    const/4 v5, 0x0

    #@5c
    .line 390
    :goto_5c
    instance-of v6, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@5e
    xor-int/2addr v6, v8

    #@5f
    and-int/2addr v5, v6

    #@60
    if-eqz v5, :cond_67

    #@62
    .line 391
    invoke-direct {v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v1

    #@66
    return-object v1

    #@67
    .line 395
    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@6a
    move-result-wide v4

    #@6b
    sub-long v4, v11, v4

    #@6d
    cmp-long v6, v4, v13

    #@6f
    if-gez v6, :cond_4c

    #@71
    .line 399
    invoke-direct {v0, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    #@74
    goto :goto_8b

    #@75
    .line 383
    :cond_75
    invoke-direct {v0, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    #@78
    .line 384
    new-instance v1, Ljava/lang/InterruptedException;

    #@7a
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    #@7d
    throw v1

    #@7e
    .line 404
    :cond_7e
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@80
    .line 405
    sget-object v7, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    #@82
    if-ne v6, v7, :cond_41

    #@84
    .line 409
    :cond_84
    iget-object v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@86
    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    move-result-object v1

    #@8a
    return-object v1

    #@8b
    :cond_8b
    :goto_8b
    cmp-long v6, v4, v9

    #@8d
    if-lez v6, :cond_b4

    #@8f
    .line 414
    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@91
    if-eqz v4, :cond_95

    #@93
    move v5, v8

    #@94
    goto :goto_96

    #@95
    :cond_95
    const/4 v5, 0x0

    #@96
    .line 415
    :goto_96
    instance-of v6, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@98
    xor-int/2addr v6, v8

    #@99
    and-int/2addr v5, v6

    #@9a
    if-eqz v5, :cond_a1

    #@9c
    .line 416
    invoke-direct {v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v1

    #@a0
    return-object v1

    #@a1
    .line 418
    :cond_a1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@a4
    move-result v4

    #@a5
    if-nez v4, :cond_ae

    #@a7
    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@aa
    move-result-wide v4

    #@ab
    sub-long v4, v11, v4

    #@ad
    goto :goto_8b

    #@ae
    .line 419
    :cond_ae
    new-instance v1, Ljava/lang/InterruptedException;

    #@b0
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    #@b3
    throw v1

    #@b4
    .line 424
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    #@b7
    move-result-object v6

    #@b8
    .line 425
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    #@bb
    move-result-object v7

    #@bc
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@be
    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    .line 426
    new-instance v11, Ljava/lang/StringBuilder;

    #@c4
    const-string v12, "Waited "

    #@c6
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c9
    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v1

    #@cd
    const-string v2, " "

    #@cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    #@d6
    move-result-object v11

    #@d7
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@d9
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@dc
    move-result-object v11

    #@dd
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v1

    #@e5
    add-long v11, v4, v13

    #@e7
    cmp-long v11, v11, v9

    #@e9
    if-gez v11, :cond_186

    #@eb
    .line 431
    new-instance v11, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v1

    #@f4
    const-string v11, " (plus "

    #@f6
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v1

    #@fa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v1

    #@fe
    neg-long v4, v4

    #@ff
    .line 433
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@101
    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@104
    move-result-wide v11

    #@105
    .line 434
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@108
    move-result-wide v17

    #@109
    sub-long v4, v4, v17

    #@10b
    cmp-long v3, v11, v9

    #@10d
    if-eqz v3, :cond_117

    #@10f
    cmp-long v9, v4, v13

    #@111
    if-lez v9, :cond_114

    #@113
    goto :goto_117

    #@114
    :cond_114
    const/16 v16, 0x0

    #@116
    goto :goto_119

    #@117
    :cond_117
    :goto_117
    move/from16 v16, v8

    #@119
    :goto_119
    if-lez v3, :cond_15a

    #@11b
    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v1

    #@124
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@127
    move-result-object v1

    #@128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v1

    #@12c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v1

    #@130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v1

    #@134
    if-eqz v16, :cond_149

    #@136
    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    const-string v3, ","

    #@141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v1

    #@145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v1

    #@149
    .line 442
    :cond_149
    new-instance v3, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v1

    #@152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v1

    #@156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v1

    #@15a
    :cond_15a
    if-eqz v16, :cond_173

    #@15c
    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v1

    #@165
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@168
    move-result-object v1

    #@169
    const-string v2, " nanoseconds "

    #@16b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v1

    #@16f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v1

    #@173
    .line 448
    :cond_173
    new-instance v2, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v1

    #@17c
    const-string v2, "delay)"

    #@17e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v1

    #@182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v1

    #@186
    .line 453
    :cond_186
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    #@189
    move-result v2

    #@18a
    if-eqz v2, :cond_1a5

    #@18c
    .line 454
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    #@18e
    new-instance v3, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v1

    #@197
    const-string v3, " but future completed as timeout expired"

    #@199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v1

    #@19d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v1

    #@1a1
    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@1a4
    throw v2

    #@1a5
    .line 456
    :cond_1a5
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    #@1a7
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v1

    #@1b0
    const-string v3, " for "

    #@1b2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v1

    #@1b6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v1

    #@1ba
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bd
    move-result-object v1

    #@1be
    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@1c1
    throw v2

    #@1c2
    .line 362
    :cond_1c2
    new-instance v1, Ljava/lang/InterruptedException;

    #@1c4
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    #@1c7
    throw v1
.end method

.method protected interruptTask()V
    .registers 1

    #@0
    return-void
.end method

.method public final isCancelled()Z
    .registers 2

    #@0
    .line 536
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@2
    .line 537
    instance-of v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@4
    return v0
.end method

.method public final isDone()Z
    .registers 4

    #@0
    .line 530
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_7

    #@5
    move v2, v1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v2, 0x0

    #@8
    .line 531
    :goto_8
    instance-of v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@a
    xor-int/2addr v0, v1

    #@b
    and-int/2addr v0, v2

    #@c
    return v0
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 930
    :goto_5
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    #@8
    move-result v1

    #@9
    and-int/2addr v0, v1

    #@a
    if-eqz v0, :cond_13

    #@c
    .line 931
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->wasInterrupted()Z

    #@f
    move-result v0

    #@10
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@13
    :cond_13
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 4

    #@0
    .line 1010
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@2
    .line 1011
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@4
    if-eqz v1, :cond_24

    #@6
    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    const-string v2, "setFuture=["

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@f
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    #@11
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "]"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 1013
    :cond_24
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    #@26
    if-eqz v0, :cond_47

    #@28
    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    const-string v1, "remaining delay=["

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2f
    move-object v1, p0

    #@30
    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    #@32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@34
    .line 1015
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@37
    move-result-wide v1

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    const-string v1, " ms]"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    return-object v0

    #@47
    :cond_47
    const/4 v0, 0x0

    #@48
    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    #@0
    if-nez p1, :cond_4

    #@2
    .line 685
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    #@4
    .line 686
    :cond_4
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_12

    #@d
    .line 687
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    #@10
    const/4 p1, 0x1

    #@11
    return p1

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    return p1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 4

    #@0
    .line 710
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@2
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Ljava/lang/Throwable;

    #@8
    invoke-direct {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    #@b
    .line 711
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {p1, p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_19

    #@14
    .line 712
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    #@17
    const/4 p1, 0x1

    #@18
    return p1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return p1
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    #@0
    .line 746
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 747
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_45

    #@8
    .line 749
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    #@b
    move-result v0

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    if-eqz v0, :cond_21

    #@10
    .line 750
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    .line 751
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@16
    invoke-virtual {v0, p0, v3, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_20

    #@1c
    .line 752
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    #@1f
    return v2

    #@20
    :cond_20
    return v1

    #@21
    .line 757
    :cond_21
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    #@23
    invoke-direct {v0, p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;-><init>(Landroidx/concurrent/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    #@26
    .line 758
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@28
    invoke-virtual {v4, p0, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_43

    #@2e
    .line 763
    :try_start_2e
    sget-object v1, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    #@30
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    #@33
    goto :goto_42

    #@34
    :catchall_34
    move-exception p1

    #@35
    .line 771
    :try_start_35
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@37
    invoke-direct {v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    #@3a
    goto :goto_3d

    #@3b
    .line 773
    :catchall_3b
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->FALLBACK_INSTANCE:Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    #@3d
    .line 777
    :goto_3d
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    #@3f
    invoke-virtual {p1, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@42
    :goto_42
    return v2

    #@43
    .line 781
    :cond_43
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@45
    .line 785
    :cond_45
    instance-of v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@47
    if-eqz v2, :cond_50

    #@49
    .line 787
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@4b
    iget-boolean v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    #@4d
    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    #@50
    :cond_50
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "[status="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    .line 976
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    #@16
    move-result v1

    #@17
    const-string v2, "]"

    #@19
    if-eqz v1, :cond_21

    #@1b
    const-string v1, "CANCELLED"

    #@1d
    .line 977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    goto :goto_69

    #@21
    .line 978
    :cond_21
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2b

    #@27
    .line 979
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    #@2a
    goto :goto_69

    #@2b
    .line 983
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->pendingToString()Ljava/lang/String;

    #@2e
    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2f} :catch_30

    #@2f
    goto :goto_44

    #@30
    :catch_30
    move-exception v1

    #@31
    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    const-string v4, "Exception thrown from implementation: "

    #@35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    :goto_44
    if-eqz v1, :cond_5a

    #@46
    .line 991
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@49
    move-result v3

    #@4a
    if-nez v3, :cond_5a

    #@4c
    const-string v3, "PENDING, info=["

    #@4e
    .line 992
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    goto :goto_69

    #@5a
    .line 993
    :cond_5a
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_64

    #@60
    .line 994
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    #@63
    goto :goto_69

    #@64
    :cond_64
    const-string v1, "PENDING"

    #@66
    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 999
    :goto_69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    return-object v0
.end method

.method protected final wasInterrupted()Z
    .registers 3

    #@0
    .line 642
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    #@2
    .line 643
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@4
    if-eqz v1, :cond_e

    #@6
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    #@8
    iget-boolean v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method
