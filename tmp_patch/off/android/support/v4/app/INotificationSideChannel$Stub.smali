.class public abstract Landroid/support/v4/app/INotificationSideChannel$Stub;
.super Landroid/os/Binder;
.source "INotificationSideChannel.java"

# interfaces
.implements Landroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_cancelAll:I = 0x3

.field static final TRANSACTION_notify:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@5
    .line 39
    invoke-virtual {p0, p0, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@6
    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    .line 51
    instance-of v1, v0, Landroid/support/v4/app/INotificationSideChannel;

    #@e
    if-eqz v1, :cond_13

    #@10
    .line 52
    check-cast v0, Landroid/support/v4/app/INotificationSideChannel;

    #@12
    return-object v0

    #@13
    .line 54
    :cond_13
    new-instance v0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@2
    const/4 v1, 0x1

    #@3
    if-lt p1, v1, :cond_d

    #@5
    const v2, 0xffffff

    #@8
    if-gt p1, v2, :cond_d

    #@a
    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d
    :cond_d
    const v2, 0x5f4e5446

    #@10
    if-eq p1, v2, :cond_4f

    #@12
    if-eq p1, v1, :cond_37

    #@14
    const/4 v0, 0x2

    #@15
    if-eq p1, v0, :cond_27

    #@17
    const/4 v0, 0x3

    #@18
    if-eq p1, v0, :cond_1f

    #@1a
    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    move-result p1

    #@1e
    return p1

    #@1f
    .line 103
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    .line 104
    invoke-virtual {p0, p1}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancelAll(Ljava/lang/String;)V

    #@26
    goto :goto_4e

    #@27
    .line 92
    :cond_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result p3

    #@2f
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object p2

    #@33
    .line 97
    invoke-virtual {p0, p1, p3, p2}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    #@36
    goto :goto_4e

    #@37
    .line 79
    :cond_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a
    move-result-object p1

    #@3b
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result p3

    #@3f
    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object p4

    #@43
    .line 85
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    # invokes: Landroid/support/v4/app/INotificationSideChannel$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, v0}, Landroid/support/v4/app/INotificationSideChannel$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    #@48
    move-result-object p2

    #@49
    check-cast p2, Landroid/app/Notification;

    #@4b
    .line 86
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/support/v4/app/INotificationSideChannel$Stub;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    #@4e
    :goto_4e
    return v1

    #@4f
    .line 70
    :cond_4f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@52
    return v1
.end method
