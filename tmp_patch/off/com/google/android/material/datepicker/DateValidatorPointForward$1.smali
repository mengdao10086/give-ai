.class Lcom/google/android/material/datepicker/DateValidatorPointForward$1;
.super Ljava/lang/Object;
.source "DateValidatorPointForward.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/DateValidatorPointForward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/DateValidatorPointForward;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .registers 5

    #@0
    .line 62
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@5
    move-result-wide v1

    #@6
    const/4 p1, 0x0

    #@7
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(JLcom/google/android/material/datepicker/DateValidatorPointForward$1;)V

    #@a
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/DateValidatorPointForward$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .registers 2

    #@0
    .line 68
    new-array p1, p1, [Lcom/google/android/material/datepicker/DateValidatorPointForward;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/DateValidatorPointForward$1;->newArray(I)[Lcom/google/android/material/datepicker/DateValidatorPointForward;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
