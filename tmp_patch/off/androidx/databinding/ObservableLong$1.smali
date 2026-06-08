.class Landroidx/databinding/ObservableLong$1;
.super Ljava/lang/Object;
.source "ObservableLong.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ObservableLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/databinding/ObservableLong;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableLong;
    .registers 5

    #@0
    .line 108
    new-instance v0, Landroidx/databinding/ObservableLong;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@5
    move-result-wide v1

    #@6
    invoke-direct {v0, v1, v2}, Landroidx/databinding/ObservableLong;-><init>(J)V

    #@9
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 104
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableLong$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableLong;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Landroidx/databinding/ObservableLong;
    .registers 2

    #@0
    .line 113
    new-array p1, p1, [Landroidx/databinding/ObservableLong;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 104
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableLong$1;->newArray(I)[Landroidx/databinding/ObservableLong;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
