.class Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseBooleanArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/internal/ParcelableSparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .registers 8

    #@0
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 76
    new-instance v1, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;-><init>(I)V

    #@9
    .line 78
    new-array v2, v0, [I

    #@b
    .line 79
    new-array v3, v0, [Z

    #@d
    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    #@10
    .line 82
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    #@13
    const/4 p1, 0x0

    #@14
    :goto_14
    if-ge p1, v0, :cond_20

    #@16
    .line 85
    aget v4, v2, p1

    #@18
    aget-boolean v5, v3, p1

    #@1a
    invoke-virtual {v1, v4, v5}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->put(IZ)V

    #@1d
    add-int/lit8 p1, p1, 0x1

    #@1f
    goto :goto_14

    #@20
    :cond_20
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .registers 2

    #@0
    .line 94
    new-array p1, p1, [Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
