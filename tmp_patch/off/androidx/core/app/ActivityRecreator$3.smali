.class Landroidx/core/app/ActivityRecreator$3;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityRecreator;->queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityThread:Ljava/lang/Object;

.field final synthetic val$token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 269
    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    #@2
    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    .line 273
    :try_start_0
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x2

    #@4
    const/4 v3, 0x0

    #@5
    if-eqz v0, :cond_20

    #@7
    .line 274
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    #@9
    iget-object v4, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    #@b
    const/4 v5, 0x3

    #@c
    new-array v5, v5, [Ljava/lang/Object;

    #@e
    iget-object v6, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    #@10
    aput-object v6, v5, v3

    #@12
    .line 275
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object v3

    #@16
    aput-object v3, v5, v1

    #@18
    const-string v1, "AppCompat recreation"

    #@1a
    aput-object v1, v5, v2

    #@1c
    .line 274
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    goto :goto_5a

    #@20
    .line 277
    :cond_20
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    #@22
    iget-object v4, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    #@24
    new-array v2, v2, [Ljava/lang/Object;

    #@26
    iget-object v5, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    #@28
    aput-object v5, v2, v3

    #@2a
    .line 278
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v3

    #@2e
    aput-object v3, v2, v1

    #@30
    .line 277
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_33} :catch_3d
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    #@33
    goto :goto_5a

    #@34
    :catchall_34
    move-exception v0

    #@35
    const-string v1, "ActivityRecreator"

    #@37
    const-string v2, "Exception while invoking performStopActivity"

    #@39
    .line 290
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_5a

    #@3d
    :catch_3d
    move-exception v0

    #@3e
    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v1

    #@42
    const-class v2, Ljava/lang/RuntimeException;

    #@44
    if-ne v1, v2, :cond_5a

    #@46
    .line 283
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    if-eqz v1, :cond_5a

    #@4c
    .line 284
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    const-string v2, "Unable to stop"

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@55
    move-result v1

    #@56
    if-nez v1, :cond_59

    #@58
    goto :goto_5a

    #@59
    .line 285
    :cond_59
    throw v0

    #@5a
    :cond_5a
    :goto_5a
    return-void
.end method
