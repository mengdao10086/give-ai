.class final Landroidx/fragment/app/BackStackRecord;
.super Landroidx/fragment/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$BackStackEntry;
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mBeingSaved:Z

.field mCommitted:Z

.field mIndex:I

.field final mManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/BackStackRecord;)V
    .registers 4

    #@0
    .line 146
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@8
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_1d

    #@e
    .line 147
    iget-object v1, p1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@10
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@1b
    move-result-object v1

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v1, 0x0

    #@1e
    .line 146
    :goto_1e
    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;-><init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentTransaction;)V

    #@21
    const/4 v0, -0x1

    #@22
    .line 38
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@24
    const/4 v0, 0x0

    #@25
    .line 39
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@27
    .line 149
    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@29
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@2b
    .line 150
    iget-boolean v0, p1, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    #@2d
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    #@2f
    .line 151
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@31
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@33
    .line 152
    iget-boolean p1, p1, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@35
    iput-boolean p1, p0, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@37
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    #@0
    .line 139
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_17

    #@a
    .line 140
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v1

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v1, 0x0

    #@18
    .line 139
    :goto_18
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;-><init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    #@1b
    const/4 v0, -0x1

    #@1c
    .line 38
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@1e
    const/4 v0, 0x0

    #@1f
    .line 39
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@21
    .line 142
    iput-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@23
    return-void
.end method


# virtual methods
.method bumpBackStackNesting(I)V
    .registers 9

    #@0
    .line 276
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x2

    #@6
    .line 279
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@9
    move-result v1

    #@a
    const-string v2, "FragmentManager"

    #@c
    if-eqz v1, :cond_2a

    #@e
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    const-string v3, "Bump nesting in "

    #@12
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v3, " by "

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 282
    :cond_2a
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v1

    #@30
    const/4 v3, 0x0

    #@31
    :goto_31
    if-ge v3, v1, :cond_71

    #@33
    .line 284
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    #@3b
    .line 285
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@3d
    if-eqz v5, :cond_6e

    #@3f
    .line 286
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@41
    iget v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@43
    add-int/2addr v6, p1

    #@44
    iput v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@46
    .line 287
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_6e

    #@4c
    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    const-string v6, "Bump nesting of "

    #@50
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@53
    iget-object v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    const-string v6, " to "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@61
    iget v4, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    #@63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    #@70
    goto :goto_31

    #@71
    :cond_71
    return-void
.end method

.method collapseOps()V
    .registers 6

    #@0
    .line 618
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_56

    #@a
    .line 619
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    #@12
    .line 620
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@14
    if-nez v2, :cond_17

    #@16
    goto :goto_53

    #@17
    .line 623
    :cond_17
    iget v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@19
    const/16 v3, 0x8

    #@1b
    const/4 v4, 0x0

    #@1c
    if-ne v2, v3, :cond_2a

    #@1e
    .line 626
    iput-boolean v4, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@20
    .line 628
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@22
    add-int/lit8 v2, v0, -0x1

    #@24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_53

    #@2a
    .line 634
    :cond_2a
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@2c
    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@2e
    const/4 v3, 0x2

    #@2f
    .line 636
    iput v3, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@31
    .line 637
    iput-boolean v4, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@33
    add-int/lit8 v1, v0, -0x1

    #@35
    :goto_35
    if-ltz v1, :cond_53

    #@37
    .line 640
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    #@3f
    .line 641
    iget-boolean v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@41
    if-eqz v4, :cond_50

    #@43
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@45
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@47
    if-ne v3, v2, :cond_50

    #@49
    .line 643
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4e
    add-int/lit8 v0, v0, -0x1

    #@50
    :cond_50
    add-int/lit8 v1, v1, -0x1

    #@52
    goto :goto_35

    #@53
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, -0x1

    #@55
    goto :goto_8

    #@56
    :cond_56
    return-void
.end method

