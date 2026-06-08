.class Landroidx/databinding/ObservableChar$1;
.super Ljava/lang/Object;
.source "ObservableChar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ObservableChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/databinding/ObservableChar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableChar;
    .registers 3

    #@0
    .line 107
    new-instance v0, Landroidx/databinding/ObservableChar;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result p1

    #@6
    int-to-char p1, p1

    #@7
    invoke-direct {v0, p1}, Landroidx/databinding/ObservableChar;-><init>(C)V

    #@a
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 103
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableChar$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableChar;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Landroidx/databinding/ObservableChar;
    .registers 2

    #@0
    .line 112
    new-array p1, p1, [Landroidx/databinding/ObservableChar;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 103
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableChar$1;->newArray(I)[Landroidx/databinding/ObservableChar;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
