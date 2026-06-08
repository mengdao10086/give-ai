.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
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
            "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstVisibleChildAtMinimumHeight:Z

.field firstVisibleChildIndex:I

.field firstVisibleChildPercentageShown:F

.field fullyExpanded:Z

.field fullyScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 2349
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    #@0
    .line 2327
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 2328
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@6
    move-result p2

    #@7
    const/4 v0, 0x1

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz p2, :cond_d

    #@b
    move p2, v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    move p2, v1

    #@e
    :goto_e
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    #@10
    .line 2329
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@13
    move-result p2

    #@14
    if-eqz p2, :cond_18

    #@16
    move p2, v0

    #@17
    goto :goto_19

    #@18
    :cond_18
    move p2, v1

    #@19
    :goto_19
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    #@1b
    .line 2330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result p2

    #@1f
    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    #@21
    .line 2331
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@24
    move-result p2

    #@25
    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    #@27
    .line 2332
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@2a
    move-result p1

    #@2b
    if-eqz p1, :cond_2e

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    :goto_2f
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    #@31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 2336
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 2341
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 2342
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    #@5
    int-to-byte p2, p2

    #@6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    #@9
    .line 2343
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    #@b
    int-to-byte p2, p2

    #@c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    #@f
    .line 2344
    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    #@11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2345
    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    #@16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@19
    .line 2346
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    #@1b
    int-to-byte p2, p2

    #@1c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    #@1f
    return-void
.end method
