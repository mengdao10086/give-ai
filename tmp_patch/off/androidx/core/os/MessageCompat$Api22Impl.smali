.class Landroidx/core/os/MessageCompat$Api22Impl;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/MessageCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api22Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isAsynchronous(Landroid/os/Message;)Z
    .registers 1

    #@0
    .line 126
    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setAsynchronous(Landroid/os/Message;Z)V
    .registers 2

    #@0
    .line 131
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@3
    return-void
.end method
