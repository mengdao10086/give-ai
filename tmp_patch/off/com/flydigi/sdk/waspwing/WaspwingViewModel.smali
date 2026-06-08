.class public final Lcom/flydigi/sdk/waspwing/WaspwingViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "WaspwingViewModel.kt"

# interfaces
.implements Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;
.implements Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001eR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/flydigi/sdk/waspwing/WaspwingViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;",
        "Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;",
        "()V",
        "_connectedLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
        "_mWaspwingInfo",
        "mConnectedLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getMConnectedLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "mWaspwingInfo",
        "getMWaspwingInfo",
        "onDeviceInfoUpdate",
        "",
        "waspWingInfo",
        "onGattConnected",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "onGattDisconnected",
        "gatt",
        "Landroid/bluetooth/BluetoothGatt;",
        "onTempHistoryUpdate",
        "tempHistory",
        "",
        "updateDeviceInfo",
        "updateManualMode",
        "value",
        "",
        "sdk_waspwing_release"
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
.field private final _connectedLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final _mWaspwingInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectedLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaspwingInfo:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    #@3
    .line 16
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    #@5
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    #@8
    iput-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_mWaspwingInfo:Landroidx/lifecycle/MutableLiveData;

    #@a
    .line 17
    check-cast v0, Landroidx/lifecycle/LiveData;

    #@c
    iput-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->mWaspwingInfo:Landroidx/lifecycle/LiveData;

    #@e
    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    #@10
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    #@13
    iput-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_connectedLiveData:Landroidx/lifecycle/MutableLiveData;

    #@15
    .line 20
    check-cast v0, Landroidx/lifecycle/LiveData;

    #@17
    iput-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->mConnectedLiveData:Landroidx/lifecycle/LiveData;

    #@19
    .line 23
    invoke-static {p0}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->register(Ljava/lang/Object;)V

    #@1c
    return-void
.end method


# virtual methods
.method public final getMConnectedLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 20
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->mConnectedLiveData:Landroidx/lifecycle/LiveData;

    #@2
    return-object v0
.end method

