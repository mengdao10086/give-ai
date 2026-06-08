.class public Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.super Landroidx/appcompat/view/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;,
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MenuItemWrapper"


# instance fields
.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

.field private final mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .registers 3

    #@0
    .line 56
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;)V

    #@3
    if-eqz p2, :cond_8

    #@5
    .line 60
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@7
    return-void

    #@8
    .line 58
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string p2, "Wrapped Object can not be null."

    #@c
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    #@0
    .line 326
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->collapseActionView()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public expandActionView()Z
    .registers 2

    #@0
    .line 321
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->expandActionView()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    #@0
    .line 312
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    #@5
    move-result-object v0

    #@6
    .line 313
    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    #@8
    if-eqz v1, :cond_f

    #@a
    .line 314
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    #@c
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    #@e
    return-object v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 3

    #@0
    .line 291
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 292
    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    #@8
    if-eqz v1, :cond_10

    #@a
    .line 293
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    #@c
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    :cond_10
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    #@0
    .line 188
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    #@0
    .line 183
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getAlphabeticShortcut()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 349
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getGroupId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 120
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 371
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 382
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    #@0
    .line 131
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getIntent()Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getItemId()I
    .registers 2

    #@0
    .line 65
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getItemId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    #@0
    .line 253
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    #@0
    .line 166
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getNumericModifiers()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    #@0
    .line 161
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getNumericShortcut()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOrder()I
    .registers 2

    #@0
    .line 75
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getOrder()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    #@0
    .line 241
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 103
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 360
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    #@0
    .line 236
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->hasSubMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    #@0
    .line 331
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    #@0
    .line 199
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->isCheckable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isChecked()Z
    .registers 2

    #@0
    .line 210
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->isChecked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    .line 231
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    .line 220
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenuItem;->isVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 302
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;

    #@2
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    #@7
    .line 306
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@9
    if-eqz p1, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    invoke-interface {v1, v0}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    #@10
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 279
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    #@5
    .line 281
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@7
    invoke-interface {p1}, Landroidx/core/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    #@a
    move-result-object p1

    #@b
    .line 282
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    #@d
    if-eqz v0, :cond_19

    #@f
    .line 284
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@11
    new-instance v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    #@13
    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    #@16
    invoke-interface {v0, v1}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@19
    :cond_19
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 269
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 270
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    #@6
    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    #@9
    move-object p1, v0

    #@a
    .line 272
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@c
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@f
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 171
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 177
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1, p2}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 193
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 204
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setChecked(Z)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 343
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@5
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 225
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 8

    #@0
    .line 387
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-nez v0, :cond_1a

    #@6
    .line 388
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    const-string v3, "setExclusiveCheckable"

    #@e
    new-array v4, v2, [Ljava/lang/Class;

    #@10
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@12
    aput-object v5, v4, v1

    #@14
    .line 389
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    #@1a
    .line 391
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    #@1c
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@1e
    new-array v2, v2, [Ljava/lang/Object;

    #@20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@23
    move-result-object p1

    #@24
    aput-object p1, v2, v1

    #@26
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    #@29
    goto :goto_32

    #@2a
    :catch_2a
    move-exception p1

    #@2b
    const-string v0, "MenuItemWrapper"

    #@2d
    const-string v1, "Error while calling setExclusiveCheckable"

    #@2f
    .line 393
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    :goto_32
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 114
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIcon(I)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 108
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 365
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 376
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 125
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 149
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 155
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1, p2}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 336
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz p1, :cond_a

    #@4
    .line 337
    new-instance v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    #@6
    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 336
    :goto_b
    invoke-interface {v0, v1}, Landroidx/core/internal/view/SupportMenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    #@e
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 246
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz p1, :cond_a

    #@4
    .line 247
    new-instance v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    #@6
    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 246
    :goto_b
    invoke-interface {v0, v1}, Landroidx/core/internal/view/SupportMenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@e
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 136
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1, p2}, Landroidx/core/internal/view/SupportMenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 6

    #@0
    .line 143
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 3

    #@0
    .line 258
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setShowAsAction(I)V

    #@5
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 263
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 86
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setTitle(I)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 97
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@5
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 354
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@5
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 215
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method
