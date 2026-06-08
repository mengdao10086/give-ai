.class public Landroidx/databinding/ObservableBoolean;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableBoolean;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 101
    new-instance v0, Landroidx/databinding/ObservableBoolean$1;

    #@2
    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean$1;-><init>()V

    #@5
    sput-object v0, Landroidx/databinding/ObservableBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 59
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    #@3
    .line 53
    iput-boolean p1, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    #@5
    return-void
.end method

.method public varargs constructor <init>([Landroidx/databinding/Observable;)V
    .registers 2

    #@0
    .line 70
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

.method public get()Z
    .registers 2

    #@0
    .line 77
    iget-boolean v0, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    #@2
    return v0
.end method

.method public set(Z)V
    .registers 3

    #@0
    .line 85
    iget-boolean v0, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 86
    iput-boolean p1, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    #@6
    .line 87
    invoke-virtual {p0}, Landroidx/databinding/ObservableBoolean;->notifyChange()V

    #@9
    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 98
    iget-boolean p2, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    return-void
.end method
