.class public final Lcom/google/android/material/tabs/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field private badgeAnchorView:Landroid/view/View;

.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .registers 6

    #@0
    .line 2493
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    .line 2494
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@5
    const/4 v0, 0x2

    #@6
    .line 2491
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    #@8
    .line 2495
    invoke-direct {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    #@b
    .line 2496
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    #@d
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    #@f
    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    #@11
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    #@13
    invoke-static {p0, p2, v0, v1, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@16
    const/16 p2, 0x11

    #@18
    .line 2498
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setGravity(I)V

    #@1b
    .line 2499
    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@1d
    const/4 p2, 0x1

    #@1e
    xor-int/2addr p1, p2

    #@1f
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    #@22
    .line 2500
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setClickable(Z)V

    #@25
    .line 2502
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@28
    move-result-object p1

    #@29
    const/16 p2, 0x3ea

    #@2b
    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    #@2e
    move-result-object p1

    #@2f
    .line 2501
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    #@32
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    #@0
    .line 2479
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getBadge()Lcom/google/android/material/badge/BadgeDrawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V
    .registers 2

    #@0
    .line 2479
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V
    .registers 2

    #@0
    .line 2479
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 2479
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/tabs/TabLayout$TabView;)Z
    .registers 1

    #@0
    .line 2479
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    #@0
    .line 2479
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    #@0
    .line 2479
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/tabs/TabLayout$TabView;)V
    .registers 1

    #@0
    .line 2479
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->removeBadge()V

    #@3
    return-void
.end method

.method private addOnLayoutChangeListener(Landroid/view/View;)V
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 2877
    :cond_3
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView$1;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView$1;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V

    #@8
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@b
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .registers 4

    #@0
    .line 3118
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    #@3
    move-result p2

    #@4
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    #@b
    move-result p1

    #@c
    div-float/2addr p3, p1

    #@d
    mul-float/2addr p2, p3

    #@e
    return p2
.end method

.method private clipViewToPaddingForBadge(Z)V
    .registers 3

    #@0
    .line 2955
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setClipChildren(Z)V

    #@3
    .line 2956
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setClipToPadding(Z)V

    #@6
    .line 2957
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getParent()Landroid/view/ViewParent;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/ViewGroup;

    #@c
    if-eqz v0, :cond_14

    #@e
    .line 2959
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    #@11
    .line 2960
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    #@14
    :cond_14
    return-void
.end method

.method private createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;
    .registers 4

    #@0
    .line 2834
    new-instance v0, Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@9
    .line 2835
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@b
    const/4 v2, -0x2

    #@c
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@f
    .line 2838
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 2561
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_1c

    #@4
    .line 2562
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTop()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    #@f
    move-result v3

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getBottom()I

    #@13
    move-result v4

    #@14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@17
    .line 2563
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1c
    :cond_1c
    return-void
.end method

.method private getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    #@0
    .line 2863
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    return-object v0
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .registers 4

    #@0
    .line 3061
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@2
    const/4 v1, 0x0

    #@3
    if-eq p1, v0, :cond_a

    #@5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@7
    if-eq p1, v0, :cond_a

    #@9
    return-object v1

    #@a
    .line 3064
    :cond_a
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@c
    if-eqz v0, :cond_15

    #@e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object p1

    #@12
    move-object v1, p1

    #@13
    check-cast v1, Landroid/widget/FrameLayout;

    #@15
    :cond_15
    return-object v1
.end method

.method private getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    #@0
    .line 2851
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 2852
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@e
    .line 2854
    :cond_e
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    #@11
    .line 2855
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@13
    if-eqz v0, :cond_16

    #@15
    return-object v0

    #@16
    .line 2856
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    const-string v1, "Unable to create badge"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method private hasBadgeDrawable()Z
    .registers 2

    #@0
    .line 3056
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

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

