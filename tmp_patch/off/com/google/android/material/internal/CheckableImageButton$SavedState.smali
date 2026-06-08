.class Lcom/google/android/material/internal/CheckableImageButton$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/CheckableImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/internal/CheckableImageButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 180
    new-instance v0, Lcom/google/android/material/internal/CheckableImageButton$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/internal/CheckableImageButton$SavedState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    #@0
    .line 166
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton$SavedState;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 162
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result p1

    #@4
    const/4 v0, 0x1

    #@5
    if-ne p1, v0, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;->checked:Z

    #@b
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 172
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 173
    iget-boolean p2, p0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;->checked:Z

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    return-void
.end method
