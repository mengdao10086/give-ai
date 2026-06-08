.class public Landroidx/lifecycle/ViewTreeViewModelStoreOwner;
.super Ljava/lang/Object;
.source "ViewTreeViewModelStoreOwner.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;
    .registers 3

    #@0
    .line 63
    sget v0, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 66
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object p0

    #@f
    :goto_f
    if-nez v0, :cond_24

    #@11
    .line 67
    instance-of v1, p0, Landroid/view/View;

    #@13
    if-eqz v1, :cond_24

    #@15
    .line 68
    check-cast p0, Landroid/view/View;

    #@17
    .line 69
    sget v0, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    #@19
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    #@1f
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@22
    move-result-object p0

    #@23
    goto :goto_f

    #@24
    :cond_24
    return-object v0
.end method

.method public static set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .registers 3

    #@0
    .line 50
    sget v0, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@5
    return-void
.end method