.method private inflateAndAddDefaultIconView()V
    .registers 5

    #@0
    .line 2808
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_d

    #@5
    .line 2809
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    #@8
    move-result-object v0

    #@9
    .line 2810
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;I)V

    #@c
    goto :goto_e

    #@d
    :cond_d
    move-object v0, p0

    #@e
    .line 2814
    :goto_e
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@15
    move-result-object v2

    #@16
    sget v3, Lcom/google/android/material/R$layout;->design_layout_tab_icon:I

    #@18
    .line 2815
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/widget/ImageView;

    #@1e
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@20
    .line 2816
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@23
    return-void
.end method

.method private inflateAndAddDefaultTextView()V
    .registers 5

    #@0
    .line 2821
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 2822
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    #@7
    move-result-object v0

    #@8
    .line 2823
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;)V

    #@b
    goto :goto_d

    #@c
    :cond_c
    move-object v0, p0

    #@d
    .line 2827
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@14
    move-result-object v1

    #@15
    sget v2, Lcom/google/android/material/R$layout;->design_layout_tab_text:I

    #@17
    const/4 v3, 0x0

    #@18
    .line 2828
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/widget/TextView;

    #@1e
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@20
    .line 2829
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@23
    return-void
.end method

.method private removeBadge()V
    .registers 2

    #@0
    .line 2867
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2868
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 2870
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@a
    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .registers 4

    #@0
    .line 2930
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    if-eqz p1, :cond_18

    #@9
    const/4 v0, 0x0

    #@a
    .line 2934
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->clipViewToPaddingForBadge(Z)V

    #@d
    .line 2935
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@f
    .line 2936
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    #@12
    move-result-object v1

    #@13
    .line 2935
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@16
    .line 2937
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    #@18
    :cond_18
    return-void
.end method

.method private tryRemoveBadgeFromAnchor()V
    .registers 3

    #@0
    .line 2942
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x1

    #@8
    .line 2945
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->clipViewToPaddingForBadge(Z)V

    #@b
    .line 2946
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    #@d
    if-eqz v0, :cond_17

    #@f
    .line 2947
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@11
    invoke-static {v1, v0}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    #@14
    const/4 v0, 0x0

    #@15
    .line 2948
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    #@17
    :cond_17
    return-void
.end method

.method private tryUpdateBadgeAnchor()V
    .registers 3

    #@0
    .line 2898
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 2901
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@9
    if-eqz v0, :cond_f

    #@b
    .line 2903
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    #@e
    goto :goto_55

    #@f
    .line 2905
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@11
    if-eqz v0, :cond_30

    #@13
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@15
    if-eqz v0, :cond_30

    #@17
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_30

    #@1d
    .line 2906
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    #@1f
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@21
    if-eq v0, v1, :cond_2c

    #@23
    .line 2907
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    #@26
    .line 2909
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@28
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    #@2b
    goto :goto_55

    #@2c
    .line 2911
    :cond_2c
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    #@2f
    goto :goto_55

    #@30
    .line 2913
    :cond_30
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@32
    if-eqz v0, :cond_52

    #@34
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@36
    if-eqz v0, :cond_52

    #@38
    .line 2915
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTabLabelVisibility()I

    #@3b
    move-result v0

    #@3c
    const/4 v1, 0x1

    #@3d
    if-ne v0, v1, :cond_52

    #@3f
    .line 2916
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    #@41
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@43
    if-eq v0, v1, :cond_4e

    #@45
    .line 2917
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    #@48
    .line 2919
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@4a
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    #@4d
    goto :goto_55

    #@4e
    .line 2921
    :cond_4e
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    #@51
    goto :goto_55

    #@52
    .line 2924
    :cond_52
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    #@55
    :goto_55
    return-void
.end method

