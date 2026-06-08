.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;,
        Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;,
        Landroidx/fragment/app/FragmentManager$ClearBackStackState;,
        Landroidx/fragment/app/FragmentManager$SaveBackStackState;,
        Landroidx/fragment/app/FragmentManager$RestoreBackStackState;,
        Landroidx/fragment/app/FragmentManager$PopBackStackState;,
        Landroidx/fragment/app/FragmentManager$OpGenerator;,
        Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;,
        Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Landroidx/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EXTRA_CREATED_FILLIN_INTENT:Ljava/lang/String; = "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

.field static final FRAGMENT_MANAGER_STATE_TAG:Ljava/lang/String; = "state"

.field static final FRAGMENT_NAME_PREFIX:Ljava/lang/String; = "fragment_"

.field static final FRAGMENT_STATE_TAG:Ljava/lang/String; = "state"

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1

.field static final RESULT_NAME_PREFIX:Ljava/lang/String; = "result_"

.field static final SAVED_STATE_TAG:Ljava/lang/String; = "android:support:fragments"

.field public static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBackStackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroidx/fragment/app/FragmentContainer;

.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field private mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mDestroyed:Z

.field private mExecCommit:Ljava/lang/Runnable;

.field private mExecutingActions:Z

.field private mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private mHavePendingDeferredStart:Z

.field private mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field mLaunchedFragments:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

.field private final mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private final mMenuProvider:Landroidx/core/view/MenuProvider;

.field private mNeedMenuInvalidate:Z

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/FragmentOnAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final mOnConfigurationChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/PictureInPictureModeChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTrimMemoryListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;

.field private mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateSaved:Z

.field private mStopped:Z

.field private mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

.field private mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 416
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@a
    .line 419
    new-instance v0, Landroidx/fragment/app/FragmentStore;

    #@c
    invoke-direct {v0}, Landroidx/fragment/app/FragmentStore;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@11
    .line 422
    new-instance v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    #@13
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@16
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    #@18
    .line 425
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/fragment/app/FragmentManager;Z)V

    #@1e
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    #@20
    .line 433
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@25
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    #@27
    .line 435
    new-instance v0, Ljava/util/HashMap;

    #@29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2c
    .line 436
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    #@32
    .line 438
    new-instance v0, Ljava/util/HashMap;

    #@34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@37
    .line 439
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    #@3d
    .line 440
    new-instance v0, Ljava/util/HashMap;

    #@3f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@42
    .line 441
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    #@48
    .line 444
    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@4a
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@4d
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@4f
    .line 446
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@51
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@54
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@56
    .line 449
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    #@58
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@5b
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    #@5d
    .line 454
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda1;

    #@5f
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@62
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    #@64
    .line 459
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda2;

    #@66
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@69
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    #@6b
    .line 465
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda3;

    #@6d
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@70
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    #@72
    .line 472
    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    #@74
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@77
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    #@79
    const/4 v0, -0x1

    #@7a
    .line 494
    iput v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@7c
    const/4 v0, 0x0

    #@7d
    .line 501
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    #@7f
    .line 502
    new-instance v1, Landroidx/fragment/app/FragmentManager$3;

    #@81
    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@84
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    #@86
    .line 510
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@88
    .line 511
    new-instance v0, Landroidx/fragment/app/FragmentManager$4;

    #@8a
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@8d
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@8f
    .line 524
    new-instance v0, Ljava/util/ArrayDeque;

    #@91
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@94
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    #@96
    .line 544
    new-instance v0, Landroidx/fragment/app/FragmentManager$5;

    #@98
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$5;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@9b
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    #@9d
    return-void
.end method

.method static synthetic access$000(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .registers 1

    #@0
    .line 106
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .registers 1

    #@0
    .line 106
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentStore;
    .registers 1

    #@0
    .line 106
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    return-object p0
.end method

.method private checkStateLoss()V
    .registers 3

    #@0
    .line 1609
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 1610
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "Can not perform this action after onSaveInstanceState"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
.end method

.method private cleanupExec()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1745
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@3
    .line 1746
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 1747
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@d
    return-void
.end method

.method private clearBackStackStateViewModels()V
    .registers 5

    #@0
    .line 1240
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    instance-of v1, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    #@4
    if-eqz v1, :cond_11

    #@6
    .line 1241
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->isCleared()Z

    #@f
    move-result v0

    #@10
    goto :goto_29

    #@11
    .line 1242
    :cond_11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    instance-of v0, v0, Landroid/app/Activity;

    #@17
    const/4 v1, 0x1

    #@18
    if-eqz v0, :cond_28

    #@1a
    .line 1243
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@1c
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/app/Activity;

    #@22
    .line 1244
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    #@25
    move-result v0

    #@26
    xor-int/2addr v0, v1

    #@27
    goto :goto_29

    #@28
    :cond_28
    move v0, v1

    #@29
    :goto_29
    if-eqz v0, :cond_5d

    #@2b
    .line 1249
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    #@2d
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@30
    move-result-object v0

    #@31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v0

    #@35
    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_5d

    #@3b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Landroidx/fragment/app/BackStackState;

    #@41
    .line 1250
    iget-object v1, v1, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    #@43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v1

    #@47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_35

    #@4d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v2

    #@51
    check-cast v2, Ljava/lang/String;

    #@53
    .line 1251
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@55
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Ljava/lang/String;)V

    #@5c
    goto :goto_47

    #@5d
    :cond_5d
    return-void
.end method

.method private collectAllSpecialEffectsController()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    #@0
    .line 2034
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 2036
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2f

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    #@1b
    .line 2037
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@1e
    move-result-object v2

    #@1f
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@21
    if-eqz v2, :cond_f

    #@23
    .line 2040
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@26
    move-result-object v3

    #@27
    .line 2039
    invoke-static {v2, v3}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_f

    #@2f
    :cond_2f
    return-object v0
.end method

.method private collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    #@0
    .line 1930
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    :goto_5
    if-ge p2, p3, :cond_32

    #@7
    .line 1932
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    #@d
    .line 1933
    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2f

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    #@1f
    .line 1934
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@21
    if-eqz v2, :cond_13

    #@23
    .line 1936
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@25
    if-eqz v2, :cond_13

    #@27
    .line 1938
    invoke-static {v2, p0}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_13

    #@2f
    :cond_2f
    add-int/lit8 p2, p2, 0x1

    #@31
    goto :goto_5

    #@32
    :cond_32
    return-object v0
.end method

.method private dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V
    .registers 3

    #@0
    if-eqz p1, :cond_11

    #@2
    .line 3157
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 3158
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    #@11
    :cond_11
    return-void
.end method

.method private dispatchStateChange(I)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2975
    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@4
    .line 2976
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@6
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentStore;->dispatchStateChange(I)V

    #@9
    .line 2977
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    #@c
    .line 2978
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    #@f
    move-result-object p1

    #@10
    .line 2979
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object p1

    #@14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_24

    #@1a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    #@20
    .line 2980
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_2a

    #@23
    goto :goto_14

    #@24
    .line 2983
    :cond_24
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@26
    .line 2985
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@29
    return-void

    #@2a
    :catchall_2a
    move-exception p1

    #@2b
    .line 2983
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@2d
    .line 2984
    throw p1
.end method

.method private doPendingDeferredStart()V
    .registers 2

    #@0
    .line 2080
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    const/4 v0, 0x0

    #@5
    .line 2081
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    #@7
    .line 2082
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    #@a
    :cond_a
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 128
    sput-boolean p0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    #@2
    return-void
.end method

