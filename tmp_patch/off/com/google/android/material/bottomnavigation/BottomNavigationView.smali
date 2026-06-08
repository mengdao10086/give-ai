.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 98
    sget v0, Lcom/google/android/material/R$attr;->bottomNavigationStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 103
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    #@0
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 111
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    #@6
    move-result-object p1

    #@7
    .line 114
    sget-object v2, Lcom/google/android/material/R$styleable;->BottomNavigationView:[I

    #@9
    const/4 v6, 0x0

    #@a
    new-array v5, v6, [I

    #@c
    move-object v0, p1

    #@d
    move-object v1, p2

    #@e
    move v3, p3

    #@f
    move v4, p4

    #@10
    .line 115
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    #@13
    move-result-object p2

    #@14
    .line 118
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    #@16
    const/4 p4, 0x1

    #@17
    .line 119
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@1a
    move-result p3

    #@1b
    .line 118
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    #@1e
    .line 122
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_android_minHeight:I

    #@20
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@23
    move-result p3

    #@24
    if-eqz p3, :cond_2f

    #@26
    .line 123
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_android_minHeight:I

    #@28
    .line 124
    invoke-virtual {p2, p3, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@2b
    move-result p3

    #@2c
    .line 123
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setMinimumHeight(I)V

    #@2f
    .line 127
    :cond_2f
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_compatShadowEnabled:I

    #@31
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@34
    move-result p3

    #@35
    if-eqz p3, :cond_40

    #@37
    .line 128
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->shouldDrawCompatibilityTopDivider()Z

    #@3a
    move-result p3

    #@3b
    if-eqz p3, :cond_40

    #@3d
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    #@40
    .line 132
    :cond_40
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@43
    .line 134
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V

    #@46
    return-void
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .registers 5

    #@0
    .line 233
    new-instance v0, Landroid/view/View;

    #@2
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@5
    .line 234
    sget v1, Lcom/google/android/material/R$color;->design_bottom_navigation_shadow_color:I

    #@7
    .line 235
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@a
    move-result p1

    #@b
    .line 234
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    #@e
    .line 236
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    #@10
    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v1

    #@14
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_shadow_height:I

    #@16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@19
    move-result v1

    #@1a
    const/4 v2, -0x1

    #@1b
    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@1e
    .line 240
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@21
    .line 241
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Landroid/view/View;)V

    #@24
    return-void
.end method

.method private applyWindowInsets()V
    .registers 2

    #@0
    .line 138
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    #@5
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@8
    return-void
.end method

.method private makeMinHeightSpec(I)I
    .registers 6

    #@0
    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSuggestedMinimumHeight()I

    #@3
    move-result v0

    #@4
    .line 170
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
    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPaddingTop()I

    #@11
    move-result v1

    #@12
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPaddingBottom()I

    #@15
    move-result v3

    #@16
    add-int/2addr v1, v3

    #@17
    add-int/2addr v0, v1

    #@18
    .line 174
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1b
    move-result p1

    #@1c
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result p1

    #@20
    .line 173
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@23
    move-result p1

    #@24
    :cond_24
    return p1
.end method

.method private shouldDrawCompatibilityTopDivider()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method


# virtual methods
.method protected createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .registers 3

    #@0
    .line 216
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public getMaxItemCount()I
    .registers 2

    #@0
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    #@0
    .line 203
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected onMeasure(II)V
    .registers 3

    #@0
    .line 164
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->makeMinHeightSpec(I)I

    #@3
    move-result p2

    #@4
    .line 165
    invoke-super {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarView;->onMeasure(II)V

    #@7
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 4

    #@0
    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    #@6
    .line 189
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    #@9
    move-result v1

    #@a
    if-eq v1, p1, :cond_17

    #@c
    .line 190
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    #@f
    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPresenter()Lcom/google/android/material/navigation/NavigationBarPresenter;

    #@12
    move-result-object p1

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    #@17
    :cond_17
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 272
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemReselectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;)V

    #@3
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    #@3
    return-void
.end method
