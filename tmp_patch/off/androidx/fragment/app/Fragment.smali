.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/activity/result/ActivityResultCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$Api19Impl;,
        Landroidx/fragment/app/Fragment$AnimationInfo;,
        Landroidx/fragment/app/Fragment$InstantiationException;,
        Landroidx/fragment/app/Fragment$SavedState;,
        Landroidx/fragment/app/Fragment$OnPreAttachedListener;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x4

.field static final ATTACHED:I = 0x0

.field static final AWAITING_ENTER_EFFECTS:I = 0x6

.field static final AWAITING_EXIT_EFFECTS:I = 0x3

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = -0x1

.field static final RESUMED:I = 0x7

.field static final STARTED:I = 0x5

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field static final VIEW_CREATED:I = 0x2


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mBeingSaved:Z

.field private mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field private mContentLayoutId:I

.field mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field mInLayout:Z

.field mIsCreated:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mMaxState:Landroidx/lifecycle/Lifecycle$State;

.field mMenuVisible:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnPreAttachedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment$OnPreAttachedListener;",
            ">;"
        }
    .end annotation
.end field

.field mParentFragment:Landroidx/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedDurationRunnable:Ljava/lang/Runnable;

.field public mPreviousWho:Ljava/lang/String;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetainInstanceChangedWhileDetached:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field private final mSavedStateAttachListener:Landroidx/fragment/app/Fragment$OnPreAttachedListener;

.field mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewRegistryState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/Fragment;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 131
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 143
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@6
    .line 155
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@10
    const/4 v0, 0x0

    #@11
    .line 164
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@13
    .line 170
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    #@15
    .line 205
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    #@17
    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    #@1a
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 242
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@1f
    .line 258
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@21
    .line 267
    new-instance v0, Landroidx/fragment/app/Fragment$1;

    #@23
    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    #@26
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    #@28
    .line 294
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    #@2a
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@2c
    .line 301
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    #@2e
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    #@31
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    #@33
    .line 310
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@38
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3a
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3f
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    #@41
    .line 318
    new-instance v0, Landroidx/fragment/app/Fragment$2;

    #@43
    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    #@46
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateAttachListener:Landroidx/fragment/app/Fragment$OnPreAttachedListener;

    #@48
    .line 584
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    #@4b
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 610
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    #@3
    .line 611
    iput p1, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    #@5
    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;
    .registers 2

    #@0
    .line 3383
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 3384
    new-instance v0, Landroidx/fragment/app/Fragment$AnimationInfo;

    #@6
    invoke-direct {v0}, Landroidx/fragment/app/Fragment$AnimationInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@b
    .line 3386
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@d
    return-object v0
.end method

.method private getMinimumMaxLifecycleState()I
    .registers 3

    #@0
    .line 426
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    #@4
    if-eq v0, v1, :cond_1c

    #@6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_1c

    #@b
    .line 429
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@d
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@10
    move-result v0

    #@11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@13
    invoke-direct {v1}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    #@16
    move-result v1

    #@17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 427
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@1e
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@21
    move-result v0

    #@22
    return v0
.end method

.method private getTargetFragment(Z)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 918
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onGetTargetFragmentUsage(Landroidx/fragment/app/Fragment;)V

    #@5
    .line 921
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@7
    if-eqz p1, :cond_a

    #@9
    return-object p1

    #@a
    .line 925
    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c
    if-eqz p1, :cond_17

    #@e
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@10
    if-eqz v0, :cond_17

    #@12
    .line 927
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@15
    move-result-object p1

    #@16
    return-object p1

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    return-object p1
.end method

.method private initLifecycle()V
    .registers 3

    #@0
    .line 615
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    #@2
    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    #@5
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@7
    .line 616
    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    #@d
    const/4 v0, 0x0

    #@e
    .line 619
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    #@10
    .line 620
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    #@12
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedStateAttachListener:Landroidx/fragment/app/Fragment$OnPreAttachedListener;

    #@14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_1f

    #@1a
    .line 621
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateAttachListener:Landroidx/fragment/app/Fragment$OnPreAttachedListener;

    #@1c
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->registerOnPreAttachListener(Landroidx/fragment/app/Fragment$OnPreAttachedListener;)V

    #@1f
    :cond_1f
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 635
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    #@2
    const-string v1, "Unable to instantiate fragment "

    #@4
    .line 662
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object p0

    #@8
    .line 661
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentFactory;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object p0

    #@c
    const/4 v2, 0x0

    #@d
    new-array v3, v2, [Ljava/lang/Class;

    #@f
    .line 663
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@12
    move-result-object p0

    #@13
    new-array v2, v2, [Ljava/lang/Object;

    #@15
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object p0

    #@19
    check-cast p0, Landroidx/fragment/app/Fragment;

    #@1b
    if-eqz p2, :cond_2b

    #@1d
    .line 665
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@28
    .line 666
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_2b} :catch_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2b} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2b} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2b} :catch_2c

    #@2b
    :cond_2b
    return-object p0

    #@2c
    :catch_2c
    move-exception p0

    #@2d
    .line 681
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    #@2f
    new-instance v0, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object p1

    #@38
    const-string v0, ": calling Fragment constructor caused an exception"

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@45
    throw p2

    #@46
    :catch_46
    move-exception p0

    #@47
    .line 678
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    #@49
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object p1

    #@52
    const-string v0, ": could not find Fragment constructor"

    #@54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object p1

    #@58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object p1

    #@5c
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@5f
    throw p2

    #@60
    :catch_60
    move-exception p0

    #@61
    .line 674
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    #@63
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object p1

    #@6c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object p1

    #@70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object p1

    #@74
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@77
    throw p2

    #@78
    :catch_78
    move-exception p0

    #@79
    .line 670
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    #@7b
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object p1

    #@84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object p1

    #@88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object p1

    #@8c
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@8f
    throw p2
.end method

.method private prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Void;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            ">;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    #@0
    .line 3583
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-gt v0, v1, :cond_1e

    #@5
    .line 3589
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@a
    .line 3595
    new-instance v1, Landroidx/fragment/app/Fragment$9;

    #@c
    move-object v2, v1

    #@d
    move-object v3, p0

    #@e
    move-object v4, p2

    #@f
    move-object v5, v0

    #@10
    move-object v6, p1

    #@11
    move-object v7, p3

    #@12
    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/Fragment$9;-><init>(Landroidx/fragment/app/Fragment;Landroidx/arch/core/util/Function;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V

    #@15
    invoke-direct {p0, v1}, Landroidx/fragment/app/Fragment;->registerOnPreAttachListener(Landroidx/fragment/app/Fragment$OnPreAttachedListener;)V

    #@18
    .line 3604
    new-instance p2, Landroidx/fragment/app/Fragment$10;

    #@1a
    invoke-direct {p2, p0, v0, p1}, Landroidx/fragment/app/Fragment$10;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;)V

    #@1d
    return-object p2

    #@1e
    .line 3584
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    #@20
    new-instance p2, Ljava/lang/StringBuilder;

    #@22
    const-string p3, "Fragment "

    #@24
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p2

    #@2b
    const-string p3, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    #@2d
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p2

    #@31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object p2

    #@35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw p1
