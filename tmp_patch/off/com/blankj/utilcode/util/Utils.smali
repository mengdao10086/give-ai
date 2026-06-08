.class public final Lcom/blankj/utilcode/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/Utils$Func1;,
        Lcom/blankj/utilcode/util/Utils$Supplier;,
        Lcom/blankj/utilcode/util/Utils$Consumer;,
        Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;,
        Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;,
        Lcom/blankj/utilcode/util/Utils$Task;
    }
.end annotation


# static fields
.field private static sApp:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getApp()Landroid/app/Application;
    .registers 2

    #@0
    .line 70
    sget-object v0, Lcom/blankj/utilcode/util/Utils;->sApp:Landroid/app/Application;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 71
    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getApplicationByReflect()Landroid/app/Application;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils;->init(Landroid/app/Application;)V

    #@c
    .line 72
    sget-object v0, Lcom/blankj/utilcode/util/Utils;->sApp:Landroid/app/Application;

    #@e
    if-eqz v0, :cond_2f

    #@10
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getCurrentProcessName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, " reflect app success."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    const-string v1, "Utils"

    #@29
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 74
    sget-object v0, Lcom/blankj/utilcode/util/Utils;->sApp:Landroid/app/Application;

    #@2e
    return-object v0

    #@2f
    .line 72
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    #@31
    const-string v1, "reflect failed."

    #@33
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2

    #@0
    if-nez p0, :cond_a

    #@2
    const-string p0, "Utils"

    #@4
    const-string v0, "app is null."

    #@6
    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    return-void

    #@a
    .line 50
    :cond_a
    sget-object v0, Lcom/blankj/utilcode/util/Utils;->sApp:Landroid/app/Application;

    #@c
    if-nez v0, :cond_17

    #@e
    .line 51
    sput-object p0, Lcom/blankj/utilcode/util/Utils;->sApp:Landroid/app/Application;

    #@10
    .line 52
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->init(Landroid/app/Application;)V

    #@13
    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->preLoad()V

    #@16
    return-void

    #@17
    .line 56
    :cond_17
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1e

    #@1d
    return-void

    #@1e
    .line 57
    :cond_1e
    sget-object v0, Lcom/blankj/utilcode/util/Utils;->sApp:Landroid/app/Application;

    #@20
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->unInit(Landroid/app/Application;)V

    #@23
    .line 58
    sput-object p0, Lcom/blankj/utilcode/util/Utils;->sApp:Landroid/app/Application;

    #@25
    .line 59
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->init(Landroid/app/Application;)V

    #@28
    return-void
.end method
