.class public Landroidx/appcompat/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8


# instance fields
.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 7

    #@0
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 p4, 0x1000

    #@5
    .line 54
    iput p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    #@7
    .line 56
    iput p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    #@9
    const/4 p4, 0x0

    #@a
    .line 67
    iput-object p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    #@c
    .line 68
    iput-object p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e
    const/4 p4, 0x0

    #@f
    .line 69
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    #@11
    .line 70
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    #@13
    const/16 p4, 0x10

    #@15
    .line 72
    iput p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@17
    .line 81
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@19
    .line 82
    iput p3, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mId:I

    #@1b
    .line 83
    iput p2, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mGroup:I

    #@1d
    .line 84
    iput p5, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mOrdering:I

    #@1f
    .line 85
    iput-object p6, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@21
    return-void
.end method

.method private applyIconTint()V
    .registers 3

    #@0
    .line 449
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_2c

    #@4
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    #@6
    if-nez v1, :cond_c

    #@8
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    #@a
    if-eqz v1, :cond_2c

    #@c
    .line 450
    :cond_c
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    .line 451
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@18
    .line 453
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    #@1a
    if-eqz v1, :cond_21

    #@1c
    .line 454
    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    #@1e
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@21
    .line 457
    :cond_21
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    #@23
    if-eqz v0, :cond_2c

    #@25
    .line 458
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@27
    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@29
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@2c
    :cond_2c
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public expandActionView()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    #@0
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    #@0
    .line 95
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    #@2
    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    #@0
    .line 90
    iget-char v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@2
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 401
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    #@0
    .line 100
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mGroup:I

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 105
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 429
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 445
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    #@0
    .line 110
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getItemId()I
    .registers 2

    #@0
    .line 115
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mId:I

    #@2
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    #@0
    .line 130
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    #@2
    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    #@0
    .line 125
    iget-char v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    return v0
.end method

.method public getOrder()I
    .registers 2

    #@0
    .line 135
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mOrdering:I

    #@2
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSupportActionProvider()Landroidx/core/view/ActionProvider;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 145
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 150
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@7
    :goto_7
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 413
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public invoke()Z
    .registers 4

    #@0
    .line 300
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

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
    .line 304
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    #@e
    if-eqz v0, :cond_16

    #@10
    .line 305
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@15
    return v1

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isCheckable()Z
    .registers 3

    #@0
    .line 160
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@2
    const/4 v1, 0x1

    #@3
    and-int/2addr v0, v1

    #@4
    if-eqz v0, :cond_7

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
    .registers 2

    #@0
    .line 165
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x2

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

.method public isEnabled()Z
    .registers 2

    #@0
    .line 170
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

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

.method public isVisible()Z
    .registers 2

    #@0
    .line 175
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    if-nez v0, :cond_8

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

.method public requiresActionButton()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public requiresOverflow()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 340
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setActionView(I)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setActionView(I)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    #@0
    .line 351
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    #@0
    .line 330
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 180
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    #@3
    move-result p1

    #@4
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@6
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 187
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    #@3
    move-result p1

    #@4
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@6
    .line 188
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@9
    move-result p1

    #@a
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    #@c
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 194
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v0, v0, -0x2

    #@4
    or-int/2addr p1, v0

    #@5
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@7
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 205
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v0, v0, -0x3

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x2

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    or-int/2addr p1, v0

    #@a
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@c
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    #@0
    .line 395
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 211
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v0, v0, -0x11

    #@4
    if-eqz p1, :cond_9

    #@6
    const/16 p1, 0x10

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    or-int/2addr p1, v0

    #@b
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@d
    return-object p0
.end method

.method public setExclusiveCheckable(Z)Landroidx/appcompat/view/menu/ActionMenuItem;
    .registers 3

    #@0
    .line 199
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

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
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@c
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 225
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    .line 227
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    #@b
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 217
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 219
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    #@5
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 419
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    #@2
    const/4 p1, 0x1

    #@3
    .line 420
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    #@5
    .line 422
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    #@8
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 435
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    const/4 p1, 0x1

    #@3
    .line 436
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    #@5
    .line 438
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    #@8
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 233
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    #@2
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 239
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 246
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    .line 247
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    #@8
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 389
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 253
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 259
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    .line 260
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    #@5
    move-result p1

    #@6
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@8
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    #@0
    .line 268
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    .line 269
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    #@8
    .line 270
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    #@b
    move-result p1

    #@c
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@e
    .line 271
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@11
    move-result p1

    #@12
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    #@14
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    #@0
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    #@0
    .line 368
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setShowAsAction(I)V

    #@3
    return-object p0
.end method

.method public setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    #@0
    .line 362
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 283
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@c
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 277
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 289
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    #@0
    .line 407
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 295
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@2
    const/16 v1, 0x8

    #@4
    and-int/2addr v0, v1

    #@5
    if-eqz p1, :cond_8

    #@7
    const/4 v1, 0x0

    #@8
    :cond_8
    or-int p1, v0, v1

    #@a
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    #@c
    return-object p0
.end method
