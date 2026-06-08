.class public final Lcom/flydigi/sdk/bluetooth/util/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/util/Logger;",
        "",
        "()V",
        "TAG",
        "",
        "inDebugMode",
        "",
        "getInDebugMode",
        "()Z",
        "setInDebugMode",
        "(Z)V",
        "logRawData",
        "getLogRawData",
        "setLogRawData",
        "logd",
        "",
        "message",
        "loge",
        "throwable",
        "",
        "logi",
        "logw",
        "bluetooth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/flydigi/sdk/bluetooth/util/Logger;

.field private static final TAG:Ljava/lang/String; = "FlyBle"

.field private static inDebugMode:Z

.field private static logRawData:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/util/Logger;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;-><init>()V

    #@5
    sput-object v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->INSTANCE:Lcom/flydigi/sdk/bluetooth/util/Logger;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final logd(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    const-string v0, "message"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 17
    sget-boolean v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->inDebugMode:Z

    #@7
    if-eqz v0, :cond_e

    #@9
    const-string v0, "FlyBle"

    #@b
    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    :cond_e
    return-void
.end method

.method public static final loge(Ljava/lang/Throwable;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    const-string v0, "throwable"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 38
    sget-boolean v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->inDebugMode:Z

    #@7
    if-eqz v0, :cond_14

    #@9
    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    if-eqz p0, :cond_14

    #@f
    const-string v0, "FlyBle"

    #@11
    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    :cond_14
    return-void
.end method

.method public static final logi(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    const-string v0, "message"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 24
    sget-boolean v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->inDebugMode:Z

    #@7
    if-eqz v0, :cond_e

    #@9
    const-string v0, "FlyBle"

    #@b
    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    :cond_e
    return-void
.end method

.method public static final logw(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    const-string v0, "message"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 31
    sget-boolean v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->inDebugMode:Z

    #@7
    if-eqz v0, :cond_e

    #@9
    const-string v0, "FlyBle"

    #@b
    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    :cond_e
    return-void
.end method


# virtual methods
.method public final getInDebugMode()Z
    .registers 2

    #@0
    .line 12
    sget-boolean v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->inDebugMode:Z

    #@2
    return v0
.end method

.method public final getLogRawData()Z
    .registers 2

    #@0
    .line 13
    sget-boolean v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->logRawData:Z

    #@2
    return v0
.end method

.method public final setInDebugMode(Z)V
    .registers 2

    #@0
    .line 12
    sput-boolean p1, Lcom/flydigi/sdk/bluetooth/util/Logger;->inDebugMode:Z

    #@2
    return-void
.end method

.method public final setLogRawData(Z)V
    .registers 2

    #@0
    .line 13
    sput-boolean p1, Lcom/flydigi/sdk/bluetooth/util/Logger;->logRawData:Z

    #@2
    return-void
.end method
