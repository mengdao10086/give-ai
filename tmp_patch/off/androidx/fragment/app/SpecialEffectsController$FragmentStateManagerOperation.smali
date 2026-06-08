.class Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;
.super Landroidx/fragment/app/SpecialEffectsController$Operation;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentStateManagerOperation"
.end annotation


# instance fields
.field private final mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .registers 6

    #@0
    .line 726
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    #@7
    .line 728
    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    #@9
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    #@0
    .line 770
    invoke-super {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete()V

    #@3
    .line 771
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    #@5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@8
    return-void
.end method

.method onStart()V
    .registers 7

    #@0
    .line 733
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@6
    const-string v2, " for Fragment "

    #@8
    const-string v3, "FragmentManager"

    #@a
    const/4 v4, 0x2

    #@b
    if-ne v0, v1, :cond_6f

    #@d
    .line 734
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    #@f
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@12
    move-result-object v0

    #@13
    .line 735
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_3e

    #@1b
    .line 737
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    #@1e
    .line 738
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_3e

    #@24
    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    const-string v5, "requestFocus: Saved focused view "

    #@28
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 743
    :cond_3e
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->getFragment()Landroidx/fragment/app/Fragment;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    #@45
    move-result-object v1

    #@46
    .line 747
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@49
    move-result-object v2

    #@4a
    const/4 v3, 0x0

    #@4b
    if-nez v2, :cond_55

    #@4d
    .line 748
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    #@4f
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->addViewToContainer()V

    #@52
    .line 749
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    #@55
    .line 753
    :cond_55
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    #@58
    move-result v2

    #@59
    cmpl-float v2, v2, v3

    #@5b
    if-nez v2, :cond_67

    #@5d
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_67

    #@63
    const/4 v2, 0x4

    #@64
    .line 754
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@67
    .line 756
    :cond_67
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    #@6a
    move-result v0

    #@6b
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    #@6e
    goto :goto_b2

    #@6f
    .line 757
    :cond_6f
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@72
    move-result-object v0

    #@73
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@75
    if-ne v0, v1, :cond_b2

    #@77
    .line 758
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    #@79
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    #@7c
    move-result-object v0

    #@7d
    .line 759
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    #@80
    move-result-object v1

    #@81
    .line 760
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_af

    #@87
    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    #@89
    const-string v5, "Clearing focus "

    #@8b
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8e
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    const-string v5, " on view "

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 764
    :cond_af
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    #@b2
    :cond_b2
    :goto_b2
    return-void
.end method
