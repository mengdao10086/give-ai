.class public final synthetic Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field public final synthetic f$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;


# direct methods
.method public synthetic constructor <init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2$$ExternalSyntheticLambda0;->f$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@5
    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2$$ExternalSyntheticLambda0;->f$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    invoke-static {v0, p1, p2, p3}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$leScanCallback$2;->$r8$lambda$Vvn3nN648iptvpC_I97RjeD6vQE(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Landroid/bluetooth/BluetoothDevice;I[B)V

    #@5
    return-void
.end method
