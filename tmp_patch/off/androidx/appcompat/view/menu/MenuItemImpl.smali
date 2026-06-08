.class public final Landroidx/appcompat/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"


# instance fields
.field private mActionProvider:Landroidx/core/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    #@0
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x1000

    #@5
    .line 69
    iput v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    #@7
    .line 71
    iput v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    #@9
    const/4 v0, 0x0

    #@a
    .line 81
    iput v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    #@c
    const/4 v1, 0x0

    #@d
    .line 94
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 95
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@11
    .line 96
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    #@13
    .line 97
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    #@15
    .line 98
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    #@17
    const/16 v1, 0x10

    #@19
    .line 100
    iput v1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@1b
    .line 113
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    #@1d
    .line 140
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1f
    .line 141
    iput p3, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    #@21
    .line 142
    iput p2, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    #@23
    .line 143
    iput p4, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    #@25
    .line 144
    iput p5, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mOrdering:I

    #@27
    .line 145
    iput-object p6, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@29
    .line 146
    iput p7, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2b
    return-void
.end method

.method private static appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .registers 4

    #@0
    and-int/2addr p1, p2

    #@1
    if-ne p1, p2, :cond_6

    #@3
    .line 407
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    :cond_6
    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    if-eqz p1, :cond_2b

    #@2
    .line 576
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    #@4
    if-eqz v0, :cond_2b

    #@6
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    #@8
    if-nez v0, :cond_e

    #@a
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    #@c
    if-eqz v0, :cond_2b

    #@e
    .line 577
    :cond_e
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object p1

    #@12
    .line 578
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object p1

    #@16
    .line 580
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    #@18
    if-eqz v0, :cond_1f

    #@1a
    .line 581
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@1f
    .line 584
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    #@21
    if-eqz v0, :cond_28

    #@23
    .line 585
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@25
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    .line 588
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    #@2b
    :cond_2b
    return-object p1
.end method


# virtual methods
.method public actionFormatChanged()V
    .registers 2

    #@0
    .line 697
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@5
    return-void
.end method

.method public collapseActionView()Z
    .registers 3

    #@0
    .line 848
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 851
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 856
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@10
    if-eqz v0, :cond_1a

    #@12
    .line 857
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    return v1

    #@1a
    .line 858
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1c
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public expandActionView()Z
    .registers 3

    #@0
    .line 834
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 838
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@a
    if-eqz v0, :cond_14

    #@c
    .line 839
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    return v1

    #@14
    .line 840
    :cond_14
    :goto_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@16
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    #@0
    .line 796
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    #@0
    .line 778
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 780
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 781
    invoke-virtual {v0, p0}, Landroidx/core/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@f
    return-object v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    #@0
    .line 277
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    #@2
    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    #@0
    .line 244
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@2
    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .registers 2

    #@0
    .line 234
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 902
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    #@0
    .line 204
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 504
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 505
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 508
    :cond_9
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    #@b
    if-eqz v0, :cond_23

    #@d
    .line 509
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@f
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    #@15
    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    const/4 v1, 0x0

    #@1a
    .line 510
    iput v1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    #@1c
    .line 511
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    .line 512
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 555
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 572
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    #@0
    .line 224
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .line 210
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    #@2
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    #@0
    .line 693
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2
    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    #@0
    .line 287
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    #@2
    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    #@0
    .line 282
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    return v0
.end method

.method public getOrder()I
    .registers 2

    #@0
    .line 215
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    #@2
    return v0
.end method

.method public getOrdering()I
    .registers 2

    #@0
    .line 219
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mOrdering:I

    #@2
    return v0
.end method

