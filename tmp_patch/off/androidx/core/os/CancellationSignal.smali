.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$Api16Impl;,
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    #@0
    .line 155
    :catch_0
    :goto_0
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 157
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_0

    #@7
    goto :goto_0

    #@8
    :cond_8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    #@0
    .line 71
    monitor-enter p0

    #@1
    .line 72
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    #@3
    if-eqz v0, :cond_7

    #@5
    .line 73
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x1

    #@8
    .line 75
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    #@a
    .line 76
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    #@c
    .line 77
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    #@e
    .line 78
    iget-object v1, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    #@10
    .line 79
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_36

    #@11
    const/4 v2, 0x0

    #@12
    if-eqz v0, :cond_1a

    #@14
    .line 83
    :try_start_14
    invoke-interface {v0}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    #@17
    goto :goto_1a

    #@18
    :catchall_18
    move-exception v0

    #@19
    goto :goto_20

    #@1a
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_2b

    #@1c
    .line 86
    invoke-static {v1}, Landroidx/core/os/CancellationSignal$Api16Impl;->cancel(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_18

    #@1f
    goto :goto_2b

    #@20
    .line 89
    :goto_20
    monitor-enter p0

    #@21
    .line 90
    :try_start_21
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    #@23
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    #@26
    .line 92
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    #@27
    .line 93
    throw v0

    #@28
    :catchall_28
    move-exception v0

    #@29
    .line 92
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    #@2a
    throw v0

    #@2b
    .line 89
    :cond_2b
    :goto_2b
    monitor-enter p0

    #@2c
    .line 90
    :try_start_2c
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    #@2e
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    #@31
    .line 92
    monitor-exit p0

    #@32
    return-void

    #@33
    :catchall_33
    move-exception v0

    #@34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    #@35
    throw v0

    #@36
    :catchall_36
    move-exception v0

    #@37
    .line 79
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    #@38
    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 3

    #@0
    .line 143
    monitor-enter p0

    #@1
    .line 144
    :try_start_1
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_12

    #@5
    .line 145
    invoke-static {}, Landroidx/core/os/CancellationSignal$Api16Impl;->createCancellationSignal()Landroid/os/CancellationSignal;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    #@b
    .line 146
    iget-boolean v1, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    #@d
    if-eqz v1, :cond_12

    #@f
    .line 147
    invoke-static {v0}, Landroidx/core/os/CancellationSignal$Api16Impl;->cancel(Ljava/lang/Object;)V

    #@12
    .line 150
    :cond_12
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    #@14
    monitor-exit p0

    #@15
    return-object v0

    #@16
    :catchall_16
    move-exception v0

    #@17
    .line 151
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    #@0
    .line 48
    monitor-enter p0

    #@1
    .line 49
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    .line 50
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    #@7
    throw v0
.end method

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .registers 3

    #@0
    .line 113
    monitor-enter p0

    #@1
    .line 114
    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    #@4
    .line 116
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    #@6
    if-ne v0, p1, :cond_a

    #@8
    .line 117
    monitor-exit p0

    #@9
    return-void

    #@a
    .line 119
    :cond_a
    iput-object p1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    #@c
    .line 120
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    #@e
    if-eqz v0, :cond_18

    #@10
    if-nez p1, :cond_13

    #@12
    goto :goto_18

    #@13
    .line 123
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    #@14
    .line 124
    invoke-interface {p1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    #@17
    return-void

    #@18
    .line 121
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    #@19
    return-void

    #@1a
    :catchall_1a
    move-exception p1

    #@1b
    .line 123
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    #@1c
    throw p1
.end method

.method public throwIfCanceled()V
    .registers 2

    #@0
    .line 59
    invoke-virtual {p0}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 60
    :cond_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    #@9
    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    #@c
    throw v0
.end method
