.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    }
.end annotation


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field final mFragments:Landroidx/fragment/app/FragmentController;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 108
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    #@3
    .line 89
    new-instance v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    #@5
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    #@8
    invoke-static {v0}, Landroidx/fragment/app/FragmentController;->createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@e
    .line 96
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    #@10
    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    #@13
    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@15
    const/4 v0, 0x1

    #@16
    .line 100
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    #@18
    .line 109
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->init()V

    #@1b
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 124
    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    #@3
    .line 89
    new-instance p1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    #@5
    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    #@8
    invoke-static {p1}, Landroidx/fragment/app/FragmentController;->createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@e
    .line 96
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    #@10
    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    #@13
    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@15
    const/4 p1, 0x1

    #@16
    .line 100
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    #@18
    .line 125
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->init()V

    #@1b
    return-void
.end method

.method private init()V
    .registers 4

    #@0
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda0;

    #@6
    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    #@9
    const-string v2, "android:support:lifecycle"

    #@b
    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    #@e
    .line 136
    new-instance v0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;

    #@10
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    #@13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    #@16
    .line 139
    new-instance v0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda2;

    #@18
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda2;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    #@1b
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->addOnNewIntentListener(Landroidx/core/util/Consumer;)V

    #@1e
    .line 140
    new-instance v0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda3;

    #@20
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda3;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    #@23
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    #@26
    return-void
.end method