.method getShortcut()C
    .registers 2

    #@0
    .line 346
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@a
    goto :goto_d

    #@b
    :cond_b
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@d
    :goto_d
    return v0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .registers 7

    #@0
    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 361
    :cond_9
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@b
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v1

    #@13
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    .line 364
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1a
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_31

    #@28
    .line 365
    sget v3, Landroidx/appcompat/R$string;->abc_prepend_shortcut_label:I

    #@2a
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 369
    :cond_31
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@33
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3c

    #@39
    iget v3, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    #@3b
    goto :goto_3e

    #@3c
    :cond_3c
    iget v3, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    #@3e
    .line 370
    :goto_3e
    sget v4, Landroidx/appcompat/R$string;->abc_menu_meta_shortcut_label:I

    #@40
    .line 371
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    const/high16 v5, 0x10000

    #@46
    .line 370
    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    #@49
    .line 372
    sget v4, Landroidx/appcompat/R$string;->abc_menu_ctrl_shortcut_label:I

    #@4b
    .line 373
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    const/16 v5, 0x1000

    #@51
    .line 372
    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    #@54
    .line 374
    sget v4, Landroidx/appcompat/R$string;->abc_menu_alt_shortcut_label:I

    #@56
    .line 375
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    const/4 v5, 0x2

    #@5b
    .line 374
    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    #@5e
    .line 376
    sget v4, Landroidx/appcompat/R$string;->abc_menu_shift_shortcut_label:I

    #@60
    .line 377
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    const/4 v5, 0x1

    #@65
    .line 376
    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    #@68
    .line 378
    sget v4, Landroidx/appcompat/R$string;->abc_menu_sym_shortcut_label:I

    #@6a
    .line 379
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    const/4 v5, 0x4

    #@6f
    .line 378
    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    #@72
    .line 380
    sget v4, Landroidx/appcompat/R$string;->abc_menu_function_shortcut_label:I

    #@74
    .line 381
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    const/16 v5, 0x8

    #@7a
    .line 380
    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    #@7d
    if-eq v0, v5, :cond_9f

    #@7f
    const/16 v3, 0xa

    #@81
    if-eq v0, v3, :cond_95

    #@83
    const/16 v3, 0x20

    #@85
    if-eq v0, v3, :cond_8b

    #@87
    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    goto :goto_a8

    #@8b
    .line 394
    :cond_8b
    sget v0, Landroidx/appcompat/R$string;->abc_menu_space_shortcut_label:I

    #@8d
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    goto :goto_a8

    #@95
    .line 386
    :cond_95
    sget v0, Landroidx/appcompat/R$string;->abc_menu_enter_shortcut_label:I

    #@97
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    goto :goto_a8

    #@9f
    .line 390
    :cond_9f
    sget v0, Landroidx/appcompat/R$string;->abc_menu_delete_shortcut_label:I

    #@a1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 402
    :goto_a8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    return-object v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    #@0
    .line 423
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@2
    return-object v0
.end method

.method public getSupportActionProvider()Landroidx/core/view/ActionProvider;
    .registers 2

    #@0
    .line 802
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .line 440
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 475
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@7
    :goto_7
    return-object v0
.end method

