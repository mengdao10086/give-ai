.class public final synthetic Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1$$ExternalSyntheticLambda0;->f$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@5
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    #@7
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1$$ExternalSyntheticLambda0;->f$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    #@4
    invoke-static {v0, v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mBondStateReceiver$1;->$r8$lambda$W-sFrQQoKu9mGhUE85MrKtiAJ-4(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;)V

    #@7
    return-void
.end method
