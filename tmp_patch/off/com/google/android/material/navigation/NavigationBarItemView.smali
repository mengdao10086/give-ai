.class public abstract Lcom/google/android/material/navigation/NavigationBarItemView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;,
        Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;
    }
.end annotation


# static fields
.field private static final ACTIVE_INDICATOR_LABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

.field private static final ACTIVE_INDICATOR_UNLABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

.field private static final CHECKED_STATE_SET:[I

.field private static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private activeIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private activeIndicatorDesiredHeight:I

.field private activeIndicatorDesiredWidth:I

.field private activeIndicatorEnabled:Z

.field private activeIndicatorMarginHorizontal:I

.field private activeIndicatorProgress:F

.field private activeIndicatorResizeable:Z

.field private activeIndicatorTransform:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

.field private final activeIndicatorView:Landroid/view/View;

.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field private final icon:Landroid/widget/ImageView;

.field private final iconContainer:Landroid/widget/FrameLayout;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private initialized:Z

.field private isShifting:Z

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private itemPaddingBottom:I

.field private itemPaddingTop:I

.field private itemPosition:I

.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private final labelGroup:Landroid/view/ViewGroup;

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private originalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;

.field private wrappedIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x10100a0

    #@7
    aput v2, v0, v1

    #@9
    .line 83
    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    #@b
    .line 111
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView$1;)V

    #@11
    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->ACTIVE_INDICATOR_LABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@13
    .line 113
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;

    #@15
    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView$1;)V

    #@18
    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->ACTIVE_INDICATOR_UNLABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@1a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    #@0
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 85
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->initialized:Z

    #@6
    const/4 v1, -0x1

    #@7
    .line 103
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPosition:I

    #@9
    .line 117
    sget-object v1, Lcom/google/android/material/navigation/NavigationBarItemView;->ACTIVE_INDICATOR_LABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@b
    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorTransform:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@d
    const/4 v1, 0x0

    #@e
    .line 118
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorProgress:F

    #@10
    .line 119
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    #@12
    .line 123
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    #@14
    .line 124
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    #@16
    .line 125
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    #@18
    .line 129
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    #@1a
    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemLayoutResId()I

    #@21
    move-result v0

    #@22
    const/4 v1, 0x1

    #@23
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@26
    .line 137
    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_container:I

    #@28
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object p1

    #@2c
    check-cast p1, Landroid/widget/FrameLayout;

    #@2e
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    #@30
    .line 138
    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_active_indicator_view:I

    #@32
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->findViewById(I)Landroid/view/View;

    #@35
    move-result-object p1

    #@36
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@38
    .line 139
    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_view:I

    #@3a
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->findViewById(I)Landroid/view/View;

    #@3d
    move-result-object p1

    #@3e
    check-cast p1, Landroid/widget/ImageView;

    #@40
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@42
    .line 140
    sget v0, Lcom/google/android/material/R$id;->navigation_bar_item_labels_group:I

    #@44
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->findViewById(I)Landroid/view/View;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/view/ViewGroup;

    #@4a
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@4c
    .line 141
    sget v2, Lcom/google/android/material/R$id;->navigation_bar_item_small_label_view:I

    #@4e
    invoke-virtual {p0, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->findViewById(I)Landroid/view/View;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/widget/TextView;

    #@54
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@56
    .line 142
    sget v3, Lcom/google/android/material/R$id;->navigation_bar_item_large_label_view:I

    #@58
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->findViewById(I)Landroid/view/View;

    #@5b
    move-result-object v3

    #@5c
    check-cast v3, Landroid/widget/TextView;

    #@5e
    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@60
    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemBackgroundResId()I

    #@63
    move-result v4

    #@64
    invoke-virtual {p0, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBackgroundResource(I)V

    #@67
    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getResources()Landroid/content/res/Resources;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemDefaultMarginResId()I

    #@6e
    move-result v5

    #@6f
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@72
    move-result v4

    #@73
    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@75
    .line 147
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    #@78
    move-result v0

    #@79
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    #@7b
    const/4 v0, 0x2

    #@7c
    .line 151
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@7f
    .line 152
    invoke-static {v3, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@82
    .line 153
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setFocusable(Z)V

    #@85
    .line 154
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    #@88
    move-result v0

    #@89
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    #@8c
    move-result v1

    #@8d
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->calculateTextScaleFactors(FF)V

    #@90
    if-eqz p1, :cond_9a

    #@92
    .line 158
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarItemView$1;

    #@94
    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationBarItemView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    #@97
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@9a
    :cond_9a
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/navigation/NavigationBarItemView;)Landroid/widget/ImageView;
    .registers 1

    #@0
    .line 81
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/navigation/NavigationBarItemView;Landroid/view/View;)V
    .registers 2

    #@0
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->tryUpdateBadgeBounds(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/navigation/NavigationBarItemView;I)V
    .registers 2

    #@0
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/navigation/NavigationBarItemView;FF)V
    .registers 3

    #@0
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorProgress(FF)V

    #@3
    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .registers 5

    #@0
    sub-float v0, p1, p2

    #@2
    .line 669
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->shiftAmount:F

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    mul-float v1, p2, v0

    #@8
    div-float/2addr v1, p1

    #@9
    .line 670
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->scaleUpFactor:F

    #@b
    mul-float/2addr p1, v0

    #@c
    div-float/2addr p1, p2

    #@d
    .line 671
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->scaleDownFactor:F

    #@f
    return-void
