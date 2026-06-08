.class final Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AbstractBluetoothController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;-><init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;


# direct methods
.method public static synthetic $r8$lambda$Vvn3nN648iptvpC_I97RjeD6vQE(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 4

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;->invoke$lambda$0(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;I[B)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    const/4 p1, 0x0

    #@3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    #@6
    return-void
.end method

.method private static final invoke$lambda$0(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 13

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 264
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMWorkHandler()Landroid/os/Handler;

    #@8
    move-result-object v0

    #@9
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCheckLocationServiceEnabledRunnable()Ljava/lang/Runnable;
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getCheckLocationServiceEnabledRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@10
    .line 267
    new-instance v0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@12
    const-string v1, "device"

    #@14
    .line 268
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@17
    .line 269
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1e
    move-result-wide v7

    #@1f
    move-object v2, v0

    #@20
    move-object v3, p1

    #@21
    move v5, p2

    #@22
    move-object v6, p3

    #@23
    .line 267
    invoke-direct/range {v2 .. v8}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V

    #@26
    .line 266
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@29
    move-result-object p1

    #@2a
    .line 265
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceFound(Ljava/util/List;)V
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$onDeviceFound(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/util/List;)V

    #@2d
    return-void
.end method


# virtual methods
.method public final invoke()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .registers 3

    #@0
    .line 263
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    new-instance v1, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2$$ExternalSyntheticLambda0;

    #@4
    invoke-direct {v1, v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2$$ExternalSyntheticLambda0;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@7
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    #@0
    .line 262
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;->invoke()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
