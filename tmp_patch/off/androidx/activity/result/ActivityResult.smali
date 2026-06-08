.class public final Landroidx/activity/result/ActivityResult;
.super Ljava/lang/Object;
.source "ActivityResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/activity/result/ActivityResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:Landroid/content/Intent;

.field private final mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 109
    new-instance v0, Landroidx/activity/result/ActivityResult$1;

    #@2
    invoke-direct {v0}, Landroidx/activity/result/ActivityResult$1;-><init>()V

    #@5
    sput-object v0, Landroidx/activity/result/ActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .registers 3

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput p1, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    #@5
    .line 47
    iput-object p2, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    #@9
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_11

    #@f
    const/4 p1, 0x0

    #@10
    goto :goto_19

    #@11
    :cond_11
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroid/content/Intent;

    #@19
    :goto_19
    iput-object p1, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    #@1b
    return-void
.end method

.method public static resultCodeToString(I)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p0, v0, :cond_d

    #@3
    if-eqz p0, :cond_a

    #@5
    .line 90
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0

    #@a
    :cond_a
    const-string p0, "RESULT_CANCELED"

    #@c
    return-object p0

    #@d
    :cond_d
    const-string p0, "RESULT_OK"

    #@f
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getData()Landroid/content/Intent;
    .registers 2

    #@0
    .line 67
    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    #@0
    .line 59
    iget v0, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "ActivityResult{resultCode="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    #@9
    .line 73
    invoke-static {v1}, Landroidx/activity/result/ActivityResult;->resultCodeToString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ", data="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const/16 v1, 0x7d

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    .line 96
    iget v0, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 97
    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    #@7
    if-nez v0, :cond_b

    #@9
    const/4 v0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x1

    #@c
    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 98
    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 99
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    :cond_16
    return-void
.end method
