.class final Landroidx/tracing/TraceApi18Impl;
.super Ljava/lang/Object;
.source "TraceApi18Impl.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1

    #@0
    .line 49
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static endSection()V
    .registers 0

    #@0
    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    #@3
    return-void
.end method
