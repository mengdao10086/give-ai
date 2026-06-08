.class public Lcom/google/android/material/internal/ParcelableSparseArray;
.super Landroid/util/SparseArray;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Landroid/os/Parcelable;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/internal/ParcelableSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 66
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseArray$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseArray$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/internal/ParcelableSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 7

    #@0
    .line 37
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    #@3
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    .line 39
    new-array v1, v0, [I

    #@9
    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    #@c
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@f
    move-result-object p1

    #@10
    const/4 p2, 0x0

    #@11
    :goto_11
    if-ge p2, v0, :cond_1d

    #@13
    .line 43
    aget v2, v1, p2

    #@15
    aget-object v3, p1, p2

    #@17
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    #@1a
    add-int/lit8 p2, p2, 0x1

    #@1c
    goto :goto_11

    #@1d
    :cond_1d
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    #@0
    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    #@3
    move-result v0

    #@4
    .line 55
    new-array v1, v0, [I

    #@6
    .line 56
    new-array v2, v0, [Landroid/os/Parcelable;

    #@8
    const/4 v3, 0x0

    #@9
    :goto_9
    if-ge v3, v0, :cond_1c

    #@b
    .line 58
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/ParcelableSparseArray;->keyAt(I)I

    #@e
    move-result v4

    #@f
    aput v4, v1, v3

    #@11
    .line 59
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/os/Parcelable;

    #@17
    aput-object v4, v2, v3

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_9

    #@1c
    .line 61
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@22
    .line 63
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@25
    return-void
.end method
