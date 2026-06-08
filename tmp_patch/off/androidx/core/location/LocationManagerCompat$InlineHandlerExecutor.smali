.class final Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineHandlerExecutor"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    #@0
    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1059
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, Landroid/os/Handler;

    #@9
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;->mHandler:Landroid/os/Handler;

    #@b
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    #@0
    .line 1064
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_10

    #@c
    .line 1065
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@f
    goto :goto_1e

    #@10
    .line 1066
    :cond_10
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;->mHandler:Landroid/os/Handler;

    #@12
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Ljava/lang/Runnable;

    #@18
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1b
    move-result p1

    #@1c
    if-eqz p1, :cond_1f

    #@1e
    :goto_1e
    return-void

    #@1f
    .line 1067
    :cond_1f
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    #@21
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;->mHandler:Landroid/os/Handler;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, " is shutting down"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    #@39
    throw p1
.end method
