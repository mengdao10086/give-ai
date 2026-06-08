.class public Landroidx/fragment/app/Fragment$SavedState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
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
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 537
    new-instance v0, Landroidx/fragment/app/Fragment$SavedState$1;

    #@2
    invoke-direct {v0}, Landroidx/fragment/app/Fragment$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroidx/fragment/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 516
    iput-object p1, p0, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@5
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    #@0
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@9
    if-eqz p2, :cond_10

    #@b
    if-eqz p1, :cond_10

    #@d
    .line 522
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@10
    :cond_10
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
    .registers 3

    #@0
    .line 533
    iget-object p2, p0, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@5
    return-void
.end method
