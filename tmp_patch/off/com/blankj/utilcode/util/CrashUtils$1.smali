.class Lcom/blankj/utilcode/util/CrashUtils$1;
.super Ljava/lang/Object;
.source "CrashUtils.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/CrashUtils;->getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dirPath:Ljava/lang/String;

.field final synthetic val$onCrashListener:Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .registers 3

    #@0
    .line 97
    iput-object p1, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$dirPath:Ljava/lang/String;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$onCrashListener:Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    #@0
    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string v1, "yyyy_MM_dd-HH_mm_ss"

    #@4
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@7
    new-instance v1, Ljava/util/Date;

    #@9
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@c
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 101
    new-instance v1, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-direct {v1, v0, p2, v2}, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/blankj/utilcode/util/CrashUtils$1;)V

    #@16
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    iget-object v3, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$dirPath:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v2, ".txt"

    #@27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 103
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    const/4 v3, 0x1

    #@34
    invoke-static {v0, v2, v3}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@37
    .line 105
    # getter for: Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/blankj/utilcode/util/CrashUtils;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_44

    #@3d
    .line 106
    # getter for: Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/blankj/utilcode/util/CrashUtils;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@40
    move-result-object v0

    #@41
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@44
    .line 108
    :cond_44
    iget-object p1, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$onCrashListener:Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    #@46
    if-eqz p1, :cond_4b

    #@48
    .line 109
    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;->onCrash(Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;)V

    #@4b
    :cond_4b
    return-void
.end method
