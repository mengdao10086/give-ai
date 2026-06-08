.class final Landroidx/fragment/app/BackStackRecordState;
.super Ljava/lang/Object;
.source "BackStackRecordState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/BackStackRecordState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mCurrentMaxLifecycleStates:[I

.field final mFragmentWhos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOldMaxLifecycleStates:[I

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 211
    new-instance v0, Landroidx/fragment/app/BackStackRecordState$1;

    #@2
    invoke-direct {v0}, Landroidx/fragment/app/BackStackRecordState$1;-><init>()V

    #@5
    sput-object v0, Landroidx/fragment/app/BackStackRecordState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@9
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@f
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    #@15
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    #@1b
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mTransition:I

    #@21
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mName:Ljava/lang/String;

    #@27
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mIndex:I

    #@2d
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    #@33
    .line 95
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Ljava/lang/CharSequence;

    #@3b
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@3d
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v0

    #@41
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    #@43
    .line 97
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Ljava/lang/CharSequence;

    #@4b
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@4d
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@53
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@59
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result p1

    #@5d
    if-eqz p1, :cond_61

    #@5f
    const/4 p1, 0x1

    #@60
    goto :goto_62

    #@61
    :cond_61
    const/4 p1, 0x0

    #@62
    :goto_62
    iput-boolean p1, p0, Landroidx/fragment/app/BackStackRecordState;->mReorderingAllowed:Z

    #@64
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/BackStackRecord;)V
    .registers 9

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    mul-int/lit8 v1, v0, 0x6

    #@b
    .line 52
    new-array v1, v1, [I

    #@d
    iput-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@f
    .line 54
    iget-boolean v1, p1, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    #@11
    if-eqz v1, :cond_ae

    #@13
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    iput-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@1a
    .line 59
    new-array v1, v0, [I

    #@1c
    iput-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    #@1e
    .line 60
    new-array v1, v0, [I

    #@20
    iput-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    #@22
    const/4 v1, 0x0

    #@23
    move v2, v1

    #@24
    :goto_24
    if-ge v1, v0, :cond_85

    #@26
    .line 63
    iget-object v3, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    #@2e
    .line 64
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@30
    add-int/lit8 v5, v2, 0x1

    #@32
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@34
    aput v6, v4, v2

    #@36
    .line 65
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@38
    iget-object v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@3a
    if-eqz v4, :cond_41

    #@3c
    iget-object v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@3e
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@40
    goto :goto_42

    #@41
    :cond_41
    const/4 v4, 0x0

    #@42
    :goto_42
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    .line 66
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@47
    add-int/lit8 v4, v5, 0x1

    #@49
    iget-boolean v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@4b
    aput v6, v2, v5

    #@4d
    .line 67
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@4f
    add-int/lit8 v5, v4, 0x1

    #@51
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@53
    aput v6, v2, v4

    #@55
    .line 68
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@57
    add-int/lit8 v4, v5, 0x1

    #@59
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@5b
    aput v6, v2, v5

    #@5d
    .line 69
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@5f
    add-int/lit8 v5, v4, 0x1

    #@61
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@63
    aput v6, v2, v4

    #@65
    .line 70
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@67
    add-int/lit8 v4, v5, 0x1

    #@69
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@6b
    aput v6, v2, v5

    #@6d
    .line 71
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    #@6f
    iget-object v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@71
    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@74
    move-result v5

    #@75
    aput v5, v2, v1

    #@77
    .line 72
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    #@79
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@7b
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@7e
    move-result v3

    #@7f
    aput v3, v2, v1

    #@81
    add-int/lit8 v1, v1, 0x1

    #@83
    move v2, v4

    #@84
    goto :goto_24

    #@85
    .line 74
    :cond_85
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    #@87
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mTransition:I

    #@89
    .line 75
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    #@8b
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mName:Ljava/lang/String;

    #@8d
    .line 76
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@8f
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mIndex:I

    #@91
    .line 77
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@93
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    #@95
    .line 78
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@97
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@99
    .line 79
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@9b
    iput v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    #@9d
    .line 80
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@9f
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@a1
    .line 81
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@a3
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@a5
    .line 82
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@a7
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@a9
    .line 83
    iget-boolean p1, p1, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    #@ab
    iput-boolean p1, p0, Landroidx/fragment/app/BackStackRecordState;->mReorderingAllowed:Z

    #@ad
    return-void

    #@ae
    .line 55
    :cond_ae
    new-instance p1, Ljava/lang/IllegalStateException;

    #@b0
    const-string v0, "Not on back stack"

    #@b2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b5
    throw p1
.end method

.method private fillInBackStackRecord(Landroidx/fragment/app/BackStackRecord;)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    move v2, v1

    #@3
    .line 155
    :goto_3
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@5
    array-length v3, v3

    #@6
    const/4 v4, 0x1

    #@7
    if-ge v1, v3, :cond_a5

    #@9
    .line 156
    new-instance v3, Landroidx/fragment/app/FragmentTransaction$Op;

    #@b
    invoke-direct {v3}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>()V

    #@e
    .line 157
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@10
    add-int/lit8 v6, v1, 0x1

    #@12
    aget v1, v5, v1

    #@14
    iput v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@16
    const/4 v1, 0x2

    #@17
    .line 158
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_49

    #@1d
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    const-string v5, "Instantiate "

    #@21
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string v5, " op #"

    #@2a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string v5, " base fragment #"

    #@34
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@3a
    aget v5, v5, v6

    #@3c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    const-string v5, "FragmentManager"

    #@46
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 162
    :cond_49
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    #@4c
    move-result-object v1

    #@4d
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    #@4f
    aget v5, v5, v2

    #@51
    aget-object v1, v1, v5

    #@53
    iput-object v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@55
    .line 163
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    #@58
    move-result-object v1

    #@59
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    #@5b
    aget v5, v5, v2

    #@5d
    aget-object v1, v1, v5

    #@5f
    iput-object v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@61
    .line 164
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@63
    add-int/lit8 v5, v6, 0x1

    #@65
    aget v1, v1, v6

    #@67
    if-eqz v1, :cond_6a

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    move v4, v0

    #@6b
    :goto_6b
    iput-boolean v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@6d
    .line 165
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@6f
    add-int/lit8 v4, v5, 0x1

    #@71
    aget v1, v1, v5

    #@73
    iput v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@75
    .line 166
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@77
    add-int/lit8 v5, v4, 0x1

    #@79
    aget v1, v1, v4

    #@7b
    iput v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@7d
    .line 167
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@7f
    add-int/lit8 v4, v5, 0x1

    #@81
    aget v1, v1, v5

    #@83
    iput v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@85
    .line 168
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@87
    add-int/lit8 v5, v4, 0x1

    #@89
    aget v1, v1, v4

    #@8b
    iput v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@8d
    .line 169
    iget v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@8f
    iput v1, p1, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    #@91
    .line 170
    iget v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@93
    iput v1, p1, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    #@95
    .line 171
    iget v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@97
    iput v1, p1, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    #@99
    .line 172
    iget v1, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@9b
    iput v1, p1, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    #@9d
    .line 173
    invoke-virtual {p1, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    #@a0
    add-int/lit8 v2, v2, 0x1

    #@a2
    move v1, v5

    #@a3
    goto/16 :goto_3

    #@a5
    .line 176
    :cond_a5
    iget v0, p0, Landroidx/fragment/app/BackStackRecordState;->mTransition:I

    #@a7
    iput v0, p1, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    #@a9
    .line 177
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mName:Ljava/lang/String;

    #@ab
    iput-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    #@ad
    .line 178
    iput-boolean v4, p1, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    #@af
    .line 179
    iget v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    #@b1
    iput v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@b3
    .line 180
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@b5
    iput-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@b7
    .line 181
    iget v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    #@b9
    iput v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@bb
    .line 182
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@bd
    iput-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@bf
    .line 183
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@c1
    iput-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@c3
    .line 184
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@c5
    iput-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@c7
    .line 185
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecordState;->mReorderingAllowed:Z

    #@c9
    iput-boolean v0, p1, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    #@cb
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

.method public instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;
    .registers 6

    #@0
    .line 111
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    #@2
    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@5
    .line 112
    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecordState;->fillInBackStackRecord(Landroidx/fragment/app/BackStackRecord;)V

    #@8
    .line 113
    iget v1, p0, Landroidx/fragment/app/BackStackRecordState;->mIndex:I

    #@a
    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@c
    const/4 v1, 0x0

    #@d
    .line 114
    :goto_d
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v2

    #@13
    if-ge v1, v2, :cond_30

    #@15
    .line 115
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/lang/String;

    #@1d
    if-eqz v2, :cond_2d

    #@1f
    .line 117
    iget-object v3, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    #@27
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@2d
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_d

    #@30
    :cond_30
    const/4 p1, 0x1

    #@31
    .line 120
    invoke-virtual {v0, p1}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@34
    return-object v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentManager;Ljava/util/Map;)Landroidx/fragment/app/BackStackRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroidx/fragment/app/BackStackRecord;"
        }
    .end annotation

    #@0
    .line 133
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    #@2
    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@5
    .line 134
    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecordState;->fillInBackStackRecord(Landroidx/fragment/app/BackStackRecord;)V

    #@8
    const/4 p1, 0x0

    #@9
    .line 136
    :goto_9
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    if-ge p1, v1, :cond_58

    #@11
    .line 137
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    if-eqz v1, :cond_55

    #@1b
    .line 139
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroidx/fragment/app/Fragment;

    #@21
    if-eqz v2, :cond_2e

    #@23
    .line 141
    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    #@2b
    iput-object v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@2d
    goto :goto_55

    #@2e
    .line 143
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    #@30
    new-instance p2, Ljava/lang/StringBuilder;

    #@32
    const-string v0, "Restoring FragmentTransaction "

    #@34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecordState;->mName:Ljava/lang/String;

    #@39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p2

    #@3d
    const-string v0, " failed due to missing saved state for Fragment ("

    #@3f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p2

    #@43
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object p2

    #@47
    const-string v0, ")"

    #@49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object p2

    #@4d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object p2

    #@51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@54
    throw p1

    #@55
    :cond_55
    :goto_55
    add-int/lit8 p1, p1, 0x1

    #@57
    goto :goto_9

    #@58
    :cond_58
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    .line 195
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@5
    .line 196
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    #@7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@a
    .line 197
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    #@c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@f
    .line 198
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    #@11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@14
    .line 199
    iget p2, p0, Landroidx/fragment/app/BackStackRecordState;->mTransition:I

    #@16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 200
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mName:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 201
    iget p2, p0, Landroidx/fragment/app/BackStackRecordState;->mIndex:I

    #@20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 202
    iget p2, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    #@25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 203
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@2a
    const/4 v0, 0x0

    #@2b
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2e
    .line 204
    iget p2, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    #@30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 205
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@35
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@38
    .line 206
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@3d
    .line 207
    iget-object p2, p0, Landroidx/fragment/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@42
    .line 208
    iget-boolean p2, p0, Landroidx/fragment/app/BackStackRecordState;->mReorderingAllowed:Z

    #@44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    return-void
.end method
