.class public Landroidx/appcompat/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;
    .registers 2

    #@0
    .line 43
    new-instance v0, Landroidx/appcompat/view/ActionBarPolicy;

    #@2
    invoke-direct {v0, p0}, Landroidx/appcompat/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 3

    #@0
    .line 110
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    const/16 v1, 0xe

    #@a
    if-ge v0, v1, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 2

    #@0
    .line 86
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9
    move-result-object v0

    #@a
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    return v0
.end method

.method public getMaxActionButtons()I
    .registers 5

    #@0
    .line 56
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@9
    move-result-object v0

    #@a
    .line 57
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@c
    .line 58
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@e
    .line 59
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@10
    const/16 v3, 0x258

    #@12
    if-gt v0, v3, :cond_3e

    #@14
    if-gt v1, v3, :cond_3e

    #@16
    const/16 v0, 0x2d0

    #@18
    const/16 v3, 0x3c0

    #@1a
    if-le v1, v3, :cond_1e

    #@1c
    if-gt v2, v0, :cond_3e

    #@1e
    :cond_1e
    if-le v1, v0, :cond_23

    #@20
    if-le v2, v3, :cond_23

    #@22
    goto :goto_3e

    #@23
    :cond_23
    const/16 v0, 0x1f4

    #@25
    if-ge v1, v0, :cond_3c

    #@27
    const/16 v0, 0x1e0

    #@29
    const/16 v3, 0x280

    #@2b
    if-le v1, v3, :cond_2f

    #@2d
    if-gt v2, v0, :cond_3c

    #@2f
    :cond_2f
    if-le v1, v0, :cond_34

    #@31
    if-le v2, v3, :cond_34

    #@33
    goto :goto_3c

    #@34
    :cond_34
    const/16 v0, 0x168

    #@36
    if-lt v1, v0, :cond_3a

    #@38
    const/4 v0, 0x3

    #@39
    return v0

    #@3a
    :cond_3a
    const/4 v0, 0x2

    #@3b
    return v0

    #@3c
    :cond_3c
    :goto_3c
    const/4 v0, 0x4

    #@3d
    return v0

    #@3e
    :cond_3e
    :goto_3e
    const/4 v0, 0x5

    #@3f
    return v0
.end method

.method public getStackedTabMaxWidth()I
    .registers 3

    #@0
    .line 115
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    sget v1, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    #@8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getTabContainerHeight()I
    .registers 6

    #@0
    .line 94
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBar:[I

    #@4
    sget v2, Landroidx/appcompat/R$attr;->actionBarStyle:I

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 96
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    #@e
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@11
    move-result v1

    #@12
    .line 97
    iget-object v2, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v2

    #@18
    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_28

    #@1e
    .line 100
    sget v3, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    #@20
    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@23
    move-result v2

    #@24
    .line 100
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v1

    #@28
    .line 103
    :cond_28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .registers 3

    #@0
    .line 90
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    sget v1, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    #@8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public showsOverflowMenuButton()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