.method private static markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z
    .registers 7

    #@0
    .line 770
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    .line 771
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object p0

    #@8
    const/4 v0, 0x0

    #@9
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_59

    #@f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@15
    if-nez v1, :cond_18

    #@17
    goto :goto_9

    #@18
    .line 775
    :cond_18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    if-eqz v2, :cond_27

    #@1e
    .line 776
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@21
    move-result-object v2

    #@22
    .line 777
    invoke-static {v2, p1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    #@25
    move-result v2

    #@26
    or-int/2addr v0, v2

    #@27
    .line 779
    :cond_27
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@29
    const/4 v3, 0x1

    #@2a
    if-eqz v2, :cond_44

    #@2c
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@2e
    .line 780
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@35
    move-result-object v2

    #@36
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    #@38
    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_44

    #@3e
    .line 781
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    #@40
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    #@43
    move v0, v3

    #@44
    .line 784
    :cond_44
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@46
    invoke-virtual {v2}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@49
    move-result-object v2

    #@4a
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    #@4c
    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_9

    #@52
    .line 785
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@54
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    #@57
    move v0, v3

    #@58
    goto :goto_9

    #@59
    :cond_59
    return v0
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    #@0
    .line 248
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    #@0
    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/ComponentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 413
    invoke-virtual {p0, p4}, Landroidx/fragment/app/FragmentActivity;->shouldDumpInternalState([Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_a

    #@9
    return-void

    #@a
    .line 417
    :cond_a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    const-string v0, "Local FragmentActivity "

    #@f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 418
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    const-string v0, " State:"

    #@1f
    .line 419
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v1, "  "

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 421
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    const-string v1, "mCreated="

    #@3a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 422
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    #@3f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@42
    const-string v1, " mResumed="

    #@44
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    .line 423
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    #@49
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@4c
    const-string v1, " mStopped="

    #@4e
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 424
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    #@53
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@56
    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    #@59
    move-result-object v1

    #@5a
    if-eqz v1, :cond_63

    #@5c
    .line 427
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, v0, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@63
    .line 429
    :cond_63
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@65
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@6c
    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2

    #@0
    .line 462
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 472
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method synthetic lambda$init$0$androidx-fragment-app-FragmentActivity()Landroid/os/Bundle;
    .registers 3

    #@0
    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    #@3
    .line 131
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@5
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@a
    .line 132
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    return-object v0
.end method

.method synthetic lambda$init$1$androidx-fragment-app-FragmentActivity(Landroid/content/res/Configuration;)V
    .registers 2

    #@0
    .line 136
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    #@5
    return-void
.end method

.method synthetic lambda$init$2$androidx-fragment-app-FragmentActivity(Landroid/content/Intent;)V
    .registers 2

    #@0
    .line 139
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    #@5
    return-void
.end method

.method synthetic lambda$init$3$androidx-fragment-app-FragmentActivity(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 140
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentController;->attachHost(Landroidx/fragment/app/Fragment;)V

    #@6
    return-void
.end method

.method markFragmentsCreated()V
    .registers 3

    #@0
    .line 764
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    #@6
    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    #@0
    .line 151
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 152
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    #@8
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 217
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 219
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@5
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@7
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@a
    .line 220
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@c
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentController;->dispatchCreate()V

    #@f
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    #@0
    .line 227
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/ComponentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    :cond_b
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 238
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_c

    #@7
    .line 240
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@a
    move-result-object p1

    #@b
    return-object p1

    #@c
    :cond_c
    return-object v0
.end method

.method protected onDestroy()V
    .registers 3

    #@0
    .line 258
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onDestroy()V

    #@3
    .line 259
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchDestroy()V

    #@8
    .line 260
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@a
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@c
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@f
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    #@0
    .line 265
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    return p1

    #@8
    :cond_8
    const/4 v0, 0x6

    #@9
    if-ne p1, v0, :cond_12

    #@b
    .line 270
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@d
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@10
    move-result p1

    #@11
    return p1

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    return p1
.end method

.method protected onPause()V
    .registers 3

    #@0
    .line 283
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onPause()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 284
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    #@6
    .line 285
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchPause()V

    #@b
    .line 286
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@d
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@f
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@12
    return-void
.end method

.method protected onPostResume()V
    .registers 1

    #@0
    .line 322
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onPostResume()V

    #@3
    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    #@6
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    #@0
    .line 489
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 490
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@8
    return-void
.end method

.method protected onResume()V
    .registers 2

    #@0
    .line 309
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 310
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    #@8
    const/4 v0, 0x1

    #@9
    .line 311
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    #@b
    .line 312
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@d
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    #@10
    return-void
.end method

.method protected onResumeFragments()V
    .registers 3

    #@0
    .line 333
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@2
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@7
    .line 334
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchResume()V

    #@c
    return-void
.end method

.method protected onStart()V
    .registers 3

    #@0
    .line 344
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 345
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onStart()V

    #@8
    const/4 v0, 0x0

    #@9
    .line 347
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    #@b
    .line 349
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    #@d
    if-nez v0, :cond_17

    #@f
    const/4 v0, 0x1

    #@10
    .line 350
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    #@12
    .line 351
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchActivityCreated()V

    #@17
    .line 354
    :cond_17
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@19
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    #@1c
    .line 358
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@1e
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@23
    .line 359
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchStart()V

    #@28
    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    #@0
    .line 297
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    #@5
    return-void
.end method

.method protected onStop()V
    .registers 3

    #@0
    .line 369
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onStop()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 371
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    #@6
    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    #@9
    .line 374
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    #@b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchStop()V

    #@e
    .line 375
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@10
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@12
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@15
    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .registers 2

    #@0
    .line 178
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    #@3
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .registers 2

    #@0
    .line 191
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    #@3
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 505
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p3, v0, :cond_7

    #@3
    .line 526
    invoke-static {p0, p2, v0, p4}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@6
    return-void

    #@7
    .line 531
    :cond_7
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@a
    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    move v3, p3

    #@2
    if-ne v3, v0, :cond_12

    #@4
    move-object v1, p0

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    move-object v4, p4

    #@8
    move v5, p5

    #@9
    move v6, p6

    #@a
    move/from16 v7, p7

    #@c
    move-object/from16 v8, p8

    #@e
    .line 565
    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@11
    return-void

    #@12
    .line 569
    :cond_12
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@15
    return-void
.end method

.method public supportFinishAfterTransition()V
    .registers 1

    #@0
    .line 166
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    #@3
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .registers 1

    #@0
    .line 199
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .registers 1

    #@0
    .line 207
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method
