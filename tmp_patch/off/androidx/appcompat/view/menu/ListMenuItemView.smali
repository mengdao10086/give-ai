.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContent:Landroid/widget/LinearLayout;

.field private mForceShowIcon:Z

.field private mGroupDivider:Landroid/widget/ImageView;

.field private mHasListDivider:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 74
    sget v0, Landroidx/appcompat/R$attr;->listMenuViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    #@0
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    sget-object v1, Landroidx/appcompat/R$styleable;->MenuView:[I

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@d
    move-result-object p2

    #@e
    .line 83
    sget p3, Landroidx/appcompat/R$styleable;->MenuView_android_itemBackground:I

    #@10
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p3

    #@14
    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@16
    .line 84
    sget p3, Landroidx/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    #@18
    const/4 v0, -0x1

    #@19
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@1c
    move-result p3

    #@1d
    iput p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    #@1f
    .line 86
    sget p3, Landroidx/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    #@21
    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@24
    move-result p3

    #@25
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@27
    .line 88
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    #@29
    .line 89
    sget p3, Landroidx/appcompat/R$styleable;->MenuView_subMenuArrow:I

    #@2b
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2e
    move-result-object p3

    #@2f
    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    #@31
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@34
    move-result-object p1

    #@35
    const/4 p3, 0x1

    #@36
    new-array p3, p3, [I

    #@38
    const v0, 0x1010129

    #@3b
    aput v0, p3, v2

    #@3d
    sget v0, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    #@3f
    const/4 v1, 0x0

    #@40
    .line 92
    invoke-virtual {p1, v1, p3, v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@43
    move-result-object p1

    #@44
    .line 94
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@47
    move-result p3

    #@48
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    #@4a
    .line 96
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@4d
    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@50
    return-void
.end method

.method private addContentView(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 138
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    #@4
    return-void
.end method

.method private addContentView(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 142
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 143
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    #@7
    goto :goto_b

    #@8
    .line 145
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    #@b
    :goto_b
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .registers 2

    #@0
    .line 327
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 328
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    #@e
    .line 330
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    #@10
    return-object v0
.end method

.method private insertCheckBox()V
    .registers 4

    #@0
    .line 309
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 310
    sget v1, Landroidx/appcompat/R$layout;->abc_list_menu_item_checkbox:I

    #@6
    const/4 v2, 0x0

    #@7
    .line 311
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/widget/CheckBox;

    #@d
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@f
    .line 313
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    #@12
    return-void
.end method

.method private insertIconView()V
    .registers 4

    #@0
    .line 294
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 295
    sget v1, Landroidx/appcompat/R$layout;->abc_list_menu_item_icon:I

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/widget/ImageView;

    #@d
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@f
    .line 297
    invoke-direct {p0, v0, v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    #@12
    return-void
.end method

.method private insertRadioButton()V
    .registers 4

    #@0
    .line 301
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 302
    sget v1, Landroidx/appcompat/R$layout;->abc_list_menu_item_radio:I

    #@6
    const/4 v2, 0x0

    #@7
    .line 303
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/widget/RadioButton;

    #@d
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@f
    .line 305
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    #@12
    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .registers 3

    #@0
    .line 235
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_d

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    goto :goto_a

    #@8
    :cond_8
    const/16 p1, 0x8

    #@a
    .line 236
    :goto_a
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@d
    :cond_d
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 347
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_23

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_23

    #@a
    .line 352
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    #@c
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    #@12
    .line 353
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@14
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    #@16
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    #@19
    move-result v2

    #@1a
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@1c
    add-int/2addr v2, v3

    #@1d
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@1f
    add-int/2addr v2, v0

    #@20
    add-int/2addr v1, v2

    #@21
    iput v1, p1, Landroid/graphics/Rect;->top:I

    #@23
    :cond_23
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2

    #@0
    .line 166
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .registers 4

    #@0
    .line 124
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    .line 126
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    #@5
    move-result p2

    #@6
    if-eqz p2, :cond_a

    #@8
    const/4 p2, 0x0

    #@9
    goto :goto_c

    #@a
    :cond_a
    const/16 p2, 0x8

    #@c
    :goto_c
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setVisibility(I)V

    #@f
    .line 128
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleForItemView(Landroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    #@12
    move-result-object p2

    #@13
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    #@16
    .line 129
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    #@19
    move-result p2

    #@1a
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    #@1d
    .line 130
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    #@20
    move-result p2

    #@21
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    #@24
    move-result v0

    #@25
    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setShortcut(ZC)V

    #@28
    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@2b
    move-result-object p2

    #@2c
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@2f
    .line 132
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    #@32
    move-result p2

    #@33
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setEnabled(Z)V

    #@36
    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@39
    move-result p2

    #@3a
    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    #@3d
    .line 134
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@40
    move-result-object p1

    #@41
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@44
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    #@0
    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@3
    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 106
    sget v0, Landroidx/appcompat/R$id;->title:I

    #@a
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/widget/TextView;

    #@10
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@12
    .line 107
    iget v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    #@14
    const/4 v2, -0x1

    #@15
    if-eq v1, v2, :cond_1c

    #@17
    .line 108
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    #@19
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@1c
    .line 112
    :cond_1c
    sget v0, Landroidx/appcompat/R$id;->shortcut:I

    #@1e
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/widget/TextView;

    #@24
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@26
    .line 113
    sget v0, Landroidx/appcompat/R$id;->submenuarrow:I

    #@28
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/widget/ImageView;

    #@2e
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    #@30
    if-eqz v0, :cond_37

    #@32
    .line 115
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@37
    .line 117
    :cond_37
    sget v0, Landroidx/appcompat/R$id;->group_divider:I

    #@39
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/widget/ImageView;

    #@3f
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    #@41
    .line 119
    sget v0, Landroidx/appcompat/R$id;->content:I

    #@43
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/widget/LinearLayout;

    #@49
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    #@4b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    #@0
    .line 282
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_20

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@6
    if-eqz v0, :cond_20

    #@8
    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v0

    #@c
    .line 285
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@e
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    #@14
    .line 286
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@16
    if-lez v2, :cond_20

    #@18
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@1a
    if-gtz v2, :cond_20

    #@1c
    .line 287
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1e
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@20
    .line 290
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@23
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setCheckable(Z)V
    .registers 5

    #@0
    if-nez p1, :cond_b

    #@2
    .line 171
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@4
    if-nez v0, :cond_b

    #@6
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 180
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@d
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1f

    #@13
    .line 181
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@15
    if-nez v0, :cond_1a

    #@17
    .line 182
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    #@1a
    .line 184
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@1c
    .line 185
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@1e
    goto :goto_2a

    #@1f
    .line 187
    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@21
    if-nez v0, :cond_26

    #@23
    .line 188
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    #@26
    .line 190
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@28
    .line 191
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@2a
    :goto_2a
    const/16 v2, 0x8

    #@2c
    if-eqz p1, :cond_4d

    #@2e
    .line 195
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@30
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    #@33
    move-result p1

    #@34
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@37
    .line 197
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    #@3a
    move-result p1

    #@3b
    if-eqz p1, :cond_41

    #@3d
    const/4 p1, 0x0

    #@3e
    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    #@41
    :cond_41
    if-eqz v1, :cond_5b

    #@43
    .line 202
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    #@46
    move-result p1

    #@47
    if-eq p1, v2, :cond_5b

    #@49
    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    #@4c
    goto :goto_5b

    #@4d
    .line 206
    :cond_4d
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@4f
    if-eqz p1, :cond_54

    #@51
    .line 207
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    #@54
    .line 209
    :cond_54
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@56
    if-eqz p1, :cond_5b

    #@58
    .line 210
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    #@5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    #@0
    .line 219
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 220
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@a
    if-nez v0, :cond_f

    #@c
    .line 221
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    #@f
    .line 223
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@11
    goto :goto_1b

    #@12
    .line 225
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@14
    if-nez v0, :cond_19

    #@16
    .line 226
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    #@19
    .line 228
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@1b
    .line 231
    :goto_1b
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@1e
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    #@0
    .line 150
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    #@2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@4
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 4

    #@0
    .line 339
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 341
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    #@6
    if-nez v1, :cond_c

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    goto :goto_e

    #@c
    :cond_c
    const/16 p1, 0x8

    #@e
    .line 340
    :goto_e
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@11
    :cond_11
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 256
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowIcon()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_10

    #@9
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_10

    #@e
    :cond_e
    move v0, v1

    #@f
    goto :goto_11

    #@10
    :cond_10
    :goto_10
    const/4 v0, 0x1

    #@11
    :goto_11
    if-nez v0, :cond_18

    #@13
    .line 257
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@15
    if-nez v2, :cond_18

    #@17
    return-void

    #@18
    .line 261
    :cond_18
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@1a
    if-nez v2, :cond_23

    #@1c
    if-nez p1, :cond_23

    #@1e
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@20
    if-nez v3, :cond_23

    #@22
    return-void

    #@23
    :cond_23
    if-nez v2, :cond_28

    #@25
    .line 266
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertIconView()V

    #@28
    :cond_28
    if-nez p1, :cond_37

    #@2a
    .line 269
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@2c
    if-eqz v2, :cond_2f

    #@2e
    goto :goto_37

    #@2f
    .line 276
    :cond_2f
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@31
    const/16 v0, 0x8

    #@33
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@36
    goto :goto_4d

    #@37
    .line 270
    :cond_37
    :goto_37
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@39
    if-eqz v0, :cond_3c

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    const/4 p1, 0x0

    #@3d
    :goto_3d
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@40
    .line 272
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@42
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    #@45
    move-result p1

    #@46
    if-eqz p1, :cond_4d

    #@48
    .line 273
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@4a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@4d
    :cond_4d
    :goto_4d
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 4

    #@0
    if-eqz p1, :cond_c

    #@2
    .line 242
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    goto :goto_e

    #@c
    :cond_c
    const/16 p1, 0x8

    #@e
    :goto_e
    if-nez p1, :cond_1b

    #@10
    .line 246
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@12
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@14
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1b
    .line 249
    :cond_1b
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@1d
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    #@20
    move-result p2

    #@21
    if-eq p2, p1, :cond_28

    #@23
    .line 250
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@25
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    #@28
    :cond_28
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    if-eqz p1, :cond_16

    #@2
    .line 156
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 158
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@9
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_25

    #@f
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@11
    const/4 v0, 0x0

    #@12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@15
    goto :goto_25

    #@16
    .line 160
    :cond_16
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@18
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    #@1b
    move-result p1

    #@1c
    const/16 v0, 0x8

    #@1e
    if-eq p1, v0, :cond_25

    #@20
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@25
    :cond_25
    :goto_25
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    #@0
    .line 323
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    #@2
    return v0
.end method