.end method

.method private registerOnPreAttachListener(Landroidx/fragment/app/Fragment$OnPreAttachedListener;)V
    .registers 3

    #@0
    .line 3633
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@2
    if-ltz v0, :cond_8

    #@4
    .line 3634
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;->onPreAttached()V

    #@7
    goto :goto_d

    #@8
    .line 3637
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    :goto_d
    return-void
.end method

.method private restoreViewState()V
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    .line 3147
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1b

    #@7
    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "moveto RESTORE_VIEW_STATE: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    const-string v1, "FragmentManager"

    #@18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 3150
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1d
    if-eqz v0, :cond_24

    #@1f
    .line 3151
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@21
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    #@24
    :cond_24
    const/4 v0, 0x0

    #@25
    .line 3153
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@27
    return-void
.end method


# virtual methods
.method callStartTransitionListener(Z)V
    .registers 4

    #@0
    .line 2906
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-eqz v0, :cond_7

    #@4
    const/4 v1, 0x0

    #@5
    .line 2907
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    #@7
    .line 2909
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@9
    if-eqz v0, :cond_2e

    #@b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@d
    if-eqz v0, :cond_2e

    #@f
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@11
    if-eqz v1, :cond_2e

    #@13
    .line 2912
    invoke-static {v0, v1}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    #@16
    move-result-object v0

    #@17
    .line 2913
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->markPostponedState()V

    #@1a
    if-eqz p1, :cond_2b

    #@1c
    .line 2918
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@1e
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@21
    move-result-object p1

    #@22
    new-instance v1, Landroidx/fragment/app/Fragment$4;

    #@24
    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/Fragment$4;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/SpecialEffectsController;)V

    #@27
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2a
    goto :goto_2e

    #@2b
    .line 2926
    :cond_2b
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    #@2e
    :cond_2e
    :goto_2e
    return-void
.end method

.method createFragmentContainer()Landroidx/fragment/app/FragmentContainer;
    .registers 2

    #@0
    .line 3037
    new-instance v0, Landroidx/fragment/app/Fragment$5;

    #@2
    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$5;-><init>(Landroidx/fragment/app/Fragment;)V

    #@5
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    #@0
    .line 2943
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string v0, "mFragmentId=#"

    #@5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 2944
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string v0, " mContainerId=#"

    #@13
    .line 2945
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 2946
    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    const-string v0, " mTag="

    #@21
    .line 2947
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@26
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 2948
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string v0, "mState="

    #@2e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@33
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@36
    const-string v0, " mWho="

    #@38
    .line 2949
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    const-string v0, " mBackStackNesting="

    #@42
    .line 2950
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@47
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@4a
    .line 2951
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    const-string v0, "mAdded="

    #@4f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@54
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@57
    const-string v0, " mRemoving="

    #@59
    .line 2952
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@5e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@61
    const-string v0, " mFromLayout="

    #@63
    .line 2953
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@68
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6b
    const-string v0, " mInLayout="

    #@6d
    .line 2954
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@72
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@75
    .line 2955
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    const-string v0, "mHidden="

    #@7a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@7f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@82
    const-string v0, " mDetached="

    #@84
    .line 2956
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@89
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@8c
    const-string v0, " mMenuVisible="

    #@8e
    .line 2957
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@93
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@96
    const-string v0, " mHasMenu="

    #@98
    .line 2958
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@9d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@a0
    .line 2959
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    const-string v0, "mRetainInstance="

    #@a5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@aa
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@ad
    const-string v0, " mUserVisibleHint="

    #@af
    .line 2960
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@b4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@b7
    .line 2961
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@b9
    if-eqz v0, :cond_c8

    #@bb
    .line 2962
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    const-string v0, "mFragmentManager="

    #@c0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    .line 2963
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@c8
    .line 2965
    :cond_c8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@ca
    if-eqz v0, :cond_d9

    #@cc
    .line 2966
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cf
    const-string v0, "mHost="

    #@d1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d4
    .line 2967
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@d6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@d9
    .line 2969
    :cond_d9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@db
    if-eqz v0, :cond_ea

    #@dd
    .line 2970
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    const-string v0, "mParentFragment="

    #@e2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e5
    .line 2971
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@e7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@ea
    .line 2973
    :cond_ea
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@ec
    if-eqz v0, :cond_fb

    #@ee
    .line 2974
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    const-string v0, "mArguments="

    #@f3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@f8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fb
    .line 2976
    :cond_fb
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@fd
    if-eqz v0, :cond_10c

    #@ff
    .line 2977
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    const-string v0, "mSavedFragmentState="

    #@104
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    .line 2978
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@109
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10c
    .line 2980
    :cond_10c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@10e
    if-eqz v0, :cond_11d

    #@110
    .line 2981
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@113
    const-string v0, "mSavedViewState="

    #@115
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@118
    .line 2982
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@11a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11d
    .line 2984
    :cond_11d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@11f
    if-eqz v0, :cond_12e

    #@121
    .line 2985
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@124
    const-string v0, "mSavedViewRegistryState="

    #@126
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    .line 2986
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@12b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@12e
    :cond_12e
    const/4 v0, 0x0

    #@12f
    .line 2988
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    #@132
    move-result-object v0

    #@133
    if-eqz v0, :cond_14a

    #@135
    .line 2990
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@138
    const-string v1, "mTarget="

    #@13a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@140
    const-string v0, " mTargetRequestCode="

    #@142
    .line 2991
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@145
    .line 2992
    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    #@147
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@14a
    .line 2994
    :cond_14a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d
    const-string v0, "mPopDirection="

    #@14f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    #@155
    move-result v0

    #@156
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@159
    .line 2995
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    #@15c
    move-result v0

    #@15d
    if-eqz v0, :cond_16e

    #@15f
    .line 2996
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@162
    const-string v0, "getEnterAnim="

    #@164
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    #@16a
    move-result v0

    #@16b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@16e
    .line 2998
    :cond_16e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    #@171
    move-result v0

    #@172
    if-eqz v0, :cond_183

    #@174
    .line 2999
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@177
    const-string v0, "getExitAnim="

    #@179
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    #@17f
    move-result v0

    #@180
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@183
    .line 3001
    :cond_183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    #@186
    move-result v0

    #@187
    if-eqz v0, :cond_198

    #@189
    .line 3002
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    const-string v0, "getPopEnterAnim="

    #@18e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@191
    .line 3003
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    #@194
    move-result v0

    #@195
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@198
    .line 3005
    :cond_198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    #@19b
    move-result v0

    #@19c
    if-eqz v0, :cond_1ad

    #@19e
    .line 3006
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    const-string v0, "getPopExitAnim="

    #@1a3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    #@1a9
    move-result v0

    #@1aa
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1ad
    .line 3008
    :cond_1ad
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@1af
    if-eqz v0, :cond_1be

    #@1b1
    .line 3009
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b4
    const-string v0, "mContainer="

    #@1b6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@1bb
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1be
    .line 3011
    :cond_1be
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1c0
    if-eqz v0, :cond_1cf

    #@1c2
    .line 3012
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c5
    const-string v0, "mView="

    #@1c7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ca
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1cc
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1cf
    .line 3014
    :cond_1cf
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    #@1d2
    move-result-object v0

    #@1d3
    if-eqz v0, :cond_1e4

    #@1d5
    .line 3015
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d8
    const-string v0, "mAnimatingAway="

    #@1da
    .line 3016
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dd
    .line 3017
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    #@1e0
    move-result-object v0

    #@1e1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1e4
    .line 3019
    :cond_1e4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    #@1e7
    move-result-object v0

    #@1e8
    if-eqz v0, :cond_1f1

    #@1ea
    .line 3020
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    #@1ed
    move-result-object v0

    #@1ee
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1f1
    .line 3022
    :cond_1f1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f4
    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f6
    const-string v1, "Child "

    #@1f8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1fb
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v0

    #@201
    const-string v1, ":"

    #@203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v0

    #@207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20a
    move-result-object v0

    #@20b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20e
    .line 3024
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@210
    new-instance v1, Ljava/lang/StringBuilder;

    #@212
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@215
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object p1

    #@219
    const-string v1, "  "

    #@21b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object p1

    #@21f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object p1

    #@223
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@226
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 715
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    .line 3029
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object p0

    #@9
    .line 3032
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@b
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@e
    move-result-object p1

    #@f
    return-object p1
