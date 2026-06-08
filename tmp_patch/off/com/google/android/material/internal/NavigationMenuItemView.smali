.class public Lcom/google/android/material/internal/NavigationMenuItemView;
.super Lcom/google/android/material/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private actionArea:Landroid/widget/FrameLayout;

.field checkable:Z

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private hasIconTintList:Z

.field private iconSize:I

.field private iconTintList:Landroid/content/res/ColorStateList;

.field private itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private needsEmptyIcon:Z

.field private final textView:Landroid/widget/CheckedTextView;


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
    .line 56
    sput-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 88
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 76
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuItemView$1;

    #@5
    invoke-direct {p2, p0}, Lcom/google/android/material/internal/NavigationMenuItemView$1;-><init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V

    #@8
    iput-object p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    #@a
    const/4 p3, 0x0

    #@b
    .line 98
    invoke-virtual {p0, p3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setOrientation(I)V

    #@e
    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@11
    move-result-object p3

    #@12
    sget v0, Lcom/google/android/material/R$layout;->design_navigation_menu_item:I

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@18
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object p1

    #@1c
    sget p3, Lcom/google/android/material/R$dimen;->design_navigation_icon_size:I

    #@1e
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@21
    move-result p1

    #@22
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    #@25
    .line 101
    sget p1, Lcom/google/android/material/R$id;->design_menu_item_text:I

    #@27
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object p1

    #@2b
    check-cast p1, Landroid/widget/CheckedTextView;

    #@2d
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@2f
    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    #@32
    .line 103
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@35
    return-void
.end method

.method private adjustAppearance()V
    .registers 3

    #@0
    .line 137
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_20

    #@6
    .line 139
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@8
    const/16 v1, 0x8

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    #@d
    .line 140
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@f
    if-eqz v0, :cond_38

    #@11
    .line 141
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@17
    const/4 v1, -0x1

    #@18
    .line 142
    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@1a
    .line 143
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@1c
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1f
    goto :goto_38

    #@20
    .line 146
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    #@26
    .line 147
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@28
    if-eqz v0, :cond_38

    #@2a
    .line 148
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@30
    const/4 v1, -0x2

    #@31
    .line 149
    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@33
    .line 150
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@35
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@38
    :cond_38
    :goto_38
    return-void
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .registers 5

    #@0
    .line 176
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    .line 178
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@c
    move-result-object v1

    #@d
    sget v2, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    #@f
    const/4 v3, 0x1

    #@10
    .line 179
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_33

    #@16
    .line 180
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    #@18
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@1b
    .line 181
    sget-object v2, Lcom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    #@1d
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    #@1f
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@21
    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@24
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@27
    .line 182
    sget-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    #@29
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@2f
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@32
    return-object v1

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    return-object v0
.end method

.method private setActionView(Landroid/view/View;)V
    .registers 3

    #@0
    if-eqz p1, :cond_20

    #@2
    .line 164
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@4
    if-nez v0, :cond_16

    #@6
    .line 165
    sget v0, Lcom/google/android/material/R$id;->design_menu_item_action_area_stub:I

    #@8
    .line 167
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewStub;

    #@e
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/FrameLayout;

    #@14
    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@16
    .line 169
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@18
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@1b
    .line 170
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@1d
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@20
    :cond_20
    return-void
.end method

.method private shouldExpandActionArea()Z
    .registers 2

    #@0
    .line 131
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_1a

    #@8
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@a
    .line 132
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_1a

    #@10
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@12
    .line 133
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_1a

    #@18
    const/4 v0, 0x1

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    :goto_1b
    return v0
.end method


# virtual methods
.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2

    #@0
    .line 190
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .registers 3

    #@0
    .line 108
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    .line 109
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@5
    move-result p2

    #@6
    if-lez p2, :cond_f

    #@8
    .line 110
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@b
    move-result p2

    #@c
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setId(I)V

    #@f
    .line 113
    :cond_f
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    #@12
    move-result p2

    #@13
    if-eqz p2, :cond_17

    #@15
    const/4 p2, 0x0

    #@16
    goto :goto_19

    #@17
    :cond_17
    const/16 p2, 0x8

    #@19
    :goto_19
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setVisibility(I)V

    #@1c
    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object p2

    #@20
    if-nez p2, :cond_29

    #@22
    .line 116
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    #@25
    move-result-object p2

    #@26
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@29
    .line 119
    :cond_29
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    #@2c
    move-result p2

    #@2d
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setCheckable(Z)V

    #@30
    .line 120
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    #@33
    move-result p2

    #@34
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setChecked(Z)V

    #@37
    .line 121
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    #@3a
    move-result p2

    #@3b
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setEnabled(Z)V

    #@3e
    .line 122
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@41
    move-result-object p2

    #@42
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    #@45
    .line 123
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@48
    move-result-object p2

    #@49
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@4c
    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    #@4f
    move-result-object p2

    #@50
    invoke-direct {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    #@53
    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@56
    move-result-object p2

    #@57
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@5a
    .line 126
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    #@5d
    move-result-object p1

    #@5e
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@61
    .line 127
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->adjustAppearance()V

    #@64
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    #@0
    add-int/lit8 p1, p1, 0x1

    #@2
    .line 258
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    #@5
    move-result-object p1

    #@6
    .line 259
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@8
    if-eqz v0, :cond_1d

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1d

    #@10
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@12
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1d

    #@18
    .line 260
    sget-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    #@1a
    invoke-static {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    #@1d
    :cond_1d
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public recycle()V
    .registers 3

    #@0
    .line 156
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 157
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@7
    .line 159
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@d
    return-void
.end method

.method public setCheckable(Z)V
    .registers 4

    #@0
    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    #@3
    .line 201
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    #@5
    if-eq v0, p1, :cond_12

    #@7
    .line 202
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    #@9
    .line 203
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    #@b
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@d
    const/16 v1, 0x800

    #@f
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    #@12
    :cond_12
    return-void
.end method

.method public setChecked(Z)V
    .registers 4

    #@0
    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    #@3
    .line 211
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    #@8
    .line 213
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@a
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getTypeface()Landroid/graphics/Typeface;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1, p1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #@11
    return-void
.end method

.method public setHorizontalPadding(I)V
    .registers 4

    #@0
    .line 287
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getPaddingTop()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getPaddingBottom()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, p1, v0, p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setPadding(IIII)V

    #@b
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_25

    #@3
    .line 222
    iget-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->hasIconTintList:Z

    #@5
    if-eqz v1, :cond_1f

    #@7
    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_e

    #@d
    goto :goto_12

    #@e
    .line 224
    :cond_e
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object p1

    #@12
    :goto_12
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object p1

    #@16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object p1

    #@1a
    .line 225
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@1f
    .line 227
    :cond_1f
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    #@21
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@24
    goto :goto_4a

    #@25
    .line 228
    :cond_25
    iget-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    #@27
    if-eqz v1, :cond_4a

    #@29
    .line 229
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    if-nez p1, :cond_48

    #@2d
    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object p1

    #@31
    sget v1, Lcom/google/android/material/R$drawable;->navigation_empty_icon:I

    #@33
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3a
    move-result-object v2

    #@3b
    .line 231
    invoke-static {p1, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@3e
    move-result-object p1

    #@3f
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    #@41
    if-eqz p1, :cond_48

    #@43
    .line 234
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    #@45
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@48
    .line 237
    :cond_48
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    #@4a
    .line 239
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@4c
    const/4 v1, 0x0

    #@4d
    invoke-static {v0, p1, v1, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@50
    return-void
.end method

.method public setIconPadding(I)V
    .registers 3

    #@0
    .line 291
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    #@5
    return-void
.end method

.method public setIconSize(I)V
    .registers 2

    #@0
    .line 243
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    #@2
    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 266
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    #@2
    if-eqz p1, :cond_6

    #@4
    const/4 p1, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p1, 0x0

    #@7
    .line 267
    :goto_7
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->hasIconTintList:Z

    #@9
    .line 268
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@b
    if-eqz p1, :cond_14

    #@d
    .line 270
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@14
    :cond_14
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3

    #@0
    .line 295
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    #@5
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .registers 2

    #@0
    .line 283
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    #@2
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    #@0
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3

    #@0
    .line 275
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@2
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@5
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 279
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 195
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
