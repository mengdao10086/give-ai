.class public Landroidx/appcompat/widget/Toolbar$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/widget/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedMenuItemId:I

.field isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 2535
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState$1;

    #@2
    invoke-direct {v0}, Landroidx/appcompat/widget/Toolbar$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroidx/appcompat/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2515
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    #@0
    .line 2519
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 2520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result p2

    #@7
    iput p2, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@9
    .line 2521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_11

    #@f
    const/4 p1, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 2525
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 2530
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 2531
    iget p2, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 2532
    iget-boolean p2, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    return-void
.end method
