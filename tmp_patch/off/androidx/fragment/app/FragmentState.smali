.class final Landroidx/fragment/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mMaxLifecycleState:I

.field final mRemoving:Z

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 165
    new-instance v0, Landroidx/fragment/app/FragmentState$1;

    #@2
    invoke-direct {v0}, Landroidx/fragment/app/FragmentState$1;-><init>()V

    #@5
    sput-object v0, Landroidx/fragment/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    #@9
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@f
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x1

    #@14
    const/4 v2, 0x0

    #@15
    if-eqz v0, :cond_19

    #@17
    move v0, v1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v0, v2

    #@1a
    :goto_1a
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    #@1c
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    #@22
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    #@28
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    #@2e
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_36

    #@34
    move v0, v1

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v0, v2

    #@37
    :goto_37
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    #@39
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_41

    #@3f
    move v0, v1

    #@40
    goto :goto_42

    #@41
    :cond_41
    move v0, v2

    #@42
    :goto_42
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    #@44
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_4c

    #@4a
    move v0, v1

    #@4b
    goto :goto_4d

    #@4c
    :cond_4c
    move v0, v2

    #@4d
    :goto_4d
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    #@4f
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@55
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_5c

    #@5b
    goto :goto_5d

    #@5c
    :cond_5c
    move v1, v2

    #@5d
    :goto_5d
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    #@5f
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@62
    move-result-object v0

    #@63
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@65
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result p1

    #@69
    iput p1, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    #@6b
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    #@d
    .line 46
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@11
    .line 47
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@13
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    #@15
    .line 48
    iget v0, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@17
    iput v0, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    #@19
    .line 49
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@1b
    iput v0, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    #@1d
    .line 50
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@1f
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    #@21
    .line 51
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@23
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    #@25
    .line 52
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@27
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    #@29
    .line 53
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@2b
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    #@2d
    .line 54
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2f
    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@31
    .line 55
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@33
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    #@35
    .line 56
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@37
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@3a
    move-result p1

    #@3b
    iput p1, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    #@3d
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

.method instantiate(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;
    .registers 4

    #@0
    .line 81
    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p1

    #@6
    .line 82
    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 83
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@d
    .line 85
    :cond_d
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@f
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@12
    .line 86
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@14
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@16
    .line 87
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    #@18
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@1a
    const/4 p2, 0x1

    #@1b
    .line 88
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRestored:Z

    #@1d
    .line 89
    iget p2, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    #@1f
    iput p2, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@21
    .line 90
    iget p2, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    #@23
    iput p2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@25
    .line 91
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    #@27
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@29
    .line 92
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    #@2b
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@2d
    .line 93
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    #@2f
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@31
    .line 94
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    #@33
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@35
    .line 95
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    #@37
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@39
    .line 96
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    #@3c
    move-result-object p2

    #@3d
    iget v0, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    #@3f
    aget-object p2, p2, v0

    #@41
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@43
    .line 97
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@45
    if-eqz p2, :cond_4a

    #@47
    .line 98
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@49
    goto :goto_51

    #@4a
    .line 103
    :cond_4a
    new-instance p2, Landroid/os/Bundle;

    #@4c
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    #@4f
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@51
    :goto_51
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    const-string v1, "FragmentState{"

    #@9
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 113
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    const-string v1, " ("

    #@13
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 115
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    const-string v1, ")}:"

    #@1d
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 117
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    #@22
    if-eqz v1, :cond_29

    #@24
    const-string v1, " fromLayout"

    #@26
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 120
    :cond_29
    iget v1, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    #@2b
    if-eqz v1, :cond_3b

    #@2d
    const-string v1, " id=0x"

    #@2f
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 122
    iget v1, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    #@34
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 124
    :cond_3b
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    #@3d
    if-eqz v1, :cond_4f

    #@3f
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@42
    move-result v1

    #@43
    if-nez v1, :cond_4f

    #@45
    const-string v1, " tag="

    #@47
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 126
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 128
    :cond_4f
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    #@51
    if-eqz v1, :cond_58

    #@53
    const-string v1, " retainInstance"

    #@55
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 131
    :cond_58
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    #@5a
    if-eqz v1, :cond_61

    #@5c
    const-string v1, " removing"

    #@5e
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 134
    :cond_61
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    #@63
    if-eqz v1, :cond_6a

    #@65
    const-string v1, " detached"

    #@67
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 137
    :cond_6a
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    #@6c
    if-eqz v1, :cond_73

    #@6e
    const-string v1, " hidden"

    #@70
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 140
    :cond_73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 150
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 151
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 152
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    #@c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 153
    iget p2, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    #@11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 154
    iget p2, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    #@16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 155
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 156
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    #@20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 157
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    #@25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 158
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    #@2a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 159
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@2f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@32
    .line 160
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    #@34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 161
    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3c
    .line 162
    iget p2, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    #@3e
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    return-void
.end method