.method private endAnimatingAwayFragments()V
    .registers 3

    #@0
    .line 2027
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 2028
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_18

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController;

    #@14
    .line 2029
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method private ensureExecReady(Z)V
    .registers 4

    #@0
    .line 1694
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@2
    if-nez v0, :cond_4c

    #@4
    .line 1698
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@6
    if-nez v0, :cond_1c

    #@8
    .line 1699
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    #@a
    if-eqz p1, :cond_14

    #@c
    .line 1700
    new-instance p1, Ljava/lang/IllegalStateException;

    #@e
    const-string v0, "FragmentManager has been destroyed"

    #@10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw p1

    #@14
    .line 1702
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    #@16
    const-string v0, "FragmentManager has not been attached to a host."

    #@18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p1

    #@1c
    .line 1706
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@22
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@29
    move-result-object v1

    #@2a
    if-ne v0, v1, :cond_44

    #@2c
    if-nez p1, :cond_31

    #@2e
    .line 1711
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    #@31
    .line 1714
    :cond_31
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@33
    if-nez p1, :cond_43

    #@35
    .line 1715
    new-instance p1, Ljava/util/ArrayList;

    #@37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@3a
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@3c
    .line 1716
    new-instance p1, Ljava/util/ArrayList;

    #@3e
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@43
    :cond_43
    return-void

    #@44
    .line 1707
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    #@46
    const-string v0, "Must be called from main thread of fragment host"

    #@48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4b
    throw p1

    #@4c
    .line 1695
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    #@4e
    const-string v0, "FragmentManager is already executing transactions"

    #@50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@53
    throw p1
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    #@0
    :goto_0
    if-ge p2, p3, :cond_26

    #@2
    .line 1958
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    #@8
    .line 1959
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/Boolean;

    #@e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1c

    #@14
    const/4 v1, -0x1

    #@15
    .line 1961
    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@18
    .line 1962
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->executePopOps()V

    #@1b
    goto :goto_23

    #@1c
    :cond_1c
    const/4 v1, 0x1

    #@1d
    .line 1964
    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@20
    .line 1965
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    #@23
    :goto_23
    add-int/lit8 p2, p2, 0x1

    #@25
    goto :goto_0

    #@26
    :cond_26
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 1837
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    #@6
    iget-boolean v0, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    #@8
    .line 1839
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    #@a
    if-nez v1, :cond_14

    #@c
    .line 1840
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    #@13
    goto :goto_17

    #@14
    .line 1842
    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@17
    .line 1844
    :goto_17
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    #@19
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@1b
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@22
    .line 1845
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    #@25
    move-result-object v1

    #@26
    const/4 v2, 0x0

    #@27
    move v3, p3

    #@28
    move v4, v2

    #@29
    :goto_29
    const/4 v5, 0x1

    #@2a
    if-ge v3, p4, :cond_58

    #@2c
    .line 1847
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    check-cast v6, Landroidx/fragment/app/BackStackRecord;

    #@32
    .line 1848
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    check-cast v7, Ljava/lang/Boolean;

    #@38
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    #@3b
    move-result v7

    #@3c
    if-nez v7, :cond_45

    #@3e
    .line 1850
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    #@43
    move-result-object v1

    #@44
    goto :goto_4b

    #@45
    .line 1852
    :cond_45
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    #@4a
    move-result-object v1

    #@4b
    :goto_4b
    if-nez v4, :cond_54

    #@4d
    .line 1854
    iget-boolean v4, v6, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    #@4f
    if-eqz v4, :cond_52

    #@51
    goto :goto_54

    #@52
    :cond_52
    move v4, v2

    #@53
    goto :goto_55

    #@54
    :cond_54
    :goto_54
    move v4, v5

    #@55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    #@57
    goto :goto_29

    #@58
    .line 1856
    :cond_58
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@5d
    if-nez v0, :cond_93

    #@5f
    .line 1858
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@61
    if-lt v0, v5, :cond_93

    #@63
    move v0, p3

    #@64
    :goto_64
    if-ge v0, p4, :cond_93

    #@66
    .line 1862
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    #@6c
    .line 1863
    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v1

    #@72
    :cond_72
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_90

    #@78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v2

    #@7c
    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    #@7e
    .line 1864
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@80
    if-eqz v2, :cond_72

    #@82
    .line 1865
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@84
    if-eqz v3, :cond_72

    #@86
    .line 1867
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@89
    move-result-object v2

    #@8a
    .line 1868
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@8c
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    #@8f
    goto :goto_72

    #@90
    :cond_90
    add-int/lit8 v0, v0, 0x1

    #@92
    goto :goto_64

    #@93
    .line 1873
    :cond_93
    invoke-static {p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    #@96
    add-int/lit8 v0, p4, -0x1

    #@98
    .line 1877
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9b
    move-result-object v0

    #@9c
    check-cast v0, Ljava/lang/Boolean;

    #@9e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@a1
    move-result v0

    #@a2
    move v1, p3

    #@a3
    :goto_a3
    if-ge v1, p4, :cond_ed

    #@a5
    .line 1881
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a8
    move-result-object v2

    #@a9
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    #@ab
    if-eqz v0, :cond_cc

    #@ad
    .line 1884
    iget-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@af
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b2
    move-result v3

    #@b3
    sub-int/2addr v3, v5

    #@b4
    :goto_b4
    if-ltz v3, :cond_ea

    #@b6
    .line 1885
    iget-object v6, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bb
    move-result-object v6

    #@bc
    check-cast v6, Landroidx/fragment/app/FragmentTransaction$Op;

    #@be
    .line 1886
    iget-object v6, v6, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@c0
    if-eqz v6, :cond_c9

    #@c2
    .line 1889
    invoke-virtual {p0, v6}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@c5
    move-result-object v6

    #@c6
    .line 1890
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@c9
    :cond_c9
    add-int/lit8 v3, v3, -0x1

    #@cb
    goto :goto_b4

    #@cc
    .line 1894
    :cond_cc
    iget-object v2, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d1
    move-result-object v2

    #@d2
    :cond_d2
    :goto_d2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d5
    move-result v3

    #@d6
    if-eqz v3, :cond_ea

    #@d8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@db
    move-result-object v3

    #@dc
    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    #@de
    .line 1895
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@e0
    if-eqz v3, :cond_d2

    #@e2
    .line 1898
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@e5
    move-result-object v3

    #@e6
    .line 1899
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@e9
    goto :goto_d2

    #@ea
    :cond_ea
    add-int/lit8 v1, v1, 0x1

    #@ec
    goto :goto_a3

    #@ed
    .line 1906
    :cond_ed
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@ef
    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    #@f2
    .line 1907
    invoke-direct {p0, p1, p3, p4}, Landroidx/fragment/app/FragmentManager;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;

    #@f5
    move-result-object v1

    #@f6
    .line 1909
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f9
    move-result-object v1

    #@fa
    :goto_fa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@fd
    move-result v2

    #@fe
    if-eqz v2, :cond_110

    #@100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@103
    move-result-object v2

    #@104
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    #@106
    .line 1910
    invoke-virtual {v2, v0}, Landroidx/fragment/app/SpecialEffectsController;->updateOperationDirection(Z)V

    #@109
    .line 1911
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->markPostponedState()V

    #@10c
    .line 1912
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    #@10f
    goto :goto_fa

    #@110
    :cond_110
    :goto_110
    if-ge p3, p4, :cond_131

    #@112
    .line 1916
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@115
    move-result-object v0

    #@116
    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    #@118
    .line 1917
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11b
    move-result-object v1

    #@11c
    check-cast v1, Ljava/lang/Boolean;

    #@11e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@121
    move-result v1

    #@122
    if-eqz v1, :cond_12b

    #@124
    .line 1918
    iget v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@126
    if-ltz v1, :cond_12b

    #@128
    const/4 v1, -0x1

    #@129
    .line 1919
    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@12b
    .line 1921
    :cond_12b
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    #@12e
    add-int/lit8 p3, p3, 0x1

    #@130
    goto :goto_110

    #@131
    :cond_131
    if-eqz v4, :cond_136

    #@133
    .line 1924
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->reportBackStackChanged()V

    #@136
    :cond_136
    return-void
.end method

.method private findBackStackIndex(Ljava/lang/String;IZ)I
    .registers 8

    #@0
    .line 2295
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@2
    const/4 v1, -0x1

    #@3
    if-eqz v0, :cond_7b

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_d

    #@b
    goto/16 :goto_7b

    #@d
    :cond_d
    if-nez p1, :cond_1e

    #@f
    if-gez p2, :cond_1e

    #@11
    if-eqz p3, :cond_15

    #@13
    const/4 p1, 0x0

    #@14
    return p1

    #@15
    .line 2302
    :cond_15
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result p1

    #@1b
    add-int/lit8 p1, p1, -0x1

    #@1d
    return p1

    #@1e
    .line 2307
    :cond_1e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v0

    #@24
    add-int/lit8 v0, v0, -0x1

    #@26
    :goto_26
    if-ltz v0, :cond_47

    #@28
    .line 2309
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    #@30
    if-eqz p1, :cond_3d

    #@32
    .line 2310
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_3d

    #@3c
    goto :goto_47

    #@3d
    :cond_3d
    if-ltz p2, :cond_44

    #@3f
    .line 2313
    iget v2, v2, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@41
    if-ne p2, v2, :cond_44

    #@43
    goto :goto_47

    #@44
    :cond_44
    add-int/lit8 v0, v0, -0x1

    #@46
    goto :goto_26

    #@47
    :cond_47
    :goto_47
    if-gez v0, :cond_4a

    #@49
    return v0

    #@4a
    :cond_4a
    if-eqz p3, :cond_6d

    #@4c
    :goto_4c
    if-lez v0, :cond_7a

    #@4e
    .line 2324
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@50
    add-int/lit8 v1, v0, -0x1

    #@52
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object p3

    #@56
    check-cast p3, Landroidx/fragment/app/BackStackRecord;

    #@58
    if-eqz p1, :cond_64

    #@5a
    .line 2325
    invoke-virtual {p3}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-nez v1, :cond_6a

    #@64
    :cond_64
    if-ltz p2, :cond_7a

    #@66
    iget p3, p3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@68
    if-ne p2, p3, :cond_7a

    #@6a
    :cond_6a
    add-int/lit8 v0, v0, -0x1

    #@6c
    goto :goto_4c

    #@6d
    .line 2332
    :cond_6d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@72
    move-result p1

    #@73
    add-int/lit8 p1, p1, -0x1

    #@75
    if-ne v0, p1, :cond_78

    #@77
    return v1

    #@78
    :cond_78
    add-int/lit8 v0, v0, 0x1

    #@7a
    :cond_7a
    return v0

    #@7b
    :cond_7b
    :goto_7b
    return v1
.end method

.method public static findFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroid/view/View;",
            ")TF;"
        }
    .end annotation

    #@0
    .line 1055
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 1057
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "View "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p0

    #@14
    const-string v1, " does not have a Fragment set"

    #@16
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method static findFragmentManager(Landroid/view/View;)Landroidx/fragment/app/FragmentManager;
    .registers 5

    #@0
    .line 1118
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_36

    #@6
    .line 1123
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_11

    #@c
    .line 1128
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@f
    move-result-object p0

    #@10
    goto :goto_53

    #@11
    .line 1124
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    const-string v3, "The Fragment "

    #@17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string v2, " that owns View "

    #@20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p0

    #@28
    const-string v0, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    #@2a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object p0

    #@32
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 1130
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@39
    move-result-object v0

    #@3a
    .line 1132
    :goto_3a
    instance-of v1, v0, Landroid/content/ContextWrapper;

    #@3c
    if-eqz v1, :cond_4c

    #@3e
    .line 1133
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    #@40
    if-eqz v1, :cond_45

    #@42
    .line 1134
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    #@44
    goto :goto_4d

    #@45
    .line 1137
    :cond_45
    check-cast v0, Landroid/content/ContextWrapper;

    #@47
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@4a
    move-result-object v0

    #@4b
    goto :goto_3a

    #@4c
    :cond_4c
    const/4 v0, 0x0

    #@4d
    :goto_4d
    if-eqz v0, :cond_54

    #@4f
    .line 1140
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@52
    move-result-object p0

    #@53
    :goto_53
    return-object p0

    #@54
    .line 1142
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    #@56
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    const-string v2, "View "

    #@5a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object p0

    #@61
    const-string v1, " is not within a subclass of FragmentActivity."

    #@63
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object p0

    #@67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object p0

    #@6b
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v0
.end method

.method private static findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    :goto_0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_17

    #@3
    .line 1070
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_a

    #@9
    return-object v1

    #@a
    .line 1074
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object p0

    #@e
    .line 1075
    instance-of v1, p0, Landroid/view/View;

    #@10
    if-eqz v1, :cond_15

    #@12
    check-cast p0, Landroid/view/View;

    #@14
    goto :goto_0

    #@15
    :cond_15
    move-object p0, v0

    #@16
    goto :goto_0

    #@17
    :cond_17
    return-object v0
.end method

.method private forcePostponedTransactions()V
    .registers 3

    #@0
    .line 2016
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 2017
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_18

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController;

    #@14
    .line 2018
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController;->forcePostponedExecutePendingOperations()V

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 2059
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 2060
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v1, :cond_e

    #@c
    .line 2061
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_4b

    #@d
    return v2

    #@e
    .line 2065
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    move v3, v2

    #@15
    :goto_15
    if-ge v2, v1, :cond_27

    #@17
    .line 2067
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Landroidx/fragment/app/FragmentManager$OpGenerator;

    #@1f
    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    #@22
    move-result v4
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_39

    #@23
    or-int/2addr v3, v4

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_15

    #@27
    .line 2072
    :cond_27
    :try_start_27
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@29
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@2c
    .line 2073
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2e
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@31
    move-result-object p1

    #@32
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    #@34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@37
    .line 2075
    monitor-exit v0

    #@38
    return v3

    #@39
    :catchall_39
    move-exception p1

    #@3a
    .line 2072
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    #@3f
    .line 2073
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@41
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@44
    move-result-object p2

    #@45
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    #@47
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@4a
    .line 2074
    throw p1

    #@4b
    :catchall_4b
    move-exception p1

    #@4c
    .line 2075
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_27 .. :try_end_4d} :catchall_4b

    #@4d
    throw p1
.end method

.method private getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 3

    #@0
    .line 1174
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method private getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .registers 4

    #@0
    .line 1991
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1992
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@6
    return-object p1

    #@7
    .line 1995
    :cond_7
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@9
    const/4 v1, 0x0

    #@a
    if-gtz v0, :cond_d

    #@c
    return-object v1

    #@d
    .line 2002
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    #@f
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_24

    #@15
    .line 2003
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    #@17
    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@19
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    #@1c
    move-result-object p1

    #@1d
    .line 2005
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@1f
    if-eqz v0, :cond_24

    #@21
    .line 2006
    check-cast p1, Landroid/view/ViewGroup;

    #@23
    return-object p1

    #@24
    :cond_24
    return-object v1
.end method

.method static getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 2

    #@0
    .line 1087
    sget v0, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    .line 1088
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 1089
    check-cast p0, Landroidx/fragment/app/Fragment;

    #@c
    return-object p0

    #@d
    :cond_d
    const/4 p0, 0x0

    #@e
    return-object p0
.end method

.method public static isLoggingEnabled(I)Z
    .registers 2

    #@0
    .line 134
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    #@2
    if-nez v0, :cond_f

    #@4
    const-string v0, "FragmentManager"

    #@6
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9
    move-result p0

    #@a
    if-eqz p0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p0, 0x1

    #@10
    :goto_10
    return p0
.end method

