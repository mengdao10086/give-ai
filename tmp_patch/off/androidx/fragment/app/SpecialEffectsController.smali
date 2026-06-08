.class abstract Landroidx/fragment/app/SpecialEffectsController;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;,
        Landroidx/fragment/app/SpecialEffectsController$Operation;
    }
.end annotation


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field mIsContainerPostponed:Z

.field mOperationDirectionIsPop:Z

.field final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    #@0
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@a
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    #@11
    const/4 v0, 0x0

    #@12
    .line 89
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    #@14
    .line 90
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    #@16
    .line 93
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    #@18
    return-void
.end method

.method private enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V
    .registers 7

    #@0
    .line 193
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 194
    :try_start_3
    new-instance v1, Landroidx/core/os/CancellationSignal;

    #@5
    invoke-direct {v1}, Landroidx/core/os/CancellationSignal;-><init>()V

    #@8
    .line 196
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v2}, Landroidx/fragment/app/SpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@f
    move-result-object v2

    #@10
    if-eqz v2, :cond_17

    #@12
    .line 200
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    #@15
    .line 201
    monitor-exit v0

    #@16
    return-void

    #@17
    .line 203
    :cond_17
    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    #@19
    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    #@1c
    .line 205
    iget-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 207
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$1;

    #@23
    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/SpecialEffectsController$1;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    #@26
    invoke-virtual {v2, p1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->addCompletionListener(Ljava/lang/Runnable;)V

    #@29
    .line 217
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$2;

    #@2b
    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/SpecialEffectsController$2;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    #@2e
    invoke-virtual {v2, p1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->addCompletionListener(Ljava/lang/Runnable;)V

    #@31
    .line 224
    monitor-exit v0

    #@32
    return-void

    #@33
    :catchall_33
    move-exception p1

    #@34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    #@35
    throw p1
.end method

.method private findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .registers 5

    #@0
    .line 135
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_23

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@12
    .line 136
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_6

    #@1c
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_6

    #@22
    return-object v1

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return-object p1
.end method

.method private findRunningOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .registers 5

    #@0
    .line 145
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_23

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@12
    .line 146
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_6

    #@1c
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_6

    #@22
    return-object v1

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return-object p1
.end method

.method static getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;
    .registers 2

    #@0
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    #@3
    move-result-object p1

    #@4
    .line 56
    invoke-static {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method static getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;
    .registers 4

    #@0
    .line 72
    sget v0, Landroidx/fragment/R$id;->special_effects_controller_view_tag:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 73
    instance-of v1, v0, Landroidx/fragment/app/SpecialEffectsController;

    #@8
    if-eqz v1, :cond_d

    #@a
    .line 74
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController;

    #@c
    return-object v0

    #@d
    .line 77
    :cond_d
    invoke-interface {p1, p0}, Landroidx/fragment/app/SpecialEffectsControllerFactory;->createController(Landroid/view/ViewGroup;)Landroidx/fragment/app/SpecialEffectsController;

    #@10
    move-result-object p1

    #@11
    .line 78
    sget v0, Landroidx/fragment/R$id;->special_effects_controller_view_tag:I

    #@13
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@16
    return-object p1
.end method

.method private updateFinalState()V
    .registers 5

    #@0
    .line 356
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_30

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@12
    .line 358
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@18
    if-ne v2, v3, :cond_6

    #@1a
    .line 359
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@1d
    move-result-object v2

    #@1e
    .line 360
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    #@21
    move-result-object v2

    #@22
    .line 361
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@25
    move-result v2

    #@26
    invoke-static {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@29
    move-result-object v2

    #@2a
    .line 362
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@2c
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    #@2f
    goto :goto_6

    #@30
    :cond_30
    return-void
.end method


# virtual methods
.method enqueueAdd(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/FragmentStateManager;)V
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    .line 155
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1f

    #@7
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 158
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "FragmentManager"

    #@1c
    .line 156
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 160
    :cond_1f
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@21
    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    #@24
    return-void
.end method

.method enqueueHide(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    .line 173
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1f

    #@7
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 176
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "FragmentManager"

    #@1c
    .line 174
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 178
    :cond_1f
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@21
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@23
    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    #@26
    return-void
.end method

.method enqueueRemove(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    .line 182
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1f

    #@7
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 185
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "FragmentManager"

    #@1c
    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 187
    :cond_1f
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@21
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@23
    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    #@26
    return-void
.end method

.method enqueueShow(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    .line 164
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1f

    #@7
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 167
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "FragmentManager"

    #@1c
    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 169
    :cond_1f
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@21
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@23
    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    #@26
    return-void
.end method

.method abstract executeOperations(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation
.end method

.method executePendingOperations()V
    .registers 8

    #@0
    .line 265
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 271
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    #@7
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    if-nez v0, :cond_14

    #@e
    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V

    #@11
    .line 273
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    #@13
    return-void

    #@14
    .line 276
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@16
    monitor-enter v0

    #@17
    .line 277
    :try_start_17
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_b2

    #@1f
    .line 278
    new-instance v2, Ljava/util/ArrayList;

    #@21
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    #@23
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@26
    .line 280
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@2b
    .line 281
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v3

    #@33
    const/4 v4, 0x2

    #@34
    if-eqz v3, :cond_69

    #@36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@3c
    .line 282
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_5a

    #@42
    const-string v4, "FragmentManager"

    #@44
    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string v6, "SpecialEffectsController: Cancelling operation "

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 286
    :cond_5a
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    #@5d
    .line 287
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isComplete()Z

    #@60
    move-result v4

    #@61
    if-nez v4, :cond_2f

    #@63
    .line 290
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@68
    goto :goto_2f

    #@69
    .line 294
    :cond_69
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    #@6c
    .line 296
    new-instance v2, Ljava/util/ArrayList;

    #@6e
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@70
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@73
    .line 297
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@78
    .line 298
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@7d
    .line 299
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_8a

    #@83
    const-string v3, "FragmentManager"

    #@85
    const-string v5, "SpecialEffectsController: Executing pending operations"

    #@87
    .line 300
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 303
    :cond_8a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v3

    #@8e
    :goto_8e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_9e

    #@94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@9a
    .line 304
    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    #@9d
    goto :goto_8e

    #@9e
    .line 306
    :cond_9e
    iget-boolean v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    #@a0
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/SpecialEffectsController;->executeOperations(Ljava/util/List;Z)V

    #@a3
    .line 307
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    #@a5
    .line 308
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@a8
    move-result v1

    #@a9
    if-eqz v1, :cond_b2

    #@ab
    const-string v1, "FragmentManager"

    #@ad
    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    #@af
    .line 309
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 313
    :cond_b2
    monitor-exit v0

    #@b3
    return-void

    #@b4
    :catchall_b4
    move-exception v1

    #@b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_17 .. :try_end_b6} :catchall_b4

    #@b6
    throw v1
.end method

.method forceCompleteAllOperations()V
    .registers 10

    #@0
    const/4 v0, 0x2

    #@1
    .line 317
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_e

    #@7
    const-string v1, "FragmentManager"

    #@9
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    #@b
    .line 318
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 322
    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    #@10
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@13
    move-result v1

    #@14
    .line 323
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@16
    monitor-enter v2

    #@17
    .line 324
    :try_start_17
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    #@1a
    .line 325
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v3

    #@20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_30

    #@26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@2c
    .line 326
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    #@2f
    goto :goto_20

    #@30
    .line 330
    :cond_30
    new-instance v3, Ljava/util/ArrayList;

    #@32
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    #@34
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@37
    .line 331
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v3

    #@3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_93

    #@41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@47
    .line 332
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_8f

    #@4d
    const-string v5, "FragmentManager"

    #@4f
    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v7, "SpecialEffectsController: "

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    if-eqz v1, :cond_5f

    #@5c
    const-string v7, ""

    #@5e
    goto :goto_7a

    #@5f
    .line 335
    :cond_5f
    new-instance v7, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string v8, "Container "

    #@66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    iget-object v8, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    const-string v8, " is not attached to window. "

    #@72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    :goto_7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    const-string v7, "Cancelling running operation "

    #@80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v6

    #@8c
    .line 333
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 338
    :cond_8f
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    #@92
    goto :goto_3b

    #@93
    .line 342
    :cond_93
    new-instance v3, Ljava/util/ArrayList;

    #@95
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@97
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9a
    .line 343
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@9d
    move-result-object v3

    #@9e
    :goto_9e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@a1
    move-result v4

    #@a2
    if-eqz v4, :cond_f6

    #@a4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v4

    #@a8
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@aa
    .line 344
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@ad
    move-result v5

    #@ae
    if-eqz v5, :cond_f2

    #@b0
    const-string v5, "FragmentManager"

    #@b2
    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string v7, "SpecialEffectsController: "

    #@b9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v6

    #@bd
    if-eqz v1, :cond_c2

    #@bf
    const-string v7, ""

    #@c1
    goto :goto_dd

    #@c2
    .line 347
    :cond_c2
    new-instance v7, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string v8, "Container "

    #@c9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v7

    #@cd
    iget-object v8, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    #@cf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    const-string v8, " is not attached to window. "

    #@d5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v7

    #@d9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v7

    #@dd
    :goto_dd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v6

    #@e1
    const-string v7, "Cancelling pending operation "

    #@e3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v6

    #@e7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v6

    #@eb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v6

    #@ef
    .line 345
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 350
    :cond_f2
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    #@f5
    goto :goto_9e

    #@f6
    .line 352
    :cond_f6
    monitor-exit v2

    #@f7
    return-void

    #@f8
    :catchall_f8
    move-exception v0

    #@f9
    monitor-exit v2
    :try_end_fa
    .catchall {:try_start_17 .. :try_end_fa} :catchall_f8

    #@fa
    throw v0
.end method

.method forcePostponedExecutePendingOperations()V
    .registers 3

    #@0
    .line 253
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    #@2
    if-eqz v0, :cond_18

    #@4
    const/4 v0, 0x2

    #@5
    .line 254
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_12

    #@b
    const-string v0, "FragmentManager"

    #@d
    const-string v1, "SpecialEffectsController: Forcing postponed operations"

    #@f
    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    .line 259
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    #@15
    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    #@18
    :cond_18
    return-void
.end method

.method getAwaitingCompletionLifecycleImpact(Landroidx/fragment/app/FragmentStateManager;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .registers 4

    #@0
    .line 119
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroidx/fragment/app/SpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@d
    move-result-object v0

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    .line 124
    :goto_10
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@13
    move-result-object p1

    #@14
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->findRunningOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@17
    move-result-object p1

    #@18
    if-eqz p1, :cond_25

    #@1a
    if-eqz v0, :cond_20

    #@1c
    .line 126
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@1e
    if-ne v0, v1, :cond_25

    #@20
    .line 128
    :cond_20
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@23
    move-result-object p1

    #@24
    return-object p1

    #@25
    :cond_25
    return-object v0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .registers 2

    #@0
    .line 98
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method markPostponedState()V
    .registers 7

    #@0
    .line 232
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 233
    :try_start_3
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    #@6
    const/4 v1, 0x0

    #@7
    .line 235
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    #@9
    .line 236
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    :goto_11
    if-ltz v1, :cond_3f

    #@13
    .line 237
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    #@1b
    .line 239
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@1e
    move-result-object v3

    #@1f
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@21
    invoke-static {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@24
    move-result-object v3

    #@25
    .line 240
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@28
    move-result-object v4

    #@29
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@2b
    if-ne v4, v5, :cond_3c

    #@2d
    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@2f
    if-eq v3, v4, :cond_3c

    #@31
    .line 242
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    #@34
    move-result-object v1

    #@35
    .line 245
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    #@38
    move-result v1

    #@39
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    #@3b
    goto :goto_3f

    #@3c
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    #@3e
    goto :goto_11

    #@3f
    .line 249
    :cond_3f
    :goto_3f
    monitor-exit v0

    #@40
    return-void

    #@41
    :catchall_41
    move-exception v1

    #@42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    #@43
    throw v1
.end method

.method updateOperationDirection(Z)V
    .registers 2

    #@0
    .line 228
    iput-boolean p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    #@2
    return-void
.end method
