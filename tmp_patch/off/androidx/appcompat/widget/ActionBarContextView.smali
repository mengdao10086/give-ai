.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroidx/appcompat/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseButton:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 58
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 62
    sget v0, Landroidx/appcompat/R$attr;->actionModeStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 69
    sget-object v0, Landroidx/appcompat/R$styleable;->ActionMode:[I

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@9
    move-result-object p1

    #@a
    .line 71
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_background:I

    #@c
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p2

    #@10
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 72
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    #@15
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@18
    move-result p2

    #@19
    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    #@1b
    .line 74
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    #@1d
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@20
    move-result p2

    #@21
    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    #@23
    .line 77
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_height:I

    #@25
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    #@28
    move-result p2

    #@29
    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    #@2b
    .line 80
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    #@2d
    sget p3, Landroidx/appcompat/R$layout;->abc_action_mode_close_item_material:I

    #@2f
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@32
    move-result p2

    #@33
    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    #@35
    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@38
    return-void
.end method

.method private initTitle()V
    .registers 7

    #@0
    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@2
    if-nez v0, :cond_53

    #@4
    .line 137
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@b
    move-result-object v0

    #@c
    .line 138
    sget v1, Landroidx/appcompat/R$layout;->abc_action_bar_title_item:I

    #@e
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@11
    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    #@14
    move-result v0

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/widget/LinearLayout;

    #@1d
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@1f
    .line 140
    sget v1, Landroidx/appcompat/R$id;->action_bar_title:I

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/widget/TextView;

    #@27
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    #@29
    .line 141
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@2b
    sget v1, Landroidx/appcompat/R$id;->action_bar_subtitle:I

    #@2d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/widget/TextView;

    #@33
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@35
    .line 142
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    #@37
    if-eqz v0, :cond_44

    #@39
    .line 143
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    #@3b
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@3e
    move-result-object v1

    #@3f
    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@44
    .line 145
    :cond_44
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    #@46
    if-eqz v0, :cond_53

    #@48
    .line 146
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@4a
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v1

    #@4e
    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    #@50
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@53
    .line 150
    :cond_53
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    #@55
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5a
    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@5c
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@5e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@61
    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@66
    move-result v0

    #@67
    xor-int/lit8 v0, v0, 0x1

    #@69
    .line 154
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@6b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6e
    move-result v1

    #@6f
    xor-int/lit8 v1, v1, 0x1

    #@71
    .line 155
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@73
    const/4 v3, 0x0

    #@74
    const/16 v4, 0x8

    #@76
    if-eqz v1, :cond_7a

    #@78
    move v5, v3

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    move v5, v4

    #@7b
    :goto_7b
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    #@7e
    .line 156
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@80
    if-nez v0, :cond_86

    #@82
    if-eqz v1, :cond_85

    #@84
    goto :goto_86

    #@85
    :cond_85
    move v3, v4

    #@86
    :cond_86
    :goto_86
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@89
    .line 157
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@8b
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    #@8e
    move-result-object v0

    #@8f
    if-nez v0, :cond_96

    #@91
    .line 158
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@93
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@96
    :cond_96
    return-void
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .registers 2

    #@0
    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->animateToVisibility(I)V

    #@3
    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .registers 2

    #@0
    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->canShowOverflowMenu()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public closeMode()V
    .registers 2

    #@0
    .line 195
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    #@7
    :cond_7
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .registers 1

    #@0
    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->dismissPopupMenus()V

    #@3
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 239
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, -0x2

    #@4
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 244
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    #@0
    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getAnimatedVisibility()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .registers 2

    #@0
    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getContentHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 132
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    #@0
    .line 221
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 222
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public initForMode(Landroidx/appcompat/view/ActionMode;)V
    .registers 5

    #@0
    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@2
    if-nez v0, :cond_19

    #@4
    .line 164
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@b
    move-result-object v0

    #@c
    .line 165
    iget v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@15
    .line 166
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@18
    goto :goto_24

    #@19
    .line 167
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_24

    #@1f
    .line 168
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@21
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@24
    .line 171
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@26
    sget v1, Landroidx/appcompat/R$id;->action_mode_close_button:I

    #@28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseButton:Landroid/view/View;

    #@2e
    .line 172
    new-instance v1, Landroidx/appcompat/widget/ActionBarContextView$1;

    #@30
    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/ActionBarContextView$1;-><init>(Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode;)V

    #@33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@36
    .line 179
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    #@39
    move-result-object p1

    #@3a
    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    #@3c
    .line 180
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@3e
    if-eqz v0, :cond_45

    #@40
    .line 181
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@42
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@45
    .line 183
    :cond_45
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    #@47
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    #@4e
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@50
    .line 184
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@52
    const/4 v1, 0x1

    #@53
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    #@56
    .line 186
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@58
    const/4 v1, -0x2

    #@59
    const/4 v2, -0x1

    #@5a
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@5d
    .line 188
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@5f
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    #@61
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@64
    .line 189
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@66
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    #@69
    move-result-object p1

    #@6a
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    #@6c
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@6e
    .line 190
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@70
    const/4 v1, 0x0

    #@71
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@74
    .line 191
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@76
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@79
    return-void
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .registers 2

    #@0
    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    #@0
    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .registers 2

    #@0
    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowReserved()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isTitleOptional()Z
    .registers 2

    #@0
    .line 371
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    #@2
    return v0
.end method

.method public killMode()V
    .registers 3

    #@0
    .line 202
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 203
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@6
    .line 204
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@8
    .line 205
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@a
    .line 206
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseButton:Landroid/view/View;

    #@c
    if-eqz v1, :cond_11

    #@e
    .line 207
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@11
    :cond_11
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    #@0
    .line 89
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->onDetachedFromWindow()V

    #@3
    .line 90
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@5
    if-eqz v0, :cond_11

    #@7
    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@9
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@c
    .line 92
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@e
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    #@11
    :cond_11
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    #@0
    .line 329
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_e

    #@6
    sub-int v0, p4, p2

    #@8
    .line 330
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    goto :goto_12

    #@e
    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    #@11
    move-result v0

    #@12
    .line 331
    :goto_12
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    #@15
    move-result v6

    #@16
    sub-int/2addr p5, p3

    #@17
    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    #@1a
    move-result p3

    #@1b
    sub-int/2addr p5, p3

    #@1c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    #@1f
    move-result p3

    #@20
    sub-int p3, p5, p3

    #@22
    .line 334
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@24
    const/16 v7, 0x8

    #@26
    if-eqz p5, :cond_58

    #@28
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    #@2b
    move-result p5

    #@2c
    if-eq p5, v7, :cond_58

    #@2e
    .line 335
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@30
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@33
    move-result-object p5

    #@34
    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    #@36
    if-eqz p1, :cond_3b

    #@38
    .line 336
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@3a
    goto :goto_3d

    #@3b
    :cond_3b
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@3d
    :goto_3d
    if-eqz p1, :cond_42

    #@3f
    .line 337
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@41
    goto :goto_44

    #@42
    :cond_42
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@44
    .line 338
    :goto_44
    invoke-static {v0, v1, p1}, Landroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    #@47
    move-result v8

    #@48
    .line 339
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@4a
    move-object v0, p0

    #@4b
    move v2, v8

    #@4c
    move v3, v6

    #@4d
    move v4, p3

    #@4e
    move v5, p1

    #@4f
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@52
    move-result v0

    #@53
    add-int/2addr v8, v0

    #@54
    .line 340
    invoke-static {v8, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    #@57
    move-result v0

    #@58
    :cond_58
    move p5, v0

    #@59
    .line 343
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@5b
    if-eqz v0, :cond_73

    #@5d
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@5f
    if-nez v1, :cond_73

    #@61
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    #@64
    move-result v0

    #@65
    if-eq v0, v7, :cond_73

    #@67
    .line 344
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@69
    move-object v0, p0

    #@6a
    move v2, p5

    #@6b
    move v3, v6

    #@6c
    move v4, p3

    #@6d
    move v5, p1

    #@6e
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@71
    move-result v0

    #@72
    add-int/2addr p5, v0

    #@73
    :cond_73
    move v2, p5

    #@74
    .line 347
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@76
    if-eqz v1, :cond_7f

    #@78
    move-object v0, p0

    #@79
    move v3, v6

    #@7a
    move v4, p3

    #@7b
    move v5, p1

    #@7c
    .line 348
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@7f
    :cond_7f
    if-eqz p1, :cond_87

    #@81
    .line 351
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    #@84
    move-result p2

    #@85
    move v3, p2

    #@86
    goto :goto_8e

    #@87
    :cond_87
    sub-int/2addr p4, p2

    #@88
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    #@8b
    move-result p2

    #@8c
    sub-int/2addr p4, p2

    #@8d
    move v3, p4

    #@8e
    .line 353
    :goto_8e
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@90
    if-eqz p2, :cond_9d

    #@92
    .line 354
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@94
    xor-int/lit8 p1, p1, 0x1

    #@96
    move-object v1, p0

    #@97
    move v4, v6

    #@98
    move v5, p3

    #@99
    move v6, p1

    #@9a
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@9d
    :cond_9d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    #@0
    .line 249
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    if-ne v0, v1, :cond_10f

    #@8
    .line 255
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_ee

    #@e
    .line 261
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result p1

    #@12
    .line 263
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    #@14
    if-lez v0, :cond_19

    #@16
    .line 264
    iget p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    #@18
    goto :goto_1d

    #@19
    :cond_19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1c
    move-result p2

    #@1d
    .line 266
    :goto_1d
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    #@20
    move-result v0

    #@21
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    #@24
    move-result v2

    #@25
    add-int/2addr v0, v2

    #@26
    .line 267
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    #@29
    move-result v2

    #@2a
    sub-int v2, p1, v2

    #@2c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    #@2f
    move-result v3

    #@30
    sub-int/2addr v2, v3

    #@31
    sub-int v3, p2, v0

    #@33
    const/high16 v4, -0x80000000

    #@35
    .line 269
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@38
    move-result v5

    #@39
    .line 271
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@3b
    const/4 v7, 0x0

    #@3c
    if-eqz v6, :cond_50

    #@3e
    .line 272
    invoke-virtual {p0, v6, v2, v5, v7}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    #@41
    move-result v2

    #@42
    .line 273
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@44
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@47
    move-result-object v6

    #@48
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    #@4a
    .line 274
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@4c
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@4e
    add-int/2addr v8, v6

    #@4f
    sub-int/2addr v2, v8

    #@50
    .line 277
    :cond_50
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@52
    if-eqz v6, :cond_62

    #@54
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@56
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    #@59
    move-result-object v6

    #@5a
    if-ne v6, p0, :cond_62

    #@5c
    .line 278
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@5e
    invoke-virtual {p0, v6, v2, v5, v7}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    #@61
    move-result v2

    #@62
    .line 282
    :cond_62
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@64
    if-eqz v6, :cond_95

    #@66
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@68
    if-nez v8, :cond_95

    #@6a
    .line 283
    iget-boolean v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    #@6c
    if-eqz v8, :cond_91

    #@6e
    .line 284
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@71
    move-result v6

    #@72
    .line 285
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@74
    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->measure(II)V

    #@77
    .line 286
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@79
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    #@7c
    move-result v5

    #@7d
    if-gt v5, v2, :cond_81

    #@7f
    const/4 v6, 0x1

    #@80
    goto :goto_82

    #@81
    :cond_81
    move v6, v7

    #@82
    :goto_82
    if-eqz v6, :cond_85

    #@84
    sub-int/2addr v2, v5

    #@85
    .line 291
    :cond_85
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@87
    if-eqz v6, :cond_8b

    #@89
    move v6, v7

    #@8a
    goto :goto_8d

    #@8b
    :cond_8b
    const/16 v6, 0x8

    #@8d
    :goto_8d
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@90
    goto :goto_95

    #@91
    .line 293
    :cond_91
    invoke-virtual {p0, v6, v2, v5, v7}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    #@94
    move-result v2

    #@95
    .line 297
    :cond_95
    :goto_95
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@97
    if-eqz v5, :cond_cc

    #@99
    .line 298
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9c
    move-result-object v5

    #@9d
    .line 299
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@9f
    const/4 v8, -0x2

    #@a0
    if-eq v6, v8, :cond_a4

    #@a2
    move v6, v1

    #@a3
    goto :goto_a5

    #@a4
    :cond_a4
    move v6, v4

    #@a5
    .line 301
    :goto_a5
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@a7
    if-ltz v9, :cond_af

    #@a9
    .line 302
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@ab
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    #@ae
    move-result v2

    #@af
    .line 303
    :cond_af
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b1
    if-eq v9, v8, :cond_b4

    #@b3
    goto :goto_b5

    #@b4
    :cond_b4
    move v1, v4

    #@b5
    .line 305
    :goto_b5
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b7
    if-ltz v4, :cond_bf

    #@b9
    .line 306
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@bb
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    #@be
    move-result v3

    #@bf
    .line 307
    :cond_bf
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@c1
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c4
    move-result v2

    #@c5
    .line 308
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c8
    move-result v1

    #@c9
    .line 307
    invoke-virtual {v4, v2, v1}, Landroid/view/View;->measure(II)V

    #@cc
    .line 311
    :cond_cc
    iget v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    #@ce
    if-gtz v1, :cond_ea

    #@d0
    .line 313
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    #@d3
    move-result p2

    #@d4
    move v1, v7

    #@d5
    :goto_d5
    if-ge v7, p2, :cond_e6

    #@d7
    .line 315
    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    #@da
    move-result-object v2

    #@db
    .line 316
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@de
    move-result v2

    #@df
    add-int/2addr v2, v0

    #@e0
    if-le v2, v1, :cond_e3

    #@e2
    move v1, v2

    #@e3
    :cond_e3
    add-int/lit8 v7, v7, 0x1

    #@e5
    goto :goto_d5

    #@e6
    .line 321
    :cond_e6
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    #@e9
    goto :goto_ed

    #@ea
    .line 323
    :cond_ea
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    #@ed
    :goto_ed
    return-void

    #@ee
    .line 257
    :cond_ee
    new-instance p1, Ljava/lang/IllegalStateException;

    #@f0
    new-instance p2, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f8
    move-result-object v0

    #@f9
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@fc
    move-result-object v0

    #@fd
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object p2

    #@101
    const-string v0, " can only be used with android:layout_height=\"wrap_content\""

    #@103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object p2

    #@107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object p2

    #@10b
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10e
    throw p1

    #@10f
    .line 251
    :cond_10f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@111
    new-instance p2, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@119
    move-result-object v0

    #@11a
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@11d
    move-result-object v0

    #@11e
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object p2

    #@122
    const-string v0, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    #@124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object p2

    #@128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object p2

    #@12c
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12f
    throw p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    #@0
    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->postShowOverflowMenu()V

    #@3
    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    #@0
    .line 98
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    #@2
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 102
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 103
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    #@7
    .line 105
    :cond_7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@9
    if-eqz p1, :cond_15

    #@b
    .line 106
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@d
    if-eqz v0, :cond_15

    #@f
    .line 107
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    #@12
    const/4 v0, 0x0

    #@13
    .line 108
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@15
    :cond_15
    if-eqz p1, :cond_1a

    #@17
    .line 111
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@1a
    .line 113
    :cond_1a
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    #@1d
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 123
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    .line 124
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    #@5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 117
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 118
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    #@5
    .line 119
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@8
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3

    #@0
    .line 364
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    #@2
    if-eq p1, v0, :cond_7

    #@4
    .line 365
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    #@7
    .line 367
    :cond_7
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    #@9
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    #@0
    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->setVisibility(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4

    #@0
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    #@0
    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 214
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    return v0
.end method
