.class public final Lcom/blankj/utilcode/util/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;,
        Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static final FILE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "file.separator"

    #@2
    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    #@8
    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@e
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    #@0
    .line 18
    sget-object v0, Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    return-object v0
.end method

.method private static getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 3

    #@0
    .line 97
    new-instance v0, Lcom/blankj/utilcode/util/CrashUtils$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/CrashUtils$1;-><init>(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    #@5
    return-object v0
.end method

.method public static init()V
    .registers 1

    #@0
    const-string v0, ""

    #@2
    .line 33
    invoke-static {v0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static init(Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 60
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    #@5
    return-void
.end method

.method public static init(Ljava/io/File;)V
    .registers 2

    #@0
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    #@8
    return-void
.end method

.method public static init(Ljava/io/File;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .registers 2

    #@0
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    #@7
    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    #@4
    return-void
.end method

.method public static init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .registers 5

    #@0
    .line 81
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_61

    #@6
    .line 82
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@9
    move-result p0

    #@a
    const-string v0, "crash"

    #@c
    if-eqz p0, :cond_3d

    #@e
    .line 83
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@11
    move-result-object p0

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {p0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@16
    move-result-object p0

    #@17
    if-eqz p0, :cond_3d

    #@19
    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p0

    #@2a
    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    #@2c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p0

    #@30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p0

    #@34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object p0

    #@38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object p0

    #@3c
    goto :goto_7b

    #@3d
    .line 86
    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p0

    #@4e
    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    #@50
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object p0

    #@54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object p0

    #@58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p0

    #@5c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p0

    #@60
    goto :goto_7b

    #@61
    .line 89
    :cond_61
    sget-object v0, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    #@63
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_6a

    #@69
    goto :goto_7b

    #@6a
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object p0

    #@73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object p0

    #@77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object p0

    #@7b
    .line 92
    :goto_7b
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CrashUtils;->getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;

    #@7e
    move-result-object p0

    #@7f
    .line 91
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@82
    return-void
.end method
