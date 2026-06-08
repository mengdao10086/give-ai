.class public final Landroidx/core/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/MenuItemCompat$Api26Impl;,
        Landroidx/core/view/MenuItemCompat$OnActionExpandListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 276
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 257
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;
    .registers 2

    #@0
    .line 232
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 233
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    :cond_b
    const-string p0, "MenuItemCompat"

    #@d
    const-string v0, "getActionProvider: item does not implement SupportMenuItem; returning null"

    #@f
    .line 237
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    const/4 p0, 0x0

    #@13
    return-object p0
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 193
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getAlphabeticModifiers(Landroid/view/MenuItem;)I
    .registers 2

    #@0
    .line 507
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 509
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 512
    :cond_b
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getAlphabeticModifiers(Landroid/view/MenuItem;)I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 346
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 348
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 351
    :cond_b
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 546
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 548
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 551
    :cond_b
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 584
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 586
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 589
    :cond_b
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static getNumericModifiers(Landroid/view/MenuItem;)I
    .registers 2

    #@0
    .line 457
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 459
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getNumericModifiers()I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 462
    :cond_b
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getNumericModifiers(Landroid/view/MenuItem;)I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 378
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 380
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 383
    :cond_b
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 292
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 214
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 215
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    :cond_b
    const-string p1, "MenuItemCompat"

    #@d
    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    #@f
    .line 218
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 180
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 158
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .registers 4

    #@0
    .line 487
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 489
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    #@9
    goto :goto_d

    #@a
    .line 491
    :cond_a
    invoke-static {p0, p1, p2}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    #@d
    :goto_d
    return-void
.end method

.method public static setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 331
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 332
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@9
    goto :goto_d

    #@a
    .line 334
    :cond_a
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@d
    :goto_d
    return-void
.end method

.method public static setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 531
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 533
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    #@9
    goto :goto_d

    #@a
    .line 535
    :cond_a
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    #@d
    :goto_d
    return-void
.end method

.method public static setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 567
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 569
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    #@9
    goto :goto_d

    #@a
    .line 571
    :cond_a
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    #@d
    :goto_d
    return-void
.end method

.method public static setNumericShortcut(Landroid/view/MenuItem;CI)V
    .registers 4

    #@0
    .line 437
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 439
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    #@9
    goto :goto_d

    #@a
    .line 441
    :cond_a
    invoke-static {p0, p1, p2}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setNumericShortcut(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    #@d
    :goto_d
    return-void
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 310
    new-instance v0, Landroidx/core/view/MenuItemCompat$1;

    #@2
    invoke-direct {v0, p1}, Landroidx/core/view/MenuItemCompat$1;-><init>(Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)V

    #@5
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static setShortcut(Landroid/view/MenuItem;CCII)V
    .registers 6

    #@0
    .line 413
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 415
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    #@9
    goto :goto_d

    #@a
    .line 418
    :cond_a
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setShortcut(Landroid/view/MenuItem;CCII)Landroid/view/MenuItem;

    #@d
    :goto_d
    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 140
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@3
    return-void
.end method

.method public static setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 363
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 364
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    #@9
    goto :goto_d

    #@a
    .line 366
    :cond_a
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@d
    :goto_d
    return-void
.end method