.method public commit()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 306
    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 311
    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method commitInternal(Z)I
    .registers 4

    #@0
    .line 327
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    #@2
    if-nez v0, :cond_4c

    #@4
    const/4 v0, 0x2

    #@5
    .line 328
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_31

    #@b
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string v1, "Commit: "

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "FragmentManager"

    #@1c
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 330
    new-instance v0, Landroidx/fragment/app/LogWriter;

    #@21
    invoke-direct {v0, v1}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    #@24
    .line 331
    new-instance v1, Ljava/io/PrintWriter;

    #@26
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@29
    const-string v0, "  "

    #@2b
    .line 332
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@2e
    .line 333
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    #@31
    :cond_31
    const/4 v0, 0x1

    #@32
    .line 335
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    #@34
    .line 336
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    #@36
    if-eqz v0, :cond_41

    #@38
    .line 337
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@3a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->allocBackStackIndex()I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@40
    goto :goto_44

    #@41
    :cond_41
    const/4 v0, -0x1

    #@42
    .line 339
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@44
    .line 341
    :goto_44
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@46
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@49
    .line 342
    iget p1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@4b
    return p1

    #@4c
    .line 327
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    #@4e
    const-string v0, "commit already called"

    #@50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@53
    throw p1
.end method

.method public commitNow()V
    .registers 3

    #@0
    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    #@3
    .line 317
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@9
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .registers 3

    #@0
    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    #@3
    .line 323
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    #@9
    return-void
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    #@0
    .line 235
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_2a

    #@4
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@8
    if-ne v0, v1, :cond_b

    #@a
    goto :goto_2a

    #@b
    .line 236
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 237
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v1, " is already attached to a FragmentManager."

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 240
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@2d
    move-result-object p1

    #@2e
    return-object p1
.end method

