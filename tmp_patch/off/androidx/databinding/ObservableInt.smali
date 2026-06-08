.class public Landroidx/databinding/ObservableInt;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableInt.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableInt;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 103
    new-instance v0, Landroidx/databinding/ObservableInt$1;

    #@2
    invoke-direct {v0}, Landroidx/databinding/ObservableInt$1;-><init>()V

    #@5
    sput-object v0, Landroidx/databinding/ObservableInt;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 60
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 53
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    #@3
    .line 54
    iput p1, p0, Landroidx/databinding/ObservableInt;->mValue:I

    #@5
    return-void
.end method

.method public varargs constructor <init>([Landroidx/databinding/Observable;)V
    .registers 2

    #@0
    .line 71
    invoke-direct {p0, p1}, Landroidx/databinding/BaseObservableField;-><init>([Landroidx/databinding/Observable;)V

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

.method public get()I
    .registers 2

    #@0
    .line 78
    iget v0, p0, Landroidx/databinding/ObservableInt;->mValue:I

    #@2
    return v0
.end method

.method public set(I)V
    .registers 3

    #@0
    .line 87
    iget v0, p0, Landroidx/databinding/ObservableInt;->mValue:I

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 88
    iput p1, p0, Landroidx/databinding/ObservableInt;->mValue:I

    #@6
    .line 89
    invoke-virtual {p0}, Landroidx/databinding/ObservableInt;->notifyChange()V

    #@9
    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 100
    iget p2, p0, Landroidx/databinding/ObservableInt;->mValue:I

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    return-void
.end method
