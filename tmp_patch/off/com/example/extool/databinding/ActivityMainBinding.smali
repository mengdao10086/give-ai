.class public final Lcom/example/extool/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSetup:Landroid/widget/Button;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;)V
    .registers 3

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Lcom/example/extool/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@5
    .line 27
    iput-object p2, p0, Lcom/example/extool/databinding/ActivityMainBinding;->btnSetup:Landroid/widget/Button;

    #@7
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/extool/databinding/ActivityMainBinding;
    .registers 3

    #@0
    const v0, 0x7f080062

    #@3
    .line 58
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/widget/Button;

    #@9
    if-eqz v1, :cond_13

    #@b
    .line 63
    new-instance v0, Lcom/example/extool/databinding/ActivityMainBinding;

    #@d
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@f
    invoke-direct {v0, p0, v1}, Lcom/example/extool/databinding/ActivityMainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;)V

    #@12
    return-object v0

    #@13
    .line 65
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string v1, "Missing required view with ID: "

    #@1f
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object p0

    #@23
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/extool/databinding/ActivityMainBinding;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 38
    invoke-static {p0, v0, v1}, Lcom/example/extool/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/extool/databinding/ActivityMainBinding;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/extool/databinding/ActivityMainBinding;
    .registers 5

    #@0
    const v0, 0x7f0b001d

    #@3
    const/4 v1, 0x0

    #@4
    .line 44
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@7
    move-result-object p0

    #@8
    if-eqz p2, :cond_d

    #@a
    .line 46
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@d
    .line 48
    :cond_d
    invoke-static {p0}, Lcom/example/extool/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/example/extool/databinding/ActivityMainBinding;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    #@0
    .line 18
    invoke-virtual {p0}, Lcom/example/extool/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    #@0
    .line 33
    iget-object v0, p0, Lcom/example/extool/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2
    return-object v0
.end method
