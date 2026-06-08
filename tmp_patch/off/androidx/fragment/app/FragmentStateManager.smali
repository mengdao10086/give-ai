.class Landroidx/fragment/app/FragmentStateManager;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"

.field private static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field private static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field private static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field private static final VIEW_REGISTRY_STATE_TAG:Ljava/lang/String; = "android:view_registry_state"

.field private static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field private final mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mFragmentManagerState:I

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private mMovingToState:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V
    .registers 5

    #@0
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    #@6
    const/4 v0, -0x1

    #@7
    .line 52
    iput v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    #@9
    .line 63
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@b
    .line 64
    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@d
    .line 65
    iput-object p3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@f
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V
    .registers 7

    #@0
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    #@6
    const/4 v1, -0x1

    #@7
    .line 52
    iput v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    #@9
    .line 104
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@b
    .line 105
    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@d
    .line 106
    iput-object p3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@f
    const/4 p1, 0x0

    #@10
    .line 107
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@12
    .line 108
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@14
    .line 109
    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@16
    .line 110
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@18
    .line 111
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@1a
    .line 112
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@1c
    if-eqz p2, :cond_23

    #@1e
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@20
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@22
    goto :goto_24

    #@23
    :cond_23
    move-object p2, p1

    #@24
    :goto_24
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@26
    .line 113
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@28
    .line 114
    iget-object p1, p4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@2a
    if-eqz p1, :cond_31

    #@2c
    .line 115
    iget-object p1, p4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@2e
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@30
    goto :goto_38

    #@31
    .line 120
    :cond_31
    new-instance p1, Landroid/os/Bundle;

    #@33
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    #@36
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@38
    :goto_38
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/FragmentState;)V
    .registers 7

    #@0
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    #@6
    const/4 v0, -0x1

    #@7
    .line 52
    iput v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    #@9
    .line 83
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@b
    .line 84
    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@d
    .line 85
    invoke-virtual {p5, p4, p3}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;

    #@10
    move-result-object p1

    #@11
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@13
    const/4 p2, 0x2

    #@14
    .line 86
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@17
    move-result p2

    #@18
    if-eqz p2, :cond_2e

    #@1a
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    #@1c
    const-string p3, "Instantiated fragment "

    #@1e
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    const-string p2, "FragmentManager"

    #@2b
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    :cond_2e
    return-void
.end method

.method private isFragmentViewChild(Landroid/view/View;)Z
    .registers 4

    #@0
    .line 614
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@4
    const/4 v1, 0x1

    #@5
    if-ne p1, v0, :cond_8

    #@7
    return v1

    #@8
    .line 617
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b
    move-result-object p1

    #@c
    :goto_c
    if-eqz p1, :cond_1a

    #@e
    .line 619
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@12
    if-ne p1, v0, :cond_15

    #@14
    return v1

    #@15
    .line 622
    :cond_15
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object p1

    #@19
    goto :goto_c

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    return p1
.end method

.method private saveBasicState()Landroid/os/Bundle;
    .registers 5

    #@0
    .line 679
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 681
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    #@a
    .line 682
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@c
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    #@12
    .line 683
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_19

    #@18
    const/4 v0, 0x0

    #@19
    .line 687
    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1b
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1d
    if-eqz v1, :cond_22

    #@1f
    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    #@22
    .line 690
    :cond_22
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@24
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@26
    if-eqz v1, :cond_38

    #@28
    if-nez v0, :cond_2f

    #@2a
    .line 692
    new-instance v0, Landroid/os/Bundle;

    #@2c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@2f
    .line 694
    :cond_2f
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@31
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@33
    const-string v2, "android:view_state"

    #@35
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@38
    .line 697
    :cond_38
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3a
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@3c
    if-eqz v1, :cond_4e

    #@3e
    if-nez v0, :cond_45

    #@40
    .line 699
    new-instance v0, Landroid/os/Bundle;

    #@42
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@45
    .line 701
    :cond_45
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@47
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@49
    const-string v2, "android:view_registry_state"

    #@4b
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@4e
    .line 703
    :cond_4e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@50
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@52
    if-nez v1, :cond_64

    #@54
    if-nez v0, :cond_5b

    #@56
    .line 705
    new-instance v0, Landroid/os/Bundle;

    #@58
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5b
    .line 708
    :cond_5b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5d
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@5f
    const-string v2, "android:user_visible_hint"

    #@61
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@64
    :cond_64
    return-object v0
.end method


# virtual methods
.method activityCreated()V
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    .line 576
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "moveto ACTIVITY_CREATED: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 579
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@21
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    #@24
    .line 580
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@26
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@28
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    #@2e
    return-void
.end method

.method addViewToContainer()V
    .registers 4

    #@0
    .line 839
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->findFragmentIndexInContainer(Landroidx/fragment/app/Fragment;)I

    #@7
    move-result v0

    #@8
    .line 840
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@a
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@c
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@13
    return-void
.end method

