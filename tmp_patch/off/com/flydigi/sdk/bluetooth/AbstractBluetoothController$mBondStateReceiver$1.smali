.class public final Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;
.super Landroid/content/BroadcastReceiver;
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
    value = "SMAP\nAbstractBluetoothController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1116:1\n1855#2,2:1117\n1855#2,2:1119\n1855#2,2:1121\n1855#2,2:1123\n*S KotlinDebug\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1\n*L\n185#1:1117,2\n187#1:1119,2\n195#1:1121,2\n202#1:1123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "bondStateToString",
        "",
        "state",
        "",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.method public static synthetic $r8$lambda$W-sFrQQoKu9mGhUE85MrKtiAJ-4(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->onReceive$lambda$3(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    .line 152
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method private final bondStateToString(I)Ljava/lang/String;
    .registers 2

    #@0
    packed-switch p1, :pswitch_data_10

    #@3
    const-string p1, "\u672a\u77e5"

    #@5
    goto :goto_e

    #@6
    :pswitch_6
    const-string p1, "\u5df2\u914d\u5bf9"

    #@8
    goto :goto_e

    #@9
    :pswitch_9
    const-string p1, "\u6b63\u5728\u914d\u5bf9\u4e2d"

    #@b
    goto :goto_e

    #@c
    :pswitch_c
    const-string p1, "\u672a\u914d\u5bf9"

    #@e
    :goto_e
    return-object p1

    #@f
    nop

    #@10
    :pswitch_data_10
    .packed-switch 0xa
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static final onReceive$lambda$3(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 200
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->createBond(Landroid/bluetooth/BluetoothDevice;)V

    #@8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p1, "intent"

    #@7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    #@c
    .line 155
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    #@12
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    #@14
    const/4 v1, -0x1

    #@15
    .line 156
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    #@1b
    .line 158
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1e
    move-result p2

    #@1f
    if-eqz p1, :cond_15c

    #@21
    .line 161
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@23
    invoke-virtual {v1, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isDeviceNameExist(Landroid/bluetooth/BluetoothDevice;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_15c

    #@29
    .line 162
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2b
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getDeviceFilter()Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    const/4 v3, 0x2

    #@34
    const/4 v4, 0x0

    #@35
    const/4 v5, 0x0

    #@36
    invoke-static {v1, v2, v5, v3, v4}, Lcom/flydigi/sdk/bluetooth/DeviceFilter$DefaultImpls;->isValidDevice$default(Lcom/flydigi/sdk/bluetooth/DeviceFilter;Ljava/lang/String;IILjava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_3e

    #@3c
    goto/16 :goto_15c

    #@3e
    .line 168
    :cond_3e
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    #@40
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    const-string v2, "bond state changed from "

    #@44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@47
    invoke-direct {p0, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->bondStateToString(I)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string v2, " to: "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 170
    invoke-direct {p0, v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->bondStateToString(I)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    new-array v2, v5, [Ljava/lang/Object;

    #@63
    .line 168
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@66
    move-result-object v2

    #@67
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    const-string v2, "format(format, *args)"

    #@6d
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@70
    .line 167
    invoke-static {v1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@73
    const/16 v1, 0xa

    #@75
    const/4 v2, 0x1

    #@76
    const/16 v3, 0xb

    #@78
    const/16 v4, 0xc

    #@7a
    if-eq v0, v1, :cond_e1

    #@7c
    if-eq v0, v4, :cond_80

    #@7e
    goto/16 :goto_15c

    #@80
    .line 179
    :cond_80
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@82
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@85
    move-result-object v0

    #@86
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@88
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCreateBondTimeoutRunnable()Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getCreateBondTimeoutRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8f
    .line 180
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@91
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@94
    move-result-object v0

    #@95
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@97
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoveBondTimeoutRunnable()Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getRemoveBondTimeoutRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@9e
    if-eq p2, v3, :cond_c0

    #@a0
    if-eq p2, v4, :cond_a4

    #@a2
    goto/16 :goto_15c

    #@a4
    .line 187
    :cond_a4
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@a6
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getBondStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@a9
    move-result-object p2

    #@aa
    check-cast p2, Ljava/lang/Iterable;

    #@ac
    .line 1119
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@af
    move-result-object p2

    #@b0
    :goto_b0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_15c

    #@b6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b9
    move-result-object v0

    #@ba
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@bc
    .line 187
    invoke-interface {v0, p1, v5}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onRemoveBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@bf
    goto :goto_b0

    #@c0
    .line 183
    :cond_c0
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@c2
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectDevice(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {p2, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$connectDevice(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)Z

    #@c5
    .line 185
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@c7
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getBondStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@ca
    move-result-object p2

    #@cb
    check-cast p2, Ljava/lang/Iterable;

    #@cd
    .line 1117
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d0
    move-result-object p2

    #@d1
    :goto_d1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@d4
    move-result v0

    #@d5
    if-eqz v0, :cond_15c

    #@d7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@da
    move-result-object v0

    #@db
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@dd
    .line 185
    invoke-interface {v0, p1, v2}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onCreateBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@e0
    goto :goto_d1

    #@e1
    .line 191
    :cond_e1
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@e3
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@e6
    move-result-object v0

    #@e7
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@e9
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getCreateBondTimeoutRunnable()Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getCreateBondTimeoutRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@f0
    .line 192
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@f2
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@f5
    move-result-object v0

    #@f6
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@f8
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getRemoveBondTimeoutRunnable()Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getRemoveBondTimeoutRunnable(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/lang/Runnable;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@ff
    if-eq p2, v3, :cond_140

    #@101
    if-eq p2, v4, :cond_104

    #@103
    goto :goto_15c

    #@104
    .line 198
    :cond_104
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@106
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->continueCreateBond:Z
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getContinueCreateBond$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Z

    #@109
    move-result p2

    #@10a
    if-eqz p2, :cond_124

    #@10c
    .line 199
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@10e
    invoke-static {p2, v5}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$setContinueCreateBond$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Z)V

    #@111
    .line 200
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@113
    invoke-virtual {p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMMainHandler()Landroid/os/Handler;

    #@116
    move-result-object p2

    #@117
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@119
    new-instance v1, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1$$ExternalSyntheticLambda0;

    #@11b
    invoke-direct {v1, v0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1$$ExternalSyntheticLambda0;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)V

    #@11e
    const-wide/16 v2, 0xfa

    #@120
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@123
    goto :goto_15c

    #@124
    .line 202
    :cond_124
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@126
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getBondStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@129
    move-result-object p2

    #@12a
    check-cast p2, Ljava/lang/Iterable;

    #@12c
    .line 1123
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12f
    move-result-object p2

    #@130
    :goto_130
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@133
    move-result v0

    #@134
    if-eqz v0, :cond_15c

    #@136
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@139
    move-result-object v0

    #@13a
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@13c
    .line 202
    invoke-interface {v0, p1, v2}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onRemoveBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@13f
    goto :goto_130

    #@140
    .line 195
    :cond_140
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@142
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->bondStateCallbacks:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getBondStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@145
    move-result-object p2

    #@146
    check-cast p2, Ljava/lang/Iterable;

    #@148
    .line 1121
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14b
    move-result-object p2

    #@14c
    :goto_14c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@14f
    move-result v0

    #@150
    if-eqz v0, :cond_15c

    #@152
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@155
    move-result-object v0

    #@156
    check-cast v0, Lcom/flydigi/sdk/bluetooth/BondStateCallback;

    #@158
    .line 195
    invoke-interface {v0, p1, v5}, Lcom/flydigi/sdk/bluetooth/BondStateCallback;->onCreateBondResult(Landroid/bluetooth/BluetoothDevice;Z)V

    #@15b
    goto :goto_14c

    #@15c
    :cond_15c
    :goto_15c
    return-void
.end method
