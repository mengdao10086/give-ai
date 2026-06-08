.class Landroidx/lifecycle/LegacySavedStateHandleController$1;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LegacySavedStateHandleController;->tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lifecycle:Landroidx/lifecycle/Lifecycle;

.field final synthetic val$registry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V
    .registers 3

    #@0
    .line 80
    iput-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    #@2
    iput-object p2, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->val$registry:Landroidx/savedstate/SavedStateRegistry;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    #@0
    .line 84
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@2
    if-ne p2, p1, :cond_10

    #@4
    .line 85
    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    #@6
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@9
    .line 86
    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->val$registry:Landroidx/savedstate/SavedStateRegistry;

    #@b
    const-class p2, Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;

    #@d
    invoke-virtual {p1, p2}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation(Ljava/lang/Class;)V

    #@10
    :cond_10
    return-void
.end method
