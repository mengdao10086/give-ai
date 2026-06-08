.class public Landroidx/lifecycle/ViewTreeLifecycleOwner;
.super Ljava/lang/Object;
.source "ViewTreeLifecycleOwner.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;
    .registers 3

    #@0
    .line 63
    sget v0, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 65
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object p0

    #@f
    :goto_f
    if-nez v0, :cond_24

    #@11
    .line 66
    instance-of v1, p0, Landroid/view/View;

    #@13
    if-eqz v1, :cond_24

    #@15
    .line 67
    check-cast p0, Landroid/view/View;

    #@17
    .line 68
    sget v0, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    #@19
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    #@1f
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@22
    move-result-object p0

    #@23
    goto :goto_f

    #@24
    :cond_24
    return-object v0
.end method

.method public static set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    #@0
    .line 49
    sget v0, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@5
    return-void
.end method
