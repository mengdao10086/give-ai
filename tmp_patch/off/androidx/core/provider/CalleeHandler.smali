.class Landroidx/core/provider/CalleeHandler;
.super Ljava/lang/Object;
.source "CalleeHandler.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static create()Landroid/os/Handler;
    .registers 2

    #@0
    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_10

    #@6
    .line 37
    new-instance v0, Landroid/os/Handler;

    #@8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@f
    goto :goto_15

    #@10
    .line 39
    :cond_10
    new-instance v0, Landroid/os/Handler;

    #@12
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@15
    :goto_15
    return-object v0
.end method
