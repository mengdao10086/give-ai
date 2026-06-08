.class Landroidx/core/os/CancellationSignal$Api16Impl;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static cancel(Ljava/lang/Object;)V
    .registers 1

    #@0
    .line 182
    check-cast p0, Landroid/os/CancellationSignal;

    #@2
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    #@5
    return-void
.end method

.method static createCancellationSignal()Landroid/os/CancellationSignal;
    .registers 1

    #@0
    .line 187
    new-instance v0, Landroid/os/CancellationSignal;

    #@2
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    #@5
    return-object v0
.end method
