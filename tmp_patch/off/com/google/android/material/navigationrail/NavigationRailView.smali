.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "NavigationRailView.java"


# static fields
.field private static final DEFAULT_HEADER_GRAVITY:I = 0x31

.field static final DEFAULT_MENU_GRAVITY:I = 0x31

.field static final MAX_ITEM_COUNT:I = 0x7

.field static final NO_ITEM_MINIMUM_HEIGHT:I = -0x1


# instance fields
.field private headerView:Landroid/view/View;

.field private paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

.field private paddingTopSystemWindowInsets:Ljava/lang/Boolean;

.field private final topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 110
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 114
    sget v0, Lcom/google/android/material/R$attr;->navigationRailStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 119
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_NavigationRailView:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    #@0
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 106
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    #@6
    .line 107
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    #@8
    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object p1

    #@c
    .line 127
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_margin:I

    #@e
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@11
    move-result p1

    #@12
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    #@14
    .line 130
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    .line 133
    sget-object v2, Lcom/google/android/material/R$styleable;->NavigationRailView:[I

    #@1a
    const/4 p1, 0x0

    #@1b
    new-array v5, p1, [I

    #@1d
    move-object v1, p2

    #@1e
    move v3, p3

    #@1f
    move v4, p4

    #@20
    .line 134
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    #@23
    move-result-object p2

    #@24
    .line 137
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_headerLayout:I

    #@26
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@29
    move-result p3

    #@2a
    if-eqz p3, :cond_2f

    #@2c
    .line 139
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(I)V

    #@2f
    .line 142
    :cond_2f
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_menuGravity:I

    #@31
    const/16 p4, 0x31

    #@33
    .line 143
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@36
    move-result p3

    #@37
    .line 142
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    #@3a
    .line 145
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    #@3c
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@3f
    move-result p3

    #@40
    if-eqz p3, :cond_4c

    #@42
    .line 146
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    #@44
    const/4 p4, -0x1

    #@45
    .line 147
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@48
    move-result p3

    #@49
    .line 146
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemMinimumHeight(I)V

    #@4c
    .line 151
    :cond_4c
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingTopSystemWindowInsets:I

    #@4e
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@51
    move-result p3

    #@52
    if-eqz p3, :cond_60

    #@54
    .line 152
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingTopSystemWindowInsets:I

    #@56
    .line 153
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@59
    move-result p3

    #@5a
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5d
    move-result-object p3

    #@5e
    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    #@60
    .line 156
    :cond_60
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingBottomSystemWindowInsets:I

    #@62
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@65
    move-result p3

    #@66
    if-eqz p3, :cond_74

    #@68
    .line 157
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingBottomSystemWindowInsets:I

    #@6a
    .line 158
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@6d
    move-result p1

    #@6e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@71
    move-result-object p1

    #@72
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    #@74
    .line 162
    :cond_74
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@77
    .line 164
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->applyWindowInsets()V

    #@7a
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .registers 1

    #@0
    .line 97
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z
    .registers 2

    #@0
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .registers 1

    #@0
    .line 97
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    #@2
    return-object p0
.end method

.method private applyWindowInsets()V
    .registers 2

    #@0
    .line 168
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailView$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/navigationrail/NavigationRailView$1;-><init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V

    #@5
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@8
    return-void
.end method

.method private getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .registers 2

    #@0
    .line 338
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@6
    return-object v0
.end method

.method private isHeaderViewVisible()Z
    .registers 3

    #@0
    .line 362
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_e

    #@4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0x8

    #@a
    if-eq v0, v1, :cond_e

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

.method private makeMinWidthSpec(I)I
    .registers 6

    #@0
    .line 350
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getSuggestedMinimumWidth()I

    #@3
    move-result v0

    #@4
    .line 351
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v1

    #@8
    const/high16 v2, 0x40000000    # 2.0f

    #@a
    if-eq v1, v2, :cond_24

    #@c
    if-lez v0, :cond_24

    #@e
    .line 352
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingLeft()I

    #@11
    move-result v1

    #@12
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingRight()I

    #@15
    move-result v3

    #@16
    add-int/2addr v1, v3

    #@17
    add-int/2addr v0, v1

    #@18
    .line 355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1b
    move-result p1

    #@1c
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result p1

    #@20
    .line 354
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@23
    move-result p1

    #@24
    :cond_24
    return p1
.end method

.method private shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z
    .registers 2

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 204
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result p1

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@a
    move-result p1

    #@b
    :goto_b
    return p1
.end method


# virtual methods
.method public addHeaderView(I)V
    .registers 4

    #@0
    .line 255
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(Landroid/view/View;)V

    #@10
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4

    #@0
    .line 268
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->removeHeaderView()V

    #@3
    .line 269
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    #@5
    .line 271
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@7
    const/4 v1, -0x2

    #@8
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@b
    const/16 v1, 0x31

    #@d
    .line 272
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@f
    .line 273
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    #@11
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@13
    const/4 v1, 0x0

    #@14
    .line 274
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@17
    return-void
.end method

.method protected bridge synthetic createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .registers 2

    #@0
    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .registers 3

    #@0
    .line 346
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    #@0
    .line 287
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getItemMinimumHeight()I
    .registers 2

    #@0
    .line 318
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@6
    .line 319
    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemMinimumHeight()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getMaxItemCount()I
    .registers 2

    #@0
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public getMenuGravity()I
    .registers 2

    #@0
    .line 311
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenuGravity()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    .line 221
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/navigation/NavigationBarView;->onLayout(ZIIII)V

    #@3
    .line 223
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@6
    move-result-object p1

    #@7
    .line 225
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->isHeaderViewVisible()Z

    #@a
    move-result p2

    #@b
    const/4 p3, 0x0

    #@c
    if-eqz p2, :cond_20

    #@e
    .line 226
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    #@10
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@13
    move-result p2

    #@14
    iget p4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    #@16
    add-int/2addr p2, p4

    #@17
    .line 227
    invoke-virtual {p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getTop()I

    #@1a
    move-result p4

    #@1b
    if-ge p4, p2, :cond_28

    #@1d
    sub-int/2addr p2, p4

    #@1e
    move p3, p2

    #@1f
    goto :goto_28

    #@20
    .line 231
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->isTopGravity()Z

    #@23
    move-result p2

    #@24
    if-eqz p2, :cond_28

    #@26
    .line 232
    iget p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    #@28
    :cond_28
    :goto_28
    if-lez p3, :cond_3f

    #@2a
    .line 237
    invoke-virtual {p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getLeft()I

    #@2d
    move-result p2

    #@2e
    .line 238
    invoke-virtual {p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getTop()I

    #@31
    move-result p4

    #@32
    add-int/2addr p4, p3

    #@33
    .line 239
    invoke-virtual {p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getRight()I

    #@36
    move-result p5

    #@37
    .line 240
    invoke-virtual {p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getBottom()I

    #@3a
    move-result v0

    #@3b
    add-int/2addr v0, p3

    #@3c
    .line 236
    invoke-virtual {p1, p2, p4, p5, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layout(IIII)V

    #@3f
    :cond_3f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    #@0
    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->makeMinWidthSpec(I)I

    #@3
    move-result p1

    #@4
    .line 210
    invoke-super {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarView;->onMeasure(II)V

    #@7
    .line 212
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->isHeaderViewVisible()Z

    #@a
    move-result p2

    #@b
    if-eqz p2, :cond_28

    #@d
    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMeasuredHeight()I

    #@10
    move-result p2

    #@11
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@16
    move-result v0

    #@17
    sub-int/2addr p2, v0

    #@18
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    #@1a
    sub-int/2addr p2, v0

    #@1b
    const/high16 v0, -0x80000000

    #@1d
    .line 214
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@20
    move-result p2

    #@21
    .line 215
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/navigationrail/NavigationRailView;->measureChild(Landroid/view/View;II)V

    #@28
    :cond_28
    return-void
.end method

.method public removeHeaderView()V
    .registers 2

    #@0
    .line 298
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 299
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->removeView(Landroid/view/View;)V

    #@7
    const/4 v0, 0x0

    #@8
    .line 300
    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    #@a
    :cond_a
    return-void
.end method

.method public setItemMinimumHeight(I)V
    .registers 3

    #@0
    .line 328
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@6
    .line 329
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    #@9
    return-void
.end method

.method public setMenuGravity(I)V
    .registers 3

    #@0
    .line 306
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMenuGravity(I)V

    #@7
    return-void
.end method
