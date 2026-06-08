.class public Landroidx/databinding/ObservableParcelable;
.super Landroidx/databinding/ObservableField;
.source "ObservableParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroidx/databinding/ObservableField<",
        "TT;>;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableParcelable;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 68
    new-instance v0, Landroidx/databinding/ObservableParcelable$1;

    #@2
    invoke-direct {v0}, Landroidx/databinding/ObservableParcelable$1;-><init>()V

    #@5
    sput-object v0, Landroidx/databinding/ObservableParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 55
    invoke-direct {p0}, Landroidx/databinding/ObservableField;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 48
    invoke-direct {p0, p1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    .line 65
    invoke-virtual {p0}, Landroidx/databinding/ObservableParcelable;->get()Ljava/lang/Object;

    #@3
    move-result-object p2

    #@4
    check-cast p2, Landroid/os/Parcelable;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    return-void
.end method
