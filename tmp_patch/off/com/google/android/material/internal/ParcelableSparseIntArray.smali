.class public Lcom/google/android/material/internal/ParcelableSparseIntArray;
.super Landroid/util/SparseIntArray;
.source "ParcelableSparseIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/internal/ParcelableSparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 70
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/internal/ParcelableSparseIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 36
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 40
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .registers 5

    #@0
    .line 44
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 45
    :goto_4
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_18

    #@a
    .line 46
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@11
    move-result v2

    #@12
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->put(II)V

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_4

    #@18
    :cond_18
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
    .registers 6

    #@0
    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    #@3
    move-result p2

    #@4
    new-array p2, p2, [I

    #@6
    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    #@9
    move-result v0

    #@a
    new-array v0, v0, [I

    #@c
    const/4 v1, 0x0

    #@d
    .line 60
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    #@10
    move-result v2

    #@11
    if-ge v1, v2, :cond_22

    #@13
    .line 61
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->keyAt(I)I

    #@16
    move-result v2

    #@17
    aput v2, p2, v1

    #@19
    .line 62
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->valueAt(I)I

    #@1c
    move-result v2

    #@1d
    aput v2, v0, v1

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_d

    #@22
    .line 65
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    #@25
    move-result v1

    #@26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2c
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2f
    return-void
.end method
