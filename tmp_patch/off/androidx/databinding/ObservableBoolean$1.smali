.class Landroidx/databinding/ObservableBoolean$1;
.super Ljava/lang/Object;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ObservableBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/databinding/ObservableBoolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableBoolean;
    .registers 4

    #@0
    .line 106
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result p1

    #@6
    const/4 v1, 0x1

    #@7
    if-ne p1, v1, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    :goto_b
    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    #@e
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 102
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableBoolean$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableBoolean;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Landroidx/databinding/ObservableBoolean;
    .registers 2

    #@0
    .line 111
    new-array p1, p1, [Landroidx/databinding/ObservableBoolean;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 102
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableBoolean$1;->newArray(I)[Landroidx/databinding/ObservableBoolean;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
