.class public final synthetic Landroidx/lifecycle/LifecycleController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LifecycleController;

.field public final synthetic f$1:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleController;Lkotlinx/coroutines/Job;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/lifecycle/LifecycleController$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LifecycleController;

    #@5
    iput-object p2, p0, Landroidx/lifecycle/LifecycleController$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    #@7
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    #@0
    iget-object v0, p0, Landroidx/lifecycle/LifecycleController$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LifecycleController;

    #@2
    iget-object v1, p0, Landroidx/lifecycle/LifecycleController$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    #@4
    invoke-static {v0, v1, p1, p2}, Landroidx/lifecycle/LifecycleController;->$r8$lambda$7XqClT_TFDHmqX3ARP07WvbP2Qg(Landroidx/lifecycle/LifecycleController;Lkotlinx/coroutines/Job;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    #@7
    return-void
.end method
