.class public final Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "AbstractBluetoothController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;-><init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractBluetoothController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1116:1\n1054#2:1117\n766#2:1118\n857#2,2:1119\n1549#2:1121\n1620#2,3:1122\n1855#2,2:1125\n*S KotlinDebug\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1\n*L\n300#1:1117\n300#1:1118\n300#1:1119,2\n301#1:1121\n301#1:1122,3\n321#1:1125,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1",
        "Landroid/bluetooth/le/ScanCallback;",
        "onBatchScanResults",
        "",
        "results",
        "",
        "Landroid/bluetooth/le/ScanResult;",
        "onScanFailed",
        "errorCode",
        "",
        "onScanResult",
        "callbackType",
        "result",
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


# instance fields
.field final synthetic this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;


# direct methods
.method constructor <init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    .line 279
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "results"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 298
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    #@8
    .line 299
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@a
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMWorkHandler()Landroid/os/Handler;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@10
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCheckLocationServiceEnabledRunnable()Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getCheckLocationServiceEnabledRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@17
    .line 300
    check-cast p1, Ljava/lang/Iterable;

    #@19
    .line 1117
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1$onBatchScanResults$$inlined$sortedByDescending$1;

    #@1b
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1$onBatchScanResults$$inlined$sortedByDescending$1;-><init>()V

    #@1e
    check-cast v0, Ljava/util/Comparator;

    #@20
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    #@23
    move-result-object p1

    #@24
    check-cast p1, Ljava/lang/Iterable;

    #@26
    .line 300
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@28
    .line 1118
    new-instance v1, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2d
    check-cast v1, Ljava/util/Collection;

    #@2f
    .line 1119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object p1

    #@33
    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_53

    #@39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    move-object v3, v2

    #@3e
    check-cast v3, Landroid/bluetooth/le/ScanResult;

    #@40
    .line 300
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@43
    move-result-object v3

    #@44
    const-string v4, "it.device"

    #@46
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@49
    invoke-virtual {v0, v3}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isDeviceNameExist(Landroid/bluetooth/BluetoothDevice;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_33

    #@4f
    .line 1119
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@52
    goto :goto_33

    #@53
    .line 1120
    :cond_53
    check-cast v1, Ljava/util/List;

    #@55
    .line 1118
    check-cast v1, Ljava/lang/Iterable;

    #@57
    .line 1121
    new-instance p1, Ljava/util/ArrayList;

    #@59
    const/16 v0, 0xa

    #@5b
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    #@5e
    move-result v0

    #@5f
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@62
    check-cast p1, Ljava/util/Collection;

    #@64
    .line 1122
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v0

    #@68
    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_cc

    #@6e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v1

    #@72
    .line 1123
    check-cast v1, Landroid/bluetooth/le/ScanResult;

    #@74
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    const/16 v3, 0x20

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    #@8e
    move-result v3

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    const-string v3, "cwq"

    #@99
    .line 302
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    .line 306
    new-instance v2, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@9e
    .line 307
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@a1
    move-result-object v5

    #@a2
    const-string v3, "result.device"

    #@a4
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@a7
    .line 308
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@ae
    move-result-object v6

    #@af
    .line 309
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    #@b2
    move-result v7

    #@b3
    .line 310
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    #@b6
    move-result-object v1

    #@b7
    if-eqz v1, :cond_be

    #@b9
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    #@bc
    move-result-object v1

    #@bd
    goto :goto_bf

    #@be
    :cond_be
    const/4 v1, 0x0

    #@bf
    :goto_bf
    move-object v8, v1

    #@c0
    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@c3
    move-result-wide v9

    #@c4
    move-object v4, v2

    #@c5
    .line 306
    invoke-direct/range {v4 .. v10}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V

    #@c8
    .line 1123
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@cb
    goto :goto_68

    #@cc
    .line 1124
    :cond_cc
    check-cast p1, Ljava/util/List;

    #@ce
    .line 313
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@d0
    .line 315
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceFound(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$onDeviceFound(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/util/List;)V

    #@d3
    return-void
.end method

.method public onScanFailed(I)V
    .registers 4

    #@0
    .line 320
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    #@3
    .line 321
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@5
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getScanDeviceCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Iterable;

    #@b
    .line 1125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1f

    #@15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@1b
    .line 322
    invoke-interface {v1, p1}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onScanFailed(I)V

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 11

    #@0
    const-string v0, "result"

    #@2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 281
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    #@8
    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    #@a
    const-string v0, "onScanResult:"

    #@c
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    const-string v0, "cwq"

    #@21
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 283
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@26
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMWorkHandler()Landroid/os/Handler;

    #@29
    move-result-object p1

    #@2a
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2c
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCheckLocationServiceEnabledRunnable()Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getCheckLocationServiceEnabledRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@33
    .line 284
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$scanCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@35
    .line 286
    new-instance v7, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@37
    .line 287
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@3a
    move-result-object v1

    #@3b
    const-string v0, "result.device"

    #@3d
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@40
    .line 288
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 289
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    #@4b
    move-result v3

    #@4c
    .line 290
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    #@4f
    move-result-object p2

    #@50
    if-eqz p2, :cond_57

    #@52
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    #@55
    move-result-object p2

    #@56
    goto :goto_58

    #@57
    :cond_57
    const/4 p2, 0x0

    #@58
    :goto_58
    move-object v4, p2

    #@59
    .line 291
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5c
    move-result-wide v5

    #@5d
    move-object v0, v7

    #@5e
    .line 286
    invoke-direct/range {v0 .. v6}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V

    #@61
    .line 285
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@64
    move-result-object p2

    #@65
    .line 284
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceFound(Ljava/util/List;)V
    invoke-static {p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$onDeviceFound(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/util/List;)V

    #@68
    return-void
.end method
