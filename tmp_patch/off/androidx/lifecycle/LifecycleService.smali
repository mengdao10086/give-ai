.class public Landroidx/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 32
    new-instance v0, Landroidx/lifecycle/ServiceLifecycleDispatcher;

    #@5
    invoke-direct {v0, p0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    #@a
    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    #@0
    .line 77
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    #@0
    .line 45
    iget-object p1, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    #@2
    invoke-virtual {p1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    #@5
    const/4 p1, 0x0

    #@6
    return-object p1
.end method

.method public onCreate()V
    .registers 2

    #@0
    .line 37
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    #@5
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@8
    return-void
.end method

.method public onDestroy()V
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    #@5
    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@8
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4

    #@0
    .line 53
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    #@5
    .line 54
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    #@8
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    #@0
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    #@3
    move-result p1

    #@4
    return p1
.end method