.method private tryUpdateBadgeDrawableBounds(Landroid/view/View;)V
    .registers 4

    #@0
    .line 3050
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    #@8
    if-ne p1, v0, :cond_13

    #@a
    .line 3051
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@c
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@13
    :cond_13
    return-void
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .registers 7

    #@0
    .line 2506
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_23

    #@7
    .line 2507
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@9
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    #@b
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz p1, :cond_25

    #@13
    .line 2508
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_25

    #@19
    .line 2509
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@22
    goto :goto_25

    #@23
    .line 2512
    :cond_23
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    .line 2516
    :cond_25
    :goto_25
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    #@27
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    #@2a
    .line 2517
    move-object v0, p1

    #@2b
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    #@2d
    const/4 v0, 0x0

    #@2e
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    #@31
    .line 2519
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@33
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    #@35
    if-eqz v0, :cond_63

    #@37
    .line 2520
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@39
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    #@3c
    const v2, 0x3727c5ac    # 1.0E-5f

    #@3f
    .line 2524
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    #@42
    const/4 v2, -0x1

    #@43
    .line 2525
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    #@46
    .line 2527
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@48
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    #@4a
    .line 2528
    invoke-static {v2}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@4d
    move-result-object v2

    #@4e
    .line 2533
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    #@50
    .line 2536
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@52
    iget-boolean v4, v4, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    #@54
    if-eqz v4, :cond_57

    #@56
    move-object p1, v1

    #@57
    .line 2537
    :cond_57
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@59
    iget-boolean v4, v4, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    #@5b
    if-eqz v4, :cond_5e

    #@5d
    goto :goto_5f

    #@5e
    :cond_5e
    move-object v1, v0

    #@5f
    :goto_5f
    invoke-direct {v3, v2, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@62
    move-object p1, v3

    #@63
    .line 2546
    :cond_63
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@66
    .line 2547
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@68
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    #@6b
    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .registers 11

    #@0
    .line 2978
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_1a

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_1a

    #@b
    .line 2979
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@d
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move-object v0, v1

    #@1b
    :goto_1b
    if-eqz v0, :cond_31

    #@1d
    .line 2982
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@1f
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    #@21
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@24
    .line 2983
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@26
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@28
    if-eqz v2, :cond_31

    #@2a
    .line 2984
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2c
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2e
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@31
    .line 2988
    :cond_31
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@33
    if-eqz v2, :cond_3a

    #@35
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    #@38
    move-result-object v2

    #@39
    goto :goto_3b

    #@3a
    :cond_3a
    move-object v2, v1

    #@3b
    :goto_3b
    const/16 v3, 0x8

    #@3d
    const/4 v4, 0x0

    #@3e
    if-eqz p2, :cond_52

    #@40
    if-eqz v0, :cond_4c

    #@42
    .line 2992
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@45
    .line 2993
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    #@48
    .line 2994
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    #@4b
    goto :goto_52

    #@4c
    .line 2996
    :cond_4c
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@4f
    .line 2997
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@52
    .line 3001
    :cond_52
    :goto_52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@55
    move-result v0

    #@56
    const/4 v5, 0x1

    #@57
    xor-int/2addr v0, v5

    #@58
    if-eqz p1, :cond_7c

    #@5a
    if-eqz v0, :cond_65

    #@5c
    .line 3004
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@5e
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I
    invoke-static {v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$1500(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    #@61
    move-result v6

    #@62
    if-ne v6, v5, :cond_65

    #@64
    goto :goto_66

    #@65
    :cond_65
    move v5, v4

    #@66
    :goto_66
    if-eqz v0, :cond_6a

    #@68
    move-object v6, v2

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    move-object v6, v1

    #@6b
    .line 3005
    :goto_6b
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@6e
    if-eqz v5, :cond_72

    #@70
    move v6, v4

    #@71
    goto :goto_73

    #@72
    :cond_72
    move v6, v3

    #@73
    .line 3006
    :goto_73
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@76
    if-eqz v0, :cond_7d

    #@78
    .line 3009
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    #@7b
    goto :goto_7d

    #@7c
    :cond_7c
    move v5, v4

    #@7d
    :cond_7d
    :goto_7d
    if-eqz p3, :cond_c1

    #@7f
    if-eqz p2, :cond_c1

    #@81
    .line 3016
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@84
    move-result-object p1

    #@85
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@87
    if-eqz v5, :cond_99

    #@89
    .line 3018
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    #@8c
    move-result p3

    #@8d
    if-nez p3, :cond_99

    #@8f
    .line 3020
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    #@92
    move-result-object p3

    #@93
    invoke-static {p3, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@96
    move-result p3

    #@97
    float-to-int p3, p3

    #@98
    goto :goto_9a

    #@99
    :cond_99
    move p3, v4

    #@9a
    .line 3022
    :goto_9a
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@9c
    iget-boolean v3, v3, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@9e
    if-eqz v3, :cond_b2

    #@a0
    .line 3023
    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@a3
    move-result v3

    #@a4
    if-eq p3, v3, :cond_c1

    #@a6
    .line 3024
    invoke-static {p1, p3}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@a9
    .line 3025
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@ab
    .line 3027
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@ae
    .line 3028
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    #@b1
    goto :goto_c1

    #@b2
    .line 3031
    :cond_b2
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@b4
    if-eq p3, v3, :cond_c1

    #@b6
    .line 3032
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@b8
    .line 3033
    invoke-static {p1, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@bb
    .line 3035
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@be
    .line 3036
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    #@c1
    .line 3041
    :cond_c1
    :goto_c1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@c3
    if-eqz p1, :cond_c9

    #@c5
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    #@c8
    move-result-object v1

    #@c9
    :cond_c9
    if-eqz v0, :cond_cc

    #@cb
    goto :goto_cd

    #@cc
    :cond_cc
    move-object v2, v1

    #@cd
    .line 3044
    :goto_cd
    invoke-static {p0, v2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@d0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    #@0
    .line 2569
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    #@3
    .line 2571
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    #@6
    move-result-object v0

    #@7
    .line 2572
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v1, :cond_19

    #@c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_19

    #@12
    .line 2573
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@17
    move-result v0

    #@18
    or-int/2addr v2, v0

    #@19
    :cond_19
    if-eqz v2, :cond_23

    #@1b
    .line 2577
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->invalidate()V

    #@1e
    .line 2578
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@20
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    #@23
    :cond_23
    return-void
.end method

.method getContentHeight()I
    .registers 10

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [Landroid/view/View;

    #@3
    .line 3100
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@5
    const/4 v3, 0x0

    #@6
    aput-object v2, v1, v3

    #@8
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@a
    const/4 v4, 0x1

    #@b
    aput-object v2, v1, v4

    #@d
    const/4 v2, 0x2

    #@e
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@10
    aput-object v5, v1, v2

    #@12
    move v2, v3

    #@13
    move v5, v2

    #@14
    move v6, v5

    #@15
    :goto_15
    if-ge v3, v0, :cond_43

    #@17
    aget-object v7, v1, v3

    #@19
    if-eqz v7, :cond_40

    #@1b
    .line 3101
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    #@1e
    move-result v8

    #@1f
    if-nez v8, :cond_40

    #@21
    if-eqz v6, :cond_2c

    #@23
    .line 3102
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@26
    move-result v8

    #@27
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v5

    #@2b
    goto :goto_30

    #@2c
    :cond_2c
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@2f
    move-result v5

    #@30
    :goto_30
    if-eqz v6, :cond_3b

    #@32
    .line 3103
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@35
    move-result v6

    #@36
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@39
    move-result v2

    #@3a
    goto :goto_3f

    #@3b
    :cond_3b
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@3e
    move-result v2

    #@3f
    :goto_3f
    move v6, v4

    #@40
    :cond_40
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_15

    #@43
    :cond_43
    sub-int/2addr v2, v5

    #@44
    return v2
.end method

.method getContentWidth()I
    .registers 10

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [Landroid/view/View;

    #@3
    .line 3078
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@5
    const/4 v3, 0x0

    #@6
    aput-object v2, v1, v3

    #@8
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@a
    const/4 v4, 0x1

    #@b
    aput-object v2, v1, v4

    #@d
    const/4 v2, 0x2

    #@e
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@10
    aput-object v5, v1, v2

    #@12
    move v2, v3

    #@13
    move v5, v2

    #@14
    move v6, v5

    #@15
    :goto_15
    if-ge v3, v0, :cond_43

    #@17
    aget-object v7, v1, v3

    #@19
    if-eqz v7, :cond_40

    #@1b
    .line 3079
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    #@1e
    move-result v8

    #@1f
    if-nez v8, :cond_40

    #@21
    if-eqz v6, :cond_2c

    #@23
    .line 3080
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@26
    move-result v8

    #@27
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v5

    #@2b
    goto :goto_30

    #@2c
    :cond_2c
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@2f
    move-result v5

    #@30
    :goto_30
    if-eqz v6, :cond_3b

    #@32
    .line 3081
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@35
    move-result v6

    #@36
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@39
    move-result v2

    #@3a
    goto :goto_3f

    #@3b
    :cond_3b
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@3e
    move-result v2

    #@3f
    :goto_3f
    move v6, v4

    #@40
    :cond_40
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_15

    #@43
    :cond_43
    sub-int/2addr v2, v5

    #@44
    return v2
.end method

.method public getTab()Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 2

    #@0
    .line 3113
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    #@0
    .line 2623
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 2624
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@5
    if-eqz v0, :cond_31

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_31

    #@d
    .line 2625
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    .line 2626
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string v1, ", "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@22
    .line 2627
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 2626
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    #@31
    .line 2629
    :cond_31
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@34
    move-result-object p1

    #@35
    const/4 v0, 0x0

    #@36
    const/4 v1, 0x1

    #@37
    .line 2630
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@39
    .line 2634
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@3c
    move-result v2

    #@3d
    const/4 v3, 0x1

    #@3e
    const/4 v4, 0x0

    #@3f
    .line 2637
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    #@42
    move-result v5

    #@43
    .line 2631
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@46
    move-result-object v0

    #@47
    .line 2630
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@4a
    .line 2638
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_59

    #@50
    const/4 v0, 0x0

    #@51
    .line 2639
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    #@54
    .line 2640
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@56
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    #@59
    .line 2642
    :cond_59
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v0

    #@5d
    sget v1, Lcom/google/android/material/R$string;->item_view_role_description:I

    #@5f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    #@66
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    #@0
    .line 2647
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v0

    #@4
    .line 2648
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v1

    #@8
    .line 2649
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@a
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    #@d
    move-result v2

    #@e
    if-lez v2, :cond_1e

    #@10
    if-eqz v1, :cond_14

    #@12
    if-le v0, v2, :cond_1e

    #@14
    .line 2657
    :cond_14
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@16
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    #@18
    const/high16 v0, -0x80000000

    #@1a
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1d
    move-result p1

    #@1e
    .line 2664
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@21
    .line 2667
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@23
    if-eqz v0, :cond_9a

    #@25
    .line 2668
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@27
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    #@29
    .line 2669
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    #@2b
    .line 2671
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@2d
    const/4 v3, 0x1

    #@2e
    if-eqz v2, :cond_38

    #@30
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    #@33
    move-result v2

    #@34
    if-nez v2, :cond_38

    #@36
    move v1, v3

    #@37
    goto :goto_46

    #@38
    .line 2674
    :cond_38
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@3a
    if-eqz v2, :cond_46

    #@3c
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    #@3f
    move-result v2

    #@40
    if-le v2, v3, :cond_46

    #@42
    .line 2676
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@44
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    #@46
    .line 2679
    :cond_46
    :goto_46
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@48
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    #@4b
    move-result v2

    #@4c
    .line 2680
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@4e
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    #@51
    move-result v4

    #@52
    .line 2681
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@54
    invoke-static {v5}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    #@57
    move-result v5

    #@58
    cmpl-float v2, v0, v2

    #@5a
    if-nez v2, :cond_60

    #@5c
    if-ltz v5, :cond_9a

    #@5e
    if-eq v1, v5, :cond_9a

    #@60
    .line 2687
    :cond_60
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@62
    iget v5, v5, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@64
    const/4 v6, 0x0

    #@65
    if-ne v5, v3, :cond_8b

    #@67
    if-lez v2, :cond_8b

    #@69
    if-ne v4, v3, :cond_8b

    #@6b
    .line 2693
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@6d
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@70
    move-result-object v2

    #@71
    if-eqz v2, :cond_8a

    #@73
    .line 2695
    invoke-direct {p0, v2, v6, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    #@76
    move-result v2

    #@77
    .line 2696
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getMeasuredWidth()I

    #@7a
    move-result v4

    #@7b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getPaddingLeft()I

    #@7e
    move-result v5

    #@7f
    sub-int/2addr v4, v5

    #@80
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getPaddingRight()I

    #@83
    move-result v5

    #@84
    sub-int/2addr v4, v5

    #@85
    int-to-float v4, v4

    #@86
    cmpl-float v2, v2, v4

    #@88
    if-lez v2, :cond_8b

    #@8a
    :cond_8a
    move v3, v6

    #@8b
    :cond_8b
    if-eqz v3, :cond_9a

    #@8d
    .line 2702
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@8f
    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    #@92
    .line 2703
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    #@97
    .line 2704
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@9a
    :cond_9a
    return-void
.end method

.method public performClick()Z
    .registers 3

    #@0
    .line 2584
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    #@3
    move-result v0

    #@4
    .line 2586
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@6
    if-eqz v1, :cond_14

    #@8
    if-nez v0, :cond_e

    #@a
    const/4 v0, 0x0

    #@b
    .line 2588
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->playSoundEffect(I)V

    #@e
    .line 2590
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@10
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    #@13
    const/4 v0, 0x1

    #@14
    :cond_14
    return v0
.end method

.method reset()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 2718
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@4
    const/4 v0, 0x0

    #@5
    .line 2719
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    #@8
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    #@0
    .line 2599
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 2601
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    #@c
    .line 2610
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 2611
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    #@13
    .line 2613
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@15
    if-eqz v0, :cond_1a

    #@17
    .line 2614
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    #@1a
    .line 2616
    :cond_1a
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@1c
    if-eqz v0, :cond_21

    #@1e
    .line 2617
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    #@21
    :cond_21
    return-void
.end method

.method setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 3

    #@0
    .line 2711
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 2712
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@6
    .line 2713
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    #@9
    :cond_9
    return-void
.end method

.method final update()V
    .registers 2

    #@0
    .line 2801
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTab()V

    #@3
    .line 2803
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@5
    if-eqz v0, :cond_f

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    #@13
    return-void
.end method

.method final updateOrientation()V
    .registers 4

    #@0
    .line 2965
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    iget-boolean v0, v0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@4
    const/4 v1, 0x1

    #@5
    xor-int/2addr v0, v1

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    #@9
    .line 2966
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    #@b
    if-nez v0, :cond_1a

    #@d
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    #@f
    if-eqz v2, :cond_12

    #@11
    goto :goto_1a

    #@12
    .line 2969
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@14
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@16
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    #@19
    goto :goto_20

    #@1a
    .line 2967
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    #@20
    :goto_20
    return-void
.end method

.method final updateTab()V
    .registers 6

    #@0
    .line 2723
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_a

    #@5
    .line 2724
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    #@8
    move-result-object v2

    #@9
    goto :goto_b

    #@a
    :cond_a
    move-object v2, v1

    #@b
    :goto_b
    if-eqz v2, :cond_64

    #@d
    .line 2726
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@10
    move-result-object v3

    #@11
    if-eq v3, p0, :cond_2e

    #@13
    if-eqz v3, :cond_1a

    #@15
    .line 2729
    check-cast v3, Landroid/view/ViewGroup;

    #@17
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1a
    .line 2731
    :cond_1a
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@1c
    if-eqz v3, :cond_2b

    #@1e
    .line 2732
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_2b

    #@24
    .line 2734
    check-cast v3, Landroid/view/ViewGroup;

    #@26
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@28
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@2b
    .line 2737
    :cond_2b
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;)V

    #@2e
    .line 2739
    :cond_2e
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@30
    .line 2740
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@32
    const/16 v4, 0x8

    #@34
    if-eqz v3, :cond_39

    #@36
    .line 2741
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    #@39
    .line 2743
    :cond_39
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@3b
    if-eqz v3, :cond_45

    #@3d
    .line 2744
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    #@40
    .line 2745
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@42
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@45
    :cond_45
    const v1, 0x1020014

    #@48
    .line 2748
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Landroid/widget/TextView;

    #@4e
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    #@50
    if-eqz v1, :cond_58

    #@52
    .line 2750
    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    #@55
    move-result v1

    #@56
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    #@58
    :cond_58
    const v1, 0x1020006

    #@5b
    .line 2752
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Landroid/widget/ImageView;

    #@61
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    #@63
    goto :goto_71

    #@64
    .line 2755
    :cond_64
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@66
    if-eqz v2, :cond_6d

    #@68
    .line 2756
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->removeView(Landroid/view/View;)V

    #@6b
    .line 2757
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@6d
    .line 2759
    :cond_6d
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    #@6f
    .line 2760
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    #@71
    .line 2763
    :goto_71
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    #@73
    if-nez v1, :cond_e1

    #@75
    .line 2765
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@77
    if-nez v1, :cond_7c

    #@79
    .line 2766
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->inflateAndAddDefaultIconView()V

    #@7c
    .line 2768
    :cond_7c
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@7e
    if-nez v1, :cond_8b

    #@80
    .line 2769
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->inflateAndAddDefaultTextView()V

    #@83
    .line 2770
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@85
    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    #@88
    move-result v1

    #@89
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    #@8b
    .line 2772
    :cond_8b
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@8d
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@8f
    # getter for: Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I
    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)I

    #@92
    move-result v2

    #@93
    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@96
    .line 2773
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_b1

    #@9c
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@9e
    # getter for: Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I
    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->access$1200(Lcom/google/android/material/tabs/TabLayout;)I

    #@a1
    move-result v1

    #@a2
    const/4 v2, -0x1

    #@a3
    if-eq v1, v2, :cond_b1

    #@a5
    .line 2774
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@a7
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@a9
    # getter for: Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I
    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout;->access$1200(Lcom/google/android/material/tabs/TabLayout;)I

    #@ac
    move-result v2

    #@ad
    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@b0
    goto :goto_bc

    #@b1
    .line 2776
    :cond_b1
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@b3
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@b5
    # getter for: Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I
    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout;->access$1300(Lcom/google/android/material/tabs/TabLayout;)I

    #@b8
    move-result v2

    #@b9
    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@bc
    .line 2778
    :goto_bc
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@be
    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@c0
    if-eqz v1, :cond_cb

    #@c2
    .line 2779
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@c4
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@c6
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@c8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@cb
    .line 2781
    :cond_cb
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@cd
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@cf
    const/4 v3, 0x1

    #@d0
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    #@d3
    .line 2783
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    #@d6
    .line 2784
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    #@d8
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    #@db
    .line 2785
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    #@dd
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    #@e0
    goto :goto_ef

    #@e1
    .line 2788
    :cond_e1
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    #@e3
    if-nez v1, :cond_e9

    #@e5
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    #@e7
    if-eqz v2, :cond_ef

    #@e9
    .line 2789
    :cond_e9
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    #@eb
    const/4 v3, 0x0

    #@ec
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    #@ef
    :cond_ef
    :goto_ef
    if-eqz v0, :cond_102

    #@f1
    .line 2793
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    #@f4
    move-result-object v1

    #@f5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f8
    move-result v1

    #@f9
    if-nez v1, :cond_102

    #@fb
    .line 2796
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    #@fe
    move-result-object v0

    #@ff
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@102
    :cond_102
    return-void
.end method
