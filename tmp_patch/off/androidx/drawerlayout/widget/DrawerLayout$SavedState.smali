.class public Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
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
            "Landroidx/drawerlayout/widget/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 2199
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState$1;

    #@2
    invoke-direct {v0}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    #@0
    .line 2177
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    const/4 p2, 0x0

    #@4
    .line 2170
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@6
    .line 2178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result p2

    #@a
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@c
    .line 2179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result p2

    #@10
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@12
    .line 2180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result p2

    #@16
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@18
    .line 2181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result p2

    #@1c
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    #@1e
    .line 2182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result p1

    #@22
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    #@24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 2186
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 2170
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@6
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 2191
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 2192
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 2193
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 2194
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 2195
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    #@14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2196
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    #@19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    return-void
.end method