.method private isMenuAvailable(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    #@0
    .line 3353
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    #@6
    if-nez v0, :cond_10

    #@8
    :cond_8
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@a
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->checkForMenus()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_12

    #@10
    :cond_10
    const/4 p1, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    :goto_13
    return p1
.end method

.method private isParentAdded()Z
    .registers 3

    #@0
    .line 3364
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 3367
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@e
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@11
    move-result-object v0

    #@12
    invoke-direct {v0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 v1, 0x0

    #@1a
    :goto_1a
    return v1
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    .line 854
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@4
    const/4 v0, 0x1

    #@5
    .line 855
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    #@8
    .line 857
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@a
    if-eqz v1, :cond_1b

    #@c
    if-gez p2, :cond_1b

    #@e
    if-nez p1, :cond_1b

    #@10
    .line 860
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@13
    move-result-object v1

    #@14
    .line 861
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1b

    #@1a
    return v0

    #@1b
    .line 867
    :cond_1b
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@1d
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@1f
    move-object v2, p0

    #@20
    move-object v5, p1

    #@21
    move v6, p2

    #@22
    move v7, p3

    #@23
    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    #@26
    move-result p1

    #@27
    if-eqz p1, :cond_3b

    #@29
    .line 869
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@2b
    .line 871
    :try_start_2b
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@2d
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@2f
    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    #@32
    .line 873
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    #@35
    goto :goto_3b

    #@36
    :catchall_36
    move-exception p1

    #@37
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    #@3a
    .line 874
    throw p1

    #@3b
    .line 877
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    #@3e
    .line 878
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    #@41
    .line 879
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@43
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    #@46
    return p1
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 1790
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 1794
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    if-ne v0, v1, :cond_5f

    #@11
    .line 1798
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    const/4 v1, 0x0

    #@16
    move v2, v1

    #@17
    :goto_17
    if-ge v1, v0, :cond_59

    #@19
    .line 1801
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    #@1f
    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    #@21
    if-nez v3, :cond_56

    #@23
    if-eq v2, v1, :cond_28

    #@25
    .line 1805
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    #@28
    :cond_28
    add-int/lit8 v2, v1, 0x1

    #@2a
    .line 1810
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/Boolean;

    #@30
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_51

    #@36
    :goto_36
    if-ge v2, v0, :cond_51

    #@38
    .line 1812
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Ljava/lang/Boolean;

    #@3e
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_51

    #@44
    .line 1813
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    #@4a
    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    #@4c
    if-nez v3, :cond_51

    #@4e
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_36

    #@51
    .line 1817
    :cond_51
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    #@54
    add-int/lit8 v1, v2, -0x1

    #@56
    :cond_56
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_17

    #@59
    :cond_59
    if-eq v2, v0, :cond_5e

    #@5b
    .line 1823
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    #@5e
    :cond_5e
    return-void

    #@5f
    .line 1795
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@61
    const-string p2, "Internal error with the back stack records"

    #@63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@66
    throw p1
.end method

.method private reportBackStackChanged()V
    .registers 3

    #@0
    .line 2087
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_1b

    #@4
    const/4 v0, 0x0

    #@5
    .line 2088
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_1b

    #@d
    .line 2089
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    #@15
    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    return-void
.end method

.method static reverseTransit(I)I
    .registers 4

    #@0
    const/16 v0, 0x2002

    #@2
    const/16 v1, 0x1001

    #@4
    if-eq p0, v1, :cond_19

    #@6
    if-eq p0, v0, :cond_16

    #@8
    const/16 v0, 0x1004

    #@a
    const/16 v1, 0x2005

    #@c
    if-eq p0, v1, :cond_19

    #@e
    const/16 v2, 0x1003

    #@10
    if-eq p0, v2, :cond_18

    #@12
    if-eq p0, v0, :cond_16

    #@14
    const/4 v0, 0x0

    #@15
    goto :goto_19

    #@16
    :cond_16
    move v0, v1

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v0, v2

    #@19
    :cond_19
    :goto_19
    return v0
.end method

.method private setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    #@0
    .line 1977
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_37

    #@6
    .line 1979
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    #@12
    move-result v2

    #@13
    add-int/2addr v1, v2

    #@14
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    #@17
    move-result v2

    #@18
    add-int/2addr v1, v2

    #@19
    if-lez v1, :cond_37

    #@1b
    .line 1981
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    if-nez v1, :cond_28

    #@23
    .line 1982
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    #@25
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@28
    .line 1984
    :cond_28
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    #@2a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroidx/fragment/app/Fragment;

    #@30
    .line 1985
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    #@33
    move-result p1

    #@34
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    #@37
    :cond_37
    return-void
.end method

.method private startPendingDeferredFragments()V
    .registers 3

    #@0
    .line 1444
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1a

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@16
    .line 1445
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .registers 9

    #@0
    .line 552
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "FragmentManager"

    #@6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    const-string v0, "Activity state:"

    #@b
    .line 553
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 554
    new-instance v0, Landroidx/fragment/app/LogWriter;

    #@10
    invoke-direct {v0, v1}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    #@13
    .line 555
    new-instance v2, Ljava/io/PrintWriter;

    #@15
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@18
    .line 556
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@1a
    const-string v3, "Failed dumping state"

    #@1c
    const/4 v4, 0x0

    #@1d
    const/4 v5, 0x0

    #@1e
    const-string v6, "  "

    #@20
    if-eqz v0, :cond_2d

    #@22
    :try_start_22
    new-array v4, v4, [Ljava/lang/String;

    #@24
    .line 558
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    #@27
    goto :goto_37

    #@28
    :catch_28
    move-exception v0

    #@29
    .line 560
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_37

    #@2d
    :cond_2d
    :try_start_2d
    new-array v0, v4, [Ljava/lang/String;

    #@2f
    .line 564
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    #@32
    goto :goto_37

    #@33
    :catch_33
    move-exception v0

    #@34
    .line 566
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 569
    :goto_37
    throw p1
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .registers 4

    #@0
    .line 632
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 633
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v1

    #@9
    const/4 v2, 0x1

    #@a
    if-nez v1, :cond_13

    #@c
    .line 634
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    #@e
    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    #@11
    .line 635
    monitor-exit v0

    #@12
    return-void

    #@13
    .line 637
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    #@14
    .line 641
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    #@16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    #@19
    move-result v1

    #@1a
    if-lez v1, :cond_25

    #@1c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@1e
    .line 642
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    const/4 v2, 0x0

    #@26
    .line 641
    :goto_26
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    #@29
    return-void

    #@2a
    :catchall_2a
    move-exception v1

    #@2b
    .line 637
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    #@2c
    throw v1
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .registers 3

    #@0
    .line 2095
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 2096
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@b
    .line 2098
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .registers 5

    #@0
    .line 1473
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1474
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    #@6
    invoke-static {p1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onFragmentReuse(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    #@9
    :cond_9
    const/4 v0, 0x2

    #@a
    .line 1476
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_24

    #@10
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    const-string v1, "add: "

    #@14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    const-string v1, "FragmentManager"

    #@21
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1477
    :cond_24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@27
    move-result-object v0

    #@28
    .line 1478
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2a
    .line 1479
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2c
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    #@2f
    .line 1480
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@31
    if-nez v1, :cond_4a

    #@33
    .line 1481
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@35
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    #@38
    const/4 v1, 0x0

    #@39
    .line 1482
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@3b
    .line 1483
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@3d
    if-nez v2, :cond_41

    #@3f
    .line 1484
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    #@41
    .line 1486
    :cond_41
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    #@44
    move-result p1

    #@45
    if-eqz p1, :cond_4a

    #@47
    const/4 p1, 0x1

    #@48
    .line 1487
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@4a
    :cond_4a
    return-object v0
.end method

.method public addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .registers 3

    #@0
    .line 3302
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    #@0
    .line 903
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 904
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@b
    .line 906
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    #@0
    .line 1178
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@5
    return-void
.end method

.method allocBackStackIndex()I
    .registers 2

    #@0
    .line 1684
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    #@0
    .line 2607
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_172

    #@4
    .line 2608
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@6
    .line 2609
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    #@8
    .line 2610
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@a
    if-eqz p3, :cond_15

    #@c
    .line 2615
    new-instance p2, Landroidx/fragment/app/FragmentManager$7;

    #@e
    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    #@11
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    #@14
    goto :goto_1f

    #@15
    .line 2623
    :cond_15
    instance-of p2, p1, Landroidx/fragment/app/FragmentOnAttachListener;

    #@17
    if-eqz p2, :cond_1f

    #@19
    .line 2624
    move-object p2, p1

    #@1a
    check-cast p2, Landroidx/fragment/app/FragmentOnAttachListener;

    #@1c
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    #@1f
    .line 2627
    :cond_1f
    :goto_1f
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@21
    if-eqz p2, :cond_26

    #@23
    .line 2631
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    #@26
    .line 2634
    :cond_26
    instance-of p2, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    #@28
    if-eqz p2, :cond_3b

    #@2a
    .line 2635
    move-object p2, p1

    #@2b
    check-cast p2, Landroidx/activity/OnBackPressedDispatcherOwner;

    #@2d
    .line 2636
    invoke-interface {p2}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@33
    if-eqz p3, :cond_36

    #@35
    move-object p2, p3

    #@36
    .line 2638
    :cond_36
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    #@38
    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    #@3b
    :cond_3b
    if-eqz p3, :cond_46

    #@3d
    .line 2643
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@3f
    invoke-direct {p1, p3}, Landroidx/fragment/app/FragmentManager;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    #@42
    move-result-object p1

    #@43
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@45
    goto :goto_5f

    #@46
    .line 2644
    :cond_46
    instance-of p2, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    #@48
    if-eqz p2, :cond_57

    #@4a
    .line 2645
    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    #@4c
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    #@4f
    move-result-object p1

    #@50
    .line 2646
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;

    #@53
    move-result-object p1

    #@54
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@56
    goto :goto_5f

    #@57
    .line 2648
    :cond_57
    new-instance p1, Landroidx/fragment/app/FragmentManagerViewModel;

    #@59
    const/4 p2, 0x0

    #@5a
    invoke-direct {p1, p2}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    #@5d
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@5f
    .line 2651
    :goto_5f
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@61
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    #@64
    move-result p2

    #@65
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@68
    .line 2652
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@6a
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@6c
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentStore;->setNonConfig(Landroidx/fragment/app/FragmentManagerViewModel;)V

    #@6f
    .line 2654
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@71
    instance-of p2, p1, Landroidx/savedstate/SavedStateRegistryOwner;

    #@73
    if-eqz p2, :cond_90

    #@75
    if-nez p3, :cond_90

    #@77
    .line 2655
    check-cast p1, Landroidx/savedstate/SavedStateRegistryOwner;

    #@79
    .line 2656
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    #@7c
    move-result-object p1

    #@7d
    .line 2657
    new-instance p2, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda4;

    #@7f
    invoke-direct {p2, p0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda4;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@82
    const-string v0, "android:support:fragments"

    #@84
    invoke-virtual {p1, v0, p2}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    #@87
    .line 2663
    invoke-virtual {p1, v0}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    #@8a
    move-result-object p1

    #@8b
    if-eqz p1, :cond_90

    #@8d
    .line 2665
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    #@90
    .line 2669
    :cond_90
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@92
    instance-of p2, p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    #@94
    if-eqz p2, :cond_12e

    #@96
    .line 2670
    check-cast p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    #@98
    .line 2671
    invoke-interface {p1}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    #@9b
    move-result-object p1

    #@9c
    if-eqz p3, :cond_b4

    #@9e
    .line 2673
    new-instance p2, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@a5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object p2

    #@a9
    const-string v0, ":"

    #@ab
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object p2

    #@af
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object p2

    #@b3
    goto :goto_b6

    #@b4
    :cond_b4
    const-string p2, ""

    #@b6
    .line 2674
    :goto_b6
    new-instance v0, Ljava/lang/StringBuilder;

    #@b8
    const-string v1, "FragmentManager:"

    #@ba
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@bd
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object p2

    #@c1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object p2

    #@c5
    .line 2676
    new-instance v0, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    const-string v1, "StartActivityForResult"

    #@d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v0

    #@d4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v0

    #@d8
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    #@da
    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    #@dd
    new-instance v2, Landroidx/fragment/app/FragmentManager$8;

    #@df
    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$8;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@e2
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    #@e5
    move-result-object v0

    #@e6
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@e8
    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v0

    #@f1
    const-string v1, "StartIntentSenderForResult"

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v0

    #@f7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    new-instance v1, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    #@fd
    invoke-direct {v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>()V

    #@100
    new-instance v2, Landroidx/fragment/app/FragmentManager$9;

    #@102
    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$9;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@105
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    #@108
    move-result-object v0

    #@109
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@10b
    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object p2

    #@114
    const-string v0, "RequestPermissions"

    #@116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object p2

    #@11a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object p2

    #@11e
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    #@120
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    #@123
    new-instance v1, Landroidx/fragment/app/FragmentManager$10;

    #@125
    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$10;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@128
    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    #@12b
    move-result-object p1

    #@12c
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    #@12e
    .line 2766
    :cond_12e
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@130
    instance-of p2, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    #@132
    if-eqz p2, :cond_13b

    #@134
    .line 2767
    check-cast p1, Landroidx/core/content/OnConfigurationChangedProvider;

    #@136
    .line 2769
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    #@138
    invoke-interface {p1, p2}, Landroidx/core/content/OnConfigurationChangedProvider;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    #@13b
    .line 2773
    :cond_13b
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@13d
    instance-of p2, p1, Landroidx/core/content/OnTrimMemoryProvider;

    #@13f
    if-eqz p2, :cond_148

    #@141
    .line 2774
    check-cast p1, Landroidx/core/content/OnTrimMemoryProvider;

    #@143
    .line 2775
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    #@145
    invoke-interface {p1, p2}, Landroidx/core/content/OnTrimMemoryProvider;->addOnTrimMemoryListener(Landroidx/core/util/Consumer;)V

    #@148
    .line 2778
    :cond_148
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@14a
    instance-of p2, p1, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    #@14c
    if-eqz p2, :cond_155

    #@14e
    .line 2779
    check-cast p1, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    #@150
    .line 2781
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    #@152
    invoke-interface {p1, p2}, Landroidx/core/app/OnMultiWindowModeChangedProvider;->addOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    #@155
    .line 2785
    :cond_155
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@157
    instance-of p2, p1, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    #@159
    if-eqz p2, :cond_162

    #@15b
    .line 2786
    check-cast p1, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    #@15d
    .line 2788
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    #@15f
    invoke-interface {p1, p2}, Landroidx/core/app/OnPictureInPictureModeChangedProvider;->addOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V

    #@162
    .line 2792
    :cond_162
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@164
    instance-of p2, p1, Landroidx/core/view/MenuHost;

    #@166
    if-eqz p2, :cond_171

    #@168
    if-nez p3, :cond_171

    #@16a
    .line 2793
    check-cast p1, Landroidx/core/view/MenuHost;

    #@16c
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    #@16e
    invoke-interface {p1, p2}, Landroidx/core/view/MenuHost;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    #@171
    :cond_171
    return-void

    #@172
    .line 2607
    :cond_172
    new-instance p1, Ljava/lang/IllegalStateException;

    #@174
    const-string p2, "Already attached"

    #@176
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@179
    throw p1
.end method

.method attachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    .line 1556
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v1

    #@5
    const-string v2, "FragmentManager"

    #@7
    if-eqz v1, :cond_1b

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v3, "attach: "

    #@d
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1557
    :cond_1b
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@1d
    if-eqz v1, :cond_4c

    #@1f
    const/4 v1, 0x0

    #@20
    .line 1558
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@22
    .line 1559
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@24
    if-nez v1, :cond_4c

    #@26
    .line 1560
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@28
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    #@2b
    .line 1561
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_43

    #@31
    new-instance v0, Ljava/lang/StringBuilder;

    #@33
    const-string v1, "add from attach: "

    #@35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1562
    :cond_43
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    #@46
    move-result p1

    #@47
    if-eqz p1, :cond_4c

    #@49
    const/4 p1, 0x1

    #@4a
    .line 1563
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@4c
    :cond_4c
    return-void
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2

    #@0
    .line 598
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    #@2
    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    #@5
    return-object v0
.end method

.method checkForMenus()Z
    .registers 5

    #@0
    .line 3341
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    move v2, v1

    #@c
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_22

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@18
    if-eqz v3, :cond_1e

    #@1a
    .line 3343
    invoke-direct {p0, v3}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    #@1d
    move-result v2

    #@1e
    :cond_1e
    if-eqz v2, :cond_c

    #@20
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    :cond_22
    return v1
.end method

.method public clearBackStack(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 759
    new-instance v0, Landroidx/fragment/app/FragmentManager$ClearBackStackState;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/FragmentManager$ClearBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@9
    return-void
.end method

.method clearBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    .line 2257
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager;->restoreBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    :cond_8
    const/4 v4, -0x1

    #@9
    const/4 v5, 0x1

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object v2, p2

    #@d
    move-object v3, p3

    #@e
    .line 2261
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    #@11
    move-result p1

    #@12
    return p1
.end method

.method public final clearFragmentResult(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 938
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    const/4 v0, 0x2

    #@6
    .line 939
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_20

    #@c
    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const-string v1, "Clearing fragment result with key "

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    const-string v0, "FragmentManager"

    #@1d
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    :cond_20
    return-void
.end method

.method public final clearFragmentResultListener(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 989
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 991
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    #@d
    :cond_d
    const/4 v0, 0x2

    #@e
    .line 993
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_28

    #@14
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    const-string v1, "Clearing FragmentResultListener for key "

    #@18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    const-string v0, "FragmentManager"

    #@25
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    :cond_28
    return-void
.end method

.method createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .registers 5

    #@0
    .line 1459
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 1463
    :cond_b
    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    #@d
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@f
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@11
    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    #@14
    .line 1466
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@16
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    #@21
    .line 1468
    iget p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@23
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    #@26
    return-object v0
.end method

.method detachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    .line 1540
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v1

    #@5
    const-string v2, "FragmentManager"

    #@7
    if-eqz v1, :cond_1b

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v3, "detach: "

    #@d
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1541
    :cond_1b
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@1d
    if-nez v1, :cond_4e

    #@1f
    const/4 v1, 0x1

    #@20
    .line 1542
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@22
    .line 1543
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@24
    if-eqz v3, :cond_4e

    #@26
    .line 1545
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3e

    #@2c
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e
    const-string v3, "remove from detach: "

    #@30
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1546
    :cond_3e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@40
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    #@43
    .line 1547
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_4b

    #@49
    .line 1548
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@4b
    .line 1550
    :cond_4b
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    #@4e
    :cond_4e
    return-void
.end method

.method dispatchActivityCreated()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2892
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@3
    .line 2893
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@5
    .line 2894
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@a
    const/4 v0, 0x4

    #@b
    .line 2895
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@e
    return-void
.end method

.method dispatchAttach()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2874
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@3
    .line 2875
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@5
    .line 2876
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@a
    .line 2877
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@d
    return-void
.end method

.method dispatchConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .registers 6

    #@0
    if-eqz p2, :cond_12

    #@2
    .line 3026
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@4
    instance-of v0, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 3027
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string v1, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@12
    .line 3031
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v0

    #@1c
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_36

    #@22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@28
    if-eqz v1, :cond_1c

    #@2a
    .line 3033
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    #@2d
    if-eqz p2, :cond_1c

    #@2f
    .line 3035
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@31
    const/4 v2, 0x1

    #@32
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;Z)V

    #@35
    goto :goto_1c

    #@36
    :cond_36
    return-void
.end method

.method dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    #@0
    .line 3120
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-ge v0, v2, :cond_7

    #@6
    return v1

    #@7
    .line 3123
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_26

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@1d
    if-eqz v3, :cond_11

    #@1f
    .line 3125
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_11

    #@25
    return v2

    #@26
    :cond_26
    return v1
.end method

.method dispatchCreate()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2881
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@3
    .line 2882
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@5
    .line 2883
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@a
    const/4 v0, 0x1

    #@b
    .line 2884
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@e
    return-void
.end method

.method dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10

    #@0
    .line 3059
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-ge v0, v2, :cond_7

    #@6
    return v1

    #@7
    .line 3064
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    const/4 v3, 0x0

    #@12
    move v4, v1

    #@13
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_39

    #@19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Landroidx/fragment/app/Fragment;

    #@1f
    if-eqz v5, :cond_13

    #@21
    .line 3066
    invoke-virtual {p0, v5}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_13

    #@27
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_13

    #@2d
    if-nez v3, :cond_34

    #@2f
    .line 3069
    new-instance v3, Ljava/util/ArrayList;

    #@31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@34
    .line 3071
    :cond_34
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    move v4, v2

    #@38
    goto :goto_13

    #@39
    .line 3076
    :cond_39
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    #@3b
    if-eqz p1, :cond_5b

    #@3d
    .line 3077
    :goto_3d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@42
    move-result p1

    #@43
    if-ge v1, p1, :cond_5b

    #@45
    .line 3078
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    #@47
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object p1

    #@4b
    check-cast p1, Landroidx/fragment/app/Fragment;

    #@4d
    if-eqz v3, :cond_55

    #@4f
    .line 3079
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@52
    move-result p2

    #@53
    if-nez p2, :cond_58

    #@55
    .line 3080
    :cond_55
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    #@58
    :cond_58
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_3d

    #@5b
    .line 3085
    :cond_5b
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    #@5d
    return v4
.end method

.method dispatchDestroy()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 2927
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    #@3
    .line 2928
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@6
    .line 2929
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    #@9
    .line 2930
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->clearBackStackStateViewModels()V

    #@c
    const/4 v0, -0x1

    #@d
    .line 2931
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@10
    .line 2932
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@12
    instance-of v1, v0, Landroidx/core/content/OnTrimMemoryProvider;

    #@14
    if-eqz v1, :cond_1d

    #@16
    .line 2933
    check-cast v0, Landroidx/core/content/OnTrimMemoryProvider;

    #@18
    .line 2934
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    #@1a
    invoke-interface {v0, v1}, Landroidx/core/content/OnTrimMemoryProvider;->removeOnTrimMemoryListener(Landroidx/core/util/Consumer;)V

    #@1d
    .line 2936
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@1f
    instance-of v1, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    #@21
    if-eqz v1, :cond_2a

    #@23
    .line 2937
    check-cast v0, Landroidx/core/content/OnConfigurationChangedProvider;

    #@25
    .line 2939
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    #@27
    invoke-interface {v0, v1}, Landroidx/core/content/OnConfigurationChangedProvider;->removeOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    #@2a
    .line 2942
    :cond_2a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2c
    instance-of v1, v0, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    #@2e
    if-eqz v1, :cond_37

    #@30
    .line 2943
    check-cast v0, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    #@32
    .line 2945
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    #@34
    invoke-interface {v0, v1}, Landroidx/core/app/OnMultiWindowModeChangedProvider;->removeOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    #@37
    .line 2948
    :cond_37
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@39
    instance-of v1, v0, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    #@3b
    if-eqz v1, :cond_44

    #@3d
    .line 2949
    check-cast v0, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    #@3f
    .line 2951
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    #@41
    invoke-interface {v0, v1}, Landroidx/core/app/OnPictureInPictureModeChangedProvider;->removeOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V

    #@44
    .line 2954
    :cond_44
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@46
    instance-of v1, v0, Landroidx/core/view/MenuHost;

    #@48
    if-eqz v1, :cond_51

    #@4a
    .line 2955
    check-cast v0, Landroidx/core/view/MenuHost;

    #@4c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    #@4e
    invoke-interface {v0, v1}, Landroidx/core/view/MenuHost;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    #@51
    :cond_51
    const/4 v0, 0x0

    #@52
    .line 2957
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@54
    .line 2958
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    #@56
    .line 2959
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@58
    .line 2960
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@5a
    if-eqz v1, :cond_63

    #@5c
    .line 2963
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    #@5e
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    #@61
    .line 2964
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@63
    .line 2966
    :cond_63
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@65
    if-eqz v0, :cond_74

    #@67
    .line 2967
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    #@6a
    .line 2968
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@6c
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    #@6f
    .line 2969
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    #@71
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    #@74
    :cond_74
    return-void
.end method

.method dispatchDestroyView()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2923
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@4
    return-void
.end method

.method dispatchLowMemory(Z)V
    .registers 5

    #@0
    if-eqz p1, :cond_12

    #@2
    .line 3042
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@4
    instance-of v0, v0, Landroidx/core/content/OnTrimMemoryProvider;

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 3043
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string v1, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@12
    .line 3047
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v0

    #@1c
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_36

    #@22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@28
    if-eqz v1, :cond_1c

    #@2a
    .line 3049
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    #@2d
    if-eqz p1, :cond_1c

    #@2f
    .line 3051
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@31
    const/4 v2, 0x1

    #@32
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->dispatchLowMemory(Z)V

    #@35
    goto :goto_1c

    #@36
    :cond_36
    return-void
.end method

.method dispatchMultiWindowModeChanged(ZZ)V
    .registers 6

    #@0
    if-eqz p2, :cond_12

    #@2
    .line 2989
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@4
    instance-of v0, v0, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 2990
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string v1, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@12
    .line 2994
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v0

    #@1c
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_36

    #@22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@28
    if-eqz v1, :cond_1c

    #@2a
    .line 2996
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    #@2d
    if-eqz p2, :cond_1c

    #@2f
    .line 2998
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@31
    const/4 v2, 0x1

    #@32
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManager;->dispatchMultiWindowModeChanged(ZZ)V

    #@35
    goto :goto_1c

    #@36
    :cond_36
    return-void
.end method

.method dispatchOnAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    .line 3312
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Landroidx/fragment/app/FragmentOnAttachListener;

    #@12
    .line 3313
    invoke-interface {v1, p0, p1}, Landroidx/fragment/app/FragmentOnAttachListener;->onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method dispatchOnHiddenChanged()V
    .registers 4

    #@0
    .line 3329
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_25

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@16
    if-eqz v1, :cond_a

    #@18
    .line 3331
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    #@1f
    .line 3332
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@21
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->dispatchOnHiddenChanged()V

    #@24
    goto :goto_a

    #@25
    :cond_25
    return-void
.end method

.method dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    #@0
    .line 3106
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-ge v0, v2, :cond_7

    #@6
    return v1

    #@7
    .line 3109
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_26

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@1d
    if-eqz v3, :cond_11

    #@1f
    .line 3111
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_11

    #@25
    return v2

    #@26
    :cond_26
    return v1
.end method

.method dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4

    #@0
    .line 3134
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ge v0, v1, :cond_6

    #@5
    return-void

    #@6
    .line 3137
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_22

    #@16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@1c
    if-eqz v1, :cond_10

    #@1e
    .line 3139
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    #@21
    goto :goto_10

    #@22
    :cond_22
    return-void
.end method

.method dispatchPause()V
    .registers 2

    #@0
    const/4 v0, 0x5

    #@1
    .line 2913
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@4
    return-void
.end method

.method dispatchPictureInPictureModeChanged(ZZ)V
    .registers 6

    #@0
    if-eqz p2, :cond_12

    #@2
    .line 3007
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@4
    instance-of v0, v0, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 3008
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string v1, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@12
    .line 3013
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v0

    #@1c
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_36

    #@22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@28
    if-eqz v1, :cond_1c

    #@2a
    .line 3015
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    #@2d
    if-eqz p2, :cond_1c

    #@2f
    .line 3017
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@31
    const/4 v2, 0x1

    #@32
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManager;->dispatchPictureInPictureModeChanged(ZZ)V

    #@35
    goto :goto_1c

    #@36
    :cond_36
    return-void
.end method

.method dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    #@0
    .line 3091
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-ge v0, v2, :cond_7

    #@6
    return v1

    #@7
    .line 3095
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2d

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@1d
    if-eqz v3, :cond_11

    #@1f
    .line 3097
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_11

    #@25
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_11

    #@2b
    move v1, v2

    #@2c
    goto :goto_11

    #@2d
    :cond_2d
    return v1
.end method

.method dispatchPrimaryNavigationFragmentChanged()V
    .registers 2

    #@0
    .line 3163
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    #@3
    .line 3165
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@5
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    #@8
    return-void
.end method

.method dispatchResume()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2906
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@3
    .line 2907
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@5
    .line 2908
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@a
    const/4 v0, 0x7

    #@b
    .line 2909
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@e
    return-void
.end method

.method dispatchStart()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2899
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@3
    .line 2900
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@5
    .line 2901
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@a
    const/4 v0, 0x5

    #@b
    .line 2902
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@e
    return-void
.end method

.method dispatchStop()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 2917
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@3
    .line 2918
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@8
    const/4 v0, 0x4

    #@9
    .line 2919
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@c
    return-void
.end method

.method dispatchViewCreated()V
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    .line 2888
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    #@4
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    #@0
    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string v1, "    "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1303
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@15
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentStore;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@18
    .line 1306
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    #@1a
    const/4 p4, 0x0

    #@1b
    if-eqz p2, :cond_50

    #@1d
    .line 1307
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@20
    move-result p2

    #@21
    if-lez p2, :cond_50

    #@23
    .line 1309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string v1, "Fragments Created Menus:"

    #@28
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    move v1, p4

    #@2c
    :goto_2c
    if-ge v1, p2, :cond_50

    #@2e
    .line 1311
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroidx/fragment/app/Fragment;

    #@36
    .line 1312
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string v3, "  #"

    #@3b
    .line 1313
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 1314
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    #@41
    const-string v3, ": "

    #@43
    .line 1315
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 1316
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_2c

    #@50
    .line 1321
    :cond_50
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@52
    if-eqz p2, :cond_8a

    #@54
    .line 1322
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@57
    move-result p2

    #@58
    if-lez p2, :cond_8a

    #@5a
    .line 1324
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    const-string v1, "Back Stack:"

    #@5f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    move v1, p4

    #@63
    :goto_63
    if-ge v1, p2, :cond_8a

    #@65
    .line 1326
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v2

    #@6b
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    #@6d
    .line 1327
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    const-string v3, "  #"

    #@72
    .line 1328
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    .line 1329
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    #@78
    const-string v3, ": "

    #@7a
    .line 1330
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 1331
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 1332
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@87
    add-int/lit8 v1, v1, 0x1

    #@89
    goto :goto_63

    #@8a
    .line 1337
    :cond_8a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 1338
    new-instance p2, Ljava/lang/StringBuilder;

    #@8f
    const-string v0, "Back Stack Index: "

    #@91
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@94
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    #@96
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@99
    move-result v0

    #@9a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object p2

    #@9e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object p2

    #@a2
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a5
    .line 1340
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@a7
    monitor-enter p2

    #@a8
    .line 1341
    :try_start_a8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@aa
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@ad
    move-result v0

    #@ae
    if-lez v0, :cond_d8

    #@b0
    .line 1343
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    const-string v1, "Pending Actions:"

    #@b5
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    :goto_b8
    if-ge p4, v0, :cond_d8

    #@ba
    .line 1345
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@bc
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v1

    #@c0
    check-cast v1, Landroidx/fragment/app/FragmentManager$OpGenerator;

    #@c2
    .line 1346
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    const-string v2, "  #"

    #@c7
    .line 1347
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca
    .line 1348
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    #@cd
    const-string v2, ": "

    #@cf
    .line 1349
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    .line 1350
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@d5
    add-int/lit8 p4, p4, 0x1

    #@d7
    goto :goto_b8

    #@d8
    .line 1353
    :cond_d8
    monitor-exit p2
    :try_end_d9
    .catchall {:try_start_a8 .. :try_end_d9} :catchall_149

    #@d9
    .line 1355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    const-string p2, "FragmentManager misc state:"

    #@de
    .line 1356
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e1
    .line 1357
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4
    const-string p2, "  mHost="

    #@e6
    .line 1358
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    .line 1359
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@eb
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@ee
    .line 1360
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    const-string p2, "  mContainer="

    #@f3
    .line 1361
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 1362
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    #@f8
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fb
    .line 1363
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@fd
    if-eqz p2, :cond_10c

    #@ff
    .line 1364
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    const-string p2, "  mParent="

    #@104
    .line 1365
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    .line 1366
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@109
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10c
    .line 1368
    :cond_10c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10f
    const-string p2, "  mCurState="

    #@111
    .line 1369
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    .line 1370
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@116
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    #@119
    const-string p2, " mStateSaved="

    #@11b
    .line 1371
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11e
    .line 1372
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@120
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    #@123
    const-string p2, " mStopped="

    #@125
    .line 1373
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@128
    .line 1374
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@12a
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    #@12d
    const-string p2, " mDestroyed="

    #@12f
    .line 1375
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132
    .line 1376
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    #@134
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    #@137
    .line 1377
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@139
    if-eqz p2, :cond_148

    #@13b
    .line 1378
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e
    const-string p1, "  mNeedMenuInvalidate="

    #@140
    .line 1379
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    .line 1380
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@145
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    #@148
    :cond_148
    return-void

    #@149
    :catchall_149
    move-exception p1

    #@14a
    .line 1353
    :try_start_14a
    monitor-exit p2
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    #@14b
    throw p1
.end method

.method enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_1d

    #@2
    .line 1642
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@4
    if-nez v0, :cond_1a

    #@6
    .line 1643
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    #@8
    if-eqz p1, :cond_12

    #@a
    .line 1644
    new-instance p1, Ljava/lang/IllegalStateException;

    #@c
    const-string p2, "FragmentManager has been destroyed"

    #@e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1

    #@12
    .line 1646
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    #@14
    const-string p2, "FragmentManager has not been attached to a host."

    #@16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw p1

    #@1a
    .line 1650
    :cond_1a
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    #@1d
    .line 1652
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@1f
    monitor-enter v0

    #@20
    .line 1653
    :try_start_20
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@22
    if-nez v1, :cond_30

    #@24
    if-eqz p2, :cond_28

    #@26
    .line 1656
    monitor-exit v0

    #@27
    return-void

    #@28
    .line 1658
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2a
    const-string p2, "Activity has been destroyed"

    #@2c
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw p1

    #@30
    .line 1660
    :cond_30
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@32
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 1661
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->scheduleCommit()V

    #@38
    .line 1662
    monitor-exit v0

    #@39
    return-void

    #@3a
    :catchall_3a
    move-exception p1

    #@3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    #@3c
    throw p1
.end method

.method execPendingActions(Z)Z
    .registers 4

    #@0
    .line 1754
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1757
    :goto_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@6
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@8
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_21

    #@e
    const/4 p1, 0x1

    #@f
    .line 1758
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@11
    .line 1760
    :try_start_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@13
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@15
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    #@18
    .line 1762
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    #@1b
    goto :goto_4

    #@1c
    :catchall_1c
    move-exception p1

    #@1d
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    #@20
    .line 1763
    throw p1

    #@21
    .line 1767
    :cond_21
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    #@24
    .line 1768
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    #@27
    .line 1769
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@29
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    #@2c
    return p1
.end method

.method execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .registers 4

    #@0
    if-eqz p2, :cond_b

    #@2
    .line 1721
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@4
    if-eqz v0, :cond_a

    #@6
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    #@8
    if-eqz v0, :cond_b

    #@a
    :cond_a
    return-void

    #@b
    .line 1725
    :cond_b
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    #@e
    .line 1726
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@12
    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    #@15
    move-result p1

    #@16
    if-eqz p1, :cond_2b

    #@18
    const/4 p1, 0x1

    #@19
    .line 1727
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@1b
    .line 1729
    :try_start_1b
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    #@1d
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    #@1f
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    #@22
    .line 1731
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    #@25
    goto :goto_2b

    #@26
    :catchall_26
    move-exception p1

    #@27
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    #@2a
    .line 1732
    throw p1

    #@2b
    .line 1735
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    #@2e
    .line 1736
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    #@31
    .line 1737
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@33
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    #@36
    return-void
.end method

.method public executePendingTransactions()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 623
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@4
    move-result v0

    #@5
    .line 624
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    #@8
    return v0
.end method

.method findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    .line 1605
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    .line 1579
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    .line 1596
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    .line 1600
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method getActiveFragmentCount()I
    .registers 2

    #@0
    .line 1202
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .line 1193
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .registers 3

    #@0
    .line 896
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    #@8
    return-object p1
.end method

.method public getBackStackEntryCount()I
    .registers 2

    #@0
    .line 887
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method getContainer()Landroidx/fragment/app/FragmentContainer;
    .registers 2

    #@0
    .line 2595
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    #@2
    return-object v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 7

    #@0
    .line 1028
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 1032
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_2f

    #@e
    .line 1034
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    const-string v3, "Fragment no longer exists for key "

    #@14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p2

    #@1b
    const-string v2, ": unique id "

    #@1d
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p2

    #@21
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@2f
    :cond_2f
    return-object v0
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .registers 2

    #@0
    .line 3219
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 3222
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 3227
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 3229
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    #@12
    return-object v0
.end method

.method getFragmentStore()Landroidx/fragment/app/FragmentStore;
    .registers 2

    #@0
    .line 2600
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .line 1164
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHost()Landroidx/fragment/app/FragmentHostCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation

    #@0
    .line 2585
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    #@0
    .line 3395
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    #@2
    return-object v0
.end method

.method getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
    .registers 2

    #@0
    .line 3267
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@2
    return-object v0
.end method

.method getParent()Landroidx/fragment/app/Fragment;
    .registers 2

    #@0
    .line 2590
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@2
    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    #@0
    .line 3182
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@2
    return-object v0
.end method

.method getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;
    .registers 2

    #@0
    .line 3252
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 3255
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 3260
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 3262
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@12
    return-object v0
.end method

.method public getStrictModePolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .registers 2

    #@0
    .line 3401
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    #@2
    return-object v0
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .registers 3

    #@0
    .line 1169
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method handleOnBackPressed()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 696
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@4
    .line 697
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    #@6
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_10

    #@c
    .line 699
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    #@f
    goto :goto_15

    #@10
    .line 707
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@12
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    #@15
    :goto_15
    return-void
.end method

.method hideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    .line 1514
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1b

    #@7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "hide: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    const-string v1, "FragmentManager"

    #@18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1515
    :cond_1b
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@1d
    if-nez v0, :cond_2a

    #@1f
    const/4 v0, 0x1

    #@20
    .line 1516
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@22
    .line 1519
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    #@24
    xor-int/2addr v0, v1

    #@25
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    #@27
    .line 1520
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    #@2a
    :cond_2a
    return-void
.end method

.method invalidateMenuForFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    #@0
    .line 3357
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_d

    #@a
    const/4 p1, 0x1

    #@b
    .line 3358
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@d
    :cond_d
    return-void
.end method

.method public isDestroyed()Z
    .registers 2

    #@0
    .line 1262
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    #@2
    return v0
.end method

.method isParentHidden(Landroidx/fragment/app/Fragment;)Z
    .registers 2

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return p1

    #@4
    .line 687
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z
    .registers 2

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    return p1

    #@4
    .line 675
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 656
    :cond_4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    .line 658
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    #@9
    move-result-object v2

    #@a
    .line 662
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_19

    #@10
    iget-object p1, v1, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@12
    .line 663
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    #@15
    move-result p1

    #@16
    if-eqz p1, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    :goto_1a
    return v0
.end method

.method isStateAtLeast(I)Z
    .registers 3

    #@0
    .line 1398
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@2
    if-lt v0, p1, :cond_6

    #@4
    const/4 p1, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p1, 0x0

    #@7
    :goto_7
    return p1
.end method

.method public isStateSaved()Z
    .registers 2

    #@0
    .line 1630
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@2
    if-nez v0, :cond_b

    #@4
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 v0, 0x1

    #@c
    :goto_c
    return v0
.end method

.method synthetic lambda$attachController$4$androidx-fragment-app-FragmentManager()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 2658
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->saveAllStateInternal()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method synthetic lambda$new$0$androidx-fragment-app-FragmentManager(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    .line 450
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    const/4 v0, 0x0

    #@7
    .line 451
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;Z)V

    #@a
    :cond_a
    return-void
.end method

.method synthetic lambda$new$1$androidx-fragment-app-FragmentManager(Ljava/lang/Integer;)V
    .registers 3

    #@0
    .line 455
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result p1

    #@a
    const/16 v0, 0x50

    #@c
    if-ne p1, v0, :cond_12

    #@e
    const/4 p1, 0x0

    #@f
    .line 456
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchLowMemory(Z)V

    #@12
    :cond_12
    return-void
.end method

.method synthetic lambda$new$2$androidx-fragment-app-FragmentManager(Landroidx/core/app/MultiWindowModeChangedInfo;)V
    .registers 3

    #@0
    .line 461
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 462
    invoke-virtual {p1}, Landroidx/core/app/MultiWindowModeChangedInfo;->isInMultiWindowMode()Z

    #@9
    move-result p1

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->dispatchMultiWindowModeChanged(ZZ)V

    #@e
    :cond_e
    return-void
.end method

.method synthetic lambda$new$3$androidx-fragment-app-FragmentManager(Landroidx/core/app/PictureInPictureModeChangedInfo;)V
    .registers 3

    #@0
    .line 467
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 468
    invoke-virtual {p1}, Landroidx/core/app/PictureInPictureModeChangedInfo;->isInPictureInPictureMode()Z

    #@9
    move-result p1

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->dispatchPictureInPictureModeChanged(ZZ)V

    #@e
    :cond_e
    return-void
.end method

.method launchRequestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 5

    #@0
    .line 2864
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    #@2
    if-eqz v0, :cond_16

    #@4
    .line 2865
    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    #@6
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@8
    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    #@b
    .line 2866
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    #@d
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@10
    .line 2867
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    #@12
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    #@15
    goto :goto_1b

    #@16
    .line 2869
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@18
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    #@1b
    :goto_1b
    return-void
.end method

.method launchStartActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    #@0
    .line 2817
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@2
    if-eqz v0, :cond_1f

    #@4
    .line 2818
    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    #@6
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@8
    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    #@b
    .line 2819
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    #@d
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@10
    if-eqz p2, :cond_19

    #@12
    if-eqz p4, :cond_19

    #@14
    const-string p1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    #@16
    .line 2821
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@19
    .line 2823
    :cond_19
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@1b
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    #@1e
    goto :goto_24

    #@1f
    .line 2825
    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@21
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@24
    :goto_24
    return-void
.end method

.method launchStartIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    move-object v2, p1

    #@2
    move-object/from16 v9, p8

    #@4
    .line 2834
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@6
    if-eqz v1, :cond_96

    #@8
    const-string v1, "FragmentManager"

    #@a
    const/4 v3, 0x2

    #@b
    if-eqz v9, :cond_4e

    #@d
    if-nez p4, :cond_1b

    #@f
    .line 2837
    new-instance v4, Landroid/content/Intent;

    #@11
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@14
    const-string v5, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    #@16
    const/4 v6, 0x1

    #@17
    .line 2838
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move-object v4, p4

    #@1c
    .line 2840
    :goto_1c
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_48

    #@22
    .line 2841
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    const-string v6, "ActivityOptions "

    #@26
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    const-string v6, " were added to fillInIntent "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    const-string v6, " for fragment "

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    :cond_48
    const-string v5, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    #@4a
    .line 2844
    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    move-object v4, p4

    #@4f
    .line 2846
    :goto_4f
    new-instance v5, Landroidx/activity/result/IntentSenderRequest$Builder;

    #@51
    move-object v6, p2

    #@52
    invoke-direct {v5, p2}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    #@55
    .line 2847
    invoke-virtual {v5, v4}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    #@58
    move-result-object v4

    #@59
    move/from16 v7, p5

    #@5b
    move/from16 v8, p6

    #@5d
    .line 2848
    invoke-virtual {v4, v8, v7}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFlags(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    #@64
    move-result-object v4

    #@65
    .line 2849
    new-instance v5, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    #@67
    iget-object v6, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@69
    move v10, p3

    #@6a
    invoke-direct {v5, v6, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    #@6d
    .line 2850
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    #@6f
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@72
    .line 2851
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_90

    #@78
    .line 2852
    new-instance v3, Ljava/lang/StringBuilder;

    #@7a
    const-string v5, "Fragment "

    #@7c
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    const-string v3, "is launching an IntentSender for result "

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 2854
    :cond_90
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    #@92
    invoke-virtual {v1, v4}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    #@95
    goto :goto_ad

    #@96
    :cond_96
    move-object v6, p2

    #@97
    move v10, p3

    #@98
    move/from16 v7, p5

    #@9a
    move/from16 v8, p6

    #@9c
    .line 2856
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@9e
    move-object v2, p1

    #@9f
    move-object v3, p2

    #@a0
    move v4, p3

    #@a1
    move-object v5, p4

    #@a2
    move/from16 v6, p5

    #@a4
    move/from16 v7, p6

    #@a6
    move/from16 v8, p7

    #@a8
    move-object/from16 v9, p8

    #@aa
    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@ad
    :goto_ad
    return-void
.end method

.method moveToState(IZ)V
    .registers 4

    #@0
    .line 1424
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_10

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_8

    #@7
    goto :goto_10

    #@8
    .line 1425
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    #@a
    const-string p2, "No activity"

    #@c
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1

    #@10
    :cond_10
    :goto_10
    if-nez p2, :cond_17

    #@12
    .line 1428
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@14
    if-ne p1, p2, :cond_17

    #@16
    return-void

    #@17
    .line 1432
    :cond_17
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@19
    .line 1433
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@1b
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStore;->moveToExpectedState()V

    #@1e
    .line 1434
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    #@21
    .line 1436
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@23
    if-eqz p1, :cond_34

    #@25
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@27
    if-eqz p1, :cond_34

    #@29
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@2b
    const/4 v0, 0x7

    #@2c
    if-ne p2, v0, :cond_34

    #@2e
    .line 1437
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    #@31
    const/4 p1, 0x0

    #@32
    .line 1438
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@34
    :cond_34
    return-void
.end method

.method noteStateNotSaved()V
    .registers 3

    #@0
    .line 2801
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 2804
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@8
    .line 2805
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    #@a
    .line 2806
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@c
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@f
    .line 2807
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2b

    #@1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@25
    if-eqz v1, :cond_19

    #@27
    .line 2809
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    #@2a
    goto :goto_19

    #@2b
    :cond_2b
    return-void
.end method

.method onContainerAvailable(Landroidx/fragment/app/FragmentContainerView;)V
    .registers 7

    #@0
    .line 1096
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_34

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@16
    .line 1097
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@19
    move-result-object v2

    #@1a
    .line 1098
    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@1c
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainerView;->getId()I

    #@1f
    move-result v4

    #@20
    if-ne v3, v4, :cond_a

    #@22
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@24
    if-eqz v3, :cond_a

    #@26
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@28
    .line 1099
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@2b
    move-result-object v3

    #@2c
    if-nez v3, :cond_a

    #@2e
    .line 1101
    iput-object p1, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@30
    .line 1102
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->addViewToContainer()V

    #@33
    goto :goto_a

    #@34
    :cond_34
    return-void
.end method

.method public openTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 580
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 4

    #@0
    .line 1385
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    .line 1386
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    #@6
    if-eqz v1, :cond_16

    #@8
    .line 1387
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    #@a
    if-eqz v1, :cond_10

    #@c
    const/4 p1, 0x1

    #@d
    .line 1389
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    #@f
    return-void

    #@10
    :cond_10
    const/4 v1, 0x0

    #@11
    .line 1392
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    #@13
    .line 1393
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@16
    :cond_16
    return-void
.end method

.method public popBackStack()V
    .registers 5

    #@0
    .line 768
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    #@8
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@b
    return-void
.end method

.method public popBackStack(II)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 823
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->popBackStack(IIZ)V

    #@4
    return-void
.end method

.method popBackStack(IIZ)V
    .registers 6

    #@0
    if-ltz p1, :cond_c

    #@2
    .line 830
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    #@8
    invoke-virtual {p0, v0, p3}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@b
    return-void

    #@c
    .line 828
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance p3, Ljava/lang/StringBuilder;

    #@10
    const-string v0, "Bad id: "

    #@12
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw p2
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5

    #@0
    .line 795
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    #@6
    const/4 p1, 0x0

    #@7
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@a
    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 778
    invoke-direct {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 5

    #@0
    if-ltz p1, :cond_8

    #@2
    const/4 v0, 0x0

    #@3
    .line 843
    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    #@6
    move-result p1

    #@7
    return p1

    #@8
    .line 841
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    const-string v1, "Bad id: "

    #@e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p2
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 805
    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    and-int/2addr p5, v0

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz p5, :cond_7

    #@5
    move p5, v0

    #@6
    goto :goto_8

    #@7
    :cond_7
    move p5, v1

    #@8
    .line 2267
    :goto_8
    invoke-direct {p0, p3, p4, p5}, Landroidx/fragment/app/FragmentManager;->findBackStackIndex(Ljava/lang/String;IZ)I

    #@b
    move-result p3

    #@c
    if-gez p3, :cond_f

    #@e
    return v1

    #@f
    .line 2271
    :cond_f
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    #@14
    move-result p4

    #@15
    sub-int/2addr p4, v0

    #@16
    :goto_16
    if-lt p4, p3, :cond_2d

    #@18
    .line 2272
    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1d
    move-result-object p5

    #@1e
    check-cast p5, Landroidx/fragment/app/BackStackRecord;

    #@20
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 2273
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@26
    move-result-object p5

    #@27
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    add-int/lit8 p4, p4, -0x1

    #@2c
    goto :goto_16

    #@2d
    :cond_2d
    return v0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .registers 7

    #@0
    .line 1010
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eq v0, p0, :cond_21

    #@4
    .line 1011
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    const-string v2, "Fragment "

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string v2, " is not currently in the FragmentManager"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@21
    .line 1014
    :cond_21
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@23
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 4

    #@0
    .line 3280
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    #@5
    return-void
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    .line 1494
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_27

    #@7
    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "remove: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string v1, " nesting="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    const-string v1, "FragmentManager"

    #@24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1497
    :cond_27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    #@2a
    move-result v0

    #@2b
    const/4 v1, 0x1

    #@2c
    xor-int/2addr v0, v1

    #@2d
    .line 1498
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    #@2f
    if-eqz v2, :cond_33

    #@31
    if-eqz v0, :cond_45

    #@33
    .line 1499
    :cond_33
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@35
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    #@38
    .line 1500
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_40

    #@3e
    .line 1501
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    #@40
    .line 1503
    :cond_40
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@42
    .line 1504
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    #@45
    :cond_45
    return-void
.end method

.method public removeFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .registers 3

    #@0
    .line 3325
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    #@0
    .line 914
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 915
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-void
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    #@0
    .line 1182
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@5
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .registers 5

    #@0
    .line 2437
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 2438
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@10
    .line 2441
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@12
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    #@15
    .line 2442
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    #@18
    return-void
.end method

.method public restoreBackStack(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 725
    new-instance v0, Landroidx/fragment/app/FragmentManager$RestoreBackStackState;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/FragmentManager$RestoreBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@9
    return-void
.end method

.method restoreBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    .line 2103
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    #@2
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p3

    #@6
    check-cast p3, Landroidx/fragment/app/BackStackState;

    #@8
    const/4 v0, 0x0

    #@9
    if-nez p3, :cond_c

    #@b
    return v0

    #@c
    .line 2108
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    #@e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@11
    .line 2109
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_45

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    #@21
    .line 2110
    iget-boolean v4, v3, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@23
    if-eqz v4, :cond_15

    #@25
    .line 2111
    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_15

    #@31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    #@37
    .line 2112
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@39
    if-eqz v5, :cond_2b

    #@3b
    .line 2113
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@3d
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@3f
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@41
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    goto :goto_2b

    #@45
    .line 2118
    :cond_45
    invoke-virtual {p3, p0, v1}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManager;Ljava/util/Map;)Ljava/util/List;

    #@48
    move-result-object p3

    #@49
    .line 2121
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object p3

    #@4d
    :cond_4d
    move v1, v0

    #@4e
    :goto_4e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_64

    #@54
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v2

    #@58
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    #@5a
    .line 2122
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/BackStackRecord;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    #@5d
    move-result v2

    #@5e
    if-nez v2, :cond_62

    #@60
    if-eqz v1, :cond_4d

    #@62
    :cond_62
    const/4 v1, 0x1

    #@63
    goto :goto_4e

    #@64
    :cond_64
    return v1
.end method

.method restoreSaveState(Landroid/os/Parcelable;)V
    .registers 4

    #@0
    .line 2446
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    instance-of v0, v0, Landroidx/savedstate/SavedStateRegistryOwner;

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 2447
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "You cannot use restoreSaveState when your FragmentHostCallback implements SavedStateRegistryOwner."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@10
    .line 2450
    :cond_10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    #@13
    return-void
.end method

.method restoreSaveStateInternal(Landroid/os/Parcelable;)V
    .registers 15

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 2457
    :cond_3
    check-cast p1, Landroid/os/Bundle;

    #@5
    .line 2459
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_3f

    #@13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    const-string v2, "result_"

    #@1b
    .line 2460
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_d

    #@21
    .line 2461
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_d

    #@27
    .line 2463
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@29
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@34
    const/4 v3, 0x7

    #@35
    .line 2464
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 2465
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    #@3b
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    goto :goto_d

    #@3f
    .line 2471
    :cond_3f
    new-instance v0, Ljava/util/ArrayList;

    #@41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@44
    .line 2472
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@47
    move-result-object v1

    #@48
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v1

    #@4c
    :cond_4c
    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v2

    #@50
    const-string v3, "state"

    #@52
    if-eqz v2, :cond_7f

    #@54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v2

    #@58
    check-cast v2, Ljava/lang/String;

    #@5a
    const-string v4, "fragment_"

    #@5c
    .line 2473
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_4c

    #@62
    .line 2474
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@65
    move-result-object v2

    #@66
    if-eqz v2, :cond_4c

    #@68
    .line 2476
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@6a
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@75
    .line 2477
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@78
    move-result-object v2

    #@79
    check-cast v2, Landroidx/fragment/app/FragmentState;

    #@7b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    goto :goto_4c

    #@7f
    .line 2481
    :cond_7f
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@81
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->restoreSaveState(Ljava/util/ArrayList;)V

    #@84
    .line 2483
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@87
    move-result-object p1

    #@88
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    #@8a
    if-nez p1, :cond_8d

    #@8c
    return-void

    #@8d
    .line 2488
    :cond_8d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@8f
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->resetActiveFragments()V

    #@92
    .line 2489
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    #@94
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@97
    move-result-object v0

    #@98
    :cond_98
    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9b
    move-result v1

    #@9c
    const-string v2, "): "

    #@9e
    const/4 v3, 0x0

    #@9f
    const/4 v4, 0x2

    #@a0
    const-string v5, "FragmentManager"

    #@a2
    if-eqz v1, :cond_137

    #@a4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v1

    #@a8
    check-cast v1, Ljava/lang/String;

    #@aa
    .line 2491
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@ac
    invoke-virtual {v6, v1, v3}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    #@af
    move-result-object v12

    #@b0
    if-eqz v12, :cond_98

    #@b2
    .line 2494
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@b4
    iget-object v3, v12, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@b6
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->findRetainedFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@b9
    move-result-object v1

    #@ba
    if-eqz v1, :cond_de

    #@bc
    .line 2496
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@bf
    move-result v3

    #@c0
    if-eqz v3, :cond_d4

    #@c2
    .line 2497
    new-instance v3, Ljava/lang/StringBuilder;

    #@c4
    const-string v6, "restoreSaveState: re-attaching retained "

    #@c6
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    .line 2500
    :cond_d4
    new-instance v3, Landroidx/fragment/app/FragmentStateManager;

    #@d6
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@d8
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@da
    invoke-direct {v3, v6, v7, v1, v12}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    #@dd
    goto :goto_f6

    #@de
    .line 2503
    :cond_de
    new-instance v3, Landroidx/fragment/app/FragmentStateManager;

    #@e0
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@e2
    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@e4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@e6
    .line 2504
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@ed
    move-result-object v10

    #@ee
    .line 2505
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    #@f1
    move-result-object v11

    #@f2
    move-object v7, v3

    #@f3
    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/FragmentState;)V

    #@f6
    .line 2507
    :goto_f6
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@f9
    move-result-object v1

    #@fa
    .line 2508
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@fc
    .line 2509
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@ff
    move-result v4

    #@100
    if-eqz v4, :cond_11e

    #@102
    .line 2510
    new-instance v4, Ljava/lang/StringBuilder;

    #@104
    const-string v6, "restoreSaveState: active ("

    #@106
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@109
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@10b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v4

    #@10f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v1

    #@11b
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11e
    .line 2512
    :cond_11e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@120
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@123
    move-result-object v1

    #@124
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@127
    move-result-object v1

    #@128
    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    #@12b
    .line 2513
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@12d
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    #@130
    .line 2517
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    #@132
    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    #@135
    goto/16 :goto_98

    #@137
    .line 2523
    :cond_137
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@139
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getRetainedFragments()Ljava/util/Collection;

    #@13c
    move-result-object v0

    #@13d
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@140
    move-result-object v0

    #@141
    :cond_141
    :goto_141
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@144
    move-result v1

    #@145
    if-eqz v1, :cond_198

    #@147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14a
    move-result-object v1

    #@14b
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@14d
    .line 2524
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@14f
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@151
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    #@154
    move-result v6

    #@155
    if-nez v6, :cond_141

    #@157
    .line 2525
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@15a
    move-result v6

    #@15b
    if-eqz v6, :cond_17b

    #@15d
    .line 2526
    new-instance v6, Ljava/lang/StringBuilder;

    #@15f
    const-string v7, "Discarding retained Fragment "

    #@161
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@164
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v6

    #@168
    const-string v7, " that was not found in the set of active Fragments "

    #@16a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v6

    #@16e
    iget-object v7, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    #@170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v6

    #@174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v6

    #@178
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@17b
    .line 2529
    :cond_17b
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@17d
    invoke-virtual {v6, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@180
    .line 2533
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@182
    .line 2534
    new-instance v6, Landroidx/fragment/app/FragmentStateManager;

    #@184
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@186
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@188
    invoke-direct {v6, v7, v8, v1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    #@18b
    const/4 v7, 0x1

    #@18c
    .line 2536
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    #@18f
    .line 2537
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@192
    .line 2538
    iput-boolean v7, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@194
    .line 2539
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@197
    goto :goto_141

    #@198
    .line 2544
    :cond_198
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@19a
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    #@19c
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->restoreAddedFragments(Ljava/util/List;)V

    #@19f
    .line 2547
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    #@1a1
    const/4 v1, 0x0

    #@1a2
    if-eqz v0, :cond_202

    #@1a4
    .line 2548
    new-instance v0, Ljava/util/ArrayList;

    #@1a6
    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    #@1a8
    array-length v3, v3

    #@1a9
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@1ac
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@1ae
    move v0, v1

    #@1af
    .line 2549
    :goto_1af
    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    #@1b1
    array-length v3, v3

    #@1b2
    if-ge v0, v3, :cond_204

    #@1b4
    .line 2550
    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    #@1b6
    aget-object v3, v3, v0

    #@1b8
    invoke-virtual {v3, p0}, Landroidx/fragment/app/BackStackRecordState;->instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    #@1bb
    move-result-object v3

    #@1bc
    .line 2551
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@1bf
    move-result v6

    #@1c0
    if-eqz v6, :cond_1fa

    #@1c2
    .line 2552
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c4
    const-string v7, "restoreAllState: back stack #"

    #@1c6
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v6

    #@1cd
    const-string v7, " (index "

    #@1cf
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v6

    #@1d3
    iget v7, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@1d5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v6

    #@1d9
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v6

    #@1dd
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v6

    #@1e1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v6

    #@1e5
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e8
    .line 2554
    new-instance v6, Landroidx/fragment/app/LogWriter;

    #@1ea
    invoke-direct {v6, v5}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    #@1ed
    .line 2555
    new-instance v7, Ljava/io/PrintWriter;

    #@1ef
    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@1f2
    const-string v6, "  "

    #@1f4
    .line 2556
    invoke-virtual {v3, v6, v7, v1}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@1f7
    .line 2557
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    #@1fa
    .line 2559
    :cond_1fa
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@1fc
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ff
    add-int/lit8 v0, v0, 0x1

    #@201
    goto :goto_1af

    #@202
    .line 2562
    :cond_202
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@204
    .line 2564
    :cond_204
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    #@206
    iget v2, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    #@208
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@20b
    .line 2566
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    #@20d
    if-eqz v0, :cond_21a

    #@20f
    .line 2567
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    #@211
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@214
    move-result-object v0

    #@215
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@217
    .line 2568
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    #@21a
    .line 2571
    :cond_21a
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    #@21c
    if-eqz v0, :cond_23a

    #@21e
    .line 2573
    :goto_21e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@221
    move-result v2

    #@222
    if-ge v1, v2, :cond_23a

    #@224
    .line 2574
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    #@226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@229
    move-result-object v3

    #@22a
    check-cast v3, Ljava/lang/String;

    #@22c
    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    #@22e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@231
    move-result-object v4

    #@232
    check-cast v4, Landroidx/fragment/app/BackStackState;

    #@234
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@237
    add-int/lit8 v1, v1, 0x1

    #@239
    goto :goto_21e

    #@23a
    .line 2578
    :cond_23a
    new-instance v0, Ljava/util/ArrayDeque;

    #@23c
    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    #@23e
    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    #@241
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    #@243
    return-void
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2351
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 2352
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@10
    .line 2355
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 2359
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@2
    instance-of v0, v0, Landroidx/savedstate/SavedStateRegistryOwner;

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 2360
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "You cannot use saveAllState when your FragmentHostCallback implements SavedStateRegistryOwner."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@10
    .line 2363
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->saveAllStateInternal()Landroid/os/Bundle;

    #@13
    move-result-object v0

    #@14
    .line 2364
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1b

    #@1a
    const/4 v0, 0x0

    #@1b
    :cond_1b
    return-object v0
.end method

.method saveAllStateInternal()Landroid/os/Bundle;
    .registers 12

    #@0
    .line 2369
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2372
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    #@8
    .line 2373
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    #@b
    const/4 v1, 0x1

    #@c
    .line 2374
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    #@f
    .line 2376
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    #@11
    .line 2377
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@13
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    #@16
    .line 2380
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@18
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->saveActiveFragments()Ljava/util/ArrayList;

    #@1b
    move-result-object v1

    #@1c
    .line 2383
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@1e
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->getAllSavedState()Ljava/util/ArrayList;

    #@21
    move-result-object v2

    #@22
    .line 2384
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@25
    move-result v3

    #@26
    const-string v4, "FragmentManager"

    #@28
    const/4 v5, 0x2

    #@29
    if-eqz v3, :cond_38

    #@2b
    .line 2385
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_125

    #@31
    const-string v1, "saveAllState: no fragments!"

    #@33
    .line 2386
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto/16 :goto_125

    #@38
    .line 2390
    :cond_38
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@3a
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStore;->saveAddedFragments()Ljava/util/ArrayList;

    #@3d
    move-result-object v3

    #@3e
    .line 2394
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@40
    if-eqz v6, :cond_87

    #@42
    .line 2395
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v6

    #@46
    if-lez v6, :cond_87

    #@48
    .line 2397
    new-array v7, v6, [Landroidx/fragment/app/BackStackRecordState;

    #@4a
    const/4 v8, 0x0

    #@4b
    :goto_4b
    if-ge v8, v6, :cond_88

    #@4d
    .line 2399
    new-instance v9, Landroidx/fragment/app/BackStackRecordState;

    #@4f
    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v10

    #@55
    check-cast v10, Landroidx/fragment/app/BackStackRecord;

    #@57
    invoke-direct {v9, v10}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    #@5a
    aput-object v9, v7, v8

    #@5c
    .line 2400
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@5f
    move-result v9

    #@60
    if-eqz v9, :cond_84

    #@62
    .line 2401
    new-instance v9, Ljava/lang/StringBuilder;

    #@64
    const-string v10, "saveAllState: adding back stack #"

    #@66
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@69
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    const-string v10, ": "

    #@6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@75
    .line 2402
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@78
    move-result-object v10

    #@79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    .line 2401
    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    :cond_84
    add-int/lit8 v8, v8, 0x1

    #@86
    goto :goto_4b

    #@87
    :cond_87
    const/4 v7, 0x0

    #@88
    .line 2408
    :cond_88
    new-instance v4, Landroidx/fragment/app/FragmentManagerState;

    #@8a
    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    #@8d
    .line 2409
    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    #@8f
    .line 2410
    iput-object v3, v4, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    #@91
    .line 2411
    iput-object v7, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    #@93
    .line 2412
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    #@95
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@98
    move-result v1

    #@99
    iput v1, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    #@9b
    .line 2413
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@9d
    if-eqz v1, :cond_a3

    #@9f
    .line 2414
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@a1
    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    #@a3
    .line 2416
    :cond_a3
    iget-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    #@a5
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    #@a7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@ae
    .line 2417
    iget-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    #@b0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    #@b2
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@b9
    .line 2418
    new-instance v1, Ljava/util/ArrayList;

    #@bb
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    #@bd
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c0
    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    #@c2
    const-string v1, "state"

    #@c4
    .line 2419
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@c7
    .line 2421
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    #@c9
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@cc
    move-result-object v3

    #@cd
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d0
    move-result-object v3

    #@d1
    :goto_d1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d4
    move-result v4

    #@d5
    if-eqz v4, :cond_f8

    #@d7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@da
    move-result-object v4

    #@db
    check-cast v4, Ljava/lang/String;

    #@dd
    .line 2422
    new-instance v5, Ljava/lang/StringBuilder;

    #@df
    const-string v6, "result_"

    #@e1
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    #@ee
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    move-result-object v4

    #@f2
    check-cast v4, Landroid/os/Bundle;

    #@f4
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@f7
    goto :goto_d1

    #@f8
    .line 2425
    :cond_f8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@fb
    move-result-object v2

    #@fc
    :goto_fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@ff
    move-result v3

    #@100
    if-eqz v3, :cond_125

    #@102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@105
    move-result-object v3

    #@106
    check-cast v3, Landroidx/fragment/app/FragmentState;

    #@108
    .line 2426
    new-instance v4, Landroid/os/Bundle;

    #@10a
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@10d
    .line 2427
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@110
    .line 2428
    new-instance v5, Ljava/lang/StringBuilder;

    #@112
    const-string v6, "fragment_"

    #@114
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@117
    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@119
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v3

    #@11d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v3

    #@121
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@124
    goto :goto_fc

    #@125
    :cond_125
    :goto_125
    return-object v0
.end method

.method public saveBackStack(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 742
    new-instance v0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/FragmentManager$SaveBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@9
    return-void
.end method

.method saveBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p3

    #@4
    const/4 v2, -0x1

    #@5
    const/4 v3, 0x1

    #@6
    .line 2129
    invoke-direct {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager;->findBackStackIndex(Ljava/lang/String;IZ)I

    #@9
    move-result v2

    #@a
    if-gez v2, :cond_e

    #@c
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    :cond_e
    move v4, v2

    #@f
    .line 2138
    :goto_f
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v5

    #@15
    const-string v6, "saveBackStack(\""

    #@17
    if-ge v4, v5, :cond_4d

    #@19
    .line 2139
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    #@21
    .line 2140
    iget-boolean v7, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    #@23
    if-nez v7, :cond_4a

    #@25
    .line 2141
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v8, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    const-string v8, "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found "

    #@32
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const-string v6, " that did not use setReorderingAllowed(true)."

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    invoke-direct {v0, v7}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@4a
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    #@4c
    goto :goto_f

    #@4d
    .line 2151
    :cond_4d
    new-instance v4, Ljava/util/HashSet;

    #@4f
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@52
    move v5, v2

    #@53
    .line 2152
    :goto_53
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v7

    #@59
    if-ge v5, v7, :cond_112

    #@5b
    .line 2153
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v7

    #@61
    check-cast v7, Landroidx/fragment/app/BackStackRecord;

    #@63
    .line 2154
    new-instance v8, Ljava/util/HashSet;

    #@65
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #@68
    .line 2155
    new-instance v9, Ljava/util/HashSet;

    #@6a
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #@6d
    .line 2156
    iget-object v10, v7, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v10

    #@73
    :cond_73
    :goto_73
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v11

    #@77
    if-eqz v11, :cond_a9

    #@79
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v11

    #@7d
    check-cast v11, Landroidx/fragment/app/FragmentTransaction$Op;

    #@7f
    .line 2157
    iget-object v12, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@81
    if-nez v12, :cond_84

    #@83
    goto :goto_73

    #@84
    .line 2161
    :cond_84
    iget-boolean v13, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@86
    const/4 v14, 0x2

    #@87
    if-eqz v13, :cond_97

    #@89
    iget v13, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@8b
    if-eq v13, v3, :cond_97

    #@8d
    iget v13, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@8f
    if-eq v13, v14, :cond_97

    #@91
    iget v13, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@93
    const/16 v15, 0x8

    #@95
    if-ne v13, v15, :cond_9d

    #@97
    .line 2164
    :cond_97
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9a
    .line 2165
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9d
    .line 2167
    :cond_9d
    iget v13, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@9f
    if-eq v13, v3, :cond_a5

    #@a1
    iget v11, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@a3
    if-ne v11, v14, :cond_73

    #@a5
    .line 2169
    :cond_a5
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a8
    goto :goto_73

    #@a9
    .line 2172
    :cond_a9
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    #@ac
    .line 2173
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    #@af
    move-result v9

    #@b0
    if-nez v9, :cond_10e

    #@b2
    .line 2174
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@b4
    new-instance v10, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b9
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v10

    #@bd
    const-string v11, "\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment"

    #@bf
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v10

    #@c3
    .line 2177
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    #@c6
    move-result v11

    #@c7
    if-ne v11, v3, :cond_e1

    #@c9
    .line 2178
    new-instance v11, Ljava/lang/StringBuilder;

    #@cb
    const-string v12, " "

    #@cd
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d0
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@d3
    move-result-object v8

    #@d4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d7
    move-result-object v8

    #@d8
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v8

    #@dc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v8

    #@e0
    goto :goto_f0

    #@e1
    .line 2179
    :cond_e1
    new-instance v11, Ljava/lang/StringBuilder;

    #@e3
    const-string v12, "s "

    #@e5
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e8
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v8

    #@ec
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v8

    #@f0
    :goto_f0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v8

    #@f4
    const-string v10, " in "

    #@f6
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v8

    #@fa
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v7

    #@fe
    const-string v8, " that were previously added to the FragmentManager through a separate FragmentTransaction."

    #@100
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v7

    #@104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v7

    #@108
    invoke-direct {v9, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10b
    .line 2174
    invoke-direct {v0, v9}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@10e
    :cond_10e
    add-int/lit8 v5, v5, 0x1

    #@110
    goto/16 :goto_53

    #@112
    .line 2187
    :cond_112
    new-instance v5, Ljava/util/ArrayDeque;

    #@114
    invoke-direct {v5, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    #@117
    .line 2188
    :cond_117
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@11a
    move-result v7

    #@11b
    if-nez v7, :cond_177

    #@11d
    .line 2189
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@120
    move-result-object v7

    #@121
    check-cast v7, Landroidx/fragment/app/Fragment;

    #@123
    .line 2190
    iget-boolean v8, v7, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@125
    if-eqz v8, :cond_15b

    #@127
    .line 2191
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@129
    new-instance v9, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12e
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v9

    #@132
    const-string v10, "\") must not contain retained fragments. Found "

    #@134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v9

    #@138
    .line 2193
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@13b
    move-result v10

    #@13c
    if-eqz v10, :cond_141

    #@13e
    const-string v10, "direct reference to retained "

    #@140
    goto :goto_143

    #@141
    :cond_141
    const-string v10, "retained child "

    #@143
    .line 2195
    :goto_143
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v9

    #@147
    const-string v10, "fragment "

    #@149
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v9

    #@14d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v9

    #@151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v9

    #@155
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@158
    .line 2191
    invoke-direct {v0, v8}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@15b
    .line 2199
    :cond_15b
    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@15d
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->getActiveFragments()Ljava/util/List;

    #@160
    move-result-object v7

    #@161
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@164
    move-result-object v7

    #@165
    :cond_165
    :goto_165
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@168
    move-result v8

    #@169
    if-eqz v8, :cond_117

    #@16b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16e
    move-result-object v8

    #@16f
    check-cast v8, Landroidx/fragment/app/Fragment;

    #@171
    if-eqz v8, :cond_165

    #@173
    .line 2201
    invoke-virtual {v5, v8}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@176
    goto :goto_165

    #@177
    .line 2207
    :cond_177
    new-instance v5, Ljava/util/ArrayList;

    #@179
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@17c
    .line 2208
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@17f
    move-result-object v4

    #@180
    :goto_180
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@183
    move-result v6

    #@184
    if-eqz v6, :cond_192

    #@186
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@189
    move-result-object v6

    #@18a
    check-cast v6, Landroidx/fragment/app/Fragment;

    #@18c
    .line 2209
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@18e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@191
    goto :goto_180

    #@192
    .line 2211
    :cond_192
    new-instance v4, Ljava/util/ArrayList;

    #@194
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@196
    .line 2212
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@199
    move-result v6

    #@19a
    sub-int/2addr v6, v2

    #@19b
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@19e
    move v6, v2

    #@19f
    .line 2214
    :goto_19f
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@1a1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@1a4
    move-result v7

    #@1a5
    if-ge v6, v7, :cond_1ae

    #@1a7
    const/4 v7, 0x0

    #@1a8
    .line 2215
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ab
    add-int/lit8 v6, v6, 0x1

    #@1ad
    goto :goto_19f

    #@1ae
    .line 2217
    :cond_1ae
    new-instance v6, Landroidx/fragment/app/BackStackState;

    #@1b0
    invoke-direct {v6, v5, v4}, Landroidx/fragment/app/BackStackState;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@1b3
    .line 2219
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@1b5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1b8
    move-result v5

    #@1b9
    sub-int/2addr v5, v3

    #@1ba
    :goto_1ba
    if-lt v5, v2, :cond_1e9

    #@1bc
    .line 2220
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    #@1be
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1c1
    move-result-object v7

    #@1c2
    check-cast v7, Landroidx/fragment/app/BackStackRecord;

    #@1c4
    .line 2223
    new-instance v8, Landroidx/fragment/app/BackStackRecord;

    #@1c6
    invoke-direct {v8, v7}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    #@1c9
    .line 2224
    invoke-virtual {v8}, Landroidx/fragment/app/BackStackRecord;->collapseOps()V

    #@1cc
    .line 2225
    new-instance v9, Landroidx/fragment/app/BackStackRecordState;

    #@1ce
    invoke-direct {v9, v8}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    #@1d1
    sub-int v8, v5, v2

    #@1d3
    .line 2226
    invoke-virtual {v4, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1d6
    .line 2230
    iput-boolean v3, v7, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@1d8
    move-object/from16 v8, p1

    #@1da
    .line 2231
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1dd
    .line 2232
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e0
    move-result-object v7

    #@1e1
    move-object/from16 v9, p2

    #@1e3
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e6
    add-int/lit8 v5, v5, -0x1

    #@1e8
    goto :goto_1ba

    #@1e9
    .line 2234
    :cond_1e9
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    #@1eb
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ee
    return v3
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .registers 6

    #@0
    .line 1229
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    #@2
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_14

    #@a
    .line 1231
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_31

    #@14
    .line 1232
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    const-string v3, "Fragment "

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p1

    #@21
    const-string v2, " is not currently in the FragmentManager"

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    #@31
    .line 1235
    :cond_31
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->saveInstanceState()Landroidx/fragment/app/Fragment$SavedState;

    #@34
    move-result-object p1

    #@35
    return-object p1
.end method

.method scheduleCommit()V
    .registers 4

    #@0
    .line 1673
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 1674
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x1

    #@a
    if-ne v1, v2, :cond_d

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v2, 0x0

    #@e
    :goto_e
    if-eqz v2, :cond_29

    #@10
    .line 1676
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@12
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    #@18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1b
    .line 1677
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@1d
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    #@23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@26
    .line 1678
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    #@29
    .line 1680
    :cond_29
    monitor-exit v0

    #@2a
    return-void

    #@2b
    :catchall_2b
    move-exception v1

    #@2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    #@2d
    throw v1
.end method

.method setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V
    .registers 4

    #@0
    .line 1406
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_11

    #@6
    .line 1408
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    #@8
    if-eqz v0, :cond_11

    #@a
    .line 1409
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    #@c
    xor-int/lit8 p2, p2, 0x1

    #@e
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    #@11
    :cond_11
    return-void
.end method

.method public setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V
    .registers 2

    #@0
    .line 3205
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    #@2
    return-void
.end method

.method public final setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 922
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 924
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    #@c
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_16

    #@12
    .line 925
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    goto :goto_1b

    #@16
    .line 928
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    #@18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    :goto_1b
    const/4 v0, 0x2

    #@1c
    .line 930
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_40

    #@22
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    const-string v1, "Setting fragment result with key "

    #@26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p1

    #@2d
    const-string v0, " and result "

    #@2f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object p1

    #@33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p1

    #@3b
    const-string p2, "FragmentManager"

    #@3d
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    :cond_40
    return-void
.end method

.method public final setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V
    .registers 7

    #@0
    .line 949
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@3
    move-result-object p2

    #@4
    .line 950
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    return-void

    #@d
    .line 954
    :cond_d
    new-instance v0, Landroidx/fragment/app/FragmentManager$6;

    #@f
    invoke-direct {v0, p0, p1, p3, p2}, Landroidx/fragment/app/FragmentManager$6;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/Lifecycle;)V

    #@12
    .line 975
    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@15
    .line 976
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    #@17
    new-instance v2, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    #@19
    invoke-direct {v2, p2, p3, v0}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/LifecycleEventObserver;)V

    #@1c
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    #@22
    if-eqz v0, :cond_27

    #@24
    .line 979
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    #@27
    :cond_27
    const/4 v0, 0x2

    #@28
    .line 981
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_56

    #@2e
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    const-string v1, "Setting FragmentResultListener with key "

    #@32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object p1

    #@39
    const-string v0, " lifecycleOwner "

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object p1

    #@3f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p1

    #@43
    const-string p2, " and listener "

    #@45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object p1

    #@49
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object p1

    #@4d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object p1

    #@51
    const-string p2, "FragmentManager"

    #@53
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    :cond_56
    return-void
.end method

.method setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5

    #@0
    .line 3186
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_17

    #@c
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@e
    if-eqz v0, :cond_14

    #@10
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@12
    if-ne v0, p0, :cond_17

    #@14
    .line 3191
    :cond_14
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@16
    return-void

    #@17
    .line 3188
    :cond_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    const-string v1, "Fragment "

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    const-string v0, " is not an active fragment of FragmentManager "

    #@26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw p2
.end method

.method setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    #@0
    if-eqz p1, :cond_36

    #@2
    .line 3145
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_17

    #@e
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@10
    if-eqz v0, :cond_36

    #@12
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@14
    if-ne v0, p0, :cond_17

    #@16
    goto :goto_36

    #@17
    .line 3147
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    const-string v2, "Fragment "

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    const-string v1, " is not an active fragment of FragmentManager "

    #@26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 3150
    :cond_36
    :goto_36
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@38
    .line 3151
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@3a
    .line 3152
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    #@3d
    .line 3153
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    #@3f
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    #@42
    return-void
.end method

.method setSpecialEffectsControllerFactory(Landroidx/fragment/app/SpecialEffectsControllerFactory;)V
    .registers 2

    #@0
    .line 3241
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@2
    return-void
.end method

.method public setStrictModePolicy(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)V
    .registers 2

    #@0
    .line 3413
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    #@2
    return-void
.end method

.method showFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    .line 1530
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1b

    #@7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "show: "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    const-string v1, "FragmentManager"

    #@18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1531
    :cond_1b
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@1d
    if-eqz v0, :cond_28

    #@1f
    const/4 v0, 0x0

    #@20
    .line 1532
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    #@22
    .line 1535
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    #@24
    xor-int/lit8 v0, v0, 0x1

    #@26
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    #@28
    :cond_28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    const-string v1, "FragmentManager{"

    #@9
    .line 1269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 1270
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    const-string v1, " in "

    #@19
    .line 1271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 1272
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@1e
    const-string v2, "}"

    #@20
    const-string v3, "{"

    #@22
    if-eqz v1, :cond_43

    #@24
    .line 1273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v1

    #@28
    .line 1274
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 1275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 1276
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    #@34
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@37
    move-result v1

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 1277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_6b

    #@43
    .line 1278
    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@45
    if-eqz v1, :cond_66

    #@47
    .line 1279
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object v1

    #@4b
    .line 1280
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 1281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 1282
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@57
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@5a
    move-result v1

    #@5b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 1283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    goto :goto_6b

    #@66
    :cond_66
    const-string v1, "null"

    #@68
    .line 1285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    :goto_6b
    const-string v1, "}}"

    #@6d
    .line 1287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 1288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    return-object v0
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 3

    #@0
    .line 3291
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    #@2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    #@5
    return-void
.end method
