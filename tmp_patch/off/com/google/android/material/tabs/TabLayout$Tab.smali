.class public Lcom/google/android/material/tabs/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private id:I

.field private labelVisibilityMode:I

.field public parent:Lcom/google/android/material/tabs/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Lcom/google/android/material/tabs/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 2120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 2109
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    #@6
    const/4 v1, 0x1

    #@7
    .line 2111
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    #@9
    .line 2117
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->id:I

    #@b
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/tabs/TabLayout$Tab;)I
    .registers 1

    #@0
    .line 2093
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->id:I

    #@2
    return p0
.end method

.method static synthetic access$1500(Lcom/google/android/material/tabs/TabLayout$Tab;)I
    .registers 1

    #@0
    .line 2093
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    #@2
    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    #@0
    .line 2093
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    #@0
    .line 2093
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method


# virtual methods
.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    #@0
    .line 2348
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@2
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$1000(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2456
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    #@0
    .line 2173
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 2221
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getId()I
    .registers 2

    #@0
    .line 2162
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->id:I

    #@2
    return v0
.end method

.method public getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    #@0
    .line 2331
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@2
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$800(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPosition()I
    .registers 2

    #@0
    .line 2231
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    #@2
    return v0
.end method

.method public getTabLabelVisibility()I
    .registers 2

    #@0
    .line 2390
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    #@2
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    #@0
    .line 2127
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2245
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public isSelected()Z
    .registers 3

    #@0
    .line 2403
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@2
    if-eqz v0, :cond_13

    #@4
    .line 2406
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_11

    #@b
    .line 2407
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    #@d
    if-ne v0, v1, :cond_11

    #@f
    const/4 v0, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0

    #@13
    .line 2404
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v1, "Tab not attached to a TabLayout"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method public removeBadge()V
    .registers 2

    #@0
    .line 2339
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@2
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->removeBadge()V
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$900(Lcom/google/android/material/tabs/TabLayout$TabView;)V

    #@5
    return-void
.end method

.method reset()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2466
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@3
    .line 2467
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@5
    .line 2468
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    #@7
    .line 2469
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    #@9
    const/4 v1, -0x1

    #@a
    .line 2470
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->id:I

    #@c
    .line 2471
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    #@e
    .line 2472
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    #@10
    .line 2473
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    #@12
    .line 2474
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    #@14
    return-void
.end method

.method public select()V
    .registers 3

    #@0
    .line 2395
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 2398
    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@7
    return-void

    #@8
    .line 2396
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "Tab not attached to a TabLayout"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public setContentDescription(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 3

    #@0
    .line 2422
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 2425
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@f
    move-result-object p1

    #@10
    return-object p1

    #@11
    .line 2423
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string v0, "Tab not attached to a TabLayout"

    #@15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 2

    #@0
    .line 2440
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    #@2
    .line 2441
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    #@5
    return-object p0
.end method

.method public setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 5

    #@0
    .line 2210
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v0

    #@a
    .line 2211
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@14
    move-result-object p1

    #@15
    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 2

    #@0
    .line 2190
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    #@2
    .line 2191
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    #@5
    return-object p0
.end method

.method public setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 3

    #@0
    .line 2280
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 2283
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@f
    move-result-object p1

    #@10
    return-object p1

    #@11
    .line 2281
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string v0, "Tab not attached to a TabLayout"

    #@15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 4

    #@0
    .line 2257
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 2258
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@4
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@6
    const/4 v0, 0x1

    #@7
    if-eq p1, v0, :cond_10

    #@9
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@b
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@d
    const/4 v1, 0x2

    #@e
    if-ne p1, v1, :cond_15

    #@10
    .line 2259
    :cond_10
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@12
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    #@15
    .line 2261
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    #@18
    .line 2262
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@1a
    if-eqz p1, :cond_35

    #@1c
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@1e
    .line 2263
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$600(Lcom/google/android/material/tabs/TabLayout$TabView;)Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_35

    #@24
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@26
    .line 2264
    # getter for: Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$700(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    #@2d
    move-result p1

    #@2e
    if-eqz p1, :cond_35

    #@30
    .line 2266
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@32
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->invalidate()V

    #@35
    :cond_35
    return-object p0
.end method

.method public setId(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 3

    #@0
    .line 2153
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->id:I

    #@2
    .line 2154
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 2155
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setId(I)V

    #@9
    :cond_9
    return-object p0
.end method

.method setPosition(I)V
    .registers 2

    #@0
    .line 2235
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    #@2
    return-void
.end method

.method public setTabLabelVisibility(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 4

    #@0
    .line 2367
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    #@2
    .line 2368
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@4
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@6
    const/4 v0, 0x1

    #@7
    if-eq p1, v0, :cond_10

    #@9
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@b
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@d
    const/4 v1, 0x2

    #@e
    if-ne p1, v1, :cond_15

    #@10
    .line 2369
    :cond_10
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@12
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    #@15
    .line 2371
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    #@18
    .line 2372
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@1a
    if-eqz p1, :cond_35

    #@1c
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@1e
    .line 2373
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$600(Lcom/google/android/material/tabs/TabLayout$TabView;)Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_35

    #@24
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@26
    .line 2374
    # getter for: Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$700(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    #@2d
    move-result p1

    #@2e
    if-eqz p1, :cond_35

    #@30
    .line 2376
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@32
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->invalidate()V

    #@35
    :cond_35
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 2

    #@0
    .line 2139
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    #@2
    return-object p0
.end method

.method public setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 3

    #@0
    .line 2317
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 2320
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@f
    move-result-object p1

    #@10
    return-object p1

    #@11
    .line 2318
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string v0, "Tab not attached to a TabLayout"

    #@15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 3

    #@0
    .line 2296
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_13

    #@8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_13

    #@e
    .line 2299
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@13
    .line 2302
    :cond_13
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    #@15
    .line 2303
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    #@18
    return-object p0
.end method

.method updateView()V
    .registers 2

    #@0
    .line 2460
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2461
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    #@7
    :cond_7
    return-void
.end method
