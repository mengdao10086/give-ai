.class Landroidx/customview/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/customview/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/customview/view/AbsSavedState;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 102
    invoke-virtual {p0, p1, v0}, Landroidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/customview/view/AbsSavedState;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/customview/view/AbsSavedState;
    .registers 3

    #@0
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@3
    move-result-object p1

    #@4
    if-nez p1, :cond_9

    #@6
    .line 97
    sget-object p1, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    #@8
    return-object p1

    #@9
    .line 95
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    #@b
    const-string p2, "superState must be null"

    #@d
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 90
    invoke-virtual {p0, p1}, Landroidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Landroidx/customview/view/AbsSavedState;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    #@0
    .line 90
    invoke-virtual {p0, p1, p2}, Landroidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/customview/view/AbsSavedState;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public newArray(I)[Landroidx/customview/view/AbsSavedState;
    .registers 2

    #@0
    .line 107
    new-array p1, p1, [Landroidx/customview/view/AbsSavedState;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    .line 90
    invoke-virtual {p0, p1}, Landroidx/customview/view/AbsSavedState$2;->newArray(I)[Landroidx/customview/view/AbsSavedState;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
