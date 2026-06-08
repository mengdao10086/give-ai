.class public final Landroidx/tracing/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Trace"

.field private static sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceCounterMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static beginAsyncSection(Ljava/lang/String;I)V
    .registers 3

    #@0
    .line 111
    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 112
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->beginAsyncSection(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    return-void

    #@8
    .line 117
    :catch_8
    :cond_8
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->beginAsyncSectionFallback(Ljava/lang/String;I)V

    #@b
    return-void
.end method

.method private static beginAsyncSectionFallback(Ljava/lang/String;I)V
    .registers 10

    #@0
    const-string v0, "asyncTraceBegin"

    #@2
    .line 179
    :try_start_2
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x3

    #@8
    if-nez v1, :cond_20

    #@a
    .line 180
    const-class v1, Landroid/os/Trace;

    #@c
    new-array v6, v5, [Ljava/lang/Class;

    #@e
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@10
    aput-object v7, v6, v4

    #@12
    const-class v7, Ljava/lang/String;

    #@14
    aput-object v7, v6, v3

    #@16
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    aput-object v7, v6, v2

    #@1a
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1d
    move-result-object v1

    #@1e
    sput-object v1, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    #@20
    .line 186
    :cond_20
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    #@22
    new-array v5, v5, [Ljava/lang/Object;

    #@24
    sget-wide v6, Landroidx/tracing/Trace;->sTraceTagApp:J

    #@26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v5, v4

    #@2c
    aput-object p0, v5, v3

    #@2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object p0

    #@32
    aput-object p0, v5, v2

    #@34
    const/4 p0, 0x0

    #@35
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    #@38
    goto :goto_3d

    #@39
    :catch_39
    move-exception p0

    #@3a
    .line 188
    invoke-static {v0, p0}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3d
    :goto_3d
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1

    #@0
    .line 81
    invoke-static {p0}, Landroidx/tracing/TraceApi18Impl;->beginSection(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static endAsyncSection(Ljava/lang/String;I)V
    .registers 3

    #@0
    .line 131
    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 132
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->endAsyncSection(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    return-void

    #@8
    .line 137
    :catch_8
    :cond_8
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->endAsyncSectionFallback(Ljava/lang/String;I)V

    #@b
    return-void
.end method

.method private static endAsyncSectionFallback(Ljava/lang/String;I)V
    .registers 10

    #@0
    const-string v0, "asyncTraceEnd"

    #@2
    .line 196
    :try_start_2
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x3

    #@8
    if-nez v1, :cond_20

    #@a
    .line 197
    const-class v1, Landroid/os/Trace;

    #@c
    new-array v6, v5, [Ljava/lang/Class;

    #@e
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@10
    aput-object v7, v6, v4

    #@12
    const-class v7, Ljava/lang/String;

    #@14
    aput-object v7, v6, v3

    #@16
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    aput-object v7, v6, v2

    #@1a
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1d
    move-result-object v1

    #@1e
    sput-object v1, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    #@20
    .line 203
    :cond_20
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    #@22
    new-array v5, v5, [Ljava/lang/Object;

    #@24
    sget-wide v6, Landroidx/tracing/Trace;->sTraceTagApp:J

    #@26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v5, v4

    #@2c
    aput-object p0, v5, v3

    #@2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object p0

    #@32
    aput-object p0, v5, v2

    #@34
    const/4 p0, 0x0

    #@35
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    #@38
    goto :goto_3d

    #@39
    :catch_39
    move-exception p0

    #@3a
    .line 205
    invoke-static {v0, p0}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3d
    :goto_3d
    return-void
.end method

.method public static endSection()V
    .registers 0

    #@0
    .line 94
    invoke-static {}, Landroidx/tracing/TraceApi18Impl;->endSection()V

    #@3
    return-void
.end method

.method private static handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    #@0
    .line 229
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@7
    move-result-object p0

    #@8
    .line 231
    instance-of p1, p0, Ljava/lang/RuntimeException;

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 232
    check-cast p0, Ljava/lang/RuntimeException;

    #@e
    throw p0

    #@f
    .line 234
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    #@11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw p1

    #@15
    .line 237
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    const-string v1, "Unable to call "

    #@19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p0

    #@20
    const-string v0, " via reflection"

    #@22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p0

    #@26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    const-string v0, "Trace"

    #@2c
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    return-void
.end method

.method public static isEnabled()Z
    .registers 1

    #@0
    .line 61
    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_9

    #@4
    .line 62
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    #@7
    move-result v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return v0

    #@9
    .line 66
    :catch_9
    :cond_9
    invoke-static {}, Landroidx/tracing/Trace;->isEnabledFallback()Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private static isEnabledFallback()Z
    .registers 7

    #@0
    const-string v0, "isTagEnabled"

    #@2
    const/4 v1, 0x0

    #@3
    .line 161
    :try_start_3
    sget-object v2, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    if-nez v2, :cond_25

    #@9
    .line 162
    const-class v2, Landroid/os/Trace;

    #@b
    const-string v5, "TRACE_TAG_APP"

    #@d
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 163
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@14
    move-result-wide v5

    #@15
    sput-wide v5, Landroidx/tracing/Trace;->sTraceTagApp:J

    #@17
    .line 164
    const-class v2, Landroid/os/Trace;

    #@19
    new-array v5, v3, [Ljava/lang/Class;

    #@1b
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@1d
    aput-object v6, v5, v1

    #@1f
    .line 165
    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v2

    #@23
    sput-object v2, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    #@25
    .line 167
    :cond_25
    sget-object v2, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    #@27
    new-array v3, v3, [Ljava/lang/Object;

    #@29
    sget-wide v5, Landroidx/tracing/Trace;->sTraceTagApp:J

    #@2b
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object v5

    #@2f
    aput-object v5, v3, v1

    #@31
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/lang/Boolean;

    #@37
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@3a
    move-result v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_3c

    #@3b
    return v0

    #@3c
    :catch_3c
    move-exception v2

    #@3d
    .line 169
    invoke-static {v0, v2}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    #@40
    return v1
.end method

.method public static setCounter(Ljava/lang/String;I)V
    .registers 3

    #@0
    .line 149
    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 150
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->setCounter(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    return-void

    #@8
    .line 155
    :catch_8
    :cond_8
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->setCounterFallback(Ljava/lang/String;I)V

    #@b
    return-void
.end method

.method private static setCounterFallback(Ljava/lang/String;I)V
    .registers 10

    #@0
    const-string v0, "traceCounter"

    #@2
    .line 213
    :try_start_2
    sget-object v1, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x3

    #@8
    if-nez v1, :cond_20

    #@a
    .line 214
    const-class v1, Landroid/os/Trace;

    #@c
    new-array v6, v5, [Ljava/lang/Class;

    #@e
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@10
    aput-object v7, v6, v4

    #@12
    const-class v7, Ljava/lang/String;

    #@14
    aput-object v7, v6, v3

    #@16
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    aput-object v7, v6, v2

    #@1a
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1d
    move-result-object v1

    #@1e
    sput-object v1, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    #@20
    .line 221
    :cond_20
    sget-object v1, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    #@22
    new-array v5, v5, [Ljava/lang/Object;

    #@24
    sget-wide v6, Landroidx/tracing/Trace;->sTraceTagApp:J

    #@26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v5, v4

    #@2c
    aput-object p0, v5, v3

    #@2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object p0

    #@32
    aput-object p0, v5, v2

    #@34
    const/4 p0, 0x0

    #@35
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    #@38
    goto :goto_3d

    #@39
    :catch_39
    move-exception p0

    #@3a
    .line 223
    invoke-static {v0, p0}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3d
    :goto_3d
    return-void
.end method
