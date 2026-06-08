.class public abstract Landroidx/legacy/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "androidx.contentpager.content.wakelockid"

.field private static mNextId:I

.field private static final sActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 76
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    sput-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    #@7
    const/4 v0, 0x1

    #@8
    .line 77
    sput v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    #@a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .registers 6

    #@0
    const-string v0, "No active wake lock id #"

    #@2
    const-string v1, "androidx.contentpager.content.wakelockid"

    #@4
    const/4 v2, 0x0

    #@5
    .line 126
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result p0

    #@9
    if-nez p0, :cond_c

    #@b
    return v2

    #@c
    .line 130
    :cond_c
    sget-object v1, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    #@e
    monitor-enter v1

    #@f
    .line 131
    :try_start_f
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/os/PowerManager$WakeLock;

    #@15
    const/4 v3, 0x1

    #@16
    if-eqz v2, :cond_20

    #@18
    .line 133
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1b
    .line 134
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    #@1e
    .line 135
    monitor-exit v1

    #@1f
    return v3

    #@20
    :cond_20
    const-string v2, "WakefulBroadcastReceiv."

    #@22
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p0

    #@2b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p0

    #@2f
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 144
    monitor-exit v1

    #@33
    return v3

    #@34
    :catchall_34
    move-exception p0

    #@35
    .line 145
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_34

    #@36
    throw p0
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 7

    #@0
    const-string v0, "androidx.core:wake:"

    #@2
    .line 94
    sget-object v1, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    #@4
    monitor-enter v1

    #@5
    .line 95
    :try_start_5
    sget v2, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    #@7
    add-int/lit8 v3, v2, 0x1

    #@9
    .line 96
    sput v3, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    #@b
    const/4 v4, 0x1

    #@c
    if-gtz v3, :cond_10

    #@e
    .line 98
    sput v4, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    #@10
    :cond_10
    const-string v3, "androidx.contentpager.content.wakelockid"

    #@12
    .line 101
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@15
    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@18
    move-result-object p1

    #@19
    if-nez p1, :cond_1e

    #@1b
    .line 104
    monitor-exit v1

    #@1c
    const/4 p0, 0x0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    const-string v3, "power"

    #@20
    .line 107
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object p0

    #@24
    check-cast p0, Landroid/os/PowerManager;

    #@26
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2b
    .line 109
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 108
    invoke-virtual {p0, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@3a
    move-result-object p0

    #@3b
    const/4 v0, 0x0

    #@3c
    .line 110
    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@3f
    const-wide/32 v3, 0xea60

    #@42
    .line 111
    invoke-virtual {p0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@45
    .line 112
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@48
    .line 113
    monitor-exit v1

    #@49
    return-object p1

    #@4a
    :catchall_4a
    move-exception p0

    #@4b
    .line 114
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    #@4c
    throw p0
.end method
