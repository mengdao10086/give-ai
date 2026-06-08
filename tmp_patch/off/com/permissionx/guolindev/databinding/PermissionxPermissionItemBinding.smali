.class public final Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;
.super Ljava/lang/Object;
.source "PermissionxPermissionItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final permissionIcon:Landroid/widget/ImageView;

.field public final permissionText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 4

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->rootView:Landroid/widget/LinearLayout;

    #@5
    .line 32
    iput-object p2, p0, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@7
    .line 33
    iput-object p3, p0, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@9
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;
    .registers 4

    #@0
    .line 63
    sget v0, Lcom/permissionx/guolindev/R$id;->permissionIcon:I

    #@2
    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/widget/ImageView;

    #@8
    if-eqz v1, :cond_1c

    #@a
    .line 69
    sget v0, Lcom/permissionx/guolindev/R$id;->permissionText:I

    #@c
    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/widget/TextView;

    #@12
    if-eqz v2, :cond_1c

    #@14
    .line 75
    new-instance v0, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;

    #@16
    check-cast p0, Landroid/widget/LinearLayout;

    #@18
    invoke-direct {v0, p0, v1, v2}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    #@1b
    return-object v0

    #@1c
    .line 78
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object p0

    #@20
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@23
    move-result-object p0

    #@24
    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    #@26
    const-string v1, "Missing required view with ID: "

    #@28
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object p0

    #@2c
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 44
    invoke-static {p0, v0, v1}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;
    .registers 5

    #@0
    .line 50
    sget v0, Lcom/permissionx/guolindev/R$layout;->permissionx_permission_item:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object p0

    #@7
    if-eqz p2, :cond_c

    #@9
    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@c
    .line 54
    :cond_c
    invoke-static {p0}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->bind(Landroid/view/View;)Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    #@0
    .line 19
    invoke-virtual {p0}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->getRoot()Landroid/widget/LinearLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    #@0
    .line 39
    iget-object v0, p0, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->rootView:Landroid/widget/LinearLayout;

    #@2
    return-object v0
.end method
