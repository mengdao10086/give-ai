.class public Landroid/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/ResultReceiver$MyResultReceiver;,
        Landroid/support/v4/os/ResultReceiver$MyRunnable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Landroid/support/v4/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 145
    new-instance v0, Landroid/support/v4/os/ResultReceiver$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/os/ResultReceiver$1;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    #@0
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 85
    iput-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    #@6
    .line 86
    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@8
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 140
    iput-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    #@6
    const/4 v0, 0x0

    #@7
    .line 141
    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@9
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c
    move-result-object p1

    #@d
    invoke-static {p1}, Landroid/support/v4/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;

    #@10
    move-result-object p1

    #@11
    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    #@13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .registers 5

    #@0
    .line 97
    iget-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 98
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 99
    new-instance v1, Landroid/support/v4/os/ResultReceiver$MyRunnable;

    #@a
    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    goto :goto_14

    #@11
    .line 101
    :cond_11
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    #@14
    :goto_14
    return-void

    #@15
    .line 106
    :cond_15
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    #@17
    if-eqz v0, :cond_1c

    #@19
    .line 108
    :try_start_19
    invoke-interface {v0, p1, p2}, Landroid/support/v4/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1c

    #@1c
    :catch_1c
    :cond_1c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 131
    monitor-enter p0

    #@1
    .line 132
    :try_start_1
    iget-object p2, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    #@3
    if-nez p2, :cond_c

    #@5
    .line 133
    new-instance p2, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;

    #@7
    invoke-direct {p2, p0}, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;-><init>(Landroid/support/v4/os/ResultReceiver;)V

    #@a
    iput-object p2, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    #@c
    .line 135
    :cond_c
    iget-object p2, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    #@e
    invoke-interface {p2}, Landroid/support/v4/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object p2

    #@12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 136
    monitor-exit p0

    #@16
    return-void

    #@17
    :catchall_17
    move-exception p1

    #@18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    #@19
    throw p1
.end method
