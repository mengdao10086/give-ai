.class public abstract Landroidx/customview/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/customview/view/AbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Landroidx/customview/view/AbsSavedState;


# instance fields
.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 32
    new-instance v0, Landroidx/customview/view/AbsSavedState$1;

    #@2
    invoke-direct {v0}, Landroidx/customview/view/AbsSavedState$1;-><init>()V

    #@5
    sput-object v0, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    #@7
    .line 90
    new-instance v0, Landroidx/customview/view/AbsSavedState$2;

    #@9
    invoke-direct {v0}, Landroidx/customview/view/AbsSavedState$2;-><init>()V

    #@c
    sput-object v0, Landroidx/customview/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 40
    iput-object v0, p0, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@6
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 61
    invoke-direct {p0, p1, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@4
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    #@0
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@6
    move-result-object p1

    #@7
    if-eqz p1, :cond_a

    #@9
    goto :goto_c

    #@a
    .line 72
    :cond_a
    sget-object p1, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    #@c
    :goto_c
    iput-object p1, p0, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@e
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p1, :cond_e

    #@5
    .line 52
    sget-object v0, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    #@7
    if-eq p1, v0, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    iput-object p1, p0, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@d
    return-void

    #@e
    .line 50
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string v0, "superState must not be null"

    #@12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw p1
.end method

.method synthetic constructor <init>(Landroidx/customview/view/AbsSavedState$1;)V
    .registers 2

    #@0
    .line 31
    invoke-direct {p0}, Landroidx/customview/view/AbsSavedState;-><init>()V

    #@3
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

.method public final getSuperState()Landroid/os/Parcelable;
    .registers 2

    #@0
    .line 77
    iget-object v0, p0, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    .line 87
    iget-object v0, p0, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    return-void
.end method
