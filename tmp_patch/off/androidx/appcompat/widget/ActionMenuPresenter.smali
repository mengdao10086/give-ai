.class Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 87
    sget v0, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    #@2
    sget v1, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    #@7
    .line 75
    new-instance p1, Landroid/util/SparseBooleanArray;

    #@9
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@c
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    #@e
    .line 83
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@10
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    #@13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@15
    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    #@0
    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    #@0
    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .registers 1

    #@0
    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    #@0
    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    #@0
    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object p0
.end method

.method static synthetic access$500(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    #@0
    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object p0
.end method

.method static synthetic access$600(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .registers 1

    #@0
    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@2
    return-object p0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    #@0
    .line 317
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@2
    check-cast v0, Landroid/view/ViewGroup;

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 320
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    :goto_d
    if-ge v3, v2, :cond_24

    #@f
    .line 322
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v4

    #@13
    .line 323
    instance-of v5, v4, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@15
    if-eqz v5, :cond_21

    #@17
    move-object v5, v4

    #@18
    check-cast v5, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@1a
    .line 324
    invoke-interface {v5}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1d
    move-result-object v5

    #@1e
    if-ne v5, p1, :cond_21

    #@20
    return-object v4

    #@21
    :cond_21
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_d

    #@24
    :cond_24
    return-object v1
.end method


# virtual methods
.method public bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 207
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    #@4
    .line 209
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@6
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    #@8
    .line 210
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@a
    .line 211
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V

    #@d
    .line 213
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@f
    if-nez p1, :cond_18

    #@11
    .line 214
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@13
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    #@16
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@18
    .line 216
    :cond_18
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@1a
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;)V

    #@1d
    return-void
.end method

.method public dismissPopupMenus()Z
    .registers 3

    #@0
    .line 373
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@3
    move-result v0

    #@4
    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 5

    #@0
    .line 275
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6
    if-ne v0, v1, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    return p1

    #@a
    .line 276
    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    #@d
    move-result p1

    #@e
    return p1
.end method

.method public flagActionItems()Z
    .registers 21

    #@0
    move-object/from16 v0, p0

    #@2
    .line 413
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    if-eqz v1, :cond_13

    #@8
    .line 414
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@a
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@d
    move-result-object v1

    #@e
    .line 415
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v4

    #@12
    goto :goto_15

    #@13
    :cond_13
    move-object v1, v2

    #@14
    move v4, v3

    #@15
    .line 421
    :goto_15
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    #@17
    .line 422
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    #@19
    .line 423
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1c
    move-result v7

    #@1d
    .line 424
    iget-object v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@1f
    check-cast v8, Landroid/view/ViewGroup;

    #@21
    move v9, v3

    #@22
    move v10, v9

    #@23
    move v11, v10

    #@24
    move v12, v11

    #@25
    :goto_25
    if-ge v9, v4, :cond_4e

    #@27
    .line 431
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v14

    #@2b
    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2d
    .line 432
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    #@30
    move-result v15

    #@31
    if-eqz v15, :cond_36

    #@33
    add-int/lit8 v11, v11, 0x1

    #@35
    goto :goto_40

    #@36
    .line 434
    :cond_36
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    #@39
    move-result v15

    #@3a
    if-eqz v15, :cond_3f

    #@3c
    add-int/lit8 v12, v12, 0x1

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    const/4 v10, 0x1

    #@40
    .line 439
    :goto_40
    iget-boolean v13, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    #@42
    if-eqz v13, :cond_4b

    #@44
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    #@47
    move-result v13

    #@48
    if-eqz v13, :cond_4b

    #@4a
    move v5, v3

    #@4b
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    #@4d
    goto :goto_25

    #@4e
    .line 447
    :cond_4e
    iget-boolean v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@50
    if-eqz v9, :cond_59

    #@52
    if-nez v10, :cond_57

    #@54
    add-int/2addr v12, v11

    #@55
    if-le v12, v5, :cond_59

    #@57
    :cond_57
    add-int/lit8 v5, v5, -0x1

    #@59
    :cond_59
    sub-int/2addr v5, v11

    #@5a
    .line 453
    iget-object v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    #@5c
    .line 454
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    #@5f
    .line 458
    iget-boolean v10, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@61
    if-eqz v10, :cond_6c

    #@63
    .line 459
    iget v10, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    #@65
    div-int v11, v6, v10

    #@67
    .line 460
    rem-int v12, v6, v10

    #@69
    .line 461
    div-int/2addr v12, v11

    #@6a
    add-int/2addr v10, v12

    #@6b
    goto :goto_6e

    #@6c
    :cond_6c
    move v10, v3

    #@6d
    move v11, v10

    #@6e
    :goto_6e
    move v12, v3

    #@6f
    move v14, v12

    #@70
    :goto_70
    if-ge v12, v4, :cond_145

    #@72
    .line 466
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v15

    #@76
    check-cast v15, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@78
    .line 468
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    #@7b
    move-result v16

    #@7c
    if-eqz v16, :cond_a9

    #@7e
    .line 469
    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@81
    move-result-object v13

    #@82
    .line 470
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@84
    if-eqz v2, :cond_8c

    #@86
    .line 471
    invoke-static {v13, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@89
    move-result v2

    #@8a
    sub-int/2addr v11, v2

    #@8b
    goto :goto_8f

    #@8c
    .line 474
    :cond_8c
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    #@8f
    .line 476
    :goto_8f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@92
    move-result v2

    #@93
    sub-int/2addr v6, v2

    #@94
    if-nez v14, :cond_97

    #@96
    move v14, v2

    #@97
    .line 481
    :cond_97
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@9a
    move-result v2

    #@9b
    const/4 v13, 0x1

    #@9c
    if-eqz v2, :cond_a1

    #@9e
    .line 483
    invoke-virtual {v9, v2, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@a1
    .line 485
    :cond_a1
    invoke-virtual {v15, v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@a4
    move v0, v3

    #@a5
    move/from16 v17, v4

    #@a7
    goto/16 :goto_13b

    #@a9
    .line 486
    :cond_a9
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    #@ac
    move-result v2

    #@ad
    if-eqz v2, :cond_135

    #@af
    .line 489
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@b2
    move-result v2

    #@b3
    .line 490
    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@b6
    move-result v13

    #@b7
    if-gtz v5, :cond_bb

    #@b9
    if-eqz v13, :cond_c5

    #@bb
    :cond_bb
    if-lez v6, :cond_c5

    #@bd
    .line 491
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@bf
    if-eqz v3, :cond_c3

    #@c1
    if-lez v11, :cond_c5

    #@c3
    :cond_c3
    const/4 v3, 0x1

    #@c4
    goto :goto_c6

    #@c5
    :cond_c5
    const/4 v3, 0x0

    #@c6
    :goto_c6
    move/from16 v18, v3

    #@c8
    move/from16 v17, v4

    #@ca
    if-eqz v3, :cond_fd

    #@cc
    const/4 v3, 0x0

    #@cd
    .line 495
    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@d0
    move-result-object v4

    #@d1
    .line 496
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@d3
    if-eqz v3, :cond_e1

    #@d5
    const/4 v3, 0x0

    #@d6
    .line 497
    invoke-static {v4, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@d9
    move-result v19

    #@da
    sub-int v11, v11, v19

    #@dc
    if-nez v19, :cond_e4

    #@de
    const/16 v18, 0x0

    #@e0
    goto :goto_e4

    #@e1
    .line 504
    :cond_e1
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    #@e4
    :cond_e4
    :goto_e4
    move/from16 v3, v18

    #@e6
    .line 506
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@e9
    move-result v4

    #@ea
    sub-int/2addr v6, v4

    #@eb
    if-nez v14, :cond_ee

    #@ed
    move v14, v4

    #@ee
    .line 512
    :cond_ee
    iget-boolean v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@f0
    if-eqz v4, :cond_f5

    #@f2
    if-ltz v6, :cond_fb

    #@f4
    goto :goto_f9

    #@f5
    :cond_f5
    add-int v4, v6, v14

    #@f7
    if-lez v4, :cond_fb

    #@f9
    :goto_f9
    const/4 v4, 0x1

    #@fa
    goto :goto_fc

    #@fb
    :cond_fb
    const/4 v4, 0x0

    #@fc
    :goto_fc
    and-int/2addr v3, v4

    #@fd
    :cond_fd
    if-eqz v3, :cond_106

    #@ff
    if-eqz v2, :cond_106

    #@101
    const/4 v4, 0x1

    #@102
    .line 521
    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@105
    goto :goto_12c

    #@106
    :cond_106
    if-eqz v13, :cond_12c

    #@108
    const/4 v4, 0x0

    #@109
    .line 524
    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@10c
    const/4 v4, 0x0

    #@10d
    :goto_10d
    if-ge v4, v12, :cond_12c

    #@10f
    .line 526
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@112
    move-result-object v13

    #@113
    check-cast v13, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@115
    .line 527
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@118
    move-result v0

    #@119
    if-ne v0, v2, :cond_127

    #@11b
    .line 529
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    #@11e
    move-result v0

    #@11f
    if-eqz v0, :cond_123

    #@121
    add-int/lit8 v5, v5, 0x1

    #@123
    :cond_123
    const/4 v0, 0x0

    #@124
    .line 530
    invoke-virtual {v13, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@127
    :cond_127
    add-int/lit8 v4, v4, 0x1

    #@129
    move-object/from16 v0, p0

    #@12b
    goto :goto_10d

    #@12c
    :cond_12c
    :goto_12c
    if-eqz v3, :cond_130

    #@12e
    add-int/lit8 v5, v5, -0x1

    #@130
    .line 537
    :cond_130
    invoke-virtual {v15, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@133
    const/4 v0, 0x0

    #@134
    goto :goto_13b

    #@135
    :cond_135
    move v0, v3

    #@136
    move/from16 v17, v4

    #@138
    .line 540
    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@13b
    :goto_13b
    add-int/lit8 v12, v12, 0x1

    #@13d
    move v3, v0

    #@13e
    move/from16 v4, v17

    #@140
    const/4 v2, 0x0

    #@141
    move-object/from16 v0, p0

    #@143
    goto/16 :goto_70

    #@145
    :cond_145
    const/4 v2, 0x1

    #@146
    return v2
.end method

.method public getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    #@0
    .line 191
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 192
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_10

    #@c
    .line 193
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    .line 195
    :cond_10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_19

    #@16
    const/16 p1, 0x8

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    :goto_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    #@1d
    .line 197
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    #@1f
    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object p1

    #@23
    .line 199
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@26
    move-result p2

    #@27
    if-nez p2, :cond_30

    #@29
    .line 200
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@30
    :cond_30
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 3

    #@0
    .line 181
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@2
    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    #@5
    move-result-object p1

    #@6
    if-eq v0, p1, :cond_e

    #@8
    .line 184
    move-object v0, p1

    #@9
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    #@b
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    #@e
    :cond_e
    return-object p1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 171
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 172
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 173
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@f
    return-object v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 4

    #@0
    .line 354
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_16

    #@5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@7
    if-eqz v0, :cond_16

    #@9
    .line 355
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@b
    check-cast v0, Landroid/view/View;

    #@d
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@f
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@12
    const/4 v0, 0x0

    #@13
    .line 356
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@15
    return v1

    #@16
    .line 360
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    #@18
    if-eqz v0, :cond_1e

    #@1a
    .line 362
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    #@1d
    return v1

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    return v0
.end method

.method public hideSubMenus()Z
    .registers 2

    #@0
    .line 384
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 385
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    #@7
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 7

    #@0
    .line 92
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@3
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object p2

    #@7
    .line 96
    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    #@a
    move-result-object p1

    #@b
    .line 97
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    #@d
    if-nez v0, :cond_15

    #@f
    .line 98
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@15
    .line 101
    :cond_15
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    #@17
    if-nez v0, :cond_1f

    #@19
    .line 102
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    #@1f
    .line 106
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@21
    if-nez v0, :cond_29

    #@23
    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    #@26
    move-result p1

    #@27
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    #@29
    .line 110
    :cond_29
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    #@2b
    .line 111
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2d
    const/4 v1, 0x0

    #@2e
    if-eqz v0, :cond_5c

    #@30
    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@32
    if-nez v0, :cond_54

    #@34
    .line 113
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@36
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@38
    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    #@3b
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@3d
    .line 114
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@3f
    const/4 v3, 0x0

    #@40
    if-eqz v2, :cond_4b

    #@42
    .line 115
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@44
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@47
    .line 116
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@49
    .line 117
    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@4b
    .line 119
    :cond_4b
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4e
    move-result v0

    #@4f
    .line 120
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@51
    invoke-virtual {v1, v0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    #@54
    .line 122
    :cond_54
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@56
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    #@59
    move-result v0

    #@5a
    sub-int/2addr p1, v0

    #@5b
    goto :goto_5e

    #@5c
    .line 124
    :cond_5c
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@5e
    .line 127
    :goto_5e
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    #@60
    .line 129
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@63
    move-result-object p1

    #@64
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@66
    const/high16 p2, 0x42600000    # 56.0f

    #@68
    mul-float/2addr p1, p2

    #@69
    float-to-int p1, p1

    #@6a
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    #@6c
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    #@0
    .line 399
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@2
    if-nez v0, :cond_d

    #@4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    #@0
    .line 395
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    #@0
    .line 406
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2
    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3

    #@0
    .line 548
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@3
    .line 549
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    #@6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    .line 133
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@2
    if-nez p1, :cond_10

    #@4
    .line 134
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@6
    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    #@10
    .line 136
    :cond_10
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@12
    if-eqz p1, :cond_1a

    #@14
    .line 137
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@16
    const/4 v0, 0x1

    #@17
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@1a
    :cond_1a
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 561
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 565
    :cond_5
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    #@7
    .line 566
    iget v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@9
    if-lez v0, :cond_1e

    #@b
    .line 567
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@d
    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@f
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@12
    move-result-object p1

    #@13
    if-eqz p1, :cond_1e

    #@15
    .line 569
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@18
    move-result-object p1

    #@19
    check-cast p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@1b
    .line 570
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    #@1e
    :cond_1e
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 554
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    #@2
    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    #@5
    .line 555
    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@7
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@9
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 9

    #@0
    .line 281
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    move-object v0, p1

    #@9
    .line 284
    :goto_9
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@f
    if-eq v2, v3, :cond_18

    #@11
    .line 285
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@17
    goto :goto_9

    #@18
    .line 287
    :cond_18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    if-nez v0, :cond_23

    #@22
    return v1

    #@23
    .line 296
    :cond_23
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    #@2a
    move-result v2

    #@2b
    iput v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@2d
    .line 299
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->size()I

    #@30
    move-result v2

    #@31
    move v3, v1

    #@32
    :goto_32
    const/4 v4, 0x1

    #@33
    if-ge v3, v2, :cond_4a

    #@35
    .line 301
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@38
    move-result-object v5

    #@39
    .line 302
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_47

    #@3f
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@42
    move-result-object v5

    #@43
    if-eqz v5, :cond_47

    #@45
    move v1, v4

    #@46
    goto :goto_4a

    #@47
    :cond_47
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_32

    #@4a
    .line 308
    :cond_4a
    :goto_4a
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@4c
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@4e
    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V

    #@51
    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@53
    .line 309
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    #@56
    .line 310
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@58
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    #@5b
    .line 312
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    #@5e
    return v4
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 579
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    #@6
    goto :goto_11

    #@7
    .line 580
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    if-eqz p1, :cond_11

    #@b
    .line 581
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@d
    const/4 v0, 0x0

    #@e
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@11
    :cond_11
    :goto_11
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    #@0
    .line 158
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    #@2
    return-void
.end method

.method public setItemLimit(I)V
    .registers 2

    #@0
    .line 153
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    #@2
    const/4 p1, 0x1

    #@3
    .line 154
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@5
    return-void
.end method

.method public setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V
    .registers 3

    #@0
    .line 586
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@2
    .line 587
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@7
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 162
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 163
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7
    goto :goto_d

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 165
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@b
    .line 166
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@d
    :goto_d
    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 2

    #@0
    .line 148
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2
    const/4 p1, 0x1

    #@3
    .line 149
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    #@5
    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 3

    #@0
    .line 142
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    #@2
    .line 143
    iput-boolean p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@4
    const/4 p1, 0x1

    #@5
    .line 144
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    #@7
    return-void
.end method

.method public shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    #@0
    .line 221
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public showOverflowMenu()Z
    .registers 8

    #@0
    .line 336
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2
    if-eqz v0, :cond_42

    #@4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_42

    #@a
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@c
    if-eqz v0, :cond_42

    #@e
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@10
    if-eqz v0, :cond_42

    #@12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@14
    if-nez v0, :cond_42

    #@16
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@18
    .line 337
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_42

    #@22
    .line 338
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    #@24
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@26
    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@28
    iget-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2a
    const/4 v6, 0x1

    #@2b
    move-object v1, v0

    #@2c
    move-object v2, p0

    #@2d
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V

    #@30
    .line 339
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@32
    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;)V

    #@35
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@37
    .line 341
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@39
    check-cast v0, Landroid/view/View;

    #@3b
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@3d
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@40
    const/4 v0, 0x1

    #@41
    return v0

    #@42
    :cond_42
    const/4 v0, 0x0

    #@43
    return v0
.end method

.method public updateMenuView(Z)V
    .registers 6

    #@0
    .line 226
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    #@3
    .line 228
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@5
    check-cast p1, Landroid/view/View;

    #@7
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    #@a
    .line 230
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@c
    const/4 v0, 0x0

    #@d
    if-eqz p1, :cond_2e

    #@f
    .line 231
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@11
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    #@14
    move-result-object p1

    #@15
    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    move v2, v0

    #@1a
    :goto_1a
    if-ge v2, v1, :cond_2e

    #@1c
    .line 234
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@22
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    #@25
    move-result-object v3

    #@26
    if-eqz v3, :cond_2b

    #@28
    .line 236
    invoke-virtual {v3, p0}, Landroidx/core/view/ActionProvider;->setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V

    #@2b
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_1a

    #@2e
    .line 241
    :cond_2e
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@30
    if-eqz p1, :cond_39

    #@32
    .line 242
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@34
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@37
    move-result-object p1

    #@38
    goto :goto_3a

    #@39
    :cond_39
    const/4 p1, 0x0

    #@3a
    .line 245
    :goto_3a
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@3c
    if-eqz v1, :cond_57

    #@3e
    if-eqz p1, :cond_57

    #@40
    .line 246
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v1

    #@44
    const/4 v2, 0x1

    #@45
    if-ne v1, v2, :cond_54

    #@47
    .line 248
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object p1

    #@4b
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@4d
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    #@50
    move-result p1

    #@51
    xor-int/lit8 v0, p1, 0x1

    #@53
    goto :goto_57

    #@54
    :cond_54
    if-lez v1, :cond_57

    #@56
    move v0, v2

    #@57
    :cond_57
    :goto_57
    if-eqz v0, :cond_87

    #@59
    .line 255
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@5b
    if-nez p1, :cond_66

    #@5d
    .line 256
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@5f
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@61
    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    #@64
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@66
    .line 258
    :cond_66
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@68
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    #@6b
    move-result-object p1

    #@6c
    check-cast p1, Landroid/view/ViewGroup;

    #@6e
    .line 259
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@70
    if-eq p1, v0, :cond_9c

    #@72
    if-eqz p1, :cond_79

    #@74
    .line 261
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@79
    .line 263
    :cond_79
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@7b
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    #@7d
    .line 264
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@7f
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@86
    goto :goto_9c

    #@87
    .line 266
    :cond_87
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@89
    if-eqz p1, :cond_9c

    #@8b
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    #@8e
    move-result-object p1

    #@8f
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@91
    if-ne p1, v0, :cond_9c

    #@93
    .line 267
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@95
    check-cast p1, Landroid/view/ViewGroup;

    #@97
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@9c
    .line 270
    :cond_9c
    :goto_9c
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@9e
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    #@a0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@a2
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    #@a5
    return-void
.end method
