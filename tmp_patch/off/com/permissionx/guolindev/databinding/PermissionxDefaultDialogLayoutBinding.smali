.class public final Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;
.super Ljava/lang/Object;
.source "PermissionxDefaultDialogLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final messageText:Landroid/widget/TextView;

.field public final negativeBtn:Landroid/widget/Button;

.field public final negativeLayout:Landroid/widget/LinearLayout;

.field public final permissionsLayout:Landroid/widget/LinearLayout;

.field public final positiveBtn:Landroid/widget/Button;

.field public final positiveLayout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;)V
    .registers 8

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    #@5
    .line 46
    iput-object p2, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->messageText:Landroid/widget/TextView;

    #@7
    .line 47
    iput-object p3, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    #@9
    .line 48
    iput-object p4, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeLayout:Landroid/widget/LinearLayout;

    #@b
    .line 49
    iput-object p5, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->permissionsLayout:Landroid/widget/LinearLayout;

    #@d
    .line 50
    iput-object p6, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    #@f
    .line 51
    iput-object p7, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveLayout:Landroid/widget/LinearLayout;

    #@11
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;
    .registers 11

    #@0
    .line 81
    sget v0, Lcom/permissionx/guolindev/R$id;->messageText:I

    #@2
    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    move-object v4, v1

    #@7
    check-cast v4, Landroid/widget/TextView;

    #@9
    if-eqz v4, :cond_4c

    #@b
    .line 87
    sget v0, Lcom/permissionx/guolindev/R$id;->negativeBtn:I

    #@d
    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    move-object v5, v1

    #@12
    check-cast v5, Landroid/widget/Button;

    #@14
    if-eqz v5, :cond_4c

    #@16
    .line 93
    sget v0, Lcom/permissionx/guolindev/R$id;->negativeLayout:I

    #@18
    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    move-object v6, v1

    #@1d
    check-cast v6, Landroid/widget/LinearLayout;

    #@1f
    if-eqz v6, :cond_4c

    #@21
    .line 99
    sget v0, Lcom/permissionx/guolindev/R$id;->permissionsLayout:I

    #@23
    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@26
    move-result-object v1

    #@27
    move-object v7, v1

    #@28
    check-cast v7, Landroid/widget/LinearLayout;

    #@2a
    if-eqz v7, :cond_4c

    #@2c
    .line 105
    sget v0, Lcom/permissionx/guolindev/R$id;->positiveBtn:I

    #@2e
    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@31
    move-result-object v1

    #@32
    move-object v8, v1

    #@33
    check-cast v8, Landroid/widget/Button;

    #@35
    if-eqz v8, :cond_4c

    #@37
    .line 111
    sget v0, Lcom/permissionx/guolindev/R$id;->positiveLayout:I

    #@39
    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@3c
    move-result-object v1

    #@3d
    move-object v9, v1

    #@3e
    check-cast v9, Landroid/widget/LinearLayout;

    #@40
    if-eqz v9, :cond_4c

    #@42
    .line 117
    new-instance v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@44
    move-object v3, p0

    #@45
    check-cast v3, Landroid/widget/LinearLayout;

    #@47
    move-object v2, v0

    #@48
    invoke-direct/range {v2 .. v9}, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    #@4b
    return-object v0

    #@4c
    .line 120
    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@4f
    move-result-object p0

    #@50
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@53
    move-result-object p0

    #@54
    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    #@56
    const-string v1, "Missing required view with ID: "

    #@58
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object p0

    #@5c
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 62
    invoke-static {p0, v0, v1}, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;
    .registers 5

    #@0
    .line 68
    sget v0, Lcom/permissionx/guolindev/R$layout;->permissionx_default_dialog_layout:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object p0

    #@7
    if-eqz p2, :cond_c

    #@9
    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@c
    .line 72
    :cond_c
    invoke-static {p0}, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->bind(Landroid/view/View;)Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

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
    invoke-virtual {p0}, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    #@0
    .line 57
    iget-object v0, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    #@2
    return-object v0
.end method
