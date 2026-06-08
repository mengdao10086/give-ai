.class public final Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "state2String",
        "",
        "state",
        "",
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
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    .line 117
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method private final state2String(I)Ljava/lang/String;
    .registers 2

    #@0
    packed-switch p1, :pswitch_data_12

    #@3
    const-string p1, "\u672a\u77e5\u72b6\u6001"

    #@5
    goto :goto_11

    #@6
    :pswitch_6
    const-string p1, "\u6b63\u5728\u5173\u95ed"

    #@8
    goto :goto_11

    #@9
    :pswitch_9
    const-string p1, "\u5df2\u6253\u5f00"

    #@b
    goto :goto_11

    #@c
    :pswitch_c
    const-string p1, "\u6b63\u5728\u6253\u5f00"

    #@e
    goto :goto_11

    #@f
    :pswitch_f
    const-string p1, "\u5df2\u5173\u95ed"

    #@11
    :goto_11
    return-object p1

    #@12
    :pswitch_data_12
    .packed-switch 0xa
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p1, "intent"

    #@7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    #@c
    const/4 v0, -0x1

    #@d
    .line 119
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@10
    move-result p1

    #@11
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    #@13
    .line 120
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result p2

    #@17
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    const-string v1, "[Broadcast] Action received: android.bluetooth.adapter.action.STATE_CHANGED state changed form "

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    .line 124
    invoke-direct {p0, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;->state2String(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string v1, " to "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 124
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;->state2String(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 122
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@3b
    const/16 v0, 0xa

    #@3d
    if-ne p1, v0, :cond_49

    #@3f
    const/16 v0, 0xd

    #@41
    if-ne p2, v0, :cond_49

    #@43
    .line 130
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@45
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onBluetoothDisabled()V

    #@48
    goto :goto_56

    #@49
    :cond_49
    const/16 v0, 0xc

    #@4b
    if-ne p1, v0, :cond_56

    #@4d
    const/16 p1, 0xb

    #@4f
    if-ne p2, p1, :cond_56

    #@51
    .line 134
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBluetoothStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@53
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onBluetoothEnabled()V
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$onBluetoothEnabled(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V

    #@56
    :cond_56
    :goto_56
    return-void
.end method