.method public final getMWaspwingInfo()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 17
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->mWaspwingInfo:Landroidx/lifecycle/LiveData;

    #@2
    return-object v0
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback$DefaultImpls;->onDeviceConnected(Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@3
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback$DefaultImpls;->onDeviceDisconnected(Lcom/flydigi/sdk/bluetooth/ConnectionStateCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@3
    return-void
.end method

.method public onDeviceInfoUpdate(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V
    .registers 3

    #@0
    const-string v0, "waspWingInfo"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 27
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->updateDeviceInfo(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V

    #@8
    return-void
.end method

.method public onGattConnectFailed(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onGattConnectFailed(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@3
    return-void
.end method

.method public onGattConnectTimeout(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onGattConnectTimeout(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@3
    return-void
.end method

.method public onGattConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 37

    #@0
    const-string v0, "device"

    #@2
    move-object/from16 v1, p1

    #@4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    .line 41
    invoke-static/range {p0 .. p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onGattConnected(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@a
    move-object/from16 v0, p0

    #@c
    .line 42
    iget-object v2, v0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_connectedLiveData:Landroidx/lifecycle/MutableLiveData;

    #@e
    .line 43
    new-instance v15, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@10
    move-object v3, v15

    #@11
    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    const/4 v6, 0x1

    #@1a
    .line 47
    sget-object v7, Lcom/flydigi/sdk/waspwing/DeviceCode;->INSTANCE:Lcom/flydigi/sdk/waspwing/DeviceCode;

    #@1c
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v7, v1}, Lcom/flydigi/sdk/waspwing/DeviceCode;->getDeviceCodeFromBtName(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    const/4 v8, 0x0

    #@25
    const/4 v9, 0x0

    #@26
    const/4 v10, 0x0

    #@27
    const/4 v11, 0x0

    #@28
    const/4 v12, 0x0

    #@29
    const/4 v13, 0x0

    #@2a
    const/4 v14, 0x0

    #@2b
    const/4 v1, 0x0

    #@2c
    move-object/from16 v34, v15

    #@2e
    move v15, v1

    #@2f
    const/16 v16, 0x0

    #@31
    const/16 v17, 0x0

    #@33
    const/16 v18, 0x0

    #@35
    const/16 v19, 0x0

    #@37
    const/16 v20, 0x0

    #@39
    const/16 v21, 0x0

    #@3b
    const/16 v22, 0x0

    #@3d
    const/16 v23, 0x0

    #@3f
    const/16 v24, 0x0

    #@41
    const/16 v25, 0x0

    #@43
    const/16 v26, 0x0

    #@45
    const/16 v27, 0x0

    #@47
    const/16 v28, 0x0

    #@49
    const/16 v29, 0x0

    #@4b
    const/16 v30, 0x0

    #@4d
    const/16 v31, 0x0

    #@4f
    const v32, 0xffffff0

    #@52
    const/16 v33, 0x0

    #@54
    .line 43
    invoke-direct/range {v3 .. v33}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@57
    move-object/from16 v1, v34

    #@59
    .line 42
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    #@5c
    return-void
.end method

.method public onGattConnecting(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onGattConnecting(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@3
    return-void
.end method

.method public onGattDisconnected(Landroid/bluetooth/BluetoothGatt;)V
    .registers 67

    #@0
    move-object/from16 v0, p0

    #@2
    const-string v1, "gatt"

    #@4
    move-object/from16 v2, p1

    #@6
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@9
    .line 53
    invoke-static/range {p0 .. p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onGattDisconnected(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothGatt;)V

    #@c
    .line 54
    iget-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_mWaspwingInfo:Landroidx/lifecycle/MutableLiveData;

    #@e
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    move-object v3, v1

    #@13
    check-cast v3, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@15
    if-eqz v3, :cond_ac

    #@17
    const/4 v4, 0x0

    #@18
    const/4 v5, 0x0

    #@19
    const/4 v6, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    const/4 v8, 0x0

    #@1c
    const/4 v9, 0x0

    #@1d
    const/4 v10, 0x0

    #@1e
    const/4 v11, 0x0

    #@1f
    const/4 v12, 0x0

    #@20
    const/4 v13, 0x0

    #@21
    const/4 v14, 0x0

    #@22
    const/4 v15, 0x0

    #@23
    const/16 v16, 0x0

    #@25
    const/16 v17, 0x0

    #@27
    const/16 v18, 0x0

    #@29
    const/16 v19, 0x0

    #@2b
    const/16 v20, 0x0

    #@2d
    const/16 v21, 0x0

    #@2f
    const/16 v22, 0x0

    #@31
    const/16 v23, 0x0

    #@33
    const/16 v24, 0x0

    #@35
    const/16 v25, 0x0

    #@37
    const/16 v26, 0x0

    #@39
    const/16 v27, 0x0

    #@3b
    const/16 v28, 0x0

    #@3d
    const/16 v29, 0x0

    #@3f
    const/16 v30, 0x0

    #@41
    const/16 v31, 0x0

    #@43
    const v32, 0xfffffff

    #@46
    const/16 v33, 0x0

    #@48
    invoke-static/range {v3 .. v33}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->copy$default(Lcom/flydigi/sdk/waspwing/WaspWingInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@4b
    move-result-object v1

    #@4c
    if-eqz v1, :cond_ac

    #@4e
    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getAddress()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v2, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_ac

    #@60
    const/4 v2, 0x0

    #@61
    .line 56
    invoke-virtual {v1, v2}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->setConnected(Z)V

    #@64
    .line 57
    iget-object v2, v0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_mWaspwingInfo:Landroidx/lifecycle/MutableLiveData;

    #@66
    const/16 v35, 0x0

    #@68
    const/16 v36, 0x0

    #@6a
    const/16 v37, 0x0

    #@6c
    const/16 v38, 0x0

    #@6e
    const/16 v39, 0x0

    #@70
    const/16 v40, 0x0

    #@72
    const/16 v41, 0x0

    #@74
    const/16 v42, 0x0

    #@76
    const/16 v43, 0x0

    #@78
    const/16 v44, 0x0

    #@7a
    const/16 v45, 0x0

    #@7c
    const/16 v46, 0x0

    #@7e
    const/16 v47, 0x0

    #@80
    const/16 v48, 0x0

    #@82
    const/16 v49, 0x0

    #@84
    const/16 v50, 0x0

    #@86
    const/16 v51, 0x0

    #@88
    const/16 v52, 0x0

    #@8a
    const/16 v53, 0x0

    #@8c
    const/16 v54, 0x0

    #@8e
    const/16 v55, 0x0

    #@90
    const/16 v56, 0x0

    #@92
    const/16 v57, 0x0

    #@94
    const/16 v58, 0x0

    #@96
    const/16 v59, 0x0

    #@98
    const/16 v60, 0x0

    #@9a
    const/16 v61, 0x0

    #@9c
    const/16 v62, 0x0

    #@9e
    const v63, 0xfffffff

    #@a1
    const/16 v64, 0x0

    #@a3
    move-object/from16 v34, v1

    #@a5
    invoke-static/range {v34 .. v64}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->copy$default(Lcom/flydigi/sdk/waspwing/WaspWingInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    #@ac
    :cond_ac
    return-void
.end method

.method public onReadRemoteRssi(I)V
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onReadRemoteRssi(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;I)V

    #@3
    return-void
.end method

.method public onTempHistoryUpdate([B)V
    .registers 3

    #@0
    const-string v0, "tempHistory"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 37
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onTempHistoryUpdate(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;[B)V

    #@8
    return-void
.end method

.method public final updateDeviceInfo(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V
    .registers 35

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    const-string v2, "waspWingInfo"

    #@6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@9
    .line 31
    iget-object v2, v0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_mWaspwingInfo:Landroidx/lifecycle/MutableLiveData;

    #@b
    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_54

    #@15
    .line 32
    iget-object v15, v0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_mWaspwingInfo:Landroidx/lifecycle/MutableLiveData;

    #@17
    const/4 v2, 0x0

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x0

    #@1b
    const/4 v6, 0x0

    #@1c
    const/4 v7, 0x0

    #@1d
    const/4 v8, 0x0

    #@1e
    const/4 v9, 0x0

    #@1f
    const/4 v10, 0x0

    #@20
    const/4 v11, 0x0

    #@21
    const/4 v12, 0x0

    #@22
    const/4 v13, 0x0

    #@23
    const/4 v14, 0x0

    #@24
    const/16 v16, 0x0

    #@26
    move-object/from16 v32, v15

    #@28
    move/from16 v15, v16

    #@2a
    const/16 v17, 0x0

    #@2c
    const/16 v18, 0x0

    #@2e
    const/16 v19, 0x0

    #@30
    const/16 v20, 0x0

    #@32
    const/16 v21, 0x0

    #@34
    const/16 v22, 0x0

    #@36
    const/16 v23, 0x0

    #@38
    const/16 v24, 0x0

    #@3a
    const/16 v25, 0x0

    #@3c
    const/16 v26, 0x0

    #@3e
    const/16 v27, 0x0

    #@40
    const/16 v28, 0x0

    #@42
    const/16 v29, 0x0

    #@44
    const v30, 0xfffffff

    #@47
    const/16 v31, 0x0

    #@49
    move-object/from16 v1, p1

    #@4b
    invoke-static/range {v1 .. v31}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->copy$default(Lcom/flydigi/sdk/waspwing/WaspWingInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@4e
    move-result-object v1

    #@4f
    move-object/from16 v2, v32

    #@51
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    #@54
    :cond_54
    return-void
.end method

.method public final updateManualMode(F)V
    .registers 35

    #@0
    move-object/from16 v0, p0

    #@2
    .line 63
    iget-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspwingViewModel;->_mWaspwingInfo:Landroidx/lifecycle/MutableLiveData;

    #@4
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    move-object v2, v1

    #@9
    check-cast v2, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@b
    if-eqz v2, :cond_a2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v6, 0x0

    #@11
    const/4 v7, 0x0

    #@12
    const/4 v8, 0x0

    #@13
    const/4 v9, 0x0

    #@14
    const/4 v10, 0x0

    #@15
    const/4 v11, 0x0

    #@16
    const/4 v12, 0x0

    #@17
    const/4 v13, 0x0

    #@18
    const/4 v14, 0x0

    #@19
    const/4 v15, 0x0

    #@1a
    const/16 v16, 0x0

    #@1c
    const/16 v17, 0x0

    #@1e
    const/16 v18, 0x0

    #@20
    const/16 v19, 0x0

    #@22
    const/16 v20, 0x0

    #@24
    const/16 v21, 0x0

    #@26
    const/16 v22, 0x0

    #@28
    const/16 v23, 0x0

    #@2a
    const/16 v24, 0x0

    #@2c
    const/16 v25, 0x0

    #@2e
    const/16 v26, 0x0

    #@30
    const/16 v27, 0x0

    #@32
    const/16 v28, 0x0

    #@34
    const/16 v29, 0x0

    #@36
    const/16 v30, 0x0

    #@38
    const v31, 0xfffffff

    #@3b
    const/16 v32, 0x0

    #@3d
    invoke-static/range {v2 .. v32}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->copy$default(Lcom/flydigi/sdk/waspwing/WaspWingInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@40
    move-result-object v1

    #@41
    if-eqz v1, :cond_a2

    #@43
    const/4 v2, 0x0

    #@44
    cmpg-float v2, p1, v2

    #@46
    const/4 v3, 0x1

    #@47
    const/4 v4, 0x0

    #@48
    if-nez v2, :cond_4c

    #@4a
    move v2, v3

    #@4b
    goto :goto_4d

    #@4c
    :cond_4c
    move v2, v4

    #@4d
    :goto_4d
    if-eqz v2, :cond_64

    #@4f
    .line 65
    sget-object v5, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@51
    const/4 v6, 0x1

    #@52
    invoke-virtual {v1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@55
    move-result v7

    #@56
    const/16 v8, 0xfa0

    #@58
    const/16 v9, 0x7d

    #@5a
    const/4 v10, 0x0

    #@5b
    const/4 v11, 0x0

    #@5c
    const/4 v12, 0x0

    #@5d
    const/16 v13, 0x70

    #@5f
    const/4 v14, 0x0

    #@60
    invoke-static/range {v5 .. v14}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@63
    goto :goto_a2

    #@64
    :cond_64
    const/high16 v2, 0x3f800000    # 1.0f

    #@66
    cmpg-float v2, p1, v2

    #@68
    if-nez v2, :cond_6c

    #@6a
    move v2, v3

    #@6b
    goto :goto_6d

    #@6c
    :cond_6c
    move v2, v4

    #@6d
    :goto_6d
    if-eqz v2, :cond_84

    #@6f
    .line 66
    sget-object v5, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@71
    const/4 v6, 0x1

    #@72
    invoke-virtual {v1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@75
    move-result v7

    #@76
    const/16 v8, 0x1194

    #@78
    const/16 v9, 0x7d

    #@7a
    const/4 v10, 0x0

    #@7b
    const/4 v11, 0x0

    #@7c
    const/4 v12, 0x0

    #@7d
    const/16 v13, 0x70

    #@7f
    const/4 v14, 0x0

    #@80
    invoke-static/range {v5 .. v14}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@83
    goto :goto_a2

    #@84
    :cond_84
    const/high16 v2, 0x40000000    # 2.0f

    #@86
    cmpg-float v2, p1, v2

    #@88
    if-nez v2, :cond_8b

    #@8a
    goto :goto_8c

    #@8b
    :cond_8b
    move v3, v4

    #@8c
    :goto_8c
    if-eqz v3, :cond_a2

    #@8e
    .line 67
    sget-object v4, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@90
    const/4 v5, 0x2

    #@91
    .line 69
    invoke-virtual {v1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@94
    move-result v6

    #@95
    const/4 v7, 0x0

    #@96
    const/4 v8, 0x0

    #@97
    const/16 v9, 0x157c

    #@99
    const/16 v10, 0xb2

    #@9b
    const/4 v11, 0x0

    #@9c
    const/16 v12, 0x4c

    #@9e
    const/4 v13, 0x0

    #@9f
    .line 67
    invoke-static/range {v4 .. v13}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@a2
    :cond_a2
    :goto_a2
    return-void
.end method