.end method

.method generateActivityResultKey()Ljava/lang/String;
    .registers 3

    #@0
    .line 3643
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "fragment_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "_rq#"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    #@15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 2

    #@0
    .line 981
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_c

    #@6
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    #@c
    :goto_c
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    #@0
    .line 2768
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 2769
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@b
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    :goto_12
    const/4 v0, 0x1

    #@13
    :goto_13
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    #@0
    .line 2793
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 2794
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@b
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    :goto_12
    const/4 v0, 0x1

    #@13
    :goto_13
    return v0
.end method

.method getAnimatingAway()Landroid/view/View;
    .registers 2

    #@0
    .line 3502
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 3505
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    #@8
    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 785
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 4

    #@0
    .line 1141
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1144
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    return-object v0

    #@7
    .line 1142
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Fragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " has not been attached yet."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 954
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0
.end method

.method public getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .registers 4

    #@0
    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 475
    :goto_8
    instance-of v1, v0, Landroid/content/ContextWrapper;

    #@a
    if-eqz v1, :cond_1a

    #@c
    .line 476
    instance-of v1, v0, Landroid/app/Application;

    #@e
    if-eqz v1, :cond_13

    #@10
    .line 477
    check-cast v0, Landroid/app/Application;

    #@12
    goto :goto_1b

    #@13
    .line 480
    :cond_13
    check-cast v0, Landroid/content/ContextWrapper;

    #@15
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    goto :goto_8

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    :goto_1b
    if-nez v0, :cond_46

    #@1d
    const/4 v1, 0x3

    #@1e
    .line 482
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_46

    #@24
    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    const-string v2, "Could not find Application instance from Context "

    #@28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2b
    .line 484
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    const-string v2, "FragmentManager"

    #@43
    .line 483
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 488
    :cond_46
    new-instance v1, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    #@48
    invoke-direct {v1}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>()V

    #@4b
    if-eqz v0, :cond_52

    #@4d
    .line 490
    sget-object v2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    #@4f
    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    #@52
    .line 492
    :cond_52
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    #@54
    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    #@57
    .line 493
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    #@59
    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    #@5c
    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@5f
    move-result-object v0

    #@60
    if-eqz v0, :cond_6b

    #@62
    .line 495
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->DEFAULT_ARGS_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    #@64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    #@6b
    :cond_6b
    return-object v1
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .registers 4

    #@0
    .line 435
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_5c

    #@4
    .line 438
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    #@6
    if-nez v0, :cond_59

    #@8
    .line 440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    .line 441
    :goto_10
    instance-of v1, v0, Landroid/content/ContextWrapper;

    #@12
    if-eqz v1, :cond_22

    #@14
    .line 442
    instance-of v1, v0, Landroid/app/Application;

    #@16
    if-eqz v1, :cond_1b

    #@18
    .line 443
    check-cast v0, Landroid/app/Application;

    #@1a
    goto :goto_23

    #@1b
    .line 446
    :cond_1b
    check-cast v0, Landroid/content/ContextWrapper;

    #@1d
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@20
    move-result-object v0

    #@21
    goto :goto_10

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    :goto_23
    if-nez v0, :cond_4e

    #@25
    const/4 v1, 0x3

    #@26
    .line 448
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_4e

    #@2c
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    const-string v2, "Could not find Application instance from Context "

    #@30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    .line 450
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    const-string v2, ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    const-string v2, "FragmentManager"

    #@4b
    .line 449
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 454
    :cond_4e
    new-instance v1, Landroidx/lifecycle/SavedStateViewModelFactory;

    #@50
    .line 457
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@53
    move-result-object v2

    #@54
    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    #@57
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    #@59
    .line 459
    :cond_59
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    #@5b
    return-object v0

    #@5c
    .line 436
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5e
    const-string v1, "Can\'t access ViewModels from detached fragment"

    #@60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@63
    throw v0
.end method

.method getEnterAnim()I
    .registers 2

    #@0
    .line 3405
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 3408
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    #@8
    return v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .registers 2

    #@0
    .line 2551
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 2554
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    #@8
    return-object v0
.end method

.method getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .registers 2

    #@0
    .line 3488
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 3491
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    #@8
    return-object v0
.end method

.method getExitAnim()I
    .registers 2

    #@0
    .line 3413
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 3416
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    #@8
    return v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .registers 2

    #@0
    .line 2630
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 2633
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    #@8
    return-object v0
.end method

.method getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .registers 2

    #@0
    .line 3495
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 3498
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    #@8
    return-object v0
.end method

