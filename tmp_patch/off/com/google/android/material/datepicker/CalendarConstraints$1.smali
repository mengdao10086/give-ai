.class Lcom/google/android/material/datepicker/CalendarConstraints$1;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/CalendarConstraints;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .registers 10

    #@0
    .line 194
    const-class v0, Lcom/google/android/material/datepicker/Month;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@9
    move-result-object v0

    #@a
    move-object v2, v0

    #@b
    check-cast v2, Lcom/google/android/material/datepicker/Month;

    #@d
    .line 195
    const-class v0, Lcom/google/android/material/datepicker/Month;

    #@f
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@16
    move-result-object v0

    #@17
    move-object v3, v0

    #@18
    check-cast v3, Lcom/google/android/material/datepicker/Month;

    #@1a
    .line 196
    const-class v0, Lcom/google/android/material/datepicker/Month;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@23
    move-result-object v0

    #@24
    move-object v5, v0

    #@25
    check-cast v5, Lcom/google/android/material/datepicker/Month;

    #@27
    .line 197
    const-class v0, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@29
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@30
    move-result-object v0

    #@31
    move-object v4, v0

    #@32
    check-cast v4, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@34
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v6

    #@38
    .line 199
    new-instance p1, Lcom/google/android/material/datepicker/CalendarConstraints;

    #@3a
    const/4 v7, 0x0

    #@3b
    move-object v1, p1

    #@3c
    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;ILcom/google/android/material/datepicker/CalendarConstraints$1;)V

    #@3f
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 190
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CalendarConstraints;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/CalendarConstraints;
    .registers 2

    #@0
    .line 205
    new-array p1, p1, [Lcom/google/android/material/datepicker/CalendarConstraints;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 190
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints$1;->newArray(I)[Lcom/google/android/material/datepicker/CalendarConstraints;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
