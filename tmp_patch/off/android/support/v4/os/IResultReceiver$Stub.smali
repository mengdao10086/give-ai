.class public abstract Landroid/support/v4/os/IResultReceiver$Stub;
.super Landroid/os/Binder;
.source "IResultReceiver.java"

# interfaces
.implements Landroid/support/v4/os/IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/IResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_send:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "android.support.v4.os.IResultReceiver"

    #@5
    .line 25
    invoke-virtual {p0, p0, v0}, Landroid/support/v4/os/IResultReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const-string v0, "android.support.v4.os.IResultReceiver"

    #@6
    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    .line 37
    instance-of v1, v0, Landroid/support/v4/os/IResultReceiver;

    #@e
    if-eqz v1, :cond_13

    #@10
    .line 38
    check-cast v0, Landroid/support/v4/os/IResultReceiver;

    #@12
    return-object v0

    #@13
    .line 40
    :cond_13
    new-instance v0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@18
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    #@0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const-string v0, "android.support.v4.os.IResultReceiver"

    #@2
    const/4 v1, 0x1

    #@3
    if-lt p1, v1, :cond_d

    #@5
    const v2, 0xffffff

    #@8
    if-gt p1, v2, :cond_d

    #@a
    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d
    :cond_d
    const v2, 0x5f4e5446

    #@10
    if-eq p1, v2, :cond_29

    #@12
    if-eq p1, v1, :cond_19

    #@14
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@17
    move-result p1

    #@18
    return p1

    #@19
    .line 65
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result p1

    #@1d
    .line 67
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    # invokes: Landroid/support/v4/os/IResultReceiver$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p3}, Landroid/support/v4/os/IResultReceiver$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    #@22
    move-result-object p2

    #@23
    check-cast p2, Landroid/os/Bundle;

    #@25
    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/os/IResultReceiver$Stub;->send(ILandroid/os/Bundle;)V

    #@28
    return v1

    #@29
    .line 56
    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    return v1
.end method