.method getFocusedView()Landroid/view/View;
    .registers 2

    #@0
    .line 3524
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 3527
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    #@8
    return-object v0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1088
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .registers 2

    #@0
    .line 1008
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0
.end method

.method public final getId()I
    .registers 2

    #@0
    .line 754
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@2
    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    #@0
    .line 1736
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@2
    if-nez v0, :cond_9

    #@4
    const/4 v0, 0x0

    #@5
    .line 1737
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@8
    move-result-object v0

    #@9
    :cond_9
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1770
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-eqz p1, :cond_12

    #@4
    .line 1774
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    #@7
    move-result-object p1

    #@8
    .line 1775
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    #@d
    move-result-object v0

    #@e
    invoke-static {p1, v0}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    #@11
    return-object p1

    #@12
    .line 1771
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    #@14
    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    #@16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw p1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    #@0
    .line 335
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@2
    return-object v0
.end method

.method public getLoaderManager()Landroidx/loader/app/LoaderManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1425
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getNextTransition()I
    .registers 2

    #@0
    .line 3450
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 3453
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    #@8
    return v0
.end method

.method public final getParentFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    #@0
    .line 1153
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@2
    return-object v0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 4

    #@0
    .line 1105
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 1107
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "Fragment "

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string v2, " not associated with a fragment manager."

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method getPopDirection()Z
    .registers 2

    #@0
    .line 3436
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 3439
    :cond_6
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    #@8
    return v0
.end method

.method getPopEnterAnim()I
    .registers 2

    #@0
    .line 3421
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 3424
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    #@8
    return v0
.end method

.method getPopExitAnim()I
    .registers 2

    #@0
    .line 3429
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 3432
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    #@8
    return v0
.end method

.method getPostOnViewCreatedAlpha()F
    .registers 2

    #@0
    .line 3513
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_7

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    return v0

    #@7
    .line 3516
    :cond_7
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    #@9
    return v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .registers 3

    #@0
    .line 2668
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 2671
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    #@8
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@a
    if-ne v0, v1, :cond_11

    #@c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    goto :goto_15

    #@11
    .line 2672
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@13
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    #@15
    :goto_15
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 2

    #@0
    .line 1031
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getRetainInstance()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1321
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onGetRetainInstanceUsage(Landroidx/fragment/app/Fragment;)V

    #@3
    .line 1322
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@5
    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .registers 3

    #@0
    .line 2590
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 2593
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    #@8
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@a
    if-ne v0, v1, :cond_11

    #@c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    goto :goto_15

    #@11
    .line 2594
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@13
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    #@15
    :goto_15
    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .registers 2

    #@0
    .line 503
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    #@2
    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .registers 2

    #@0
    .line 2701
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 2704
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    #@8
    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .registers 3

    #@0
    .line 2739
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 2742
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    #@8
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@a
    if-ne v0, v1, :cond_11

    #@c
    .line 2743
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    goto :goto_15

    #@11
    .line 2744
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@13
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    #@15
    :goto_15
    return-object v0
.end method

.method getSharedElementSourceNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 3466
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_e

    #@9
    .line 3469
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@b
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@d
    return-object v0

    #@e
    .line 3467
    :cond_e
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    return-object v0
.end method

.method getSharedElementTargetNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 3474
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_e

    #@9
    .line 3477
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@b
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@d
    return-object v0

    #@e
    .line 3475
    :cond_e
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 1053
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    #@0
    .line 1066
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    #@0
    .line 762
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/Fragment;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 908
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 943
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onGetTargetFragmentRequestCodeUsage(Landroidx/fragment/app/Fragment;)V

    #@3
    .line 944
    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    #@5
    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 1042
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public getUserVisibleHint()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1413
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@2
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    #@0
    .line 2050
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .registers 3

    #@0
    .line 376
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 377
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    #@0
    .line 397
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    #@2
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .registers 3

    #@0
    .line 413
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_1f

    #@4
    .line 416
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    #@7
    move-result v0

    #@8
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    #@a
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@d
    move-result v1

    #@e
    if-eq v0, v1, :cond_17

    #@10
    .line 421
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@12
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 417
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 414
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    #@21
    const-string v1, "Can\'t access ViewModels from detached fragment"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public final hasOptionsMenu()Z
    .registers 2

    #@0
    .line 1250
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@2
    return v0
.end method

.method public final hashCode()I
    .registers 2

    #@0
    .line 722
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method initState()V
    .registers 4

    #@0
    .line 2264
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    #@3
    .line 2265
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    #@7
    .line 2266
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@11
    const/4 v0, 0x0

    #@12
    .line 2267
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@14
    .line 2268
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@16
    .line 2269
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@18
    .line 2270
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@1a
    .line 2271
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRestored:Z

    #@1c
    .line 2272
    iput v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@1e
    const/4 v1, 0x0

    #@1f
    .line 2273
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@21
    .line 2274
    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl;

    #@23
    invoke-direct {v2}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    #@26
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@28
    .line 2275
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2a
    .line 2276
    iput v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@2c
    .line 2277
    iput v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@2e
    .line 2278
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@30
    .line 2279
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@32
    .line 2280
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@34
    return-void
.end method

.method public final isAdded()Z
    .registers 2

    #@0
    .line 1183
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public final isDetached()Z
    .registers 2

    #@0
    .line 1192
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@2
    return v0
.end method

