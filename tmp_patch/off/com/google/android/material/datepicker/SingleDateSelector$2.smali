.class Lcom/google/android/material/datepicker/SingleDateSelector$2;
.super Ljava/lang/Object;
.source "SingleDateSelector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/SingleDateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/SingleDateSelector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/SingleDateSelector;
    .registers 4

    #@0
    .line 205
    new-instance v0, Lcom/google/android/material/datepicker/SingleDateSelector;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/SingleDateSelector;-><init>()V

    #@5
    .line 206
    const-class v1, Ljava/lang/Long;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Ljava/lang/Long;

    #@11
    # setter for: Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/SingleDateSelector;->access$202(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    #@14
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/SingleDateSelector$2;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/SingleDateSelector;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/SingleDateSelector;
    .registers 2

    #@0
    .line 213
    new-array p1, p1, [Lcom/google/android/material/datepicker/SingleDateSelector;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/SingleDateSelector$2;->newArray(I)[Lcom/google/android/material/datepicker/SingleDateSelector;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
