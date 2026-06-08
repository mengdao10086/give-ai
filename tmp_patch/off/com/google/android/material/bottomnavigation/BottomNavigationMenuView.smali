.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "BottomNavigationMenuView.java"


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemHorizontalTranslationEnabled:Z

.field private final tempChildWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    #@3
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    #@5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    #@a
    .line 52
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    #@c
    const/4 v0, -0x2

    #@d
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@10
    const/16 v0, 0x11

    #@12
    .line 55
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@14
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@17
    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object p1

    #@1b
    .line 59
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_max_width:I

    #@1d
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@20
    move-result v0

    #@21
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    #@23
    .line 61
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_min_width:I

    #@25
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@28
    move-result v0

    #@29
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    #@2b
    .line 63
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_max_width:I

    #@2d
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    #@33
    .line 65
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_min_width:I

    #@35
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@38
    move-result p1

    #@39
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    #@3b
    return-void
.end method


# virtual methods
.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .registers 3

    #@0
    .line 196
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    #@0
    .line 190
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    #@2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    #@0
    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    #@3
    move-result p1

    #@4
    sub-int/2addr p4, p2

    #@5
    sub-int/2addr p5, p3

    #@6
    const/4 p2, 0x0

    #@7
    move p3, p2

    #@8
    move v0, p3

    #@9
    :goto_9
    if-ge p3, p1, :cond_3b

    #@b
    .line 157
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@12
    move-result v2

    #@13
    const/16 v3, 0x8

    #@15
    if-ne v2, v3, :cond_18

    #@17
    goto :goto_38

    #@18
    .line 161
    :cond_18
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@1b
    move-result v2

    #@1c
    const/4 v3, 0x1

    #@1d
    if-ne v2, v3, :cond_2b

    #@1f
    sub-int v2, p4, v0

    #@21
    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@24
    move-result v3

    #@25
    sub-int v3, v2, v3

    #@27
    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    #@2a
    goto :goto_33

    #@2b
    .line 164
    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@2e
    move-result v2

    #@2f
    add-int/2addr v2, v0

    #@30
    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    #@33
    .line 166
    :goto_33
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@36
    move-result v1

    #@37
    add-int/2addr v0, v1

    #@38
    :goto_38
    add-int/lit8 p3, p3, 0x1

    #@3a
    goto :goto_9

    #@3b
    :cond_3b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    #@0
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@3
    move-result-object v0

    #@4
    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result p1

    #@8
    .line 75
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    #@13
    move-result v1

    #@14
    .line 78
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    #@16
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@19
    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1c
    move-result p2

    #@1d
    const/high16 v2, 0x40000000    # 2.0f

    #@1f
    .line 81
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@22
    move-result v3

    #@23
    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    #@26
    move-result v4

    #@27
    invoke-virtual {p0, v4, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    #@2a
    move-result v4

    #@2b
    const/16 v5, 0x8

    #@2d
    const/4 v6, 0x0

    #@2e
    const/4 v7, 0x1

    #@2f
    if-eqz v4, :cond_ac

    #@31
    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_ac

    #@37
    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    #@3e
    move-result-object v4

    #@3f
    .line 86
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    #@41
    .line 87
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@44
    move-result v9

    #@45
    if-eq v9, v5, :cond_5a

    #@47
    .line 90
    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    #@49
    const/high16 v10, -0x80000000

    #@4b
    .line 91
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4e
    move-result v9

    #@4f
    .line 90
    invoke-virtual {v4, v9, v3}, Landroid/view/View;->measure(II)V

    #@52
    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@55
    move-result v9

    #@56
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@59
    move-result v8

    #@5a
    .line 94
    :cond_5a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@5d
    move-result v4

    #@5e
    if-eq v4, v5, :cond_62

    #@60
    move v4, v7

    #@61
    goto :goto_63

    #@62
    :cond_62
    move v4, v6

    #@63
    :goto_63
    sub-int/2addr v0, v4

    #@64
    .line 95
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    #@66
    mul-int/2addr v4, v0

    #@67
    sub-int v4, p1, v4

    #@69
    .line 96
    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    #@6b
    .line 97
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@6e
    move-result v8

    #@6f
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    #@72
    move-result v4

    #@73
    sub-int/2addr p1, v4

    #@74
    if-nez v0, :cond_77

    #@76
    goto :goto_78

    #@77
    :cond_77
    move v7, v0

    #@78
    .line 99
    :goto_78
    div-int v7, p1, v7

    #@7a
    .line 100
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    #@7c
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@7f
    move-result v7

    #@80
    mul-int/2addr v0, v7

    #@81
    sub-int/2addr p1, v0

    #@82
    move v0, v6

    #@83
    :goto_83
    if-ge v0, v1, :cond_dd

    #@85
    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@8c
    move-result v8

    #@8d
    if-eq v8, v5, :cond_9f

    #@8f
    .line 106
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    #@92
    move-result v8

    #@93
    if-ne v0, v8, :cond_97

    #@95
    move v8, v4

    #@96
    goto :goto_98

    #@97
    :cond_97
    move v8, v7

    #@98
    :goto_98
    if-lez p1, :cond_a0

    #@9a
    add-int/lit8 v8, v8, 0x1

    #@9c
    add-int/lit8 p1, p1, -0x1

    #@9e
    goto :goto_a0

    #@9f
    :cond_9f
    move v8, v6

    #@a0
    .line 115
    :cond_a0
    :goto_a0
    iget-object v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    #@a2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v8

    #@a6
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a9
    add-int/lit8 v0, v0, 0x1

    #@ab
    goto :goto_83

    #@ac
    :cond_ac
    if-nez v0, :cond_af

    #@ae
    goto :goto_b0

    #@af
    :cond_af
    move v7, v0

    #@b0
    .line 118
    :goto_b0
    div-int v4, p1, v7

    #@b2
    .line 119
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    #@b4
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@b7
    move-result v4

    #@b8
    mul-int/2addr v0, v4

    #@b9
    sub-int/2addr p1, v0

    #@ba
    move v0, v6

    #@bb
    :goto_bb
    if-ge v0, v1, :cond_dd

    #@bd
    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    #@c4
    move-result v7

    #@c5
    if-eq v7, v5, :cond_d0

    #@c7
    if-lez p1, :cond_ce

    #@c9
    add-int/lit8 v7, v4, 0x1

    #@cb
    add-int/lit8 p1, p1, -0x1

    #@cd
    goto :goto_d1

    #@ce
    :cond_ce
    move v7, v4

    #@cf
    goto :goto_d1

    #@d0
    :cond_d0
    move v7, v6

    #@d1
    .line 130
    :goto_d1
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    #@d3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d6
    move-result-object v7

    #@d7
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@da
    add-int/lit8 v0, v0, 0x1

    #@dc
    goto :goto_bb

    #@dd
    :cond_dd
    move p1, v6

    #@de
    :goto_de
    if-ge v6, v1, :cond_110

    #@e0
    .line 136
    invoke-virtual {p0, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    #@e3
    move-result-object v0

    #@e4
    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e7
    move-result v4

    #@e8
    if-ne v4, v5, :cond_eb

    #@ea
    goto :goto_10d

    #@eb
    .line 140
    :cond_eb
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    #@ed
    .line 141
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f0
    move-result-object v4

    #@f1
    check-cast v4, Ljava/lang/Integer;

    #@f3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@f6
    move-result v4

    #@f7
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@fa
    move-result v4

    #@fb
    .line 140
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    #@fe
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@101
    move-result-object v4

    #@102
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@105
    move-result v7

    #@106
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@108
    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@10b
    move-result v0

    #@10c
    add-int/2addr p1, v0

    #@10d
    :goto_10d
    add-int/lit8 v6, v6, 0x1

    #@10f
    goto :goto_de

    #@110
    .line 147
    :cond_110
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setMeasuredDimension(II)V

    #@113
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 2

    #@0
    .line 179
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    #@2
    return-void
.end method
