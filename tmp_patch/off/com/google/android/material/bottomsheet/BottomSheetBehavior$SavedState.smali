.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
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
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fitToContents:Z

.field hideable:Z

.field peekHeight:I

.field skipCollapsed:Z

.field final state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 2057
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2011
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    #@0
    .line 2015
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 2017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result p2

    #@7
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    #@9
    .line 2018
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result p2

    #@d
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    #@f
    .line 2019
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result p2

    #@13
    const/4 v0, 0x0

    #@14
    const/4 v1, 0x1

    #@15
    if-ne p2, v1, :cond_19

    #@17
    move p2, v1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move p2, v0

    #@1a
    :goto_1a
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    #@1c
    .line 2020
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result p2

    #@20
    if-ne p2, v1, :cond_24

    #@22
    move p2, v1

    #@23
    goto :goto_25

    #@24
    :cond_24
    move p2, v0

    #@25
    :goto_25
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    #@27
    .line 2021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result p1

    #@2b
    if-ne p1, v1, :cond_2e

    #@2d
    move v0, v1

    #@2e
    :cond_2e
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    #@30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2043
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 2044
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 2025
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 2026
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@5
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    #@7
    .line 2027
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    #@a
    move-result p1

    #@b
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    #@d
    .line 2028
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@10
    move-result p1

    #@11
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    #@13
    .line 2029
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@15
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    #@17
    .line 2030
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$2000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@1a
    move-result p1

    #@1b
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    #@1d
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 2049
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 2050
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 2051
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    #@a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 2052
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    #@f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 2053
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    #@14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2054
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    #@19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    return-void
.end method
