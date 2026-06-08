.class final Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;
.super Landroidx/core/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatWorkEnqueuer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

.field mLaunchingService:Z

.field private final mRunWakeLock:Landroid/os/PowerManager$WakeLock;

.field mServiceProcessing:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 6

    #@0
    .line 167
    invoke-direct {p0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/ComponentName;)V

    #@3
    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    #@9
    const-string v0, "power"

    #@b
    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Landroid/os/PowerManager;

    #@11
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    .line 174
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string v1, ":launch"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    const/4 v1, 0x1

    #@29
    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2f
    const/4 v2, 0x0

    #@30
    .line 175
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@33
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    .line 177
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@3b
    move-result-object p2

    #@3c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object p2

    #@40
    const-string v0, ":run"

    #@42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object p2

    #@46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object p2

    #@4a
    .line 176
    invoke-virtual {p1, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@4d
    move-result-object p1

    #@4e
    iput-object p1, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    #@50
    .line 178
    invoke-virtual {p1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@53
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .registers 4

    #@0
    .line 183
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5
    .line 184
    iget-object p1, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@a
    .line 186
    iget-object p1, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@f
    move-result-object p1

    #@10
    if-eqz p1, :cond_2b

    #@12
    .line 187
    monitor-enter p0

    #@13
    .line 188
    :try_start_13
    iget-boolean p1, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    #@15
    if-nez p1, :cond_26

    #@17
    const/4 p1, 0x1

    #@18
    .line 189
    iput-boolean p1, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    #@1a
    .line 190
    iget-boolean p1, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    #@1c
    if-nez p1, :cond_26

    #@1e
    .line 196
    iget-object p1, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    #@20
    const-wide/32 v0, 0xea60

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@26
    .line 199
    :cond_26
    monitor-exit p0

    #@27
    goto :goto_2b

    #@28
    :catchall_28
    move-exception p1

    #@29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_28

    #@2a
    throw p1

    #@2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method public serviceProcessingFinished()V
    .registers 4

    #@0
    .line 228
    monitor-enter p0

    #@1
    .line 229
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    #@3
    if-eqz v0, :cond_19

    #@5
    .line 232
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    #@7
    if-eqz v0, :cond_11

    #@9
    .line 233
    iget-object v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b
    const-wide/32 v1, 0xea60

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    .line 235
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    #@14
    .line 236
    iget-object v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@19
    .line 238
    :cond_19
    monitor-exit p0

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    #@1d
    throw v0
.end method

.method public serviceProcessingStarted()V
    .registers 4

    #@0
    .line 214
    monitor-enter p0

    #@1
    .line 216
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    #@3
    if-nez v0, :cond_15

    #@5
    const/4 v0, 0x1

    #@6
    .line 217
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    #@8
    .line 220
    iget-object v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    const-wide/32 v1, 0x927c0

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@10
    .line 221
    iget-object v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@15
    .line 223
    :cond_15
    monitor-exit p0

    #@16
    return-void

    #@17
    :catchall_17
    move-exception v0

    #@18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

.method public serviceStartReceived()V
    .registers 2

    #@0
    .line 205
    monitor-enter p0

    #@1
    const/4 v0, 0x0

    #@2
    .line 208
    :try_start_2
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    #@4
    .line 209
    monitor-exit p0

    #@5
    return-void

    #@6
    :catchall_6
    move-exception v0

    #@7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    #@8
    throw v0
.end method
