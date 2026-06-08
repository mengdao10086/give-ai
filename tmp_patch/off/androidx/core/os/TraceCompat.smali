.class public final Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/TraceCompat$Api18Impl;,
        Landroidx/core/os/TraceCompat$Api29Impl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceCompat"

.field private static sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceCounterMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-ge v0, v1, :cond_7a

    #@6
    .line 55
    :try_start_6
    const-class v0, Landroid/os/Trace;

    #@8
    const-string v1, "TRACE_TAG_APP"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@12
    move-result-wide v0

    #@13
    sput-wide v0, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    #@15
    .line 58
    const-class v0, Landroid/os/Trace;

    #@17
    const-string v1, "isTagEnabled"

    #@19
    const/4 v2, 0x1

    #@1a
    new-array v3, v2, [Ljava/lang/Class;

    #@1c
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@1e
    const/4 v5, 0x0

    #@1f
    aput-object v4, v3, v5

    #@21
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    #@27
    .line 59
    const-class v0, Landroid/os/Trace;

    #@29
    const-string v1, "asyncTraceBegin"

    #@2b
    const/4 v3, 0x3

    #@2c
    new-array v4, v3, [Ljava/lang/Class;

    #@2e
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@30
    aput-object v6, v4, v5

    #@32
    const-class v6, Ljava/lang/String;

    #@34
    aput-object v6, v4, v2

    #@36
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@38
    const/4 v7, 0x2

    #@39
    aput-object v6, v4, v7

    #@3b
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    #@41
    .line 61
    const-class v0, Landroid/os/Trace;

    #@43
    const-string v1, "asyncTraceEnd"

    #@45
    new-array v4, v3, [Ljava/lang/Class;

    #@47
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@49
    aput-object v6, v4, v5

    #@4b
    const-class v6, Ljava/lang/String;

    #@4d
    aput-object v6, v4, v2

    #@4f
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@51
    aput-object v6, v4, v7

    #@53
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@56
    move-result-object v0

    #@57
    sput-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    #@59
    .line 63
    const-class v0, Landroid/os/Trace;

    #@5b
    const-string v1, "traceCounter"

    #@5d
    new-array v3, v3, [Ljava/lang/Class;

    #@5f
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@61
    aput-object v4, v3, v5

    #@63
    const-class v4, Ljava/lang/String;

    #@65
    aput-object v4, v3, v2

    #@67
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@69
    aput-object v2, v3, v7

    #@6b
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@6e
    move-result-object v0

    #@6f
    sput-object v0, Landroidx/core/os/TraceCompat;->sTraceCounterMethod:Ljava/lang/reflect/Method;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_71} :catch_72

    #@71
    goto :goto_7a

    #@72
    :catch_72
    move-exception v0

    #@73
    const-string v1, "TraceCompat"

    #@75
    const-string v2, "Unable to initialize via reflection."

    #@77
    .line 66
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    :cond_7a
    :goto_7a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static beginAsyncSection(Ljava/lang/String;I)V
    .registers 6

    #@0
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 138
    invoke-static {p0, p1}, Landroidx/core/os/TraceCompat$Api29Impl;->beginAsyncSection(Ljava/lang/String;I)V

    #@9
    goto :goto_2e

    #@a
    .line 141
    :cond_a
    :try_start_a
    sget-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x3

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    sget-wide v2, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    #@11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x0

    #@16
    aput-object v2, v1, v3

    #@18
    const/4 v2, 0x1

    #@19
    aput-object p0, v1, v2

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object p0

    #@1f
    const/4 p1, 0x2

    #@20
    aput-object p0, v1, p1

    #@22
    const/4 p0, 0x0

    #@23
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_27

    #@26
    goto :goto_2e

    #@27
    :catch_27
    const-string p0, "TraceCompat"

    #@29
    const-string p1, "Unable to invoke asyncTraceBegin() via reflection."

    #@2b
    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    :goto_2e
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1

    #@0
    .line 109
    invoke-static {p0}, Landroidx/core/os/TraceCompat$Api18Impl;->beginSection(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static endAsyncSection(Ljava/lang/String;I)V
    .registers 6

    #@0
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 158
    invoke-static {p0, p1}, Landroidx/core/os/TraceCompat$Api29Impl;->endAsyncSection(Ljava/lang/String;I)V

    #@9
    goto :goto_2e

    #@a
    .line 161
    :cond_a
    :try_start_a
    sget-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x3

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    sget-wide v2, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    #@11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x0

    #@16
    aput-object v2, v1, v3

    #@18
    const/4 v2, 0x1

    #@19
    aput-object p0, v1, v2

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object p0

    #@1f
    const/4 p1, 0x2

    #@20
    aput-object p0, v1, p1

    #@22
    const/4 p0, 0x0

    #@23
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_27

    #@26
    goto :goto_2e

    #@27
    :catch_27
    const-string p0, "TraceCompat"

    #@29
    const-string p1, "Unable to invoke endAsyncSection() via reflection."

    #@2b
    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    :goto_2e
    return-void
.end method

.method public static endSection()V
    .registers 0

    #@0
    .line 122
    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    #@3
    return-void
.end method

.method public static isEnabled()Z
    .registers 5

    #@0
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 83
    invoke-static {}, Landroidx/core/os/TraceCompat$Api29Impl;->isEnabled()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    .line 86
    :try_start_c
    sget-object v1, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    #@e
    const/4 v2, 0x1

    #@f
    new-array v2, v2, [Ljava/lang/Object;

    #@11
    sget-wide v3, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    #@13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v3

    #@17
    aput-object v3, v2, v0

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/Boolean;

    #@20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@23
    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_25

    #@24
    return v0

    #@25
    :catch_25
    const-string v1, "TraceCompat"

    #@27
    const-string v2, "Unable to invoke isTagEnabled() via reflection."

    #@29
    .line 88
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    return v0
.end method

.method public static setCounter(Ljava/lang/String;I)V
    .registers 6

    #@0
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_b

    #@6
    int-to-long v0, p1

    #@7
    .line 177
    invoke-static {p0, v0, v1}, Landroidx/core/os/TraceCompat$Api29Impl;->setCounter(Ljava/lang/String;J)V

    #@a
    goto :goto_2f

    #@b
    .line 180
    :cond_b
    :try_start_b
    sget-object v0, Landroidx/core/os/TraceCompat;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    #@d
    const/4 v1, 0x3

    #@e
    new-array v1, v1, [Ljava/lang/Object;

    #@10
    sget-wide v2, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    #@12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x0

    #@17
    aput-object v2, v1, v3

    #@19
    const/4 v2, 0x1

    #@1a
    aput-object p0, v1, v2

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object p0

    #@20
    const/4 p1, 0x2

    #@21
    aput-object p0, v1, p1

    #@23
    const/4 p0, 0x0

    #@24
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    #@27
    goto :goto_2f

    #@28
    :catch_28
    const-string p0, "TraceCompat"

    #@2a
    const-string p1, "Unable to invoke traceCounter() via reflection."

    #@2c
    .line 182
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    :goto_2f
    return-void
.end method