.method attach()V
    .registers 7

    #@0
    const/4 v0, 0x3

    #@1
    .line 431
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "moveto ATTACHED: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 437
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@21
    const-string v1, " that does not belong to this FragmentManager!"

    #@23
    const-string v2, " declared target fragment "

    #@25
    const-string v3, "Fragment "

    #@27
    const/4 v4, 0x0

    #@28
    if-eqz v0, :cond_6b

    #@2a
    .line 438
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2c
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2e
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@30
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_46

    #@38
    .line 445
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3a
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@3c
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@3e
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@40
    .line 446
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@42
    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@44
    move-object v4, v0

    #@45
    goto :goto_a3

    #@46
    .line 441
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4d
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@59
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v0

    #@6b
    .line 447
    :cond_6b
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@6d
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@6f
    if-eqz v0, :cond_a3

    #@71
    .line 448
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@73
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@75
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@77
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    #@7a
    move-result-object v4

    #@7b
    if-eqz v4, :cond_7e

    #@7d
    goto :goto_a3

    #@7e
    .line 451
    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@80
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@85
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@91
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v0

    #@a3
    :cond_a3
    :goto_a3
    if-eqz v4, :cond_a8

    #@a5
    .line 459
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@a8
    .line 461
    :cond_a8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@aa
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@ac
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@af
    move-result-object v1

    #@b0
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@b2
    .line 462
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@b4
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@b6
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    #@b9
    move-result-object v1

    #@ba
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@bc
    .line 463
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@be
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@c0
    const/4 v2, 0x0

    #@c1
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Z)V

    #@c4
    .line 464
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@c6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performAttach()V

    #@c9
    .line 465
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@cb
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@cd
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Z)V

    #@d0
    return-void
.end method

