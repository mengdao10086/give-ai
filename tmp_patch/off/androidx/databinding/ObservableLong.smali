.class public Landroidx/databinding/ObservableLong;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableLong.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableLong;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 103
    new-instance v0, Landroidx/databinding/ObservableLong$1;

    #@2
    invoke-direct {v0}, Landroidx/databinding/ObservableLong$1;-><init>()V

    #@5
    sput-object v0, Landroidx/databinding/ObservableLong;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(J)V
    .registers 3

    #@0
    .line 53
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    #@3
    .line 54
    iput-wide p1, p0, Landroidx/databinding/ObservableLong;->mValue:J

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

.method public get()J
    .registers 3

    #@0
    .line 78
    iget-wide v0, p0, Landroidx/databinding/ObservableLong;->mValue:J

    #@2
    return-wide v0
.end method

.method public set(J)V
    .registers 5

    #@0
    .line 87
    iget-wide v0, p0, Landroidx/databinding/ObservableLong;->mValue:J

    #@2
    cmp-long v0, p1, v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 88
    iput-wide p1, p0, Landroidx/databinding/ObservableLong;->mValue:J

    #@8
    .line 89
    invoke-virtual {p0}, Landroidx/databinding/ObservableLong;->notifyChange()V

    #@b
    :cond_b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    #@0
    .line 100
    iget-wide v0, p0, Landroidx/databinding/ObservableLong;->mValue:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    return-void
.end method