.end method

.method private static createItemBackgroundCompat(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 745
    invoke-static {p0}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p0

    #@4
    .line 748
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@a
    return-object v0
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .registers 4

    #@0
    .line 956
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@2
    const/4 v1, 0x0

    #@3
    if-ne p1, v0, :cond_12

    #@5
    .line 957
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@7
    if-eqz p1, :cond_12

    #@9
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object p1

    #@f
    move-object v1, p1

    #@10
    check-cast v1, Landroid/widget/FrameLayout;

    #@12
    :cond_12
    return-object v1
.end method

.method private getIconOrContainer()Landroid/view/View;
    .registers 2

    #@0
    .line 246
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@7
    :goto_7
    return-object v0
.end method

.method private getItemVisiblePosition()I
    .registers 7

    #@0
    .line 525
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup;

    #@6
    .line 526
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    :goto_c
    if-ge v2, v1, :cond_21

    #@e
    .line 529
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v4

    #@12
    .line 530
    instance-of v5, v4, Lcom/google/android/material/navigation/NavigationBarItemView;

    #@14
    if-eqz v5, :cond_1e

    #@16
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1e

    #@1c
    add-int/lit8 v3, v3, 0x1

    #@1e
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_c

    #@21
    :cond_21
    return v3
.end method

.method private getSuggestedIconHeight()I
    .registers 4

    #@0
    .line 979
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 980
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getMinimumHeight()I

    #@7
    move-result v0

    #@8
    div-int/lit8 v0, v0, 0x2

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    .line 986
    :goto_c
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@16
    .line 987
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v1

    #@1c
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@1e
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    #@21
    move-result v2

    #@22
    add-int/2addr v1, v2

    #@23
    add-int/2addr v1, v0

    #@24
    return v1
.end method

.method private getSuggestedIconWidth()I
    .registers 5

    #@0
    .line 965
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_11

    #@6
    .line 967
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getMinimumWidth()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@c
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeDrawable;->getHorizontalOffset()I

    #@f
    move-result v1

    #@10
    sub-int/2addr v0, v1

    #@11
    .line 971
    :goto_11
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@1b
    .line 972
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@1d
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v2

    #@21
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@23
    .line 973
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    #@26
    move-result v3

    #@27
    add-int/2addr v2, v3

    #@28
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@2a
    .line 974
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v0

    #@2e
    add-int/2addr v2, v0

    #@2f
    return v2
.end method

.method private hasBadge()Z
    .registers 2

    #@0
    .line 915
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

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

.method private isActiveIndicatorResizeableAndUnlabeled()Z
    .registers 3

    #@0
    .line 829
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method private maybeAnimateActiveIndicatorToProgress(F)V
    .registers 6

    #@0
    .line 349
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    #@2
    if-eqz v0, :cond_63

    #@4
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->initialized:Z

    #@6
    if-eqz v0, :cond_63

    #@8
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_63

    #@f
    .line 354
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorAnimator:Landroid/animation/ValueAnimator;

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 355
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@16
    const/4 v0, 0x0

    #@17
    .line 356
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorAnimator:Landroid/animation/ValueAnimator;

    #@19
    :cond_19
    const/4 v0, 0x2

    #@1a
    new-array v0, v0, [F

    #@1c
    const/4 v1, 0x0

    #@1d
    .line 358
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorProgress:F

    #@1f
    aput v2, v0, v1

    #@21
    const/4 v1, 0x1

    #@22
    aput p1, v0, v1

    #@24
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorAnimator:Landroid/animation/ValueAnimator;

    #@2a
    .line 359
    new-instance v1, Lcom/google/android/material/navigation/NavigationBarItemView$3;

    #@2c
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView$3;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;F)V

    #@2f
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@32
    .line 367
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorAnimator:Landroid/animation/ValueAnimator;

    #@34
    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getContext()Landroid/content/Context;

    #@37
    move-result-object v0

    #@38
    sget v1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@3a
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3c
    .line 368
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@3f
    move-result-object v0

    #@40
    .line 367
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@43
    .line 372
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorAnimator:Landroid/animation/ValueAnimator;

    #@45
    .line 374
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getContext()Landroid/content/Context;

    #@48
    move-result-object v0

    #@49
    sget v1, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    #@4b
    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getResources()Landroid/content/res/Resources;

    #@4e
    move-result-object v2

    #@4f
    sget v3, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    #@51
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@54
    move-result v2

    #@55
    .line 373
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@58
    move-result v0

    #@59
    int-to-long v0, v0

    #@5a
    .line 372
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@5d
    .line 377
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorAnimator:Landroid/animation/ValueAnimator;

    #@5f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@62
    return-void

    #@63
    .line 350
    :cond_63
    :goto_63
    invoke-direct {p0, p1, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorProgress(FF)V

    #@66
    return-void
.end method

.method private refreshChecked()V
    .registers 2

    #@0
    .line 387
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 388
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    #@b
    :cond_b
    return-void
.end method

.method private refreshItemBackground()V
    .registers 6

    #@0
    .line 702
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    #@2
    .line 705
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemRippleColor:Landroid/content/res/ColorStateList;

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    if-eqz v1, :cond_33

    #@8
    .line 706
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v1

    #@c
    .line 707
    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    #@e
    if-eqz v4, :cond_2b

    #@10
    .line 709
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v4

    #@14
    if-eqz v4, :cond_2b

    #@16
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    #@18
    if-eqz v4, :cond_2b

    #@1a
    if-eqz v1, :cond_2b

    #@1c
    .line 718
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    #@1e
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemRippleColor:Landroid/content/res/ColorStateList;

    #@20
    .line 720
    invoke-static {v4}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4, v2, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@27
    const/4 v1, 0x0

    #@28
    move-object v2, v3

    #@29
    move v3, v1

    #@2a
    goto :goto_33

    #@2b
    :cond_2b
    if-nez v0, :cond_33

    #@2d
    .line 724
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemRippleColor:Landroid/content/res/ColorStateList;

    #@2f
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->createItemBackgroundCompat(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    #@32
    move-result-object v0

    #@33
    .line 729
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    #@35
    if-eqz v1, :cond_3a

    #@37
    .line 730
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@3a
    .line 732
    :cond_3a
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@3d
    .line 734
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setDefaultFocusHighlightEnabled(Z)V

    #@40
    return-void
.end method

.method private setActiveIndicatorProgress(FF)V
    .registers 5

    #@0
    .line 338
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 339
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorTransform:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@6
    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->updateForProgress(FFLandroid/view/View;)V

    #@9
    .line 341
    :cond_9
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorProgress:F

    #@b
    return-void
.end method

.method private static setTextAppearanceWithoutFontScaling(Landroid/widget/TextView;I)V
    .registers 4

    #@0
    .line 653
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@3
    .line 655
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getUnscaledTextSize(Landroid/content/Context;II)I

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_12

    #@e
    int-to-float p1, p1

    #@f
    .line 657
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    #@12
    :cond_12
    return-void
.end method

.method private static setViewScaleValues(Landroid/view/View;FFI)V
    .registers 4

    #@0
    .line 549
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    #@3
    .line 550
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    #@6
    .line 551
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    #@9
    return-void
.end method

.method private static setViewTopMarginAndGravity(Landroid/view/View;II)V
    .registers 4

    #@0
    .line 538
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@6
    .line 539
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@8
    .line 542
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@a
    .line 543
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@c
    .line 544
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@f
    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .registers 4

    #@0
    .line 927
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->hasBadge()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    if-eqz p1, :cond_19

    #@9
    const/4 v0, 0x0

    #@a
    .line 932
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setClipChildren(Z)V

    #@d
    .line 933
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setClipToPadding(Z)V

    #@10
    .line 935
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@12
    .line 936
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    #@15
    move-result-object v1

    #@16
    .line 935
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@19
    :cond_19
    return-void
.end method

.method private tryRemoveBadgeFromAnchor(Landroid/view/View;)V
    .registers 3

    #@0
    .line 941
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->hasBadge()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    if-eqz p1, :cond_15

    #@9
    const/4 v0, 0x1

    #@a
    .line 946
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setClipChildren(Z)V

    #@d
    .line 947
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setClipToPadding(Z)V

    #@10
    .line 949
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@12
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    .line 951
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@18
    return-void
.end method

.method private tryUpdateBadgeBounds(Landroid/view/View;)V
    .registers 4

    #@0
    .line 919
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->hasBadge()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 922
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@9
    .line 923
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    #@c
    move-result-object v1

    #@d
    .line 922
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@10
    return-void
.end method

.method private updateActiveIndicatorLayoutParams(I)V
    .registers 4

    #@0
    .line 813
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 817
    :cond_5
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    #@7
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    #@9
    mul-int/lit8 v1, v1, 0x2

    #@b
    sub-int/2addr p1, v1

    #@c
    .line 818
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p1

    #@10
    .line 820
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@18
    .line 823
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->isActiveIndicatorResizeableAndUnlabeled()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_20

    #@1e
    move v1, p1

    #@1f
    goto :goto_22

    #@20
    :cond_20
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    #@22
    :goto_22
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@24
    .line 824
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@26
    .line 825
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@28
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2b
    return-void
.end method

.method private updateActiveIndicatorTransform()V
    .registers 2

    #@0
    .line 320
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->isActiveIndicatorResizeableAndUnlabeled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 321
    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->ACTIVE_INDICATOR_UNLABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@8
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorTransform:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@a
    goto :goto_f

    #@b
    .line 323
    :cond_b
    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->ACTIVE_INDICATOR_LABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@d
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorTransform:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    #@f
    :goto_f
    return-void
.end method

.method private static updateViewPaddingBottom(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@b
    move-result v2

    #@c
    .line 555
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    #@f
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    #@0
    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->removeBadge()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 233
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@6
    const/4 v0, 0x0

    #@7
    .line 234
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorProgress:F

    #@9
    const/4 v0, 0x0

    #@a
    .line 235
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->initialized:Z

    #@c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    .line 880
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-boolean v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 881
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    .line 883
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@e
    move-result p1

    #@f
    return p1
.end method

.method public getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 860
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 864
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    #@0
    .line 907
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    return-object v0
.end method

.method protected getItemBackgroundResId()I
    .registers 2

    #@0
    .line 997
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_navigation_bar_item_background:I

    #@2
    return v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2

    #@0
    .line 276
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method protected getItemDefaultMarginResId()I
    .registers 2

    #@0
    .line 1007
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_bar_item_default_margin:I

    #@2
    return v0
.end method

.method protected abstract getItemLayoutResId()I
.end method

.method public getItemPosition()I
    .registers 2

    #@0
    .line 254
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPosition:I

    #@2
    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    #@0
    .line 190
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@8
    .line 191
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getSuggestedIconHeight()I

    #@b
    move-result v1

    #@c
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@e
    add-int/2addr v1, v2

    #@f
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@11
    .line 193
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    #@14
    move-result v2

    #@15
    add-int/2addr v1, v2

    #@16
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@18
    add-int/2addr v1, v0

    #@19
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    #@0
    .line 181
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@8
    .line 182
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@a
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@c
    .line 183
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    #@f
    move-result v2

    #@10
    add-int/2addr v1, v2

    #@11
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@13
    add-int/2addr v1, v0

    #@14
    .line 185
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getSuggestedIconWidth()I

    #@17
    move-result v0

    #@18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .registers 3

    #@0
    .line 199
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    .line 200
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    #@5
    move-result p2

    #@6
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setCheckable(Z)V

    #@9
    .line 201
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    #@c
    move-result p2

    #@d
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    #@10
    .line 202
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    #@13
    move-result p2

    #@14
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setEnabled(Z)V

    #@17
    .line 203
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object p2

    #@1b
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@1e
    .line 204
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@21
    move-result-object p2

    #@22
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    #@25
    .line 205
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@28
    move-result p2

    #@29
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setId(I)V

    #@2c
    .line 206
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@2f
    move-result-object p2

    #@30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result p2

    #@34
    if-nez p2, :cond_3d

    #@36
    .line 207
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@39
    move-result-object p2

    #@3a
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@3d
    .line 211
    :cond_3d
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    #@40
    move-result-object p2

    #@41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@44
    move-result p2

    #@45
    if-nez p2, :cond_4c

    #@47
    .line 212
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    #@4a
    move-result-object p2

    #@4b
    goto :goto_50

    #@4c
    .line 213
    :cond_4c
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@4f
    move-result-object p2

    #@50
    .line 217
    :goto_50
    invoke-static {p0, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@53
    .line 219
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    #@56
    move-result p1

    #@57
    if-eqz p1, :cond_5b

    #@59
    const/4 p1, 0x0

    #@5a
    goto :goto_5d

    #@5b
    :cond_5b
    const/16 p1, 0x8

    #@5d
    :goto_5d
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setVisibility(I)V

    #@60
    const/4 p1, 0x1

    #@61
    .line 220
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->initialized:Z

    #@63
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    #@0
    add-int/lit8 p1, p1, 0x1

    #@2
    .line 577
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    #@5
    move-result-object p1

    #@6
    .line 578
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@8
    if-eqz v0, :cond_1d

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1d

    #@10
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@12
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1d

    #@18
    .line 579
    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    #@1a
    invoke-static {p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->mergeDrawableStates([I[I)[I

    #@1d
    :cond_1d
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    #@0
    .line 493
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 494
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@5
    if-eqz v0, :cond_45

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_45

    #@d
    .line 495
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@f
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    .line 496
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@15
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@18
    move-result-object v1

    #@19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_25

    #@1f
    .line 497
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@21
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@24
    move-result-object v0

    #@25
    .line 499
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string v1, ", "

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@36
    .line 500
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 499
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    #@45
    .line 502
    :cond_45
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@48
    move-result-object p1

    #@49
    const/4 v0, 0x0

    #@4a
    const/4 v1, 0x1

    #@4b
    .line 507
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemVisiblePosition()I

    #@4e
    move-result v2

    #@4f
    const/4 v3, 0x1

    #@50
    const/4 v4, 0x0

    #@51
    .line 510
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->isSelected()Z

    #@54
    move-result v5

    #@55
    .line 504
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@58
    move-result-object v0

    #@59
    .line 503
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@5c
    .line 511
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->isSelected()Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_6b

    #@62
    const/4 v0, 0x0

    #@63
    .line 512
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    #@66
    .line 513
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@68
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    #@6b
    .line 515
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getResources()Landroid/content/res/Resources;

    #@6e
    move-result-object v0

    #@6f
    sget v1, Lcom/google/android/material/R$string;->item_view_role_description:I

    #@71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    #@78
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    #@3
    .line 310
    new-instance p2, Lcom/google/android/material/navigation/NavigationBarItemView$2;

    #@5
    invoke-direct {p2, p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView$2;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;I)V

    #@8
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->post(Ljava/lang/Runnable;)Z

    #@b
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method removeBadge()V
    .registers 2

    #@0
    .line 911
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->tryRemoveBadgeFromAnchor(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 869
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 873
    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 874
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    #@b
    return-void
.end method

.method public setActiveIndicatorEnabled(Z)V
    .registers 3

    #@0
    .line 782
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    #@2
    .line 783
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    #@5
    .line 784
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    #@7
    if-eqz v0, :cond_15

    #@9
    if-eqz p1, :cond_d

    #@b
    const/4 p1, 0x0

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/16 p1, 0x8

    #@f
    .line 785
    :goto_f
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    #@12
    .line 786
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->requestLayout()V

    #@15
    :cond_15
    return-void
.end method

.method public setActiveIndicatorHeight(I)V
    .registers 2

    #@0
    .line 841
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    #@2
    .line 842
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getWidth()I

    #@5
    move-result p1

    #@6
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    #@9
    return-void
.end method

.method public setActiveIndicatorMarginHorizontal(I)V
    .registers 2

    #@0
    .line 853
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    #@2
    .line 854
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getWidth()I

    #@5
    move-result p1

    #@6
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    #@9
    return-void
.end method

.method public setActiveIndicatorResizeable(Z)V
    .registers 2

    #@0
    .line 888
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    #@2
    return-void
.end method

.method public setActiveIndicatorWidth(I)V
    .registers 2

    #@0
    .line 800
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    #@2
    .line 801
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getWidth()I

    #@5
    move-result p1

    #@6
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    #@9
    return-void
.end method

.method setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V
    .registers 4

    #@0
    .line 892
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 895
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->hasBadge()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1b

    #@b
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@d
    if-eqz v0, :cond_1b

    #@f
    const-string v0, "NavigationBar"

    #@11
    const-string v1, "Multiple badges shouldn\'t be attached to one item."

    #@13
    .line 896
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 897
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@18
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->tryRemoveBadgeFromAnchor(Landroid/view/View;)V

    #@1b
    .line 899
    :cond_1b
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    #@1d
    .line 900
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@1f
    if-eqz p1, :cond_24

    #@21
    .line 901
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    #@24
    :cond_24
    return-void
.end method

.method public setCheckable(Z)V
    .registers 2

    #@0
    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshDrawableState()V

    #@3
    return-void
.end method

.method public setChecked(Z)V
    .registers 10

    #@0
    .line 394
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x2

    #@7
    div-int/2addr v1, v2

    #@8
    int-to-float v1, v1

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    #@c
    .line 395
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@e
    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    #@11
    move-result v1

    #@12
    int-to-float v1, v1

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    #@16
    .line 396
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@18
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    #@1b
    move-result v1

    #@1c
    div-int/2addr v1, v2

    #@1d
    int-to-float v1, v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    #@21
    .line 397
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@23
    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    #@26
    move-result v1

    #@27
    int-to-float v1, v1

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    #@2b
    const/high16 v0, 0x3f800000    # 1.0f

    #@2d
    if-eqz p1, :cond_31

    #@2f
    move v1, v0

    #@30
    goto :goto_32

    #@31
    :cond_31
    const/4 v1, 0x0

    #@32
    .line 400
    :goto_32
    invoke-direct {p0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->maybeAnimateActiveIndicatorToProgress(F)V

    #@35
    .line 402
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    #@37
    const/4 v3, -0x1

    #@38
    const/16 v4, 0x11

    #@3a
    const/16 v5, 0x31

    #@3c
    const/4 v6, 0x4

    #@3d
    const/4 v7, 0x0

    #@3e
    if-eq v1, v3, :cond_cd

    #@40
    if-eqz v1, :cond_9c

    #@42
    const/4 v3, 0x1

    #@43
    if-eq v1, v3, :cond_60

    #@45
    if-eq v1, v2, :cond_49

    #@47
    goto/16 :goto_13b

    #@49
    .line 475
    :cond_49
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@4c
    move-result-object v0

    #@4d
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@4f
    invoke-static {v0, v1, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@52
    .line 476
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@54
    const/16 v1, 0x8

    #@56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@59
    .line 477
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@5b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@5e
    goto/16 :goto_13b

    #@60
    .line 455
    :cond_60
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@62
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    #@64
    invoke-static {v1, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateViewPaddingBottom(Landroid/view/View;I)V

    #@67
    if-eqz p1, :cond_85

    #@69
    .line 459
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@6c
    move-result-object v1

    #@6d
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@6f
    int-to-float v2, v2

    #@70
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->shiftAmount:F

    #@72
    add-float/2addr v2, v3

    #@73
    float-to-int v2, v2

    #@74
    .line 458
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@77
    .line 462
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@79
    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@7c
    .line 463
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@7e
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->scaleUpFactor:F

    #@80
    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@83
    goto/16 :goto_13b

    #@85
    .line 467
    :cond_85
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@88
    move-result-object v1

    #@89
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@8b
    .line 466
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@8e
    .line 468
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@90
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->scaleDownFactor:F

    #@92
    invoke-static {v1, v2, v2, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@95
    .line 469
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@97
    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@9a
    goto/16 :goto_13b

    #@9c
    :cond_9c
    if-eqz p1, :cond_b4

    #@9e
    .line 442
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@a1
    move-result-object v0

    #@a2
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@a4
    .line 441
    invoke-static {v0, v1, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@a7
    .line 443
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@a9
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    #@ab
    invoke-static {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateViewPaddingBottom(Landroid/view/View;I)V

    #@ae
    .line 444
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@b0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@b3
    goto :goto_c7

    #@b4
    .line 447
    :cond_b4
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@b7
    move-result-object v0

    #@b8
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@ba
    invoke-static {v0, v1, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@bd
    .line 448
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@bf
    invoke-static {v0, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateViewPaddingBottom(Landroid/view/View;I)V

    #@c2
    .line 449
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@c4
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@c7
    .line 451
    :goto_c7
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@c9
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@cc
    goto :goto_13b

    #@cd
    .line 404
    :cond_cd
    iget-boolean v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    #@cf
    if-eqz v1, :cond_102

    #@d1
    if-eqz p1, :cond_e9

    #@d3
    .line 408
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@d6
    move-result-object v0

    #@d7
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@d9
    .line 407
    invoke-static {v0, v1, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@dc
    .line 409
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@de
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    #@e0
    invoke-static {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateViewPaddingBottom(Landroid/view/View;I)V

    #@e3
    .line 410
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@e5
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@e8
    goto :goto_fc

    #@e9
    .line 413
    :cond_e9
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@ec
    move-result-object v0

    #@ed
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@ef
    invoke-static {v0, v1, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@f2
    .line 414
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@f4
    invoke-static {v0, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateViewPaddingBottom(Landroid/view/View;I)V

    #@f7
    .line 415
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@f9
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@fc
    .line 417
    :goto_fc
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@fe
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@101
    goto :goto_13b

    #@102
    .line 419
    :cond_102
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    #@104
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    #@106
    invoke-static {v1, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateViewPaddingBottom(Landroid/view/View;I)V

    #@109
    if-eqz p1, :cond_126

    #@10b
    .line 423
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@10e
    move-result-object v1

    #@10f
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@111
    int-to-float v2, v2

    #@112
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->shiftAmount:F

    #@114
    add-float/2addr v2, v3

    #@115
    float-to-int v2, v2

    #@116
    .line 422
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@119
    .line 426
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@11b
    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@11e
    .line 427
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@120
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->scaleUpFactor:F

    #@122
    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@125
    goto :goto_13b

    #@126
    .line 431
    :cond_126
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    #@129
    move-result-object v1

    #@12a
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@12c
    .line 430
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewTopMarginAndGravity(Landroid/view/View;II)V

    #@12f
    .line 432
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@131
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->scaleDownFactor:F

    #@133
    invoke-static {v1, v2, v2, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@136
    .line 433
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@138
    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->setViewScaleValues(Landroid/view/View;FFI)V

    #@13b
    .line 484
    :goto_13b
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshDrawableState()V

    #@13e
    .line 488
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setSelected(Z)V

    #@141
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    #@0
    .line 561
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@3
    .line 562
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@8
    .line 563
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@d
    .line 564
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    #@12
    if-eqz p1, :cond_22

    #@14
    .line 568
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getContext()Landroid/content/Context;

    #@17
    move-result-object p1

    #@18
    const/16 v0, 0x3ea

    #@1a
    invoke-static {p1, v0}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    #@1d
    move-result-object p1

    #@1e
    .line 567
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    #@21
    goto :goto_26

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    .line 570
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    #@26
    :goto_26
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 589
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 594
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz p1, :cond_25

    #@9
    .line 596
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_10

    #@f
    goto :goto_14

    #@10
    .line 598
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p1

    #@14
    :goto_14
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object p1

    #@1c
    .line 599
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    .line 600
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    #@20
    if-eqz v0, :cond_25

    #@22
    .line 601
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@25
    .line 604
    :cond_25
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2a
    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    #@0
    .line 626
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@8
    .line 627
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@a
    .line 628
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@c
    .line 629
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    #@e
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 618
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    #@2
    .line 619
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_12

    #@a
    .line 620
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@d
    .line 621
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@12
    :cond_12
    return-void
.end method

.method public setItemBackground(I)V
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    goto :goto_c

    #@4
    .line 676
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    .line 677
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    if-eqz p1, :cond_14

    #@2
    .line 681
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 682
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p1

    #@14
    .line 684
    :cond_14
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    #@16
    .line 685
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    #@19
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 3

    #@0
    .line 774
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 775
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    #@6
    .line 776
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    #@9
    :cond_9
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 3

    #@0
    .line 766
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 767
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    #@6
    .line 768
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    #@9
    :cond_9
    return-void
.end method

.method public setItemPosition(I)V
    .registers 2

    #@0
    .line 250
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPosition:I

    #@2
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 689
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemRippleColor:Landroid/content/res/ColorStateList;

    #@2
    .line 690
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    #@5
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    #@0
    .line 265
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    #@2
    if-eq v0, p1, :cond_13

    #@4
    .line 266
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    #@6
    .line 267
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorTransform()V

    #@9
    .line 268
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getWidth()I

    #@c
    move-result p1

    #@d
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    #@10
    .line 269
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    #@13
    :cond_13
    return-void
.end method

.method public setShifting(Z)V
    .registers 3

    #@0
    .line 258
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 259
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    #@6
    .line 260
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    #@9
    :cond_9
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    #@0
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .registers 4

    #@0
    .line 638
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceWithoutFontScaling(Landroid/widget/TextView;I)V

    #@5
    .line 639
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@7
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    #@a
    move-result p1

    #@b
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@d
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    #@10
    move-result v0

    #@11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->calculateTextScaleFactors(FF)V

    #@14
    .line 641
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@16
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    #@19
    move-result-object v0

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #@1e
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .registers 3

    #@0
    .line 633
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceWithoutFontScaling(Landroid/widget/TextView;I)V

    #@5
    .line 634
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@7
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    #@a
    move-result p1

    #@b
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@d
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    #@10
    move-result v0

    #@11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->calculateTextScaleFactors(FF)V

    #@14
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    if-eqz p1, :cond_c

    #@2
    .line 663
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@7
    .line 664
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@c
    :cond_c
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 281
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 282
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a
    .line 283
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@c
    if-eqz v0, :cond_18

    #@e
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1b

    #@18
    .line 284
    :cond_18
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1b
    .line 288
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1d
    if-eqz v0, :cond_30

    #@1f
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2a

    #@29
    goto :goto_30

    #@2a
    .line 290
    :cond_2a
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2c
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    #@2f
    move-result-object p1

    #@30
    .line 293
    :cond_30
    :goto_30
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@33
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
