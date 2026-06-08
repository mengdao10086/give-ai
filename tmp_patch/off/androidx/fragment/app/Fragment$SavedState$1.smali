.class Landroidx/fragment/app/Fragment$SavedState$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/fragment/app/Fragment$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/Fragment$SavedState;
    .registers 4

    #@0
    .line 541
    new-instance v0, Landroidx/fragment/app/Fragment$SavedState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@6
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment$SavedState;
    .registers 4

    #@0
    .line 546
    new-instance v0, Landroidx/fragment/app/Fragment$SavedState;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 538
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/Fragment$SavedState;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    #@0
    .line 538
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment$SavedState;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Landroidx/fragment/app/Fragment$SavedState;
    .registers 2

    #@0
    .line 551
    new-array p1, p1, [Landroidx/fragment/app/Fragment$SavedState;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 538
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$SavedState$1;->newArray(I)[Landroidx/fragment/app/Fragment$SavedState;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
