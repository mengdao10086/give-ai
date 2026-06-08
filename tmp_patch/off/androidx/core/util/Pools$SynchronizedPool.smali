.class public Landroidx/core/util/Pools$SynchronizedPool;
.super Landroidx/core/util/Pools$SimplePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/core/util/Pools$SimplePool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 153
    invoke-direct {p0, p1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    #@3
    .line 143
    new-instance p1, Ljava/lang/Object;

    #@5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/core/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    #@a
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 158
    iget-object v0, p0, Landroidx/core/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 159
    :try_start_3
    invoke-super {p0}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    :catchall_9
    move-exception v1

    #@a
    .line 160
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    #@b
    throw v1
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 165
    iget-object v0, p0, Landroidx/core/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 166
    :try_start_3
    invoke-super {p0, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

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
    .line 167
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    #@b
    throw p1
.end method