.method doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 5

    #@0
    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    #@3
    .line 196
    iget-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@5
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 59
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@4
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    #@0
    if-eqz p3, :cond_cc

    #@2
    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string v0, "mName="

    #@7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    #@c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    const-string v0, " mIndex="

    #@11
    .line 65
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@19
    const-string v0, " mCommitted="

    #@1b
    .line 66
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    #@20
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@23
    .line 67
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    #@25
    if-eqz v0, :cond_38

    #@27
    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    const-string v0, "mTransition=#"

    #@2c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 69
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 71
    :cond_38
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    #@3a
    if-nez v0, :cond_40

    #@3c
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    #@3e
    if-eqz v0, :cond_5f

    #@40
    .line 72
    :cond_40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    const-string v0, "mEnterAnim=#"

    #@45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 73
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    #@4a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    const-string v0, " mExitAnim=#"

    #@53
    .line 74
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 75
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    #@58
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 77
    :cond_5f
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    #@61
    if-nez v0, :cond_67

    #@63
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    #@65
    if-eqz v0, :cond_86

    #@67
    .line 78
    :cond_67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    const-string v0, "mPopEnterAnim=#"

    #@6c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    .line 79
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    #@71
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    const-string v0, " mPopExitAnim=#"

    #@7a
    .line 80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 81
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    #@7f
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 83
    :cond_86
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@88
    if-nez v0, :cond_8e

    #@8a
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@8c
    if-eqz v0, :cond_a9

    #@8e
    .line 84
    :cond_8e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    const-string v0, "mBreadCrumbTitleRes=#"

    #@93
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@96
    .line 85
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@98
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    const-string v0, " mBreadCrumbTitleText="

    #@a1
    .line 86
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a4
    .line 87
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@a6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a9
    .line 89
    :cond_a9
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@ab
    if-nez v0, :cond_b1

    #@ad
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@af
    if-eqz v0, :cond_cc

    #@b1
    .line 90
    :cond_b1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    const-string v0, "mBreadCrumbShortTitleRes=#"

    #@b6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b9
    .line 91
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@bb
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    const-string v0, " mBreadCrumbShortTitleText="

    #@c4
    .line 92
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    .line 93
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@c9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@cc
    .line 97
    :cond_cc
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@d1
    move-result v0

    #@d2
    if-nez v0, :cond_195

    #@d4
    .line 98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d7
    const-string v0, "Operations:"

    #@d9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dc
    .line 99
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@de
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e1
    move-result v0

    #@e2
    const/4 v1, 0x0

    #@e3
    :goto_e3
    if-ge v1, v0, :cond_195

    #@e5
    .line 101
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@e7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ea
    move-result-object v2

    #@eb
    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    #@ed
    .line 103
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@ef
    packed-switch v3, :pswitch_data_196

    #@f2
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    #@f4
    const-string v4, "cmd="

    #@f6
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f9
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@fb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v3

    #@ff
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v3

    #@103
    goto :goto_124

    #@104
    :pswitch_104
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    #@106
    goto :goto_124

    #@107
    :pswitch_107
    const-string v3, "UNSET_PRIMARY_NAV"

    #@109
    goto :goto_124

    #@10a
    :pswitch_10a
    const-string v3, "SET_PRIMARY_NAV"

    #@10c
    goto :goto_124

    #@10d
    :pswitch_10d
    const-string v3, "ATTACH"

    #@10f
    goto :goto_124

    #@110
    :pswitch_110
    const-string v3, "DETACH"

    #@112
    goto :goto_124

    #@113
    :pswitch_113
    const-string v3, "SHOW"

    #@115
    goto :goto_124

    #@116
    :pswitch_116
    const-string v3, "HIDE"

    #@118
    goto :goto_124

    #@119
    :pswitch_119
    const-string v3, "REMOVE"

    #@11b
    goto :goto_124

    #@11c
    :pswitch_11c
    const-string v3, "REPLACE"

    #@11e
    goto :goto_124

    #@11f
    :pswitch_11f
    const-string v3, "ADD"

    #@121
    goto :goto_124

    #@122
    :pswitch_122
    const-string v3, "NULL"

    #@124
    .line 117
    :goto_124
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@127
    const-string v4, "  Op #"

    #@129
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@12f
    const-string v4, ": "

    #@131
    .line 118
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@134
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@137
    const-string v3, " "

    #@139
    .line 119
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@13e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@141
    if-eqz p3, :cond_191

    #@143
    .line 121
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@145
    if-nez v3, :cond_14b

    #@147
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@149
    if-eqz v3, :cond_16a

    #@14b
    .line 122
    :cond_14b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14e
    const-string v3, "enterAnim=#"

    #@150
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@153
    .line 123
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@155
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@158
    move-result-object v3

    #@159
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15c
    const-string v3, " exitAnim=#"

    #@15e
    .line 124
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    .line 125
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@163
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@166
    move-result-object v3

    #@167
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16a
    .line 127
    :cond_16a
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@16c
    if-nez v3, :cond_172

    #@16e
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@170
    if-eqz v3, :cond_191

    #@172
    .line 128
    :cond_172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@175
    const-string v3, "popEnterAnim=#"

    #@177
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    .line 129
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@17c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17f
    move-result-object v3

    #@180
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@183
    const-string v3, " popExitAnim=#"

    #@185
    .line 130
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@188
    .line 131
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@18a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18d
    move-result-object v2

    #@18e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@191
    :cond_191
    add-int/lit8 v1, v1, 0x1

    #@193
    goto/16 :goto_e3

    #@195
    :cond_195
    return-void

    #@196
    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
    .end packed-switch
.end method

