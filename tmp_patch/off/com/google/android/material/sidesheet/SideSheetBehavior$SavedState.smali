.class public Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SideSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/sidesheet/SideSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 884
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 864
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    #@0
    .line 868
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result p1

    #@7
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 874
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 875
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I
    invoke-static {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$000(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    #@6
    move-result p1

    #@7
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    #@9
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 880
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 881
    iget p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    return-void
.end method
