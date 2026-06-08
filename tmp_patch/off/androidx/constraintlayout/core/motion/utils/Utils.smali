.class public Landroidx/constraintlayout/core/motion/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/Utils$DebugHandle;
    }
.end annotation


# static fields
.field static ourHandle:Landroidx/constraintlayout/core/motion/utils/Utils$DebugHandle;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static clamp(I)I
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0x1f

    #@2
    not-int v0, v0

    #@3
    and-int/2addr p0, v0

    #@4
    add-int/lit16 p0, p0, -0xff

    #@6
    shr-int/lit8 v0, p0, 0x1f

    #@8
    and-int/2addr p0, v0

    #@9
    add-int/lit16 p0, p0, 0xff

    #@b
    return p0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 6

    #@0
    .line 87
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 88
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, "                  "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x0

    #@24
    const/16 v3, 0x11

    #@26
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 90
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@2d
    move-result v2

    #@2e
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@35
    move-result v2

    #@36
    const-string v3, "    "

    #@38
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    const-string v4, ".("

    #@40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@43
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string v4, ":"

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@54
    move-result v0

    #@55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    const-string v3, ")"

    #@5b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .line 92
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    const-string v3, " "

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 93
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Utils;->ourHandle:Landroidx/constraintlayout/core/motion/utils/Utils$DebugHandle;

    #@89
    if-eqz v1, :cond_a3

    #@8b
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object p0

    #@9c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object p0

    #@a0
    invoke-interface {v1, p0}, Landroidx/constraintlayout/core/motion/utils/Utils$DebugHandle;->message(Ljava/lang/String;)V

    #@a3
    :cond_a3
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p0

    #@b
    const-string v1, " : "

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c
    return-void
.end method

.method public static logStack(Ljava/lang/String;I)V
    .registers 9

    #@0
    .line 75
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    .line 77
    array-length v1, v0

    #@a
    const/4 v2, 0x1

    #@b
    sub-int/2addr v1, v2

    #@c
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p1

    #@10
    const-string v1, " "

    #@12
    move-object v3, v1

    #@13
    :goto_13
    if-gt v2, p1, :cond_7e

    #@15
    .line 79
    aget-object v4, v0, v2

    #@17
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    const-string v5, ".("

    #@1b
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    aget-object v5, v0, v2

    #@20
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string v5, ":"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    aget-object v5, v0, v2

    #@30
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@33
    move-result v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string v5, ") "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    aget-object v5, v0, v2

    #@40
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 82
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5f
    new-instance v6, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7b
    add-int/lit8 v2, v2, 0x1

    #@7d
    goto :goto_13

    #@7e
    :cond_7e
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 27
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p0

    #@b
    const-string v1, " : "

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c
    return-void
.end method

.method public static rgbaTocColor(FFFF)I
    .registers 5

    #@0
    const/high16 v0, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr p0, v0

    #@3
    float-to-int p0, p0

    #@4
    .line 60
    invoke-static {p0}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@7
    move-result p0

    #@8
    mul-float/2addr p1, v0

    #@9
    float-to-int p1, p1

    #@a
    .line 61
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@d
    move-result p1

    #@e
    mul-float/2addr p2, v0

    #@f
    float-to-int p2, p2

    #@10
    .line 62
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@13
    move-result p2

    #@14
    mul-float/2addr p3, v0

    #@15
    float-to-int p3, p3

    #@16
    .line 63
    invoke-static {p3}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@19
    move-result p3

    #@1a
    shl-int/lit8 p3, p3, 0x18

    #@1c
    shl-int/lit8 p0, p0, 0x10

    #@1e
    or-int/2addr p0, p3

    #@1f
    shl-int/lit8 p1, p1, 0x8

    #@21
    or-int/2addr p0, p1

    #@22
    or-int/2addr p0, p2

    #@23
    return p0
.end method

.method public static setDebugHandle(Landroidx/constraintlayout/core/motion/utils/Utils$DebugHandle;)V
    .registers 1

    #@0
    .line 72
    sput-object p0, Landroidx/constraintlayout/core/motion/utils/Utils;->ourHandle:Landroidx/constraintlayout/core/motion/utils/Utils$DebugHandle;

    #@2
    return-void
.end method

.method public static socketSend(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 32
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    #@2
    const-string v1, "127.0.0.1"

    #@4
    const/16 v2, 0x14cf

    #@6
    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #@9
    .line 33
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@c
    move-result-object v0

    #@d
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@10
    move-result-object p0

    #@11
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    #@14
    .line 35
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    #@17
    goto :goto_1c

    #@18
    :catch_18
    move-exception p0

    #@19
    .line 37
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public getInterpolatedColor([F)I
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 51
    aget v0, p1, v0

    #@3
    float-to-double v0, v0

    #@4
    const-wide v2, 0x3fdd1745d1745d17L    # 0.45454545454545453

    #@9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@c
    move-result-wide v0

    #@d
    double-to-float v0, v0

    #@e
    const/high16 v1, 0x437f0000    # 255.0f

    #@10
    mul-float/2addr v0, v1

    #@11
    float-to-int v0, v0

    #@12
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@15
    move-result v0

    #@16
    const/4 v4, 0x1

    #@17
    .line 52
    aget v4, p1, v4

    #@19
    float-to-double v4, v4

    #@1a
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@1d
    move-result-wide v4

    #@1e
    double-to-float v4, v4

    #@1f
    mul-float/2addr v4, v1

    #@20
    float-to-int v4, v4

    #@21
    invoke-static {v4}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@24
    move-result v4

    #@25
    const/4 v5, 0x2

    #@26
    .line 53
    aget v5, p1, v5

    #@28
    float-to-double v5, v5

    #@29
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@2c
    move-result-wide v2

    #@2d
    double-to-float v2, v2

    #@2e
    mul-float/2addr v2, v1

    #@2f
    float-to-int v2, v2

    #@30
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@33
    move-result v2

    #@34
    const/4 v3, 0x3

    #@35
    .line 54
    aget p1, p1, v3

    #@37
    mul-float/2addr p1, v1

    #@38
    float-to-int p1, p1

    #@39
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Utils;->clamp(I)I

    #@3c
    move-result p1

    #@3d
    shl-int/lit8 p1, p1, 0x18

    #@3f
    shl-int/lit8 v0, v0, 0x10

    #@41
    or-int/2addr p1, v0

    #@42
    shl-int/lit8 v0, v4, 0x8

    #@44
    or-int/2addr p1, v0

    #@45
    or-int/2addr p1, v2

    #@46
    return p1
.end method
