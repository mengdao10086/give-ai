.class Lcom/google/android/material/search/SearchView$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchView;
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
            "Lcom/google/android/material/search/SearchView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;

.field visibility:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 965
    new-instance v0, Lcom/google/android/material/search/SearchView$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/search/SearchView$SavedState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/search/SearchView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 952
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    #@0
    .line 956
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object p2

    #@7
    iput-object p2, p0, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    #@9
    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result p1

    #@d
    iput p1, p0, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 962
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 986
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 987
    iget-object p2, p0, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8
    .line 988
    iget p2, p0, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    #@a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    return-void
.end method
