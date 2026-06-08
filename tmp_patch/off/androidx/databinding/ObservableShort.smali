.class public Landroidx/databinding/ObservableShort;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableShort.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableShort;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 102
    new-instance v0, Landroidx/databinding/ObservableShort$1;

    #@2
    invoke-direct {v0}, Landroidx/databinding/ObservableShort$1;-><init>()V

    #@5
    sput-object v0, Landroidx/databinding/ObservableShort;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(S)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    #@3
    .line 53
    iput-short p1, p0, Landroidx/databinding/ObservableShort;->mValue:S

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

.method public get()S
    .registers 2

    #@0
    .line 77
    iget-short v0, p0, Landroidx/databinding/ObservableShort;->mValue:S

    #@2
    return v0
.end method

.method public set(S)V
    .registers 3

    #@0
    .line 86
    iget-short v0, p0, Landroidx/databinding/ObservableShort;->mValue:S

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 87
    iput-short p1, p0, Landroidx/databinding/ObservableShort;->mValue:S

    #@6
    .line 88
    invoke-virtual {p0}, Landroidx/databinding/ObservableShort;->notifyChange()V

    #@9
    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 99
    iget-short p2, p0, Landroidx/databinding/ObservableShort;->mValue:S

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    return-void
.end method
