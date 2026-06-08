.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;,
        Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"


# instance fields
.field private mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@3
    return-void
.end method

.method static dispatch(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    #@0
    .line 60
    instance-of v0, p0, Landroidx/lifecycle/LifecycleRegistryOwner;

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 61
    check-cast p0, Landroidx/lifecycle/LifecycleRegistryOwner;

    #@6
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    #@9
    move-result-object p0

    #@a
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@d
    return-void

    #@e
    .line 65
    :cond_e
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    #@10
    if-eqz v0, :cond_21

    #@12
    .line 66
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    #@14
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@17
    move-result-object p0

    #@18
    .line 67
    instance-of v0, p0, Landroidx/lifecycle/LifecycleRegistry;

    #@1a
    if-eqz v0, :cond_21

    #@1c
    .line 68
    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    #@1e
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@21
    :cond_21
    return-void
.end method

.method private dispatch(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    #@0
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-ge v0, v1, :cond_d

    #@6
    .line 144
    invoke-virtual {p0}, Landroidx/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0, p1}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@d
    :cond_d
    return-void
.end method

.method private dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 82
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    #@5
    :cond_5
    return-void
.end method

.method private dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 94
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    #@5
    :cond_5
    return-void
.end method

.method private dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 88
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    #@5
    :cond_5
    return-void
.end method

.method static get(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;
    .registers 2

    #@0
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@3
    move-result-object p0

    #@4
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    #@6
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroidx/lifecycle/ReportFragment;

    #@c
    return-object p0
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .registers 4

    #@0
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_9

    #@6
    .line 44
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;->registerIn(Landroid/app/Activity;)V

    #@9
    .line 50
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@c
    move-result-object p0

    #@d
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    #@f
    .line 51
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    #@12
    move-result-object v1

    #@13
    if-nez v1, :cond_28

    #@15
    .line 52
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@18
    move-result-object v1

    #@19
    new-instance v2, Landroidx/lifecycle/ReportFragment;

    #@1b
    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    #@1e
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    #@25
    .line 54
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    #@28
    :cond_28
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 101
    iget-object p1, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    #@5
    invoke-direct {p0, p1}, Landroidx/lifecycle/ReportFragment;->dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    #@8
    .line 102
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@a
    invoke-direct {p0, p1}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    #@d
    return-void
.end method

.method public onDestroy()V
    .registers 2

    #@0
    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    #@3
    .line 134
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    #@8
    const/4 v0, 0x0

    #@9
    .line 136
    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    #@b
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    #@3
    .line 122
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    #@8
    return-void
.end method

.method public onResume()V
    .registers 2

    #@0
    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    #@3
    .line 115
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    #@5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    #@8
    .line 116
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@a
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    #@d
    return-void
.end method

.method public onStart()V
    .registers 2

    #@0
    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    #@3
    .line 108
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    #@5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    #@8
    .line 109
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@a
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    #@d
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    #@3
    .line 128
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    #@8
    return-void
.end method

.method setProcessListener(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    #@0
    .line 149
    iput-object p1, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    #@2
    return-void
.end method
