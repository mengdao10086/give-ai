.class Lcom/google/android/material/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;,
        Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;


# instance fields
.field private currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .registers 4

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@a
    .line 51
    new-instance v0, Landroid/os/Handler;

    #@c
    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    new-instance v2, Lcom/google/android/material/snackbar/SnackbarManager$1;

    #@12
    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/SnackbarManager$1;-><init>(Lcom/google/android/material/snackbar/SnackbarManager;)V

    #@15
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@18
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    #@1a
    return-void
.end method

.method private cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z
    .registers 5

    #@0
    .line 205
    iget-object v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    #@8
    if-eqz v0, :cond_14

    #@a
    .line 208
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    #@c
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@f
    .line 209
    invoke-interface {v0, p2}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->dismiss(I)V

    #@12
    const/4 p1, 0x1

    #@13
    return p1

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    return p1
.end method

.method static getInstance()Lcom/google/android/material/snackbar/SnackbarManager;
    .registers 1

    #@0
    .line 37
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 38
    new-instance v0, Lcom/google/android/material/snackbar/SnackbarManager;

    #@6
    invoke-direct {v0}, Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V

    #@9
    sput-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    #@b
    .line 40
    :cond_b
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    #@d
    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 3

    #@0
    .line 216
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method private isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 3

    #@0
    .line 220
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method private scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V
    .registers 6

    #@0
    .line 224
    iget v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_6

    #@5
    return-void

    #@6
    .line 230
    :cond_6
    iget v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    #@8
    if-lez v0, :cond_d

    #@a
    .line 231
    iget v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    #@c
    goto :goto_17

    #@d
    .line 232
    :cond_d
    iget v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    #@f
    const/4 v1, -0x1

    #@10
    if-ne v0, v1, :cond_15

    #@12
    const/16 v0, 0x5dc

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/16 v0, 0xabe

    #@17
    .line 235
    :goto_17
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    #@19
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@1c
    .line 236
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@22
    move-result-object p1

    #@23
    int-to-long v2, v0

    #@24
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@27
    return-void
.end method

.method private showNextSnackbarLocked()V
    .registers 3

    #@0
    .line 190
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@2
    if-eqz v0, :cond_19

    #@4
    .line 191
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@6
    const/4 v1, 0x0

    #@7
    .line 192
    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@9
    .line 194
    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    #@b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    #@11
    if-eqz v0, :cond_17

    #@13
    .line 196
    invoke-interface {v0}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->show()V

    #@16
    goto :goto_19

    #@17
    .line 199
    :cond_17
    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@19
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/google/android/material/snackbar/SnackbarManager$Callback;I)V
    .registers 5

    #@0
    .line 107
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 108
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_f

    #@9
    .line 109
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@b
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    #@e
    goto :goto_1a

    #@f
    .line 110
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_1a

    #@15
    .line 111
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@17
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    #@1a
    .line 113
    :cond_1a
    :goto_1a
    monitor-exit v0

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception p1

    #@1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    #@1e
    throw p1
.end method

.method handleTimeout(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V
    .registers 4

    #@0
    .line 240
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@5
    if-eq v1, p1, :cond_b

    #@7
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@9
    if-ne v1, p1, :cond_f

    #@b
    :cond_b
    const/4 v1, 0x2

    #@c
    .line 242
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    #@f
    .line 244
    :cond_f
    monitor-exit v0

    #@10
    return-void

    #@11
    :catchall_11
    move-exception p1

    #@12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw p1
.end method

.method public isCurrent(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 3

    #@0
    .line 163
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 164
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result p1

    #@7
    monitor-exit v0

    #@8
    return p1

    #@9
    :catchall_9
    move-exception p1

    #@a
    .line 165
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    #@b
    throw p1
.end method

.method public isCurrentOrNext(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 4

    #@0
    .line 169
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 170
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_12

    #@9
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_10

    #@f
    goto :goto_12

    #@10
    :cond_10
    const/4 p1, 0x0

    #@11
    goto :goto_13

    #@12
    :cond_12
    :goto_12
    const/4 p1, 0x1

    #@13
    :goto_13
    monitor-exit v0

    #@14
    return p1

    #@15
    :catchall_15
    move-exception p1

    #@16
    .line 171
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw p1
.end method

.method public onDismissed(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 3

    #@0
    .line 121
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 122
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_13

    #@9
    const/4 p1, 0x0

    #@a
    .line 124
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@c
    .line 125
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 126
    invoke-direct {p0}, Lcom/google/android/material/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    #@13
    .line 129
    :cond_13
    monitor-exit v0

    #@14
    return-void

    #@15
    :catchall_15
    move-exception p1

    #@16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw p1
.end method

.method public onShown(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 3

    #@0
    .line 137
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 138
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_e

    #@9
    .line 139
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@b
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    #@e
    .line 141
    :cond_e
    monitor-exit v0

    #@f
    return-void

    #@10
    :catchall_10
    move-exception p1

    #@11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw p1
.end method

.method public pauseTimeout(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 4

    #@0
    .line 145
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 146
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_1b

    #@9
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@b
    iget-boolean p1, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    #@d
    if-nez p1, :cond_1b

    #@f
    .line 147
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@11
    const/4 v1, 0x1

    #@12
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    #@14
    .line 148
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    #@16
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@18
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@1b
    .line 150
    :cond_1b
    monitor-exit v0

    #@1c
    return-void

    #@1d
    :catchall_1d
    move-exception p1

    #@1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    #@1f
    throw p1
.end method

.method public restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 4

    #@0
    .line 154
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 155
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_19

    #@9
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@b
    iget-boolean p1, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    #@d
    if-eqz p1, :cond_19

    #@f
    .line 156
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@11
    const/4 v1, 0x0

    #@12
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    #@14
    .line 157
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@16
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    #@19
    .line 159
    :cond_19
    monitor-exit v0

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception p1

    #@1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    #@1d
    throw p1
.end method

.method public show(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 5

    #@0
    .line 75
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 76
    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1b

    #@9
    .line 78
    iget-object p2, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@b
    iput p1, p2, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    #@d
    .line 82
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    #@f
    iget-object p2, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@11
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@14
    .line 83
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@16
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    #@19
    .line 84
    monitor-exit v0

    #@1a
    return-void

    #@1b
    .line 85
    :cond_1b
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_26

    #@21
    .line 87
    iget-object p2, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@23
    iput p1, p2, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    #@25
    goto :goto_2d

    #@26
    .line 90
    :cond_26
    new-instance v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@28
    invoke-direct {v1, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;-><init>(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    #@2b
    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@2d
    .line 93
    :goto_2d
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@2f
    if-eqz p1, :cond_3a

    #@31
    const/4 p2, 0x4

    #@32
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    #@35
    move-result p1

    #@36
    if-eqz p1, :cond_3a

    #@38
    .line 96
    monitor-exit v0

    #@39
    return-void

    #@3a
    :cond_3a
    const/4 p1, 0x0

    #@3b
    .line 99
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@3d
    .line 101
    invoke-direct {p0}, Lcom/google/android/material/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    #@40
    .line 103
    monitor-exit v0

    #@41
    return-void

    #@42
    :catchall_42
    move-exception p1

    #@43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    #@44
    throw p1
.end method