.method public final isHidden()Z
    .registers 3

    #@0
    .line 1242
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_13

    #@4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    if-eqz v0, :cond_11

    #@8
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@a
    .line 1243
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->isParentHidden(Landroidx/fragment/app/Fragment;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 v0, 0x1

    #@14
    :goto_14
    return v0
.end method

.method final isInBackStack()Z
    .registers 2

    #@0
    .line 708
    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@2
    if-lez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public final isInLayout()Z
    .registers 2

    #@0
    .line 1212
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@2
    return v0
.end method

.method public final isMenuVisible()Z
    .registers 3

    #@0
    .line 1256
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    if-eqz v0, :cond_10

    #@8
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    #@a
    .line 1257
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method isPostponed()Z
    .registers 2

    #@0
    .line 3531
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 3534
    :cond_6
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    #@8
    return v0
.end method

.method public final isRemoving()Z
    .registers 2

    #@0
    .line 1201
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@2
    return v0
.end method

.method public final isResumed()Z
    .registers 3

    #@0
    .line 1220
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@2
    const/4 v1, 0x7

    #@3
    if-lt v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0
.end method

.method public final isStateSaved()Z
    .registers 2

    #@0
    .line 812
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 815
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final isVisible()Z
    .registers 2

    #@0
    .line 1229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_20

    #@6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_20

    #@c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_20

    #@10
    .line 1230
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_20

    #@16
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_20

    #@1e
    const/4 v0, 0x1

    #@1f
    goto :goto_21

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    :goto_21
    return v0
.end method

.method noteStateNotSaved()V
    .registers 2

    #@0
    .line 3193
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    #@5
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 p1, 0x1

    #@1
    .line 2096
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    .line 1577
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_39

    #@7
    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "Fragment "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string v1, " received the following in onActivityResult(): requestCode: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v0, " resultCode: "

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    const-string p2, " data: "

    #@28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p1

    #@34
    const-string p2, "FragmentManager"

    #@36
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    :cond_39
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 p1, 0x1

    #@1
    .line 1896
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 p1, 0x1

    #@1
    .line 1877
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    .line 1878
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@5
    if-nez p1, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    goto :goto_d

    #@9
    :cond_9
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@c
    move-result-object p1

    #@d
    :goto_d
    if-eqz p1, :cond_15

    #@f
    const/4 v0, 0x0

    #@10
    .line 1880
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@12
    .line 1881
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@15
    :cond_15
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 2185
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1964
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    .line 1965
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    #@6
    .line 1966
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->isStateAtLeast(I)Z

    #@b
    move-result p1

    #@c
    if-nez p1, :cond_13

    #@e
    .line 1967
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@10
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->dispatchCreate()V

    #@13
    :cond_13
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    #@0
    .line 2450
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    #@7
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    #@0
    .line 2022
    iget p3, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    #@2
    if-eqz p3, :cond_a

    #@4
    const/4 v0, 0x0

    #@5
    .line 2023
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    return-object p1

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2254
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2244
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onDetach()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2290
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    #@0
    .line 1720
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 p1, 0x1

    #@1
    .line 1845
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 p1, 0x1

    #@1
    .line 1825
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    .line 1826
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@5
    if-nez p1, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    goto :goto_d

    #@9
    :cond_9
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@c
    move-result-object p1

    #@d
    :goto_d
    if-eqz p1, :cond_15

    #@f
    const/4 v0, 0x0

    #@10
    .line 1828
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@12
    .line 1829
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@15
    :cond_15
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2229
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2211
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onResume()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2135
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    #@0
    return-void
.end method

.method public onStart()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2123
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2222
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 2112
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 3134
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    #@5
    const/4 v0, 0x3

    #@6
    .line 3135
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@8
    const/4 v0, 0x0

    #@9
    .line 3136
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@b
    .line 3137
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@e
    .line 3138
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@10
    if-eqz p1, :cond_1b

    #@12
    .line 3142
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->restoreViewState()V

    #@15
    .line 3143
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@17
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->dispatchActivityCreated()V

    #@1a
    return-void

    #@1b
    .line 3139
    :cond_1b
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    #@1d
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    const-string v1, "Fragment "

    #@21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const-string v1, " did not call through to super.onActivityCreated()"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@35
    throw p1
.end method

.method performAttach()V
    .registers 4

    #@0
    .line 3056
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/Fragment$OnPreAttachedListener;

    #@12
    .line 3057
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;->onPreAttached()V

    #@15
    goto :goto_6

    #@16
    .line 3059
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1b
    .line 3060
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1d
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@1f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/FragmentContainer;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/FragmentManager;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    #@26
    const/4 v0, 0x0

    #@27
    .line 3061
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@29
    .line 3062
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@2b
    .line 3063
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2d
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    #@34
    .line 3064
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@36
    if-eqz v0, :cond_43

    #@38
    .line 3068
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@3a
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->dispatchOnAttachFragment(Landroidx/fragment/app/Fragment;)V

    #@3d
    .line 3069
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@3f
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchAttach()V

    #@42
    return-void

    #@43
    .line 3065
    :cond_43
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    const-string v2, "Fragment "

    #@49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    const-string v2, " did not call through to super.onAttach()"

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    #@0
    .line 3216
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    .line 3269
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_13

    #@4
    .line 3270
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    return p1

    #@c
    .line 3273
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@e
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@11
    move-result p1

    #@12
    return p1

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    return p1
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 3073
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    #@5
    const/4 v0, 0x1

    #@6
    .line 3074
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@8
    const/4 v1, 0x0

    #@9
    .line 3075
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@b
    .line 3077
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@d
    new-instance v2, Landroidx/fragment/app/Fragment$6;

    #@f
    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/Fragment;)V

    #@12
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@15
    .line 3089
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    #@17
    invoke-virtual {v1, p1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    #@1a
    .line 3090
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@1d
    .line 3091
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    #@1f
    .line 3092
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@21
    if-eqz p1, :cond_2b

    #@23
    .line 3096
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@25
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@27
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@2a
    return-void

    #@2b
    .line 3093
    :cond_2b
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    #@2d
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f
    const-string v1, "Fragment "

    #@31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string v1, " did not call through to super.onCreate()"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@45
    throw p1
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    #@0
    .line 3234
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_18

    #@5
    .line 3235
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v0, :cond_11

    #@9
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v0, :cond_11

    #@d
    .line 3237
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    #@10
    const/4 v1, 0x1

    #@11
    .line 3239
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@13
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@16
    move-result p1

    #@17
    or-int/2addr v1, p1

    #@18
    :cond_18
    return v1
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    #@0
    .line 3101
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    #@5
    const/4 v0, 0x1

    #@6
    .line 3102
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    #@8
    .line 3103
    new-instance v0, Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelStore;)V

    #@11
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@13
    .line 3104
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@16
    move-result-object p1

    #@17
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@19
    if-eqz p1, :cond_3d

    #@1b
    .line 3107
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@1d
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    #@20
    .line 3111
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@22
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@24
    invoke-static {p1, p2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    #@27
    .line 3112
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@29
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@2b
    invoke-static {p1, p2}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    #@2e
    .line 3113
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@30
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@32
    invoke-static {p1, p2}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    #@35
    .line 3115
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    #@37
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@39
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    #@3c
    goto :goto_48

    #@3d
    .line 3117
    :cond_3d
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@3f
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->isInitialized()Z

    #@42
    move-result p1

    #@43
    if-nez p1, :cond_49

    #@45
    const/4 p1, 0x0

    #@46
    .line 3121
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@48
    :goto_48
    return-void

    #@49
    .line 3118
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    #@4b
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    #@4d
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@50
    throw p1
.end method

.method performDestroy()V
    .registers 4

    #@0
    .line 3351
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroy()V

    #@5
    .line 3352
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@7
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@c
    const/4 v0, 0x0

    #@d
    .line 3353
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@f
    .line 3354
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@11
    .line 3355
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    #@13
    .line 3356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    #@16
    .line 3357
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@18
    if-eqz v0, :cond_1b

    #@1a
    return-void

    #@1b
    .line 3358
    :cond_1b
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    const-string v2, "Fragment "

    #@21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string v2, " did not call through to super.onDestroy()"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0
.end method

.method performDestroyView()V
    .registers 4

    #@0
    .line 3330
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroyView()V

    #@5
    .line 3331
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@7
    if-eqz v0, :cond_22

    #@9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@12
    move-result-object v0

    #@13
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    #@15
    .line 3332
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_22

    #@1b
    .line 3333
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@1d
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@1f
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@22
    :cond_22
    const/4 v0, 0x1

    #@23
    .line 3335
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@25
    const/4 v0, 0x0

    #@26
    .line 3336
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@28
    .line 3337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    #@2b
    .line 3338
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@2d
    if-eqz v1, :cond_39

    #@2f
    .line 3346
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->markForRedelivery()V

    #@36
    .line 3347
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    #@38
    return-void

    #@39
    .line 3339
    :cond_39
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    const-string v2, "Fragment "

    #@3f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string v2, " did not call through to super.onDestroyView()"

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0
.end method

.method performDetach()V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 3364
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@3
    const/4 v0, 0x0

    #@4
    .line 3365
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@6
    .line 3366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    #@9
    const/4 v0, 0x0

    #@a
    .line 3367
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@c
    .line 3368
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@e
    if-eqz v0, :cond_25

    #@10
    .line 3376
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_24

    #@18
    .line 3377
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroy()V

    #@1d
    .line 3378
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    #@1f
    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    #@22
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@24
    :cond_24
    return-void

    #@25
    .line 3369
    :cond_25
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    const-string v2, "Fragment "

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string v2, " did not call through to super.onDetach()"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    #@0
    .line 1752
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@6
    return-object p1
.end method

.method performLowMemory()V
    .registers 1

    #@0
    .line 3220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    #@3
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .registers 2

    #@0
    .line 3208
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    #@3
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    .line 3257
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    .line 3258
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@6
    if-eqz v0, :cond_14

    #@8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@a
    if-eqz v0, :cond_14

    #@c
    .line 3259
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    return p1

    #@14
    .line 3263
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@16
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@19
    move-result p1

    #@1a
    return p1

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return p1
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    #@0
    .line 3279
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_14

    #@4
    .line 3280
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@6
    if-eqz v0, :cond_f

    #@8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 3281
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@f
    .line 3283
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@11
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@14
    :cond_14
    return-void
.end method

.method performPause()V
    .registers 4

    #@0
    .line 3298
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchPause()V

    #@5
    .line 3299
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 3300
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@b
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@d
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@10
    .line 3302
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@12
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@17
    const/4 v0, 0x6

    #@18
    .line 3303
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 3304
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@1d
    .line 3305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    #@20
    .line 3306
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@22
    if-eqz v0, :cond_25

    #@24
    return-void

    #@25
    .line 3307
    :cond_25
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    const-string v2, "Fragment "

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string v2, " did not call through to super.onPause()"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .registers 2

    #@0
    .line 3212
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    #@3
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    #@0
    .line 3246
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_18

    #@5
    .line 3247
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v0, :cond_11

    #@9
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v0, :cond_11

    #@d
    .line 3249
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    #@10
    const/4 v1, 0x1

    #@11
    .line 3251
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@13
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@16
    move-result p1

    #@17
    or-int/2addr v1, p1

    #@18
    :cond_18
    return v1
.end method

.method performPrimaryNavigationFragmentChanged()V
    .registers 3

    #@0
    .line 3197
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    #@5
    move-result v0

    #@6
    .line 3199
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    #@8
    if-eqz v1, :cond_10

    #@a
    .line 3200
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v1

    #@e
    if-eq v1, v0, :cond_1e

    #@10
    .line 3201
    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    #@16
    .line 3202
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onPrimaryNavigationFragmentChanged(Z)V

    #@19
    .line 3203
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchPrimaryNavigationFragmentChanged()V

    #@1e
    :cond_1e
    return-void
.end method

.method performResume()V
    .registers 4

    #@0
    .line 3176
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    #@5
    .line 3177
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@b
    const/4 v0, 0x7

    #@c
    .line 3178
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@e
    const/4 v0, 0x0

    #@f
    .line 3179
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@11
    .line 3180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    #@14
    .line 3181
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@16
    if-eqz v0, :cond_30

    #@18
    .line 3185
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@1a
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@1c
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@1f
    .line 3186
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@21
    if-eqz v0, :cond_2a

    #@23
    .line 3187
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@25
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@2a
    .line 3189
    :cond_2a
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2c
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchResume()V

    #@2f
    return-void

    #@30
    .line 3182
    :cond_30
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    const-string v2, "Fragment "

    #@36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string v2, " did not call through to super.onResume()"

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 3288
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 3289
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    #@5
    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    #@8
    .line 3290
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->saveAllStateInternal()Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_15

    #@10
    const-string v1, "android:support:fragments"

    #@12
    .line 3292
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@15
    :cond_15
    return-void
.end method

.method performStart()V
    .registers 4

    #@0
    .line 3158
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    #@5
    .line 3159
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@b
    const/4 v0, 0x5

    #@c
    .line 3160
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@e
    const/4 v0, 0x0

    #@f
    .line 3161
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@11
    .line 3162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    #@14
    .line 3163
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@16
    if-eqz v0, :cond_30

    #@18
    .line 3167
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@1a
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@1c
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@1f
    .line 3168
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@21
    if-eqz v0, :cond_2a

    #@23
    .line 3169
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@25
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@2a
    .line 3171
    :cond_2a
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2c
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchStart()V

    #@2f
    return-void

    #@30
    .line 3164
    :cond_30
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    const-string v2, "Fragment "

    #@36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string v2, " did not call through to super.onStart()"

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0
.end method

.method performStop()V
    .registers 4

    #@0
    .line 3314
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchStop()V

    #@5
    .line 3315
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 3316
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@b
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@d
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@10
    .line 3318
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@12
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@17
    const/4 v0, 0x4

    #@18
    .line 3319
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 3320
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@1d
    .line 3321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    #@20
    .line 3322
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@22
    if-eqz v0, :cond_25

    #@24
    return-void

    #@25
    .line 3323
    :cond_25
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    const-string v2, "Fragment "

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string v2, " did not call through to super.onStop()"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method performViewCreated()V
    .registers 3

    #@0
    .line 3128
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@4
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@7
    .line 3129
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchViewCreated()V

    #@c
    return-void
.end method

.method public postponeEnterTransition()V
    .registers 3

    #@0
    .line 2826
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    #@7
    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    #@0
    .line 2858
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    #@7
    .line 2860
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@9
    if-eqz v0, :cond_14

    #@b
    .line 2861
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    goto :goto_1d

    #@14
    .line 2863
    :cond_14
    new-instance v0, Landroid/os/Handler;

    #@16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1d
    .line 2865
    :goto_1d
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    #@1f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@22
    .line 2866
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    #@24
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@27
    move-result-wide p1

    #@28
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2b
    return-void
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    #@0
    .line 3551
    new-instance v0, Landroidx/fragment/app/Fragment$7;

    #@2
    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$7;-><init>(Landroidx/fragment/app/Fragment;)V

    #@5
    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    #@0
    .line 3569
    new-instance v0, Landroidx/fragment/app/Fragment$8;

    #@2
    invoke-direct {v0, p0, p2}, Landroidx/fragment/app/Fragment$8;-><init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultRegistry;)V

    #@5
    invoke-direct {p0, p1, v0, p3}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    #@0
    .line 2464
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1651
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 1654
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->launchRequestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    #@b
    return-void

    #@c
    .line 1652
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    #@e
    new-instance p2, Ljava/lang/StringBuilder;

    #@10
    const-string v0, "Fragment "

    #@12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p2

    #@19
    const-string v0, " not attached to Activity"

    #@1b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p2

    #@1f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p2

    #@23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw p1
