.class Landroidx/fragment/app/FragmentStore;
.super Ljava/lang/Object;
.source "FragmentStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mActive:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mSavedState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@a
    .line 38
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@11
    .line 39
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@18
    return-void
.end method


# virtual methods
.method addFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    #@0
    .line 91
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_18

    #@8
    .line 94
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@a
    monitor-enter v0

    #@b
    .line 95
    :try_start_b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 96
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    #@11
    const/4 v0, 0x1

    #@12
    .line 97
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@14
    return-void

    #@15
    :catchall_15
    move-exception p1

    #@16
    .line 96
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    #@17
    throw p1

    #@18
    .line 92
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    const-string v2, "Fragment already added: "

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

.method burpActive()V
    .registers 3

    #@0
    .line 172
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    .line 175
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    #@e
    return-void
.end method

.method containsActiveFragment(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 329
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    return p1
.end method

.method dispatchStateChange(I)V
    .registers 4

    #@0
    .line 101
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1c

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@16
    if-eqz v1, :cond_a

    #@18
    .line 103
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    #@0
    .line 409
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
    .line 411
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_4f

    #@1b
    .line 412
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    const-string v1, "Active Fragments:"

    #@20
    .line 413
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 414
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@25
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@28
    move-result-object v1

    #@29
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_4f

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    #@39
    .line 415
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    if-eqz v2, :cond_49

    #@3e
    .line 417
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@41
    move-result-object v2

    #@42
    .line 418
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@45
    .line 419
    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@48
    goto :goto_2d

    #@49
    :cond_49
    const-string v2, "null"

    #@4b
    .line 421
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    goto :goto_2d

    #@4f
    .line 426
    :cond_4f
    iget-object p2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@51
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@54
    move-result p2

    #@55
    if-lez p2, :cond_84

    #@57
    .line 428
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    const-string p4, "Added Fragments:"

    #@5c
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    const/4 p4, 0x0

    #@60
    :goto_60
    if-ge p4, p2, :cond_84

    #@62
    .line 430
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Landroidx/fragment/app/Fragment;

    #@6a
    .line 431
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    const-string v1, "  #"

    #@6f
    .line 432
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    .line 433
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    #@75
    const-string v1, ": "

    #@77
    .line 434
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    .line 435
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@81
    add-int/lit8 p4, p4, 0x1

    #@83
    goto :goto_60

    #@84
    :cond_84
    return-void
.end method

.method findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    .line 352
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/fragment/app/FragmentStateManager;

    #@8
    if-eqz p1, :cond_f

    #@a
    .line 354
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return-object p1
.end method

.method findFragmentById(I)Landroidx/fragment/app/Fragment;
    .registers 5

    #@0
    .line 285
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_1c

    #@a
    .line 286
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@12
    if-eqz v1, :cond_19

    #@14
    .line 287
    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@16
    if-ne v2, p1, :cond_19

    #@18
    return-object v1

    #@19
    :cond_19
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_8

    #@1c
    .line 292
    :cond_1c
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v0

    #@26
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3d

    #@2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@32
    if-eqz v1, :cond_26

    #@34
    .line 294
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@37
    move-result-object v1

    #@38
    .line 295
    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@3a
    if-ne v2, p1, :cond_26

    #@3c
    return-object v1

    #@3d
    :cond_3d
    const/4 p1, 0x0

    #@3e
    return-object p1
.end method

.method findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 5

    #@0
    if-eqz p1, :cond_22

    #@2
    .line 307
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    :goto_a
    if-ltz v0, :cond_22

    #@c
    .line 308
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@14
    if-eqz v1, :cond_1f

    #@16
    .line 309
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1f

    #@1e
    return-object v1

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_a

    #@22
    :cond_22
    if-eqz p1, :cond_49

    #@24
    .line 316
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@26
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@29
    move-result-object v0

    #@2a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v0

    #@2e
    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_49

    #@34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@3a
    if-eqz v1, :cond_2e

    #@3c
    .line 318
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@3f
    move-result-object v1

    #@40
    .line 319
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@42
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_2e

    #@48
    return-object v1

    #@49
    :cond_49
    const/4 p1, 0x0

    #@4a
    return-object p1
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 4

    #@0
    .line 339
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_23

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@16
    if-eqz v1, :cond_a

    #@18
    .line 341
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@1b
    move-result-object v1

    #@1c
    .line 342
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@1f
    move-result-object v1

    #@20
    if-eqz v1, :cond_a

    #@22
    return-object v1

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return-object p1
.end method

.method findFragmentIndexInContainer(Landroidx/fragment/app/Fragment;)I
    .registers 7

    #@0
    .line 377
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@2
    const/4 v1, -0x1

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 382
    :cond_6
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@b
    move-result p1

    #@c
    add-int/lit8 v2, p1, -0x1

    #@e
    :goto_e
    if-ltz v2, :cond_2c

    #@10
    .line 385
    iget-object v3, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@18
    .line 386
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@1a
    if-ne v4, v0, :cond_29

    #@1c
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@1e
    if-eqz v4, :cond_29

    #@20
    .line 388
    iget-object p1, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@22
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@25
    move-result p1

    #@26
    add-int/lit8 p1, p1, 0x1

    #@28
    return p1

    #@29
    :cond_29
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_e

    #@2c
    :cond_2c
    :goto_2c
    add-int/lit8 p1, p1, 0x1

    #@2e
    .line 394
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v2

    #@34
    if-ge p1, v2, :cond_4e

    #@36
    .line 395
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroidx/fragment/app/Fragment;

    #@3e
    .line 396
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@40
    if-ne v3, v0, :cond_4d

    #@42
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@44
    if-eqz v3, :cond_4d

    #@46
    .line 399
    iget-object p1, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@48
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@4b
    move-result p1

    #@4c
    return p1

    #@4d
    :cond_4d
    goto :goto_2c

    #@4e
    :cond_4e
    return v1
.end method

.method getActiveFragmentCount()I
    .registers 2

    #@0
    .line 279
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getActiveFragmentStateManagers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/FragmentStateManager;",
            ">;"
        }
    .end annotation

    #@0
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 246
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_21

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    #@1b
    if-eqz v2, :cond_f

    #@1d
    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_f

    #@21
    :cond_21
    return-object v0
