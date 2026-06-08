.class public final Lcom/example/extool/WaspWingViewModel;
.super Lcom/example/extool/BluetoothViewModel;
.source "WaspWingViewModel.kt"

# interfaces
.implements Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/extool/WaspWingViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J\u0006\u0010\u0010\u001a\u00020\u000cJ\u0006\u0010\u0011\u001a\u00020\u000cJ\u0006\u0010\u0012\u001a\u00020\u000cJ\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0018\u001a\u00020\u000cH\u0016J\u0008\u0010\u0019\u001a\u00020\u000cH\u0016J\u000e\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0015J\u0006\u0010\u001c\u001a\u00020\u000cJ\u0006\u0010\u001d\u001a\u00020\u000cJ\u0006\u0010\u001e\u001a\u00020\u000cJ\u000e\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0015J\u0016\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\u0015J\u0016\u0010\'\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0015J\u0016\u0010(\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0015R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006*"
    }
    d2 = {
        "Lcom/example/extool/WaspWingViewModel;",
        "Lcom/example/extool/BluetoothViewModel;",
        "Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;",
        "()V",
        "_waspWingInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
        "waspWingInfo",
        "Landroidx/lifecycle/LiveData;",
        "getWaspWingInfo",
        "()Landroidx/lifecycle/LiveData;",
        "connect",
        "",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "disconnect",
        "downColdPwm",
        "downTargetTemperature",
        "downWindPwm",
        "enableExperimentalMode",
        "enabled",
        "",
        "onDeviceDisconnected",
        "onDeviceInfoUpdate",
        "scan",
        "stopScan",
        "switchLed",
        "state",
        "upColdPwm",
        "upTargetTemperature",
        "upWindPwm",
        "update",
        "updateColdPwm",
        "value",
        "",
        "fromUser",
        "updateDefaultMode",
        "checkedId",
        "isChecked",
        "updateDefaultTemperature",
        "updateWindPwm",
        "Companion",
        "exTool_release"
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
.field public static final COLD_ADJUST_MAX:I = 0xe5

.field public static final COLD_ADJUST_MIN:I = 0x0

.field public static final Companion:Lcom/example/extool/WaspWingViewModel$Companion;

.field public static final TEMPERATURE_ADJUST_MAX:I = 0x23

.field public static final TEMPERATURE_ADJUST_MIN:I = 0x5

.field public static final WIND_ADJUST_MAX:I = 0x1770

.field public static final WIND_ADJUST_MIN:I = 0x7d0


# instance fields
.field private final _waspWingInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final waspWingInfo:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/example/extool/WaspWingViewModel$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/example/extool/WaspWingViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lcom/example/extool/WaspWingViewModel;->Companion:Lcom/example/extool/WaspWingViewModel$Companion;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 14
    invoke-direct {p0}, Lcom/example/extool/BluetoothViewModel;-><init>()V

    #@3
    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    #@5
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    #@8
    iput-object v0, p0, Lcom/example/extool/WaspWingViewModel;->_waspWingInfo:Landroidx/lifecycle/MutableLiveData;

    #@a
    .line 16
    check-cast v0, Landroidx/lifecycle/LiveData;

    #@c
    iput-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@e
    .line 173
    invoke-static {p0}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->register(Ljava/lang/Object;)V

    #@11
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 188
    invoke-static {p1}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->connectGattWith(Landroid/bluetooth/BluetoothDevice;)V

    #@8
    return-void
.end method

.method public disconnect()V
    .registers 1

    #@0
    .line 192
    invoke-static {}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->disconnect()V

    #@3
    return-void
.end method

.method public final downColdPwm()V
    .registers 13

    #@0
    .line 140
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@8
    if-eqz v0, :cond_2b

    #@a
    .line 141
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@d
    move-result v1

    #@e
    if-gtz v1, :cond_11

    #@10
    return-void

    #@11
    .line 144
    :cond_11
    sget-object v2, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@13
    .line 145
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRunMode()I

    #@16
    move-result v3

    #@17
    .line 146
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@1a
    move-result v4

    #@1b
    const/4 v5, 0x0

    #@1c
    const/4 v6, 0x0

    #@1d
    const/4 v7, 0x0

    #@1e
    .line 147
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@21
    move-result v0

    #@22
    add-int/lit8 v8, v0, -0x1

    #@24
    const/4 v9, 0x0

    #@25
    const/16 v10, 0x5c

    #@27
    const/4 v11, 0x0

    #@28
    .line 144
    invoke-static/range {v2 .. v11}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@2b
    :cond_2b
    return-void
.end method

.method public final downTargetTemperature()V
    .registers 14

    #@0
    .line 57
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@8
    if-eqz v0, :cond_26

    #@a
    .line 58
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x5

    #@f
    if-gt v1, v2, :cond_12

    #@11
    return-void

    #@12
    .line 61
    :cond_12
    sget-object v3, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@14
    const/4 v4, 0x0

    #@15
    .line 63
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v5, v0, -0x1

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
    const/16 v11, 0x7c

    #@22
    const/4 v12, 0x0

    #@23
    .line 61
    invoke-static/range {v3 .. v12}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@26
    :cond_26
    return-void
.end method

.method public final downWindPwm()V
    .registers 14

    #@0
    .line 112
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@8
    if-eqz v0, :cond_2d

    #@a
    .line 113
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealWindLevel()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0x7d0

    #@10
    if-gt v1, v2, :cond_13

    #@12
    return-void

    #@13
    .line 116
    :cond_13
    sget-object v3, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@15
    .line 117
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRunMode()I

    #@18
    move-result v4

    #@19
    .line 118
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@1c
    move-result v5

    #@1d
    const/4 v6, 0x0

    #@1e
    const/4 v7, 0x0

    #@1f
    .line 119
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealWindLevel()I

    #@22
    move-result v0

    #@23
    add-int/lit8 v8, v0, -0x1

    #@25
    const/4 v9, 0x0

    #@26
    const/4 v10, 0x0

    #@27
    const/16 v11, 0x6c

    #@29
    const/4 v12, 0x0

    #@2a
    .line 116
    invoke-static/range {v3 .. v12}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@2d
    :cond_2d
    return-void
.end method

.method public final enableExperimentalMode(Z)V
    .registers 9

    #@0
    .line 167
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@8
    if-eqz v0, :cond_1d

    #@a
    .line 168
    sget-object v1, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@c
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@f
    move-result v0

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x0

    #@17
    const/4 v5, 0x4

    #@18
    const/4 v6, 0x0

    #@19
    move v2, p1

    #@1a
    invoke-static/range {v1 .. v6}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setExperimentalRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    #@1d
    :cond_1d
    return-void
.end method

.method public final getWaspWingInfo()Landroidx/lifecycle/LiveData;
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
    .line 16
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    return-object v0
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 36

    #@0
    .line 203
    invoke-super/range {p0 .. p1}, Lcom/example/extool/BluetoothViewModel;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    #@3
    move-object/from16 v0, p0

    #@5
    .line 204
    iget-object v1, v0, Lcom/example/extool/WaspWingViewModel;->_waspWingInfo:Landroidx/lifecycle/MutableLiveData;

    #@7
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    move-object v3, v2

    #@c
    check-cast v3, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@e
    if-eqz v3, :cond_46

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    const/4 v6, 0x0

    #@13
    const/4 v7, 0x0

    #@14
    const/4 v8, 0x0

    #@15
    const/4 v9, 0x0

    #@16
    const/4 v10, 0x0

    #@17
    const/4 v11, 0x0

    #@18
    const/4 v12, 0x0

    #@19
    const/4 v13, 0x0

    #@1a
    const/4 v14, 0x0

    #@1b
    const/4 v15, 0x0

    #@1c
    const/16 v16, 0x0

    #@1e
    const/16 v17, 0x0

    #@20
    const/16 v18, 0x0

    #@22
    const/16 v19, 0x0

    #@24
    const/16 v20, 0x0

    #@26
    const/16 v21, 0x0

    #@28
    const/16 v22, 0x0

    #@2a
    const/16 v23, 0x0

    #@2c
    const/16 v24, 0x0

    #@2e
    const/16 v25, 0x0

    #@30
    const/16 v26, 0x0

    #@32
    const/16 v27, 0x0

    #@34
    const/16 v28, 0x0

    #@36
    const/16 v29, 0x0

    #@38
    const/16 v30, 0x0

    #@3a
    const/16 v31, 0x0

    #@3c
    const v32, 0xffffffb

    #@3f
    const/16 v33, 0x0

    #@41
    invoke-static/range {v3 .. v33}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->copy$default(Lcom/flydigi/sdk/waspwing/WaspWingInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@44
    move-result-object v2

    #@45
    goto :goto_47

    #@46
    :cond_46
    const/4 v2, 0x0

    #@47
    :goto_47
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    #@4a
    return-void
.end method

.method public onDeviceInfoUpdate(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V
    .registers 10

    #@0
    const-string v0, "waspWingInfo"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 196
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->_waspWingInfo:Landroidx/lifecycle/MutableLiveData;

    #@7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    #@a
    .line 197
    invoke-virtual {p1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getExperimentalRunModeValue()Ljava/lang/Integer;

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_17

    #@11
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_3d

    #@17
    :goto_17
    invoke-virtual {p1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getExperimentalRunModeValue()Ljava/lang/Integer;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@1e
    move-result v1

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    if-nez v0, :cond_24

    #@23
    goto :goto_2a

    #@24
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v0

    #@28
    if-eq v0, v1, :cond_3d

    #@2a
    .line 198
    :goto_2a
    sget-object v2, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@2c
    const/4 v3, 0x1

    #@2d
    invoke-virtual {p1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@30
    move-result p1

    #@31
    add-int/lit8 p1, p1, 0x1

    #@33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    const/4 v5, 0x0

    #@38
    const/4 v6, 0x4

    #@39
    const/4 v7, 0x0

    #@3a
    invoke-static/range {v2 .. v7}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setExperimentalRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    #@3d
    :cond_3d
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
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onGattConnected(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@3
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
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onGattDisconnected(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothGatt;)V

    #@3
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
    .registers 2

    #@0
    .line 14
    invoke-static {p0, p1}, Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;->onTempHistoryUpdate(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;[B)V

    #@3
    return-void
.end method

.method public scan()V
    .registers 3

    #@0
    .line 178
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    #@6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@9
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    #@b
    const/4 v1, 0x2

    #@c
    .line 177
    invoke-static {v0, v1}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->startScan(Landroidx/fragment/app/FragmentActivity;I)V

    #@f
    return-void
.end method

.method public stopScan()V
    .registers 1

    #@0
    .line 184
    invoke-static {}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->stopScan()V

    #@3
    return-void
.end method

.method public final switchLed(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 33
    sget-object p1, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@4
    invoke-virtual {p1}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setLightOn()V

    #@7
    goto :goto_d

    #@8
    .line 35
    :cond_8
    sget-object p1, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@a
    invoke-virtual {p1}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setLightOff()V

    #@d
    :goto_d
    return-void
.end method

.method public final upColdPwm()V
    .registers 14

    #@0
    .line 153
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@8
    if-eqz v0, :cond_2d

    #@a
    .line 154
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0xe5

    #@10
    if-lt v1, v2, :cond_13

    #@12
    return-void

    #@13
    .line 157
    :cond_13
    sget-object v3, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@15
    .line 158
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRunMode()I

    #@18
    move-result v4

    #@19
    .line 159
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@1c
    move-result v5

    #@1d
    const/4 v6, 0x0

    #@1e
    const/4 v7, 0x0

    #@1f
    const/4 v8, 0x0

    #@20
    .line 160
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@23
    move-result v0

    #@24
    add-int/lit8 v9, v0, 0x1

    #@26
    const/4 v10, 0x0

    #@27
    const/16 v11, 0x5c

    #@29
    const/4 v12, 0x0

    #@2a
    .line 157
    invoke-static/range {v3 .. v12}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@2d
    :cond_2d
    return-void
.end method

.method public final upTargetTemperature()V
    .registers 14

    #@0
    .line 70
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@8
    if-eqz v0, :cond_27

    #@a
    .line 71
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0x23

    #@10
    if-lt v1, v2, :cond_13

    #@12
    return-void

    #@13
    .line 74
    :cond_13
    sget-object v3, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@15
    const/4 v4, 0x0

    #@16
    .line 76
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@19
    move-result v0

    #@1a
    add-int/lit8 v5, v0, 0x1

    #@1c
    const/4 v6, 0x0

    #@1d
    const/4 v7, 0x0

    #@1e
    const/4 v8, 0x0

    #@1f
    const/4 v9, 0x0

    #@20
    const/4 v10, 0x0

    #@21
    const/16 v11, 0x7c

    #@23
    const/4 v12, 0x0

    #@24
    .line 74
    invoke-static/range {v3 .. v12}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@27
    :cond_27
    return-void
.end method

.method public final upWindPwm()V
    .registers 14

    #@0
    .line 126
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@8
    if-eqz v0, :cond_2d

    #@a
    .line 127
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealWindLevel()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0x1770

    #@10
    if-lt v1, v2, :cond_13

    #@12
    return-void

    #@13
    .line 130
    :cond_13
    sget-object v3, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@15
    .line 131
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRunMode()I

    #@18
    move-result v4

    #@19
    .line 132
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@1c
    move-result v5

    #@1d
    const/4 v6, 0x0

    #@1e
    const/4 v7, 0x0

    #@1f
    .line 133
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealWindLevel()I

    #@22
    move-result v0

    #@23
    add-int/lit8 v8, v0, 0x1

    #@25
    const/4 v9, 0x0

    #@26
    const/4 v10, 0x0

    #@27
    const/16 v11, 0x6c

    #@29
    const/4 v12, 0x0

    #@2a
    .line 130
    invoke-static/range {v3 .. v12}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@2d
    :cond_2d
    return-void
.end method

.method public final update(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V
    .registers 3

    #@0
    const-string v0, "waspWingInfo"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 28
    iget-object v0, p0, Lcom/example/extool/WaspWingViewModel;->_waspWingInfo:Landroidx/lifecycle/MutableLiveData;

    #@7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public final updateColdPwm(IZ)V
    .registers 13

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 100
    :cond_3
    iget-object p2, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@5
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@8
    move-result-object p2

    #@9
    check-cast p2, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@b
    if-eqz p2, :cond_22

    #@d
    .line 102
    sget-object v0, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@f
    .line 103
    invoke-virtual {p2}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRunMode()I

    #@12
    move-result v1

    #@13
    .line 104
    invoke-virtual {p2}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@16
    move-result v2

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    const/16 v8, 0x5c

    #@1d
    const/4 v9, 0x0

    #@1e
    move v6, p1

    #@1f
    .line 102
    invoke-static/range {v0 .. v9}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@22
    :cond_22
    return-void
.end method

.method public final updateDefaultMode(IZ)V
    .registers 13

    #@0
    if-eqz p2, :cond_2a

    #@2
    const p2, 0x7f080161

    #@5
    if-ne p2, p1, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x2

    #@a
    :goto_a
    move v1, p1

    #@b
    .line 44
    sget-object v0, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@d
    .line 46
    iget-object p1, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@f
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    check-cast p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@15
    if-eqz p1, :cond_1c

    #@17
    invoke-virtual {p1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@1a
    move-result p1

    #@1b
    goto :goto_1e

    #@1c
    :cond_1c
    const/16 p1, 0xa

    #@1e
    :goto_1e
    move v2, p1

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v5, 0x0

    #@22
    const/4 v6, 0x0

    #@23
    const/4 v7, 0x0

    #@24
    const/16 v8, 0x7c

    #@26
    const/4 v9, 0x0

    #@27
    .line 44
    invoke-static/range {v0 .. v9}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@2a
    :cond_2a
    return-void
.end method

.method public final updateDefaultTemperature(IZ)V
    .registers 13

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 53
    :cond_3
    sget-object v0, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    const/4 v5, 0x0

    #@9
    const/4 v6, 0x0

    #@a
    const/4 v7, 0x0

    #@b
    const/16 v8, 0x7c

    #@d
    const/4 v9, 0x0

    #@e
    move v2, p1

    #@f
    invoke-static/range {v0 .. v9}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@12
    return-void
.end method

.method public final updateWindPwm(IZ)V
    .registers 13

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 84
    :cond_3
    iget-object p2, p0, Lcom/example/extool/WaspWingViewModel;->waspWingInfo:Landroidx/lifecycle/LiveData;

    #@5
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@8
    move-result-object p2

    #@9
    check-cast p2, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@b
    if-eqz p2, :cond_22

    #@d
    .line 86
    sget-object v0, Lcom/flydigi/sdk/waspwing/WaspWingManager;->INSTANCE:Lcom/flydigi/sdk/waspwing/WaspWingManager;

    #@f
    .line 87
    invoke-virtual {p2}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRunMode()I

    #@12
    move-result v1

    #@13
    .line 88
    invoke-virtual {p2}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@16
    move-result v2

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v6, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    const/16 v8, 0x6c

    #@1d
    const/4 v9, 0x0

    #@1e
    move v5, p1

    #@1f
    .line 86
    invoke-static/range {v0 .. v9}, Lcom/flydigi/sdk/waspwing/WaspWingManager;->setRunMode$default(Lcom/flydigi/sdk/waspwing/WaspWingManager;IIIIIIIILjava/lang/Object;)V

    #@22
    :cond_22
    return-void
.end method
