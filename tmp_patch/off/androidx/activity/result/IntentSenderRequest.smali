.class public final Landroidx/activity/result/IntentSenderRequest;
.super Ljava/lang/Object;
.source "IntentSenderRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/IntentSenderRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFillInIntent:Landroid/content/Intent;

.field private final mFlagsMask:I

.field private final mFlagsValues:I

.field private final mIntentSender:Landroid/content/IntentSender;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 132
    new-instance v0, Landroidx/activity/result/IntentSenderRequest$1;

    #@2
    invoke-direct {v0}, Landroidx/activity/result/IntentSenderRequest$1;-><init>()V

    #@5
    sput-object v0, Landroidx/activity/result/IntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V
    .registers 5

    #@0
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    #@5
    .line 79
    iput-object p2, p0, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    #@7
    .line 80
    iput p3, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    #@9
    .line 81
    iput p4, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    #@b
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    const-class v0, Landroid/content/IntentSender;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/content/IntentSender;

    #@f
    iput-object v0, p0, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    #@11
    .line 126
    const-class v0, Landroid/content/Intent;

    #@13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/content/Intent;

    #@1d
    iput-object v0, p0, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    #@1f
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    #@25
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result p1

    #@29
    iput p1, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    #@2b
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

.method public getFillInIntent()Landroid/content/Intent;
    .registers 2

    #@0
    .line 102
    iget-object v0, p0, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getFlagsMask()I
    .registers 2

    #@0
    .line 111
    iget v0, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    #@2
    return v0
.end method

.method public getFlagsValues()I
    .registers 2

    #@0
    .line 120
    iget v0, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    #@2
    return v0
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .registers 2

    #@0
    .line 91
    iget-object v0, p0, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    .line 151
    iget-object v0, p0, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 152
    iget-object v0, p0, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 153
    iget p2, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    #@c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 154
    iget p2, p0, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    #@11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    return-void
.end method