.end method

.method getActiveFragments()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .line 267
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 268
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2a

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    #@1b
    if-eqz v2, :cond_25

    #@1d
    .line 270
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_f

    #@25
    :cond_25
    const/4 v2, 0x0

    #@26
    .line 272
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_f

    #@2a
    :cond_2a
    return-object v0
.end method

.method getAllSavedState()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation

    #@0
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method

.method getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;
    .registers 3

    #@0
    .line 334
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/fragment/app/FragmentStateManager;

    #@8
    return-object p1
.end method

.method getFragments()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .line 257
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 260
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@f
    monitor-enter v0

    #@10
    .line 261
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    #@12
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@14
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@17
    monitor-exit v0

    #@18
    return-object v1

    #@19
    :catchall_19
    move-exception v1

    #@1a
    .line 262
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    #@1b
    throw v1
.end method

.method getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 2

    #@0
    .line 48
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@2
    return-object v0
.end method

.method getSavedState(Ljava/lang/String;)Landroidx/fragment/app/FragmentState;
    .registers 3

    #@0
    .line 180
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/fragment/app/FragmentState;

    #@8
    return-object p1
.end method

.method makeActive(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 5

    #@0
    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    .line 73
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_d

    #@c
    return-void

    #@d
    .line 76
    :cond_d
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@f
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 77
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    #@16
    if-eqz p1, :cond_2a

    #@18
    .line 78
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@1a
    if-eqz p1, :cond_22

    #@1c
    .line 79
    iget-object p1, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@1e
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@21
    goto :goto_27

    #@22
    .line 81
    :cond_22
    iget-object p1, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@24
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@27
    :goto_27
    const/4 p1, 0x0

    #@28
    .line 83
    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    #@2a
    :cond_2a
    const/4 p1, 0x2

    #@2b
    .line 85
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@2e
    move-result p1

    #@2f
    if-eqz p1, :cond_45

    #@31
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    #@33
    const-string v1, "Added fragment to active set "

    #@35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    const-string v0, "FragmentManager"

    #@42
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    :cond_45
    return-void
.end method

.method makeInactive(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 5

    #@0
    .line 147
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@3
    move-result-object p1

    #@4
    .line 149
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 150
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@a
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    #@d
    .line 155
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@f
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    #@18
    if-nez v0, :cond_1b

    #@1a
    return-void

    #@1b
    :cond_1b
    const/4 v0, 0x2

    #@1c
    .line 161
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_36

    #@22
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    const-string v1, "Removed fragment from active set "

    #@26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    const-string v0, "FragmentManager"

    #@33
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    :cond_36
    return-void
.end method

.method moveToExpectedState()V
    .registers 5

    #@0
    .line 110
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

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
    if-eqz v1, :cond_22

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@12
    .line 111
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@14
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@16
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@1c
    if-eqz v1, :cond_6

    #@1e
    .line 113
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@21
    goto :goto_6

    #@22
    .line 119
    :cond_22
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@24
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@27
    move-result-object v0

    #@28
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v0

    #@2c
    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_65

    #@32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    #@38
    if-eqz v1, :cond_2c

    #@3a
    .line 121
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@3d
    .line 123
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@40
    move-result-object v2

    #@41
    .line 124
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    #@43
    if-eqz v3, :cond_4d

    #@45
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_4d

    #@4b
    const/4 v3, 0x1

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    const/4 v3, 0x0

    #@4e
    :goto_4e
    if-eqz v3, :cond_2c

    #@50
    .line 126
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@52
    if-eqz v3, :cond_61

    #@54
    iget-object v3, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@56
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@58
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5b
    move-result v2

    #@5c
    if-nez v2, :cond_61

    #@5e
    .line 131
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    #@61
    .line 133
    :cond_61
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    #@64
    goto :goto_2c

    #@65
    :cond_65
    return-void
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    .line 140
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 141
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 142
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    #@9
    const/4 v0, 0x0

    #@a
    .line 143
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    #@c
    return-void

    #@d
    :catchall_d
    move-exception p1

    #@e
    .line 142
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    #@f
    throw p1
.end method

.method resetActiveFragments()V
    .registers 2

    #@0
    .line 52
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    return-void
.end method

.method restoreAddedFragments(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 56
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    if-eqz p1, :cond_61

    #@7
    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object p1

    #@b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_61

    #@11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 59
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_46

    #@1d
    const/4 v2, 0x2

    #@1e
    .line 63
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_42

    #@24
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    const-string v3, "restoreSaveState: added ("

    #@28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v2, "): "

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    const-string v2, "FragmentManager"

    #@3f
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 66
    :cond_42
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    #@45
    goto :goto_b

    #@46
    .line 61
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    const-string v2, "No instantiated fragment for ("

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    const-string v1, ")"

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw p1

    #@61
    :cond_61
    return-void
.end method

.method restoreSaveState(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentState;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 196
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p1

    #@9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1d

    #@f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroidx/fragment/app/FragmentState;

    #@15
    .line 198
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@17
    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    goto :goto_9

    #@1d
    :cond_1d
    return-void
.end method

.method saveActiveFragments()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@7
    move-result v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 210
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    #@d
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_57

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    #@21
    if-eqz v2, :cond_15

    #@23
    .line 212
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@26
    move-result-object v3

    #@27
    .line 214
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    #@2a
    .line 215
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    const/4 v2, 0x2

    #@30
    .line 217
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_15

    #@36
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    const-string v4, "Saved state of "

    #@3a
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string v4, ": "

    #@43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    const-string v3, "FragmentManager"

    #@53
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    goto :goto_15

    #@57
    :cond_57
    return-object v0
.end method

.method saveAddedFragments()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 227
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 228
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_e

    #@b
    .line 229
    monitor-exit v0

    #@c
    const/4 v0, 0x0

    #@d
    return-object v0

    #@e
    .line 231
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    #@10
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v2

    #@16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    .line 232
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_5c

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@2b
    .line 233
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@2d
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    const/4 v4, 0x2

    #@31
    .line 234
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_1f

    #@37
    const-string v4, "FragmentManager"

    #@39
    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v6, "saveAllState: adding fragment ("

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string v6, "): "

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    goto :goto_1f

    #@5c
    .line 239
    :cond_5c
    monitor-exit v0

    #@5d
    return-object v1

    #@5e
    :catchall_5e
    move-exception v1

    #@5f
    .line 240
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    #@60
    throw v1
.end method

.method setNonConfig(Landroidx/fragment/app/FragmentManagerViewModel;)V
    .registers 2

    #@0
    .line 44
    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    #@2
    return-void
.end method

.method setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;
    .registers 4

    #@0
    if-eqz p2, :cond_b

    #@2
    .line 189
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Landroidx/fragment/app/FragmentState;

    #@a
    return-object p1

    #@b
    .line 191
    :cond_b
    iget-object p2, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    #@d
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, Landroidx/fragment/app/FragmentState;

    #@13
    return-object p1
.end method
