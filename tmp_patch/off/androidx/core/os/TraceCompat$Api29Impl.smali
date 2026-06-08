.class Landroidx/core/os/TraceCompat$Api29Impl;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/TraceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static beginAsyncSection(Ljava/lang/String;I)V
    .registers 2

    #@0
    .line 208
    invoke-static {p0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static endAsyncSection(Ljava/lang/String;I)V
    .registers 2

    #@0
    .line 203
    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static isEnabled()Z
    .registers 1

    #@0
    .line 198
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static setCounter(Ljava/lang/String;J)V
    .registers 3

    #@0
    .line 213
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    #@3
    return-void
.end method
