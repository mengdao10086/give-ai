.class public abstract Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RationaleDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getNegativeButton()Landroid/view/View;
.end method

.method public abstract getPermissionsToRequest()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPositiveButton()Landroid/view/View;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    if-eqz p1, :cond_8

    #@5
    .line 41
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->dismiss()V

    #@8
    :cond_8
    return-void
.end method