.end method

.method public final requireActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 4

    #@0
    .line 993
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 995
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Fragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " not attached to an activity."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .registers 4

    #@0
    .line 796
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 798
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Fragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " does not have any arguments."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .registers 4

    #@0
    .line 965
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 967
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Fragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " not attached to a context."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .registers 4

    #@0
    .line 1019
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 1021
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Fragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " not attached to a host."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public final requireParentFragment()Landroidx/fragment/app/Fragment;
    .registers 4

    #@0
    .line 1165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_48

    #@6
    .line 1167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    const-string v1, "Fragment "

    #@c
    if-nez v0, :cond_27

    #@e
    .line 1169
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, " is not attached to any Fragment or host"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1172
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string v2, " is not a child Fragment, it is directly attached to "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 1173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0

    #@48
    :cond_48
    return-object v0
.end method

.method public final requireView()Landroid/view/View;
    .registers 4

    #@0
    .line 2061
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 2063
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Fragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 3

    #@0
    if-eqz p1, :cond_14

    #@2
    const-string v0, "android:support:fragments"

    #@4
    .line 1986
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object p1

    #@8
    if-eqz p1, :cond_14

    #@a
    .line 1989
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    #@f
    .line 1990
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@11
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->dispatchCreate()V

    #@14
    :cond_14
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 688
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_c

    #@5
    .line 689
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@7
    invoke-virtual {v2, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@a
    .line 690
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@c
    .line 692
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_19

    #@10
    .line 693
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@12
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@14
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->performRestore(Landroid/os/Bundle;)V

    #@17
    .line 694
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    .line 696
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@1c
    .line 697
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    #@1f
    .line 698
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    #@21
    if-eqz p1, :cond_2f

    #@23
    .line 702
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@25
    if-eqz p1, :cond_2e

    #@27
    .line 703
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@29
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@2b
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@2e
    :cond_2e
    return-void

    #@2f
    .line 699
    :cond_2f
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    #@31
    new-instance v0, Ljava/lang/StringBuilder;

    #@33
    const-string v1, "Fragment "

    #@35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    const-string v1, " did not call through to super.onViewStateRestored()"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@49
    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 3

    #@0
    .line 2756
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object p1

    #@8
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@a
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 3

    #@0
    .line 2781
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object p1

    #@8
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@a
    return-void
.end method

.method setAnimations(IIII)V
    .registers 6

    #@0
    .line 3394
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_d

    #@4
    if-nez p1, :cond_d

    #@6
    if-nez p2, :cond_d

    #@8
    if-nez p3, :cond_d

    #@a
    if-nez p4, :cond_d

    #@c
    return-void

    #@d
    .line 3397
    :cond_d
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@10
    move-result-object v0

    #@11
    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    #@13
    .line 3398
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@16
    move-result-object p1

    #@17
    iput p2, p1, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    #@19
    .line 3399
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@1c
    move-result-object p1

    #@1d
    iput p3, p1, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    #@1f
    .line 3400
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@22
    move-result-object p1

    #@23
    iput p4, p1, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    #@25
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 773
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_13

    #@4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_13

    #@b
    .line 774
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    #@d
    const-string v0, "Fragment already added and state has been saved"

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1

    #@13
    .line 776
    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@15
    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .registers 3

    #@0
    .line 2509
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    #@6
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 2537
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    #@6
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .registers 3

    #@0
    .line 2520
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    #@6
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 2613
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    #@6
    return-void
.end method

.method setFocusedView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 3520
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    #@6
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1339
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@2
    if-eq v0, p1, :cond_17

    #@4
    .line 1340
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@6
    .line 1341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_17

    #@c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    #@f
    move-result p1

    #@10
    if-nez p1, :cond_17

    #@12
    .line 1342
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@14
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    #@17
    :cond_17
    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V
    .registers 3

    #@0
    .line 827
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-nez v0, :cond_11

    #@4
    if-eqz p1, :cond_d

    #@6
    .line 830
    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 831
    iget-object p1, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    :goto_e
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@10
    return-void

    #@11
    .line 828
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    #@13
    const-string v0, "Fragment already added"

    #@15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw p1
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    #@0
    .line 1357
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@2
    if-eq v0, p1, :cond_1b

    #@4
    .line 1358
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@6
    .line 1359
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@8
    if-eqz p1, :cond_1b

    #@a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_1b

    #@10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    #@13
    move-result p1

    #@14
    if-nez p1, :cond_1b

    #@16
    .line 1360
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@18
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    #@1b
    :cond_1b
    return-void
.end method

.method setNextTransition(I)V
    .registers 3

    #@0
    .line 3457
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_7

    #@4
    if-nez p1, :cond_7

    #@6
    return-void

    #@7
    .line 3460
    :cond_7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@a
    .line 3461
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@c
    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    #@e
    return-void
.end method

.method setPopDirection(Z)V
    .registers 3

    #@0
    .line 3443
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 3446
    :cond_5
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@8
    move-result-object v0

    #@9
    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    #@b
    return-void
.end method

.method setPostOnViewCreatedAlpha(F)V
    .registers 3

    #@0
    .line 3509
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    #@6
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 2652
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    #@6
    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1294
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onSetRetainInstanceUsage(Landroidx/fragment/app/Fragment;)V

    #@3
    .line 1295
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@5
    .line 1296
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@7
    if-eqz v0, :cond_13

    #@9
    if-eqz p1, :cond_f

    #@b
    .line 1298
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@e
    goto :goto_16

    #@f
    .line 1300
    :cond_f
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@12
    goto :goto_16

    #@13
    :cond_13
    const/4 p1, 0x1

    #@14
    .line 1303
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    #@16
    :goto_16
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 2573
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    #@6
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 2687
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    #@6
    return-void
.end method

.method setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 3482
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    .line 3483
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@7
    .line 3484
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@9
    iput-object p2, p1, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@b
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 2722
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    #@6
    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 859
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onSetTargetFragmentUsage(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    #@5
    .line 865
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 866
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c
    goto :goto_e

    #@d
    :cond_d
    move-object v2, v1

    #@e
    :goto_e
    if-eqz v0, :cond_30

    #@10
    if-eqz v2, :cond_30

    #@12
    if-ne v0, v2, :cond_15

    #@14
    goto :goto_30

    #@15
    .line 869
    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    const-string v1, "Fragment "

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    const-string v0, " must share the same FragmentManager to be set as a target fragment"

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p1

    #@28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw p2

    #@30
    :cond_30
    :goto_30
    move-object v0, p1

    #@31
    :goto_31
    if-eqz v0, :cond_64

    #@33
    .line 875
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_3f

    #@39
    const/4 v2, 0x0

    #@3a
    .line 874
    invoke-direct {v0, v2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    #@3d
    move-result-object v0

    #@3e
    goto :goto_31

    #@3f
    .line 876
    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@41
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    const-string v1, "Setting "

    #@45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object p1

    #@4c
    const-string v0, " as the target of "

    #@4e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object p1

    #@52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object p1

    #@56
    const-string v0, " would create a target cycle"

    #@58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p1

    #@5c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p1

    #@60
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw p2

    #@64
    :cond_64
    if-nez p1, :cond_6b

    #@66
    .line 881
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@68
    .line 882
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@6a
    goto :goto_7e

    #@6b
    .line 883
    :cond_6b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6d
    if-eqz v0, :cond_7a

    #@6f
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@71
    if-eqz v0, :cond_7a

    #@73
    .line 885
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@75
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@77
    .line 886
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@79
    goto :goto_7e

    #@7a
    .line 889
    :cond_7a
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    #@7c
    .line 890
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    #@7e
    .line 892
    :goto_7e
    iput p2, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    #@80
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1389
    invoke-static {p0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onSetUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V

    #@3
    .line 1390
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@5
    const/4 v1, 0x5

    #@6
    if-nez v0, :cond_25

    #@8
    if-eqz p1, :cond_25

    #@a
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@c
    if-ge v0, v1, :cond_25

    #@e
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@10
    if-eqz v0, :cond_25

    #@12
    .line 1391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_25

    #@18
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    #@1a
    if-eqz v0, :cond_25

    #@1c
    .line 1392
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1e
    .line 1393
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@21
    move-result-object v2

    #@22
    .line 1392
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V

    #@25
    .line 1395
    :cond_25
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    #@27
    .line 1396
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    #@29
    if-ge v0, v1, :cond_2f

    #@2b
    if-nez p1, :cond_2f

    #@2d
    const/4 v0, 0x1

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    :goto_30
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    #@32
    .line 1397
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@34
    if-eqz v0, :cond_3c

    #@36
    .line 1400
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@39
    move-result-object p1

    #@3a
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    #@3c
    :cond_3c
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 1702
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1703
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1433
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 1442
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_9

    #@4
    const/4 v1, -0x1

    #@5
    .line 1445
    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@8
    return-void

    #@9
    .line 1443
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    #@b
    new-instance p2, Ljava/lang/StringBuilder;

    #@d
    const-string v0, "Fragment "

    #@f
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p2

    #@16
    const-string v0, " not attached to Activity"

    #@18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p2

    #@1c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p2

    #@20
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1471
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1499
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 1502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager;->launchStartActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@b
    return-void

    #@c
    .line 1500
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    #@e
    new-instance p2, Ljava/lang/StringBuilder;

    #@10
    const-string p3, "Fragment "

    #@12
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p2

    #@19
    const-string p3, " not attached to Activity"

    #@1b
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p2

    #@1f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p2

    #@23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    move-object v9, p0

    #@1
    .line 1538
    iget-object v0, v9, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@3
    const-string v1, "Fragment "

    #@5
    if-eqz v0, :cond_65

    #@7
    const/4 v0, 0x2

    #@8
    .line 1541
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_4e

    #@e
    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, " received the following in startIntentSenderForResult() requestCode: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    move v3, p2

    #@1e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string v1, " IntentSender: "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    move-object v2, p1

    #@29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, " fillInIntent: "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    move-object v4, p3

    #@34
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string v1, " options: "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    move-object/from16 v8, p7

    #@40
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    const-string v1, "FragmentManager"

    #@4a
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    goto :goto_53

    #@4e
    :cond_4e
    move-object v2, p1

    #@4f
    move v3, p2

    #@50
    move-object v4, p3

    #@51
    move-object/from16 v8, p7

    #@53
    .line 1546
    :goto_53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@56
    move-result-object v0

    #@57
    move-object v1, p0

    #@58
    move-object v2, p1

    #@59
    move v3, p2

    #@5a
    move-object v4, p3

    #@5b
    move v5, p4

    #@5c
    move v6, p5

    #@5d
    move/from16 v7, p6

    #@5f
    move-object/from16 v8, p7

    #@61
    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/FragmentManager;->launchStartIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@64
    return-void

    #@65
    .line 1539
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    #@67
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    const-string v2, " not attached to Activity"

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v0
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    #@0
    .line 2880
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    #@2
    if-eqz v0, :cond_3c

    #@4
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@7
    move-result-object v0

    #@8
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    #@a
    if-nez v0, :cond_d

    #@c
    goto :goto_3c

    #@d
    .line 2884
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@f
    if-nez v0, :cond_19

    #@11
    .line 2885
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x0

    #@16
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    #@18
    goto :goto_3c

    #@19
    .line 2886
    :cond_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@1f
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@26
    move-result-object v1

    #@27
    if-eq v0, v1, :cond_38

    #@29
    .line 2887
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@2e
    move-result-object v0

    #@2f
    new-instance v1, Landroidx/fragment/app/Fragment$3;

    #@31
    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;)V

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@37
    goto :goto_3c

    #@38
    :cond_38
    const/4 v0, 0x1

    #@39
    .line 2894
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->callStartTransitionListener(Z)V

    #@3c
    :cond_3c
    :goto_3c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 729
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    .line 730
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    const-string v1, "{"

    #@14
    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 732
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    const-string v1, "} ("

    #@24
    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 735
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 736
    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@2e
    if-eqz v1, :cond_3e

    #@30
    const-string v1, " id=0x"

    #@32
    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 738
    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@37
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 740
    :cond_3e
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@40
    if-eqz v1, :cond_4c

    #@42
    const-string v1, " tag="

    #@44
    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 742
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    :cond_4c
    const-string v1, ")"

    #@4e
    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2475
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    return-void
.end method