.method executeOps()V
    .registers 9

    #@0
    .line 373
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_d5

    #@a
    .line 375
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    #@12
    .line 376
    iget-object v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@14
    if-eqz v4, :cond_29

    #@16
    .line 378
    iget-boolean v5, p0, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@18
    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@1a
    .line 379
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    #@1d
    .line 380
    iget v5, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    #@1f
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    #@22
    .line 381
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@24
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@29
    .line 383
    :cond_29
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@2b
    packed-switch v5, :pswitch_data_d6

    #@2e
    .line 421
    :pswitch_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    const-string v2, "Unknown cmd: "

    #@34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    iget v2, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 418
    :pswitch_45
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@47
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@49
    invoke-virtual {v5, v4, v3}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    #@4c
    goto/16 :goto_d1

    #@4e
    .line 415
    :pswitch_4e
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@50
    const/4 v4, 0x0

    #@51
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    #@54
    goto/16 :goto_d1

    #@56
    .line 412
    :pswitch_56
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@58
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    #@5b
    goto/16 :goto_d1

    #@5d
    .line 407
    :pswitch_5d
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@5f
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@61
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@63
    iget v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@65
    invoke-virtual {v4, v5, v6, v7, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@68
    .line 408
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@6a
    invoke-virtual {v3, v4, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    #@6d
    .line 409
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@6f
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    #@72
    goto :goto_d1

    #@73
    .line 403
    :pswitch_73
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@75
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@77
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@79
    iget v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@7b
    invoke-virtual {v4, v5, v6, v7, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@7e
    .line 404
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@80
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    #@83
    goto :goto_d1

    #@84
    .line 398
    :pswitch_84
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@86
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@88
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@8a
    iget v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@8c
    invoke-virtual {v4, v5, v6, v7, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@8f
    .line 399
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@91
    invoke-virtual {v3, v4, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    #@94
    .line 400
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@96
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    #@99
    goto :goto_d1

    #@9a
    .line 394
    :pswitch_9a
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@9c
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@9e
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@a0
    iget v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@a2
    invoke-virtual {v4, v5, v6, v7, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@a5
    .line 395
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@a7
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    #@aa
    goto :goto_d1

    #@ab
    .line 390
    :pswitch_ab
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@ad
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@af
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@b1
    iget v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@b3
    invoke-virtual {v4, v5, v6, v7, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@b6
    .line 391
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@b8
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    #@bb
    goto :goto_d1

    #@bc
    .line 385
    :pswitch_bc
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@be
    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@c0
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@c2
    iget v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@c4
    invoke-virtual {v4, v5, v6, v7, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@c7
    .line 386
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@c9
    invoke-virtual {v3, v4, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    #@cc
    .line 387
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@ce
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@d1
    :goto_d1
    add-int/lit8 v2, v2, 0x1

    #@d3
    goto/16 :goto_8

    #@d5
    :cond_d5
    return-void

    #@d6
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_2e
        :pswitch_ab
        :pswitch_9a
        :pswitch_84
        :pswitch_73
        :pswitch_5d
        :pswitch_56
        :pswitch_4e
        :pswitch_45
    .end packed-switch
.end method

.method executePopOps()V
    .registers 8

    #@0
    .line 430
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    sub-int/2addr v0, v1

    #@8
    :goto_8
    if-ltz v0, :cond_d9

    #@a
    .line 431
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    #@12
    .line 432
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@14
    if-eqz v3, :cond_2d

    #@16
    .line 434
    iget-boolean v4, p0, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    #@18
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    #@1a
    .line 435
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    #@1d
    .line 436
    iget v4, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    #@1f
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->reverseTransit(I)I

    #@22
    move-result v4

    #@23
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    #@26
    .line 438
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@28
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@2d
    .line 440
    :cond_2d
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@2f
    packed-switch v4, :pswitch_data_da

    #@32
    .line 478
    :pswitch_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    const-string v3, "Unknown cmd: "

    #@38
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 475
    :pswitch_49
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@4b
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@4d
    invoke-virtual {v4, v3, v2}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    #@50
    goto/16 :goto_d5

    #@52
    .line 472
    :pswitch_52
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@54
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    #@57
    goto/16 :goto_d5

    #@59
    .line 469
    :pswitch_59
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@5b
    const/4 v3, 0x0

    #@5c
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    #@5f
    goto/16 :goto_d5

    #@61
    .line 464
    :pswitch_61
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@63
    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@65
    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@67
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@69
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@6c
    .line 465
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@6e
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    #@71
    .line 466
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@73
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    #@76
    goto :goto_d5

    #@77
    .line 460
    :pswitch_77
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@79
    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@7b
    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@7d
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@7f
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@82
    .line 461
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@84
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    #@87
    goto :goto_d5

    #@88
    .line 455
    :pswitch_88
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@8a
    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@8c
    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@8e
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@90
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@93
    .line 456
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@95
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    #@98
    .line 457
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@9a
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    #@9d
    goto :goto_d5

    #@9e
    .line 451
    :pswitch_9e
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@a0
    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@a2
    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@a4
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@a6
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@a9
    .line 452
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@ab
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    #@ae
    goto :goto_d5

    #@af
    .line 447
    :pswitch_af
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@b1
    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@b3
    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@b5
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@b7
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@ba
    .line 448
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@bc
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@bf
    goto :goto_d5

    #@c0
    .line 442
    :pswitch_c0
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@c2
    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@c4
    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@c6
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@c8
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@cb
    .line 443
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@cd
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    #@d0
    .line 444
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@d2
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    #@d5
    :goto_d5
    add-int/lit8 v0, v0, -0x1

    #@d7
    goto/16 :goto_8

    #@d9
    :cond_d9
    return-void

    #@da
    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_32
        :pswitch_af
        :pswitch_9e
        :pswitch_88
        :pswitch_77
        :pswitch_61
        :pswitch_59
        :pswitch_52
        :pswitch_49
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v3, p2

    #@6
    const/4 v4, 0x0

    #@7
    .line 507
    :goto_7
    iget-object v5, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v5

    #@d
    if-ge v4, v5, :cond_c0

    #@f
    .line 508
    iget-object v5, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Landroidx/fragment/app/FragmentTransaction$Op;

    #@17
    .line 509
    iget v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@19
    const/4 v7, 0x1

    #@1a
    if-eq v6, v7, :cond_b8

    #@1c
    const/4 v8, 0x2

    #@1d
    const/4 v9, 0x0

    #@1e
    const/4 v10, 0x3

    #@1f
    const/16 v11, 0x9

    #@21
    if-eq v6, v8, :cond_5c

    #@23
    if-eq v6, v10, :cond_43

    #@25
    const/4 v8, 0x6

    #@26
    if-eq v6, v8, :cond_43

    #@28
    const/4 v8, 0x7

    #@29
    if-eq v6, v8, :cond_b8

    #@2b
    const/16 v8, 0x8

    #@2d
    if-eq v6, v8, :cond_31

    #@2f
    goto/16 :goto_bd

    #@31
    .line 565
    :cond_31
    iget-object v6, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@33
    new-instance v8, Landroidx/fragment/app/FragmentTransaction$Op;

    #@35
    invoke-direct {v8, v11, v3, v7}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;Z)V

    #@38
    invoke-virtual {v6, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@3b
    .line 566
    iput-boolean v7, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@3d
    add-int/lit8 v4, v4, 0x1

    #@3f
    .line 569
    iget-object v3, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@41
    goto/16 :goto_bd

    #@43
    .line 516
    :cond_43
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@45
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@48
    .line 517
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@4a
    if-ne v6, v3, :cond_bd

    #@4c
    .line 518
    iget-object v3, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@4e
    new-instance v6, Landroidx/fragment/app/FragmentTransaction$Op;

    #@50
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@52
    invoke-direct {v6, v11, v5}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    #@55
    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@58
    add-int/lit8 v4, v4, 0x1

    #@5a
    move-object v3, v9

    #@5b
    goto :goto_bd

    #@5c
    .line 525
    :cond_5c
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@5e
    .line 526
    iget v8, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@60
    .line 528
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    #@63
    move-result v12

    #@64
    sub-int/2addr v12, v7

    #@65
    const/4 v13, 0x0

    #@66
    :goto_66
    if-ltz v12, :cond_a6

    #@68
    .line 529
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v14

    #@6c
    check-cast v14, Landroidx/fragment/app/Fragment;

    #@6e
    .line 530
    iget v15, v14, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@70
    if-ne v15, v8, :cond_a3

    #@72
    if-ne v14, v6, :cond_76

    #@74
    move v13, v7

    #@75
    goto :goto_a3

    #@76
    :cond_76
    if-ne v14, v3, :cond_85

    #@78
    .line 537
    iget-object v3, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@7a
    new-instance v15, Landroidx/fragment/app/FragmentTransaction$Op;

    #@7c
    invoke-direct {v15, v11, v14, v7}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;Z)V

    #@7f
    invoke-virtual {v3, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@82
    add-int/lit8 v4, v4, 0x1

    #@84
    move-object v3, v9

    #@85
    .line 541
    :cond_85
    new-instance v15, Landroidx/fragment/app/FragmentTransaction$Op;

    #@87
    invoke-direct {v15, v10, v14, v7}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;Z)V

    #@8a
    .line 542
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@8c
    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    #@8e
    .line 543
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@90
    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    #@92
    .line 544
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@94
    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    #@96
    .line 545
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@98
    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    #@9a
    .line 546
    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@9c
    invoke-virtual {v2, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@9f
    .line 547
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a2
    add-int/2addr v4, v7

    #@a3
    :cond_a3
    :goto_a3
    add-int/lit8 v12, v12, -0x1

    #@a5
    goto :goto_66

    #@a6
    :cond_a6
    if-eqz v13, :cond_b0

    #@a8
    .line 553
    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@aa
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@ad
    add-int/lit8 v4, v4, -0x1

    #@af
    goto :goto_bd

    #@b0
    .line 556
    :cond_b0
    iput v7, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@b2
    .line 557
    iput-boolean v7, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    #@b4
    .line 558
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b7
    goto :goto_bd

    #@b8
    .line 512
    :cond_b8
    iget-object v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@ba
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bd
    :cond_bd
    :goto_bd
    add-int/2addr v4, v7

    #@be
    goto/16 :goto_7

    #@c0
    :cond_c0
    return-object v3
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
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
    const/4 v0, 0x2

    #@1
    .line 357
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1b

    #@7
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, "Run: "

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
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 361
    :cond_1b
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    const/4 p1, 0x0

    #@1f
    .line 362
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@22
    move-result-object p1

    #@23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 363
    iget-boolean p1, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    #@28
    if-eqz p1, :cond_2f

    #@2a
    .line 364
    iget-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@2c
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->addBackStackState(Landroidx/fragment/app/BackStackRecord;)V

    #@2f
    :cond_2f
    const/4 p1, 0x1

    #@30
    return p1
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 187
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 188
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 190
    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@17
    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .registers 2

    #@0
    .line 170
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 177
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 178
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 180
    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@17
    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .registers 2

    #@0
    .line 164
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    return v0
.end method

.method public getId()I
    .registers 2

    #@0
    .line 158
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 654
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    #@0
    .line 213
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_2a

    #@4
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@8
    if-ne v0, v1, :cond_b

    #@a
    goto :goto_2a

    #@b
    .line 214
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 215
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v1, " is already attached to a FragmentManager."

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 218
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@2d
    move-result-object p1

    #@2e
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 659
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    #@0
    .line 202
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_2a

    #@4
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@8
    if-ne v0, v1, :cond_b

    #@a
    goto :goto_2a

    #@b
    .line 203
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 204
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v1, " is already attached to a FragmentManager."

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 207
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@2d
    move-result-object p1

    #@2e
    return-object p1
.end method

.method public runOnCommitRunnables()V
    .registers 3

    #@0
    .line 296
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_1e

    #@4
    const/4 v0, 0x0

    #@5
    .line 297
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_1b

    #@d
    .line 298
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/Runnable;

    #@15
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    .line 300
    iput-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    #@1e
    :cond_1e
    return-void
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;
    .registers 6

    #@0
    .line 259
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@4
    if-ne v0, v1, :cond_4d

    #@6
    .line 263
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    #@8
    const-string v1, "Cannot set maximum Lifecycle to "

    #@a
    if-ne p2, v0, :cond_2b

    #@c
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    #@e
    const/4 v2, -0x1

    #@f
    if-gt v0, v2, :cond_12

    #@11
    goto :goto_2b

    #@12
    .line 264
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p2

    #@1d
    const-string v0, " after the Fragment has been created"

    #@1f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p2

    #@23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p2

    #@27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p1

    #@2b
    .line 267
    :cond_2b
    :goto_2b
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    #@2d
    if-eq p2, v0, :cond_34

    #@2f
    .line 272
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    #@32
    move-result-object p1

    #@33
    return-object p1

    #@34
    .line 268
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@36
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object p2

    #@3f
    const-string v0, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction."

    #@41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object p2

    #@45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p2

    #@49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw p1

    #@4d
    .line 260
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@4f
    new-instance p2, Ljava/lang/StringBuilder;

    #@51
    const-string v0, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    #@53
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p2

    #@5c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p2

    #@60
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw p1
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    #@0
    if-eqz p1, :cond_2c

    #@2
    .line 246
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@4
    if-eqz v0, :cond_2c

    #@6
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@8
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    goto :goto_2c

    #@d
    .line 248
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    const-string v2, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    .line 249
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    const-string v1, " is already attached to a FragmentManager."

    #@20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 252
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@2f
    move-result-object p1

    #@30
    return-object p1
.end method

.method public show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    #@0
    .line 224
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    if-eqz v0, :cond_2a

    #@4
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@6
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    #@8
    if-ne v0, v1, :cond_b

    #@a
    goto :goto_2a

    #@b
    .line 225
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 226
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v1, " is already attached to a FragmentManager."

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 229
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@2d
    move-result-object p1

    #@2e
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    const-string v1, "BackStackEntry{"

    #@9
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 45
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
    .line 46
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@19
    if-ltz v1, :cond_25

    #@1b
    const-string v1, " #"

    #@1d
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 48
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    .line 50
    :cond_25
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    #@27
    if-eqz v1, :cond_33

    #@29
    const-string v1, " "

    #@2b
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 52
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    :cond_33
    const-string v1, "}"

    #@35
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    #@0
    .line 588
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    sub-int/2addr v0, v1

    #@8
    :goto_8
    if-ltz v0, :cond_35

    #@a
    .line 589
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    #@12
    .line 590
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    #@14
    if-eq v3, v1, :cond_2d

    #@16
    const/4 v4, 0x3

    #@17
    if-eq v3, v4, :cond_27

    #@19
    packed-switch v3, :pswitch_data_36

    #@1c
    goto :goto_32

    #@1d
    .line 606
    :pswitch_1d
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@1f
    iput-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    #@21
    goto :goto_32

    #@22
    .line 600
    :pswitch_22
    iget-object p2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@24
    goto :goto_32

    #@25
    :pswitch_25
    const/4 p2, 0x0

    #@26
    goto :goto_32

    #@27
    .line 597
    :cond_27
    :pswitch_27
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@29
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_32

    #@2d
    .line 593
    :cond_2d
    :pswitch_2d
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    #@2f
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@32
    :goto_32
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_8

    #@35
    :cond_35
    return-object p2

    #@36
    :pswitch_data_36
    .packed-switch 0x6
        :pswitch_27
        :pswitch_2d
        :pswitch_25
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method
