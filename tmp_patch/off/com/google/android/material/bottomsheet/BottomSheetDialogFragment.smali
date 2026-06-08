.class public Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;
    }
.end annotation


# instance fields
.field private waitingForDismissAllowingStateLoss:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 44
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>(I)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    #@3
    return-void
.end method

.method private dismissAfterAnimation()V
    .registers 2

    #@0
    .line 101
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    #@7
    goto :goto_b

    #@8
    .line 104
    :cond_8
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    #@b
    :goto_b
    return-void
.end method

.method private dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    #@0
    .line 87
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    #@2
    .line 89
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    #@5
    move-result p2

    #@6
    const/4 v0, 0x5

    #@7
    if-ne p2, v0, :cond_d

    #@9
    .line 90
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    #@c
    goto :goto_2a

    #@d
    .line 92
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    #@10
    move-result-object p2

    #@11
    instance-of p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    #@13
    if-eqz p2, :cond_1e

    #@15
    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    #@18
    move-result-object p2

    #@19
    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    #@1b
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->removeDefaultCallback()V

    #@1e
    .line 95
    :cond_1e
    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-direct {p2, p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;)V

    #@24
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    #@27
    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    #@2a
    :goto_2a
    return-void
.end method

.method private tryDismissWithAnimation(Z)Z
    .registers 5

    #@0
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    #@3
    move-result-object v0

    #@4
    .line 73
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    #@6
    if-eqz v1, :cond_1f

    #@8
    .line 74
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    #@a
    .line 75
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@d
    move-result-object v1

    #@e
    .line 76
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideable()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1f

    #@14
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getDismissWithAnimation()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1f

    #@1a
    .line 77
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    #@1d
    const/4 p1, 0x1

    #@1e
    return p1

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    return p1
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_a

    #@7
    .line 56
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    #@a
    :cond_a
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 62
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_a

    #@7
    .line 63
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    #@a
    :cond_a
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    #@0
    .line 50
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getTheme()I

    #@9
    move-result v1

    #@a
    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    #@d
    return-object p1
.end method