.method computeExpectedState()I
    .registers 10

    #@0
    .line 147
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@4
    if-nez v0, :cond_b

    #@6
    .line 148
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@8
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    #@a
    return v0

    #@b
    .line 151
    :cond_b
    iget v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    #@d
    .line 154
    sget-object v1, Landroidx/fragment/app/FragmentStateManager$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@f
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@11
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@13
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@16
    move-result v2

    #@17
    aget v1, v1, v2

    #@19
    const/4 v2, -0x1

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x3

    #@1c
    const/4 v5, 0x4

    #@1d
    const/4 v6, 0x2

    #@1e
    const/4 v7, 0x1

    #@1f
    if-eq v1, v7, :cond_3b

    #@21
    if-eq v1, v6, :cond_37

    #@23
    if-eq v1, v4, :cond_32

    #@25
    if-eq v1, v5, :cond_2c

    #@27
    .line 168
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v0

    #@2b
    goto :goto_3b

    #@2c
    :cond_2c
    const/4 v1, 0x0

    #@2d
    .line 165
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@30
    move-result v0

    #@31
    goto :goto_3b

    #@32
    .line 162
    :cond_32
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    #@35
    move-result v0

    #@36
    goto :goto_3b

    #@37
    .line 159
    :cond_37
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@3a
    move-result v0

    #@3b
    .line 172
    :cond_3b
    :goto_3b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3d
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@3f
    if-eqz v1, :cond_73

    #@41
    .line 173
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@43
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@45
    if-eqz v1, :cond_62

    #@47
    .line 176
    iget v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    #@49
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    #@4c
    move-result v0

    #@4d
    .line 179
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4f
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@51
    if-eqz v1, :cond_73

    #@53
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@55
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@57
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5a
    move-result-object v1

    #@5b
    if-nez v1, :cond_73

    #@5d
    .line 180
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    #@60
    move-result v0

    #@61
    goto :goto_73

    #@62
    .line 183
    :cond_62
    iget v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    #@64
    if-ge v1, v5, :cond_6f

    #@66
    .line 188
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@68
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    #@6a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@6d
    move-result v0

    #@6e
    goto :goto_73

    #@6f
    .line 193
    :cond_6f
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    #@72
    move-result v0

    #@73
    .line 198
    :cond_73
    :goto_73
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@75
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@77
    if-nez v1, :cond_7d

    #@79
    .line 199
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    #@7c
    move-result v0

    #@7d
    .line 202
    :cond_7d
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@7f
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@81
    if-eqz v1, :cond_96

    #@83
    .line 203
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@85
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@87
    iget-object v8, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@89
    .line 204
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@8c
    move-result-object v8

    #@8d
    .line 203
    invoke-static {v1, v8}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    #@90
    move-result-object v1

    #@91
    .line 205
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->getAwaitingCompletionLifecycleImpact(Landroidx/fragment/app/FragmentStateManager;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@94
    move-result-object v1

    #@95
    goto :goto_97

    #@96
    :cond_96
    const/4 v1, 0x0

    #@97
    .line 207
    :goto_97
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@99
    if-ne v1, v8, :cond_a1

    #@9b
    const/4 v1, 0x6

    #@9c
    .line 209
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@9f
    move-result v0

    #@a0
    goto :goto_c1

    #@a1
    .line 210
    :cond_a1
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@a3
    if-ne v1, v8, :cond_aa

    #@a5
    .line 212
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@a8
    move-result v0

    #@a9
    goto :goto_c1

    #@aa
    .line 213
    :cond_aa
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@ac
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@ae
    if-eqz v1, :cond_c1

    #@b0
    .line 214
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@b2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_bd

    #@b8
    .line 216
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    #@bb
    move-result v0

    #@bc
    goto :goto_c1

    #@bd
    .line 219
    :cond_bd
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@c0
    move-result v0

    #@c1
    .line 224
    :cond_c1
    :goto_c1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@c3
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    #@c5
    if-eqz v1, :cond_d1

    #@c7
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@c9
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    #@cb
    if-ge v1, v3, :cond_d1

    #@cd
    .line 225
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    #@d0
    move-result v0

    #@d1
    .line 227
    :cond_d1
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@d4
    move-result v1

    #@d5
    if-eqz v1, :cond_f7

    #@d7
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    #@d9
    const-string v2, "computeExpectedState() of "

    #@db
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@de
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v1

    #@e2
    const-string v2, " for "

    #@e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@ea
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v1

    #@ee
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    const-string v2, "FragmentManager"

    #@f4
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    :cond_f7
    return v0
.end method

.method create()V
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    .line 469
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "moveto CREATED: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 472
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    #@21
    if-nez v0, :cond_3e

    #@23
    .line 473
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@25
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@27
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    #@2d
    .line 475
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2f
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    #@34
    .line 476
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@36
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@38
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@3a
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    #@3d
    goto :goto_4a

    #@3e
    .line 479
    :cond_3e
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@40
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@42
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    #@45
    .line 480
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@47
    const/4 v1, 0x1

    #@48
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    #@4a
    :goto_4a
    return-void
.end method

.method createView()V
    .registers 8

    #@0
    .line 485
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x3

    #@8
    .line 490
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@b
    move-result v0

    #@c
    const-string v1, "FragmentManager"

    #@e
    if-eqz v0, :cond_24

    #@10
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    const-string v2, "moveto CREATE_VIEW: "

    #@14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 493
    :cond_24
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@26
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@28
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@2b
    move-result-object v0

    #@2c
    .line 496
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2e
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@30
    if-eqz v2, :cond_38

    #@32
    .line 497
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@34
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@36
    goto/16 :goto_cc

    #@38
    .line 498
    :cond_38
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3a
    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@3c
    if-eqz v2, :cond_cb

    #@3e
    .line 499
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@40
    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@42
    const/4 v3, -0x1

    #@43
    if-eq v2, v3, :cond_ae

    #@45
    .line 503
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@47
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@49
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/FragmentContainer;

    #@4c
    move-result-object v2

    #@4d
    .line 504
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4f
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@51
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    #@54
    move-result-object v2

    #@55
    check-cast v2, Landroid/view/ViewGroup;

    #@57
    if-nez v2, :cond_a4

    #@59
    .line 506
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5b
    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mRestored:Z

    #@5d
    if-eqz v3, :cond_60

    #@5f
    goto :goto_cc

    #@60
    .line 509
    :cond_60
    :try_start_60
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@62
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@65
    move-result-object v0

    #@66
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@68
    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@6a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@6d
    move-result-object v0
    :try_end_6e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_60 .. :try_end_6e} :catch_6f

    #@6e
    goto :goto_71

    #@6f
    :catch_6f
    const-string v0, "unknown"

    #@71
    .line 513
    :goto_71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@73
    new-instance v2, Ljava/lang/StringBuilder;

    #@75
    const-string v3, "No view found for id 0x"

    #@77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7a
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@7c
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@7e
    .line 514
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    const-string v3, " ("

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    const-string v2, ") for fragment "

    #@92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v1

    #@a4
    .line 518
    :cond_a4
    instance-of v3, v2, Landroidx/fragment/app/FragmentContainerView;

    #@a6
    if-nez v3, :cond_cc

    #@a8
    .line 519
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@aa
    invoke-static {v3, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onWrongFragmentContainer(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    #@ad
    goto :goto_cc

    #@ae
    .line 500
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b0
    new-instance v1, Ljava/lang/StringBuilder;

    #@b2
    const-string v2, "Cannot create fragment "

    #@b4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b7
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    const-string v2, " for a container view with no id"

    #@bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v1

    #@c7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v0

    #@cb
    :cond_cb
    const/4 v2, 0x0

    #@cc
    .line 523
    :cond_cc
    :goto_cc
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@ce
    iput-object v2, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@d0
    .line 524
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@d2
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@d4
    invoke-virtual {v3, v0, v2, v4}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    #@d7
    .line 525
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@d9
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@db
    const/4 v3, 0x2

    #@dc
    if-eqz v0, :cond_18d

    #@de
    .line 526
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e0
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@e2
    const/4 v4, 0x0

    #@e3
    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    #@e6
    .line 527
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e8
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@ea
    sget v5, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    #@ec
    iget-object v6, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@ee
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@f1
    if-eqz v2, :cond_f6

    #@f3
    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->addViewToContainer()V

    #@f6
    .line 531
    :cond_f6
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@f8
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@fa
    if-eqz v0, :cond_105

    #@fc
    .line 532
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@fe
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@100
    const/16 v2, 0x8

    #@102
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@105
    .line 535
    :cond_105
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@107
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@109
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@10c
    move-result v0

    #@10d
    if-eqz v0, :cond_117

    #@10f
    .line 536
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@111
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@113
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    #@116
    goto :goto_123

    #@117
    .line 538
    :cond_117
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@119
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@11b
    .line 539
    new-instance v2, Landroidx/fragment/app/FragmentStateManager$1;

    #@11d
    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/FragmentStateManager$1;-><init>(Landroidx/fragment/app/FragmentStateManager;Landroid/view/View;)V

    #@120
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@123
    .line 552
    :goto_123
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@125
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    #@128
    .line 553
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@12a
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@12c
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@12e
    iget-object v6, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@130
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@132
    invoke-virtual {v0, v2, v5, v6, v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    #@135
    .line 555
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@137
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@139
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@13c
    move-result v0

    #@13d
    .line 556
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@13f
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@141
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    #@144
    move-result v2

    #@145
    .line 557
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@147
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    #@14a
    .line 558
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@14c
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@14e
    if-eqz v2, :cond_18d

    #@150
    if-nez v0, :cond_18d

    #@152
    .line 560
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@154
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@156
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@159
    move-result-object v0

    #@15a
    if-eqz v0, :cond_185

    #@15c
    .line 562
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@15e
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    #@161
    .line 563
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@164
    move-result v2

    #@165
    if-eqz v2, :cond_185

    #@167
    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    #@169
    const-string v4, "requestFocus: Saved focused view "

    #@16b
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v0

    #@172
    const-string v2, " for Fragment "

    #@174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v0

    #@178
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@17a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v0

    #@17e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v0

    #@182
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@185
    .line 569
    :cond_185
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@187
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@189
    const/4 v1, 0x0

    #@18a
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@18d
    .line 572
    :cond_18d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@18f
    iput v3, v0, Landroidx/fragment/app/Fragment;->mState:I

    #@191
    return-void
.end method

.method destroy()V
    .registers 7

    #@0
    const/4 v0, 0x3

    #@1
    .line 757
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "movefrom CREATED: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 760
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@21
    const/4 v1, 0x1

    #@22
    const/4 v2, 0x0

    #@23
    if-eqz v0, :cond_2f

    #@25
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    #@2a
    move-result v0

    #@2b
    if-nez v0, :cond_2f

    #@2d
    move v0, v1

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move v0, v2

    #@30
    :goto_30
    const/4 v3, 0x0

    #@31
    if-eqz v0, :cond_42

    #@33
    .line 762
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@35
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@37
    if-nez v4, :cond_42

    #@39
    .line 763
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@3b
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3d
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@3f
    invoke-virtual {v4, v5, v3}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    #@42
    :cond_42
    if-nez v0, :cond_55

    #@44
    .line 765
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@46
    .line 766
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    #@49
    move-result-object v4

    #@4a
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4c
    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_53

    #@52
    goto :goto_55

    #@53
    :cond_53
    move v4, v2

    #@54
    goto :goto_56

    #@55
    :cond_55
    :goto_55
    move v4, v1

    #@56
    :goto_56
    if-eqz v4, :cond_e6

    #@58
    .line 768
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5a
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@5c
    .line 770
    instance-of v5, v4, Landroidx/lifecycle/ViewModelStoreOwner;

    #@5e
    if-eqz v5, :cond_6b

    #@60
    .line 771
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@62
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerViewModel;->isCleared()Z

    #@69
    move-result v1

    #@6a
    goto :goto_7e

    #@6b
    .line 772
    :cond_6b
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@6e
    move-result-object v5

    #@6f
    instance-of v5, v5, Landroid/app/Activity;

    #@71
    if-eqz v5, :cond_7e

    #@73
    .line 773
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@76
    move-result-object v4

    #@77
    check-cast v4, Landroid/app/Activity;

    #@79
    .line 774
    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    #@7c
    move-result v4

    #@7d
    xor-int/2addr v1, v4

    #@7e
    :cond_7e
    :goto_7e
    if-eqz v0, :cond_86

    #@80
    .line 778
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@82
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@84
    if-eqz v0, :cond_88

    #@86
    :cond_86
    if-eqz v1, :cond_93

    #@88
    .line 779
    :cond_88
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@8a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    #@8d
    move-result-object v0

    #@8e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@90
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    #@93
    .line 781
    :cond_93
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@95
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroy()V

    #@98
    .line 782
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@9a
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@9c
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    #@9f
    .line 786
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@a1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    #@a4
    move-result-object v0

    #@a5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a8
    move-result-object v0

    #@a9
    :cond_a9
    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@ac
    move-result v1

    #@ad
    if-eqz v1, :cond_ce

    #@af
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b2
    move-result-object v1

    #@b3
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@b5
    if-eqz v1, :cond_a9

    #@b7
    .line 788
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@ba
    move-result-object v1

    #@bb
    .line 789
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@bd
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@bf
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@c1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_a9

    #@c7
    .line 790
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@c9
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@cb
    .line 791
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@cd
    goto :goto_a9

    #@ce
    .line 795
    :cond_ce
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@d0
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@d2
    if-eqz v0, :cond_e0

    #@d4
    .line 798
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@d6
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@d8
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@da
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@dd
    move-result-object v1

    #@de
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@e0
    .line 800
    :cond_e0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@e2
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    #@e5
    goto :goto_104

    #@e6
    .line 802
    :cond_e6
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e8
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@ea
    if-eqz v0, :cond_100

    #@ec
    .line 803
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@ee
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@f0
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@f2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@f5
    move-result-object v0

    #@f6
    if-eqz v0, :cond_100

    #@f8
    .line 804
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@fa
    if-eqz v1, :cond_100

    #@fc
    .line 808
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@fe
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@100
    .line 811
    :cond_100
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@102
    iput v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    #@104
    :goto_104
    return-void
.end method

.method destroyFragmentView()V
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    .line 736
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "movefrom CREATE_VIEW: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 742
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@21
    if-eqz v0, :cond_34

    #@23
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@25
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@27
    if-eqz v0, :cond_34

    #@29
    .line 743
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2b
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@2d
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2f
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@34
    .line 745
    :cond_34
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@36
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    #@39
    .line 746
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@3b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3d
    const/4 v2, 0x0

    #@3e
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    #@41
    .line 747
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@43
    const/4 v1, 0x0

    #@44
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@46
    .line 748
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@48
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@4a
    .line 751
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4c
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@4e
    .line 752
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@50
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    #@52
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    #@55
    .line 753
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@57
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@59
    return-void
.end method

.method detach()V
    .registers 6

    #@0
    const/4 v0, 0x3

    #@1
    .line 816
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v1

    #@5
    const-string v2, "FragmentManager"

    #@7
    if-eqz v1, :cond_1d

    #@9
    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v3, "movefrom ATTACHED: "

    #@d
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 819
    :cond_1d
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    #@22
    .line 820
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@24
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@26
    const/4 v4, 0x0

    #@27
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    #@2a
    .line 822
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2c
    const/4 v3, -0x1

    #@2d
    iput v3, v1, Landroidx/fragment/app/Fragment;->mState:I

    #@2f
    .line 823
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@31
    const/4 v3, 0x0

    #@32
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@34
    .line 824
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@36
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@38
    .line 825
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3a
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@3c
    .line 826
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3e
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@40
    if-eqz v1, :cond_4b

    #@42
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@44
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    #@47
    move-result v1

    #@48
    if-nez v1, :cond_4b

    #@4a
    const/4 v4, 0x1

    #@4b
    :cond_4b
    if-nez v4, :cond_5b

    #@4d
    .line 827
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@4f
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    #@52
    move-result-object v1

    #@53
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@55
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_7a

    #@5b
    .line 828
    :cond_5b
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_75

    #@61
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    #@63
    const-string v1, "initState called for fragment: "

    #@65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@68
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 831
    :cond_75
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@77
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->initState()V

    #@7a
    :cond_7a
    return-void
.end method

.method ensureInflatedView()V
    .registers 6

    #@0
    .line 384
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@4
    if-eqz v0, :cond_7e

    #@6
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@8
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@a
    if-eqz v0, :cond_7e

    #@c
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    #@10
    if-nez v0, :cond_7e

    #@12
    const/4 v0, 0x3

    #@13
    .line 385
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2f

    #@19
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    const-string v1, "moveto CREATE_VIEW: "

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    const-string v1, "FragmentManager"

    #@2c
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 388
    :cond_2f
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@31
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@39
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-virtual {v0, v1, v3, v2}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    #@3f
    .line 390
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@41
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@43
    if-eqz v0, :cond_7e

    #@45
    .line 391
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@47
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@49
    const/4 v1, 0x0

    #@4a
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    #@4d
    .line 392
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4f
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@51
    sget v2, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    #@53
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@55
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@58
    .line 393
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5a
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@5c
    if-eqz v0, :cond_67

    #@5e
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@60
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@62
    const/16 v2, 0x8

    #@64
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@67
    .line 394
    :cond_67
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@69
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    #@6c
    .line 395
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@6e
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@70
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@72
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@74
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@76
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    #@79
    .line 397
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@7b
    const/4 v1, 0x2

    #@7c
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    #@7e
    :cond_7e
    return-void
.end method

.method getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    #@0
    .line 126
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    return-object v0
.end method

.method moveToExpectedState()V
    .registers 9

    #@0
    .line 235
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    #@2
    const/4 v1, 0x2

    #@3
    const-string v2, "FragmentManager"

    #@5
    if-eqz v0, :cond_24

    #@7
    .line 236
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_23

    #@d
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    #@11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 237
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    :cond_23
    return-void

    #@24
    :cond_24
    const/4 v0, 0x0

    #@25
    const/4 v3, 0x1

    #@26
    .line 243
    :try_start_26
    iput-boolean v3, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    #@28
    move v4, v0

    #@29
    .line 247
    :goto_29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->computeExpectedState()I

    #@2c
    move-result v5

    #@2d
    iget-object v6, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2f
    iget v6, v6, Landroidx/fragment/app/Fragment;->mState:I

    #@31
    const/4 v7, 0x3

    #@32
    if-eq v5, v6, :cond_140

    #@34
    .line 249
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@36
    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@38
    if-le v5, v4, :cond_9c

    #@3a
    .line 251
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3c
    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@3e
    add-int/2addr v4, v3

    #@3f
    packed-switch v4, :pswitch_data_204

    #@42
    goto/16 :goto_13d

    #@44
    .line 285
    :pswitch_44
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->resume()V

    #@47
    goto/16 :goto_13d

    #@49
    .line 282
    :pswitch_49
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4b
    const/4 v5, 0x6

    #@4c
    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@4e
    goto/16 :goto_13d

    #@50
    .line 279
    :pswitch_50
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->start()V

    #@53
    goto/16 :goto_13d

    #@55
    .line 267
    :pswitch_55
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@57
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@59
    if-eqz v4, :cond_7e

    #@5b
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5d
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@5f
    if-eqz v4, :cond_7e

    #@61
    .line 268
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@63
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@65
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@67
    .line 270
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@6a
    move-result-object v5

    #@6b
    .line 269
    invoke-static {v4, v5}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    #@6e
    move-result-object v4

    #@6f
    .line 271
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@71
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@73
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@76
    move-result v5

    #@77
    .line 273
    invoke-static {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@7a
    move-result-object v5

    #@7b
    .line 274
    invoke-virtual {v4, v5, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueAdd(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/FragmentStateManager;)V

    #@7e
    .line 276
    :cond_7e
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@80
    const/4 v5, 0x4

    #@81
    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@83
    goto/16 :goto_13d

    #@85
    .line 264
    :pswitch_85
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->activityCreated()V

    #@88
    goto/16 :goto_13d

    #@8a
    .line 260
    :pswitch_8a
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    #@8d
    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->createView()V

    #@90
    goto/16 :goto_13d

    #@92
    .line 257
    :pswitch_92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->create()V

    #@95
    goto/16 :goto_13d

    #@97
    .line 254
    :pswitch_97
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->attach()V

    #@9a
    goto/16 :goto_13d

    #@9c
    .line 290
    :cond_9c
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@9e
    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@a0
    sub-int/2addr v4, v3

    #@a1
    packed-switch v4, :pswitch_data_218

    #@a4
    goto/16 :goto_13d

    #@a6
    .line 293
    :pswitch_a6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->pause()V

    #@a9
    goto/16 :goto_13d

    #@ab
    .line 296
    :pswitch_ab
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@ad
    const/4 v5, 0x5

    #@ae
    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@b0
    goto/16 :goto_13d

    #@b2
    .line 299
    :pswitch_b2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->stop()V

    #@b5
    goto/16 :goto_13d

    #@b7
    .line 302
    :pswitch_b7
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@ba
    move-result v4

    #@bb
    if-eqz v4, :cond_d5

    #@bd
    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string v5, "movefrom ACTIVITY_CREATED: "

    #@c4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@ca
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v4

    #@d2
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    .line 305
    :cond_d5
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@d7
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@d9
    if-eqz v4, :cond_df

    #@db
    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    #@de
    goto :goto_ee

    #@df
    .line 307
    :cond_df
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e1
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@e3
    if-eqz v4, :cond_ee

    #@e5
    .line 310
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@e7
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@e9
    if-nez v4, :cond_ee

    #@eb
    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    #@ee
    .line 314
    :cond_ee
    :goto_ee
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@f0
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@f2
    if-eqz v4, :cond_10b

    #@f4
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@f6
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@f8
    if-eqz v4, :cond_10b

    #@fa
    .line 315
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@fc
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@fe
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@100
    .line 317
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@103
    move-result-object v5

    #@104
    .line 316
    invoke-static {v4, v5}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    #@107
    move-result-object v4

    #@108
    .line 318
    invoke-virtual {v4, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueRemove(Landroidx/fragment/app/FragmentStateManager;)V

    #@10b
    .line 320
    :cond_10b
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10d
    iput v7, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@10f
    goto :goto_13d

    #@110
    .line 323
    :pswitch_110
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@112
    iput-boolean v0, v4, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@114
    .line 324
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@116
    iput v1, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@118
    goto :goto_13d

    #@119
    .line 327
    :pswitch_119
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->destroyFragmentView()V

    #@11c
    .line 328
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@11e
    iput v3, v4, Landroidx/fragment/app/Fragment;->mState:I

    #@120
    goto :goto_13d

    #@121
    .line 331
    :pswitch_121
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@123
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@125
    if-eqz v4, :cond_136

    #@127
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@129
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@12b
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@12d
    .line 332
    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentStore;->getSavedState(Ljava/lang/String;)Landroidx/fragment/app/FragmentState;

    #@130
    move-result-object v4

    #@131
    if-nez v4, :cond_136

    #@133
    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    #@136
    .line 335
    :cond_136
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->destroy()V

    #@139
    goto :goto_13d

    #@13a
    .line 338
    :pswitch_13a
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->detach()V

    #@13d
    :goto_13d
    move v4, v3

    #@13e
    goto/16 :goto_29

    #@140
    :cond_140
    if-nez v4, :cond_1ae

    #@142
    .line 343
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@144
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    #@146
    const/4 v3, -0x1

    #@147
    if-ne v1, v3, :cond_1ae

    #@149
    .line 347
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@14b
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@14d
    if-eqz v1, :cond_1ae

    #@14f
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@151
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    #@154
    move-result v1

    #@155
    if-nez v1, :cond_1ae

    #@157
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@159
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@15b
    if-nez v1, :cond_1ae

    #@15d
    .line 348
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@160
    move-result v1

    #@161
    if-eqz v1, :cond_17b

    #@163
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string v3, "Cleaning up state of never attached fragment: "

    #@16a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v1

    #@16e
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v1

    #@174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v1

    #@178
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@17b
    .line 351
    :cond_17b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@17d
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    #@180
    move-result-object v1

    #@181
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@183
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    #@186
    .line 352
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@188
    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    #@18b
    .line 353
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@18e
    move-result v1

    #@18f
    if-eqz v1, :cond_1a9

    #@191
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string v3, "initState called for fragment: "

    #@198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v1

    #@19c
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@19e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v1

    #@1a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v1

    #@1a6
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a9
    .line 356
    :cond_1a9
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1ab
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->initState()V

    #@1ae
    .line 359
    :cond_1ae
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1b0
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    #@1b2
    if-eqz v1, :cond_1fc

    #@1b4
    .line 360
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1b6
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1b8
    if-eqz v1, :cond_1db

    #@1ba
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1bc
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@1be
    if-eqz v1, :cond_1db

    #@1c0
    .line 362
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1c2
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@1c4
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1c6
    .line 364
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@1c9
    move-result-object v2

    #@1ca
    .line 363
    invoke-static {v1, v2}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    #@1cd
    move-result-object v1

    #@1ce
    .line 365
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1d0
    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@1d2
    if-eqz v2, :cond_1d8

    #@1d4
    .line 366
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueHide(Landroidx/fragment/app/FragmentStateManager;)V

    #@1d7
    goto :goto_1db

    #@1d8
    .line 368
    :cond_1d8
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueShow(Landroidx/fragment/app/FragmentStateManager;)V

    #@1db
    .line 371
    :cond_1db
    :goto_1db
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1dd
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1df
    if-eqz v1, :cond_1ea

    #@1e1
    .line 372
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1e3
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1e5
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1e7
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->invalidateMenuForFragment(Landroidx/fragment/app/Fragment;)V

    #@1ea
    .line 374
    :cond_1ea
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1ec
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    #@1ee
    .line 375
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f0
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@1f2
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    #@1f5
    .line 376
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f7
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1f9
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->dispatchOnHiddenChanged()V
    :try_end_1fc
    .catchall {:try_start_26 .. :try_end_1fc} :catchall_1ff

    #@1fc
    .line 379
    :cond_1fc
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    #@1fe
    return-void

    #@1ff
    :catchall_1ff
    move-exception v1

    #@200
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    #@202
    .line 380
    throw v1

    #@203
    nop

    #@204
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_97
        :pswitch_92
        :pswitch_8a
        :pswitch_85
        :pswitch_55
        :pswitch_50
        :pswitch_49
        :pswitch_44
    .end packed-switch

    #@218
    :pswitch_data_218
    .packed-switch -0x1
        :pswitch_13a
        :pswitch_121
        :pswitch_119
        :pswitch_110
        :pswitch_b7
        :pswitch_b2
        :pswitch_ab
        :pswitch_a6
    .end packed-switch
.end method

.method pause()V
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    .line 628
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "movefrom RESUMED: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 631
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    #@22
    .line 632
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@24
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@26
    const/4 v2, 0x0

    #@27
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    #@2a
    return-void
.end method

.method restoreState(Ljava/lang/ClassLoader;)V
    .registers 5

    #@0
    .line 404
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 407
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@9
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@b
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@e
    .line 408
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@12
    const-string v1, "android:view_state"

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@1a
    .line 410
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1c
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1e
    const-string v1, "android:view_registry_state"

    #@20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@26
    .line 412
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@28
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@2a
    const-string v1, "android:target_state"

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@32
    .line 414
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@34
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@36
    if-eqz p1, :cond_45

    #@38
    .line 415
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3a
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@3c
    const-string v1, "android:target_req_state"

    #@3e
    const/4 v2, 0x0

    #@3f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@42
    move-result v0

    #@43
    iput v0, p1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    #@45
    .line 418
    :cond_45
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@47
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    #@49
    const/4 v0, 0x1

    #@4a
    if-eqz p1, :cond_5c

    #@4c
    .line 419
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4e
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    #@50
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@53
    move-result v1

    #@54
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@56
    .line 420
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@58
    const/4 v1, 0x0

    #@59
    iput-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    #@5b
    goto :goto_68

    #@5c
    .line 422
    :cond_5c
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5e
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@60
    const-string v2, "android:user_visible_hint"

    #@62
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@65
    move-result v1

    #@66
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@68
    .line 425
    :goto_68
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@6a
    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@6c
    if-nez p1, :cond_72

    #@6e
    .line 426
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@70
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    #@72
    :cond_72
    return-void
.end method

.method resume()V
    .registers 6

    #@0
    const/4 v0, 0x3

    #@1
    .line 593
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    const-string v1, "FragmentManager"

    #@7
    if-eqz v0, :cond_1d

    #@9
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "moveto RESUMED: "

    #@d
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 596
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    if-eqz v0, :cond_77

    #@25
    .line 597
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentStateManager;->isFragmentViewChild(Landroid/view/View;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_77

    #@2b
    .line 598
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@2e
    move-result v2

    #@2f
    const/4 v3, 0x2

    #@30
    .line 599
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_77

    #@36
    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    const-string v4, "requestFocus: Restoring focused view "

    #@3a
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    const-string v3, " "

    #@43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    if-eqz v2, :cond_4c

    #@49
    const-string v2, "succeeded"

    #@4b
    goto :goto_4e

    #@4c
    :cond_4c
    const-string v2, "failed"

    #@4e
    .line 601
    :goto_4e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    const-string v2, " on Fragment "

    #@54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    const-string v2, " resulting in focused view "

    #@60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@66
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@68
    .line 602
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    .line 600
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 605
    :cond_77
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@79
    const/4 v1, 0x0

    #@7a
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    #@7d
    .line 606
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@7f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    #@82
    .line 607
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@84
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@86
    const/4 v3, 0x0

    #@87
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    #@8a
    .line 608
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@8c
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@8e
    .line 609
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@90
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@92
    .line 610
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@94
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@96
    return-void
.end method

.method saveInstanceState()Landroidx/fragment/app/Fragment$SavedState;
    .registers 4

    #@0
    .line 671
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-le v0, v1, :cond_13

    #@8
    .line 672
    invoke-direct {p0}, Landroidx/fragment/app/FragmentStateManager;->saveBasicState()Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_13

    #@e
    .line 673
    new-instance v2, Landroidx/fragment/app/Fragment$SavedState;

    #@10
    invoke-direct {v2, v0}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    #@13
    :cond_13
    return-object v2
.end method

.method saveState()V
    .registers 5

    #@0
    .line 644
    new-instance v0, Landroidx/fragment/app/FragmentState;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    #@7
    .line 646
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@9
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    #@b
    const/4 v2, -0x1

    #@c
    if-le v1, v2, :cond_46

    #@e
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@10
    if-nez v1, :cond_46

    #@12
    .line 647
    invoke-direct {p0}, Landroidx/fragment/app/FragmentStateManager;->saveBasicState()Landroid/os/Bundle;

    #@15
    move-result-object v1

    #@16
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@18
    .line 649
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1a
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4c

    #@1e
    .line 650
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@20
    if-nez v1, :cond_29

    #@22
    .line 651
    new-instance v1, Landroid/os/Bundle;

    #@24
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@27
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@29
    .line 653
    :cond_29
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@2b
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2d
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@2f
    const-string v3, "android:target_state"

    #@31
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 656
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@36
    iget v1, v1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    #@38
    if-eqz v1, :cond_4c

    #@3a
    .line 657
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@3c
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@3e
    iget v2, v2, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    #@40
    const-string v3, "android:target_req_state"

    #@42
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@45
    goto :goto_4c

    #@46
    .line 664
    :cond_46
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@48
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@4a
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@4c
    .line 666
    :cond_4c
    :goto_4c
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@4e
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@50
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@52
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    #@55
    return-void
.end method

.method saveViewState()V
    .registers 3

    #@0
    .line 715
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x2

    #@8
    .line 718
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_32

    #@e
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    const-string v1, "Saving view state for fragment "

    #@12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, " with view "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@23
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, "FragmentManager"

    #@2f
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 723
    :cond_32
    new-instance v0, Landroid/util/SparseArray;

    #@34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@37
    .line 724
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@39
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@3b
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@3e
    .line 725
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@41
    move-result v1

    #@42
    if-lez v1, :cond_48

    #@44
    .line 726
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@46
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@48
    .line 728
    :cond_48
    new-instance v0, Landroid/os/Bundle;

    #@4a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@4d
    .line 729
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@4f
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@51
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->performSave(Landroid/os/Bundle;)V

    #@54
    .line 730
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@57
    move-result v1

    #@58
    if-nez v1, :cond_5e

    #@5a
    .line 731
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@5c
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@5e
    :cond_5e
    return-void
.end method

.method setFragmentManagerState(I)V
    .registers 2

    #@0
    .line 136
    iput p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    #@2
    return-void
.end method

.method start()V
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    .line 585
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "moveto STARTED: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 588
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    #@22
    .line 589
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@24
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@26
    const/4 v2, 0x0

    #@27
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    #@2a
    return-void
.end method

.method stop()V
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    .line 636
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "movefrom STARTED: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v1, "FragmentManager"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 639
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@1f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    #@22
    .line 640
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@24
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    #@26
    const/4 v2, 0x0

    #@27
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    #@2a
    return-void
.end method
