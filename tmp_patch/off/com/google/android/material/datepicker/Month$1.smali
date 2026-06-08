.class Lcom/google/android/material/datepicker/Month$1;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/Month;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/Month;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/Month;
    .registers 3

    #@0
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result p1

    #@8
    .line 210
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 204
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/Month$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/Month;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/Month;
    .registers 2

    #@0
    .line 216
    new-array p1, p1, [Lcom/google/android/material/datepicker/Month;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 204
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/Month$1;->newArray(I)[Lcom/google/android/material/datepicker/Month;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
