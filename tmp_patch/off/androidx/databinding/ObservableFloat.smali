.class public Landroidx/databinding/ObservableFloat;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableFloat.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableFloat;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 102
    new-instance v0, Landroidx/databinding/ObservableFloat$1;

    #@2
    invoke-direct {v0}, Landroidx/databinding/ObservableFloat$1;-><init>()V

    #@5
    sput-object v0, Landroidx/databinding/ObservableFloat;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(F)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    #@3
    .line 53
    iput p1, p0, Landroidx/databinding/ObservableFloat;->mValue:F

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

.method public get()F
    .registers 2

    #@0
    .line 77
    iget v0, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    #@2
    return v0
.end method

.method public set(F)V
    .registers 3

    #@0
    .line 86
    iget v0, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 87
    iput p1, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    #@8
    .line 88
    invoke-virtual {p0}, Landroidx/databinding/ObservableFloat;->notifyChange()V

    #@b
    :cond_b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 99
    iget p2, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    return-void
.end method