.method getTitleForItemView(Landroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    if-eqz p1, :cond_d

    #@2
    .line 450
    invoke-interface {p1}, Landroidx/appcompat/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_d

    #@8
    .line 451
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    #@b
    move-result-object p1

    #@c
    goto :goto_11

    #@d
    .line 452
    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@10
    move-result-object p1

    #@11
    :goto_11
    return-object p1
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 917
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .registers 3

    #@0
    .line 865
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_1a

    #@7
    .line 866
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@9
    if-nez v0, :cond_15

    #@b
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@d
    if-eqz v0, :cond_15

    #@f
    .line 867
    invoke-virtual {v0, p0}, Landroidx/core/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@15
    .line 869
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@17
    if-eqz v0, :cond_1a

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1a
    return v1
.end method

.method public hasSubMenu()Z
    .registers 2

    #@0
    .line 428
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public invoke()Z
    .registers 5

    #@0
    .line 155
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_c

    #@5
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_c

    #@b
    return v1

    #@c
    .line 159
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@e
    invoke-virtual {v0, v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    return v1

    #@15
    .line 163
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    #@17
    if-eqz v0, :cond_1d

    #@19
    .line 164
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@1c
    return v1

    #@1d
    .line 168
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@1f
    if-eqz v0, :cond_35

    #@21
    .line 170
    :try_start_21
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@26
    move-result-object v0

    #@27
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@29
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_2c} :catch_2d

    #@2c
    return v1

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    const-string v2, "MenuItemImpl"

    #@30
    const-string v3, "Can\'t find activity to handle intent; ignoring"

    #@32
    .line 173
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    .line 177
    :cond_35
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@37
    if-eqz v0, :cond_40

    #@39
    invoke-virtual {v0}, Landroidx/core/view/ActionProvider;->onPerformDefaultAction()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_40

    #@3f
    return v1

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    return v0
.end method

.method public isActionButton()Z
    .registers 3

    #@0
    .line 708
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    const/16 v1, 0x20

    #@4
    and-int/2addr v0, v1

    #@5
    if-ne v0, v1, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    #@0
    .line 881
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    #@2
    return v0
.end method

.method public isCheckable()Z
    .registers 3

    #@0
    .line 596
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    const/4 v1, 0x1

    #@3
    and-int/2addr v0, v1

    #@4
    if-ne v0, v1, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v1, 0x0

    #@8
    :goto_8
    return v1
.end method

.method public isChecked()Z
    .registers 3

    #@0
    .line 620
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    const/4 v1, 0x2

    #@3
    and-int/2addr v0, v1

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    .line 186
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x10

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public isExclusiveCheckable()Z
    .registers 2

    #@0
    .line 615
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 4

    #@0
    .line 646
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_1d

    #@6
    invoke-virtual {v0}, Landroidx/core/view/ActionProvider;->overridesItemVisibility()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1d

    #@c
    .line 647
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@e
    and-int/lit8 v0, v0, 0x8

    #@10
    if-nez v0, :cond_1b

    #@12
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@14
    invoke-virtual {v0}, Landroidx/core/view/ActionProvider;->isVisible()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v1, v2

    #@1c
    :goto_1c
    return v1

    #@1d
    .line 649
    :cond_1d
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@1f
    and-int/lit8 v0, v0, 0x8

    #@21
    if-nez v0, :cond_24

    #@23
    goto :goto_25

    #@24
    :cond_24
    move v1, v2

    #@25
    :goto_25
    return v1
.end method

.method public requestsActionButton()Z
    .registers 3

    #@0
    .line 712
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2
    const/4 v1, 0x1

    #@3
    and-int/2addr v0, v1

    #@4
    if-ne v0, v1, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v1, 0x0

    #@8
    :goto_8
    return v1
.end method

.method public requiresActionButton()Z
    .registers 3

    #@0
    .line 717
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2
    const/4 v1, 0x2

    #@3
    and-int/2addr v0, v1

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public requiresOverflow()Z
    .registers 2

    #@0
    .line 722
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

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

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 790
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionView(I)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setActionView(I)Landroidx/core/internal/view/SupportMenuItem;
    .registers 5

    #@0
    .line 770
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 771
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v1

    #@a
    .line 772
    new-instance v2, Landroid/widget/LinearLayout;

    #@c
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    #@17
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 4

    #@0
    .line 758
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@2
    const/4 v0, 0x0

    #@3
    .line 759
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@5
    if-eqz p1, :cond_15

    #@7
    .line 760
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@a
    move-result v0

    #@b
    const/4 v1, -0x1

    #@c
    if-ne v0, v1, :cond_15

    #@e
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    #@10
    if-lez v0, :cond_15

    #@12
    .line 761
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    #@15
    .line 763
    :cond_15
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@17
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@1a
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .registers 3

    #@0
    .line 875
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    #@2
    .line 876
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@8
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 249
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-object p0

    #@5
    .line 253
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    #@8
    move-result p1

    #@9
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@b
    .line 255
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@d
    const/4 v0, 0x0

    #@e
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@11
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 263
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@2
    if-ne v0, p1, :cond_9

    #@4
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    #@6
    if-ne v0, p2, :cond_9

    #@8
    return-object p0

    #@9
    .line 268
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    #@c
    move-result p1

    #@d
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@f
    .line 269
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@12
    move-result p1

    #@13
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    #@15
    .line 271
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@17
    const/4 p2, 0x0

    #@18
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@1b
    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 238
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    #@2
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 601
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v1, v0, -0x2

    #@4
    or-int/2addr p1, v1

    #@5
    .line 602
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@7
    if-eq v0, p1, :cond_f

    #@9
    .line 604
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@b
    const/4 v0, 0x0

    #@c
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@f
    :cond_f
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 625
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 628
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@8
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    #@b
    goto :goto_f

    #@c
    .line 630
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    #@f
    :goto_f
    return-object p0
.end method

.method setCheckedInt(Z)V
    .registers 5

    #@0
    .line 637
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v1, v0, -0x3

    #@4
    const/4 v2, 0x0

    #@5
    if-eqz p1, :cond_9

    #@7
    const/4 p1, 0x2

    #@8
    goto :goto_a

    #@9
    :cond_9
    move p1, v2

    #@a
    :goto_a
    or-int/2addr p1, v1

    #@b
    .line 638
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@d
    if-eq v0, p1, :cond_14

    #@f
    .line 640
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@11
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@14
    :cond_14
    return-void
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 3

    #@0
    .line 893
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    .line 895
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@8
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    if-eqz p1, :cond_9

    #@2
    .line 192
    iget p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@4
    or-int/lit8 p1, p1, 0x10

    #@6
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@8
    goto :goto_f

    #@9
    .line 194
    :cond_9
    iget p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@b
    and-int/lit8 p1, p1, -0x11

    #@d
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@f
    .line 197
    :goto_f
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@11
    const/4 v0, 0x0

    #@12
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@15
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 3

    #@0
    .line 611
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, -0x5

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x4

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    or-int/2addr p1, v0

    #@a
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@c
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 530
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 531
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    #@5
    const/4 p1, 0x1

    #@6
    .line 532
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    #@8
    .line 535
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@e
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 520
    iput v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    #@3
    .line 521
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    const/4 p1, 0x1

    #@6
    .line 522
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    #@8
    .line 523
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@a
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@d
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 544
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    #@2
    const/4 p1, 0x1

    #@3
    .line 545
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    #@5
    .line 546
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    #@7
    .line 548
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@d
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 561
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    const/4 p1, 0x1

    #@3
    .line 562
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    #@5
    .line 563
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    #@7
    .line 565
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@d
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 229
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@2
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_9

    #@2
    .line 727
    iget p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@4
    or-int/lit8 p1, p1, 0x20

    #@6
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@8
    goto :goto_f

    #@9
    .line 729
    :cond_9
    iget p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@b
    and-int/lit8 p1, p1, -0x21

    #@d
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@f
    :goto_f
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    #@0
    .line 688
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 292
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-object p0

    #@5
    .line 296
    :cond_5
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@7
    .line 298
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@d
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 306
    iget-char v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    if-ne v0, p1, :cond_9

    #@4
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    #@6
    if-ne v0, p2, :cond_9

    #@8
    return-object p0

    #@9
    .line 310
    :cond_9
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@b
    .line 311
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@e
    move-result p1

    #@f
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    #@11
    .line 313
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@13
    const/4 p2, 0x0

    #@14
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@17
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 886
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@2
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 678
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 320
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    .line 321
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    #@5
    move-result p1

    #@6
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@8
    .line 323
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@a
    const/4 p2, 0x0

    #@b
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@e
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    #@0
    .line 332
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    .line 333
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    #@8
    .line 334
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    #@b
    move-result p1

    #@c
    iput-char p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@e
    .line 335
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@11
    move-result p1

    #@12
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    #@14
    .line 337
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@16
    const/4 p2, 0x0

    #@17
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@1a
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    #@0
    and-int/lit8 v0, p1, 0x3

    #@2
    if-eqz v0, :cond_13

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_13

    #@7
    const/4 v1, 0x2

    #@8
    if-ne v0, v1, :cond_b

    #@a
    goto :goto_13

    #@b
    .line 748
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1

    #@13
    .line 751
    :cond_13
    :goto_13
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    #@15
    .line 752
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@17
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@1a
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    #@0
    .line 828
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setShowAsAction(I)V

    #@3
    return-object p0
.end method

.method public setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V
    .registers 3

    #@0
    .line 432
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@2
    .line 434
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    #@9
    return-void
.end method

.method public setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 3

    #@0
    .line 808
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 809
    invoke-virtual {v0}, Landroidx/core/view/ActionProvider;->reset()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 811
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@a
    .line 812
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@c
    .line 813
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@e
    const/4 v0, 0x1

    #@f
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@12
    .line 814
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    #@14
    if-eqz p1, :cond_1e

    #@16
    .line 815
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemImpl$1;

    #@18
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/MenuItemImpl$1;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@1b
    invoke-virtual {p1, v0}, Landroidx/core/view/ActionProvider;->setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V

    #@1e
    :cond_1e
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 470
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 457
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 459
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@8
    .line 461
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 462
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    #@f
    :cond_f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 490
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    .line 497
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@8
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 3

    #@0
    .line 908
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    #@2
    .line 910
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@8
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 671
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_b

    #@6
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@8
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@b
    :cond_b
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .registers 5

    #@0
    .line 661
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v1, v0, -0x9

    #@4
    const/4 v2, 0x0

    #@5
    if-eqz p1, :cond_9

    #@7
    move p1, v2

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/16 p1, 0x8

    #@b
    :goto_b
    or-int/2addr p1, v1

    #@c
    .line 662
    iput p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    #@e
    if-eq v0, p1, :cond_11

    #@10
    const/4 v2, 0x1

    #@11
    :cond_11
    return v2
.end method

.method public shouldShowIcon()Z
    .registers 2

    #@0
    .line 704
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method shouldShowShortcut()Z
    .registers 2

    #@0
    .line 418
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public showsTextAsAction()Z
    .registers 3

    #@0
    .line 734
    iget v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2
    const/4 v1, 0x4

    #@3
    and-int/2addr v0, v1

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 684
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method
