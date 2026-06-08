.class final Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$AutoRecreated;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LegacySavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnRecreation"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onRecreated(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .registers 7

    #@0
    .line 48
    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    #@2
    if-eqz v0, :cond_3f

    #@4
    .line 53
    move-object v0, p1

    #@5
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    #@7
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    #@a
    move-result-object v0

    #@b
    .line 54
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    #@e
    move-result-object v1

    #@f
    .line 55
    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->keys()Ljava/util/Set;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2f

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/lang/String;

    #@23
    .line 56
    invoke-virtual {v0, v3}, Landroidx/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    #@26
    move-result-object v3

    #@27
    .line 57
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v3, v1, v4}, Landroidx/lifecycle/LegacySavedStateHandleController;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    #@2e
    goto :goto_17

    #@2f
    .line 59
    :cond_2f
    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->keys()Ljava/util/Set;

    #@32
    move-result-object p1

    #@33
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@36
    move-result p1

    #@37
    if-nez p1, :cond_3e

    #@39
    .line 60
    const-class p1, Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;

    #@3b
    invoke-virtual {v1, p1}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation(Ljava/lang/Class;)V

    #@3e
    :cond_3e
    return-void

    #@3f
    .line 49
    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@41
    const-string v0, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    #@43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@46
    throw p1
.end method
