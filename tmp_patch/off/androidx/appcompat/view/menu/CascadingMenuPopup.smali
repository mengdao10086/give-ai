.class final Landroidx/appcompat/view/menu/CascadingMenuPopup;
.super Landroidx/appcompat/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Landroidx/appcompat/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field private static final ITEM_LAYOUT:I

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 66
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    #@2
    sput v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->ITEM_LAYOUT:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 7

    #@0
    .line 223
    invoke-direct {p0}, Landroidx/appcompat/view/menu/MenuPopup;-><init>()V

    #@3
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@a
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@11
    .line 97
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;

    #@13
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    #@16
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@18
    .line 119
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$2;

    #@1a
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$2;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    #@1d
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@1f
    .line 137
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    #@21
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    #@24
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    #@26
    const/4 v0, 0x0

    #@27
    .line 197
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@29
    .line 198
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@2b
    .line 224
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@2d
    .line 225
    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@2f
    .line 226
    iput p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    #@31
    .line 227
    iput p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    #@33
    .line 228
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    #@35
    .line 230
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    #@37
    .line 231
    invoke-direct {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    #@3a
    move-result p2

    #@3b
    iput p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@3d
    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@40
    move-result-object p1

    #@41
    .line 234
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@44
    move-result-object p2

    #@45
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@47
    div-int/lit8 p2, p2, 0x2

    #@49
    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    #@4b
    .line 235
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@4e
    move-result p1

    #@4f
    .line 234
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    #@52
    move-result p1

    #@53
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    #@55
    .line 237
    new-instance p1, Landroid/os/Handler;

    #@57
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    #@5a
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    #@5c
    return-void
.end method

.method private createPopupWindow()Landroidx/appcompat/widget/MenuPopupWindow;
    .registers 6

    #@0
    .line 246
    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow;

    #@2
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@4
    iget v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    #@6
    iget v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@c
    .line 248
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    #@e
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    #@11
    .line 249
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@14
    .line 250
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@17
    .line 251
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@19
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@1c
    .line 252
    iget v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@1e
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    #@21
    const/4 v1, 0x1

    #@22
    .line 253
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setModal(Z)V

    #@25
    const/4 v1, 0x2

    #@26
    .line 254
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setInputMethodMode(I)V

    #@29
    return-object v0
.end method

.method private findIndexOfAddedMenu(Landroidx/appcompat/view/menu/MenuBuilder;)I
    .registers 5

    #@0
    .line 656
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_19

    #@9
    .line 657
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@11
    .line 658
    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@13
    if-ne p1, v2, :cond_16

    #@15
    return v1

    #@16
    :cond_16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_7

    #@19
    :cond_19
    const/4 p1, -0x1

    #@1a
    return p1
.end method

.method private findMenuItemForSubmenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .registers 7

    #@0
    .line 517
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1b

    #@7
    .line 518
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@a
    move-result-object v2

    #@b
    .line 519
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_18

    #@11
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@14
    move-result-object v3

    #@15
    if-ne p2, v3, :cond_18

    #@17
    return-object v2

    #@18
    :cond_18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return-object p1
.end method

.method private findParentViewForSubmenu(Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/View;
    .registers 10

    #@0
    .line 538
    iget-object v0, p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-direct {p0, v0, p2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    #@5
    move-result-object p2

    #@6
    const/4 v0, 0x0

    #@7
    if-nez p2, :cond_a

    #@9
    return-object v0

    #@a
    .line 547
    :cond_a
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@d
    move-result-object p1

    #@e
    .line 548
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@11
    move-result-object v1

    #@12
    .line 549
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    #@14
    const/4 v3, 0x0

    #@15
    if-eqz v2, :cond_24

    #@17
    .line 550
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    #@19
    .line 551
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@1c
    move-result v2

    #@1d
    .line 552
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroidx/appcompat/view/menu/MenuAdapter;

    #@23
    goto :goto_27

    #@24
    .line 555
    :cond_24
    check-cast v1, Landroidx/appcompat/view/menu/MenuAdapter;

    #@26
    move v2, v3

    #@27
    .line 560
    :goto_27
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    #@2a
    move-result v4

    #@2b
    :goto_2b
    const/4 v5, -0x1

    #@2c
    if-ge v3, v4, :cond_38

    #@2e
    .line 561
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@31
    move-result-object v6

    #@32
    if-ne p2, v6, :cond_35

    #@34
    goto :goto_39

    #@35
    :cond_35
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_2b

    #@38
    :cond_38
    move v3, v5

    #@39
    :goto_39
    if-ne v3, v5, :cond_3c

    #@3b
    return-object v0

    #@3c
    :cond_3c
    add-int/2addr v3, v2

    #@3d
    .line 575
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@40
    move-result p2

    #@41
    sub-int/2addr v3, p2

    #@42
    if-ltz v3, :cond_50

    #@44
    .line 576
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    #@47
    move-result p2

    #@48
    if-lt v3, p2, :cond_4b

    #@4a
    goto :goto_50

    #@4b
    .line 581
    :cond_4b
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@4e
    move-result-object p1

    #@4f
    return-object p1

    #@50
    :cond_50
    :goto_50
    return-object v0
.end method

.method private getInitialMenuPosition()I
    .registers 3

    #@0
    .line 316
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    const/4 v1, 0x0

    #@a
    :cond_a
    return v1
.end method

.method private getNextMenuPosition(I)I
    .registers 8

    #@0
    .line 330
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x1

    #@7
    sub-int/2addr v1, v2

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@e
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@11
    move-result-object v0

    #@12
    const/4 v1, 0x2

    #@13
    new-array v1, v1, [I

    #@15
    .line 333
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    #@18
    .line 335
    new-instance v3, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@1d
    .line 336
    iget-object v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@1f
    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@22
    .line 338
    iget v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@24
    const/4 v5, 0x0

    #@25
    if-ne v4, v2, :cond_35

    #@27
    aget v1, v1, v5

    #@29
    .line 339
    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    #@2c
    move-result v0

    #@2d
    add-int/2addr v1, v0

    #@2e
    add-int/2addr v1, p1

    #@2f
    .line 340
    iget p1, v3, Landroid/graphics/Rect;->right:I

    #@31
    if-le v1, p1, :cond_34

    #@33
    return v5

    #@34
    :cond_34
    return v2

    #@35
    :cond_35
    aget v0, v1, v5

    #@37
    sub-int/2addr v0, p1

    #@38
    if-gez v0, :cond_3b

    #@3a
    return v2

    #@3b
    :cond_3b
    return v5
.end method

.method private showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 13

    #@0
    .line 370
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    .line 371
    new-instance v1, Landroidx/appcompat/view/menu/MenuAdapter;

    #@8
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    #@a
    sget v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->ITEM_LAYOUT:I

    #@c
    invoke-direct {v1, p1, v0, v2, v3}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    #@f
    .line 377
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    #@12
    move-result v2

    #@13
    const/4 v3, 0x1

    #@14
    if-nez v2, :cond_1e

    #@16
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    #@18
    if-eqz v2, :cond_1e

    #@1a
    .line 379
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    #@1d
    goto :goto_2b

    #@1e
    .line 380
    :cond_1e
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2b

    #@24
    .line 382
    invoke-static {p1}, Landroidx/appcompat/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    #@27
    move-result v2

    #@28
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    #@2b
    .line 386
    :cond_2b
    :goto_2b
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@2d
    iget v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-static {v1, v5, v2, v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    #@33
    move-result v2

    #@34
    .line 387
    invoke-direct {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->createPopupWindow()Landroidx/appcompat/widget/MenuPopupWindow;

    #@37
    move-result-object v4

    #@38
    .line 388
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3b
    .line 389
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setContentWidth(I)V

    #@3e
    .line 390
    iget v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@40
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    #@43
    .line 394
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@45
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@48
    move-result v1

    #@49
    if-lez v1, :cond_5d

    #@4b
    .line 395
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@4d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@50
    move-result v6

    #@51
    sub-int/2addr v6, v3

    #@52
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v1

    #@56
    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@58
    .line 396
    invoke-direct {p0, v1, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/View;

    #@5b
    move-result-object v6

    #@5c
    goto :goto_5f

    #@5d
    :cond_5d
    move-object v1, v5

    #@5e
    move-object v6, v1

    #@5f
    :goto_5f
    const/4 v7, 0x0

    #@60
    if-eqz v6, :cond_98

    #@62
    .line 404
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setTouchModal(Z)V

    #@65
    .line 405
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    #@68
    .line 407
    invoke-direct {p0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    #@6b
    move-result v8

    #@6c
    if-ne v8, v3, :cond_70

    #@6e
    move v9, v3

    #@6f
    goto :goto_71

    #@70
    :cond_70
    move v9, v7

    #@71
    .line 409
    :goto_71
    iput v8, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@73
    .line 416
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@76
    .line 455
    iget v8, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@78
    const/4 v10, 0x5

    #@79
    and-int/2addr v8, v10

    #@7a
    if-ne v8, v10, :cond_84

    #@7c
    if-eqz v9, :cond_7f

    #@7e
    goto :goto_8a

    #@7f
    .line 459
    :cond_7f
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    #@82
    move-result v2

    #@83
    goto :goto_8c

    #@84
    :cond_84
    if-eqz v9, :cond_8c

    #@86
    .line 463
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    #@89
    move-result v2

    #@8a
    :goto_8a
    add-int/2addr v2, v7

    #@8b
    goto :goto_8e

    #@8c
    :cond_8c
    :goto_8c
    rsub-int/lit8 v2, v2, 0x0

    #@8e
    .line 468
    :goto_8e
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    #@91
    .line 471
    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    #@94
    .line 472
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    #@97
    goto :goto_b1

    #@98
    .line 474
    :cond_98
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    #@9a
    if-eqz v2, :cond_a1

    #@9c
    .line 475
    iget v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mXOffset:I

    #@9e
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    #@a1
    .line 477
    :cond_a1
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    #@a3
    if-eqz v2, :cond_aa

    #@a5
    .line 478
    iget v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mYOffset:I

    #@a7
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    #@aa
    .line 480
    :cond_aa
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    #@ad
    move-result-object v2

    #@ae
    .line 481
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    #@b1
    .line 484
    :goto_b1
    new-instance v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@b3
    iget v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@b5
    invoke-direct {v2, v4, p1, v3}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V

    #@b8
    .line 485
    iget-object v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@ba
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bd
    .line 487
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    #@c0
    .line 489
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    #@c3
    move-result-object v2

    #@c4
    .line 490
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@c7
    if-nez v1, :cond_f4

    #@c9
    .line 493
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowTitle:Z

    #@cb
    if-eqz v1, :cond_f4

    #@cd
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@d0
    move-result-object v1

    #@d1
    if-eqz v1, :cond_f4

    #@d3
    .line 494
    sget v1, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    #@d5
    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@d8
    move-result-object v0

    #@d9
    check-cast v0, Landroid/widget/FrameLayout;

    #@db
    const v1, 0x1020016

    #@de
    .line 496
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@e1
    move-result-object v1

    #@e2
    check-cast v1, Landroid/widget/TextView;

    #@e4
    .line 497
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@e7
    .line 498
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@ea
    move-result-object p1

    #@eb
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@ee
    .line 499
    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@f1
    .line 502
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    #@f4
    :cond_f4
    return-void
.end method


# virtual methods
.method public addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    #@0
    .line 355
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@5
    .line 357
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_f

    #@b
    .line 358
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@e
    goto :goto_14

    #@f
    .line 360
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    :goto_14
    return-void
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dismiss()V
    .registers 5

    #@0
    .line 288
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_28

    #@8
    .line 290
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@a
    new-array v2, v0, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@c
    .line 291
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    :goto_14
    if-ltz v0, :cond_28

    #@16
    .line 293
    aget-object v2, v1, v0

    #@18
    .line 294
    iget-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@1a
    invoke-virtual {v3}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_25

    #@20
    .line 295
    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@22
    invoke-virtual {v2}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    #@25
    :cond_25
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_14

    #@28
    :cond_28
    return-void
.end method

.method public flagActionItems()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 3

    #@0
    .line 766
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_1c

    #@a
    .line 768
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@1b
    move-result-object v0

    #@1c
    :goto_1c
    return-object v0
.end method

.method public isShowing()Z
    .registers 3

    #@0
    .line 589
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-lez v0, :cond_1a

    #@9
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@11
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@13
    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1a

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1a
    return v1
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 8

    #@0
    .line 668
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Landroidx/appcompat/view/menu/MenuBuilder;)I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    add-int/lit8 v1, v0, 0x1

    #@9
    .line 675
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x0

    #@10
    if-ge v1, v2, :cond_1f

    #@12
    .line 676
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@1a
    .line 677
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1c
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@1f
    .line 681
    :cond_1f
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@21
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@27
    .line 682
    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@29
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    #@2c
    .line 683
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    #@2e
    const/4 v2, 0x0

    #@2f
    if-eqz v1, :cond_3b

    #@31
    .line 685
    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@33
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    #@36
    .line 686
    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@38
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnimationStyle(I)V

    #@3b
    .line 688
    :cond_3b
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@3d
    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    #@40
    .line 690
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@42
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@45
    move-result v0

    #@46
    if-lez v0, :cond_57

    #@48
    .line 692
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@4a
    add-int/lit8 v4, v0, -0x1

    #@4c
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@52
    iget v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    #@54
    iput v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@56
    goto :goto_5d

    #@57
    .line 694
    :cond_57
    invoke-direct {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    #@5a
    move-result v1

    #@5b
    iput v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@5d
    :goto_5d
    if-nez v0, :cond_8a

    #@5f
    .line 699
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    #@62
    .line 701
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@64
    if-eqz p2, :cond_6a

    #@66
    const/4 v0, 0x1

    #@67
    .line 702
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    #@6a
    .line 705
    :cond_6a
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@6c
    if-eqz p1, :cond_7d

    #@6e
    .line 706
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@71
    move-result p1

    #@72
    if-eqz p1, :cond_7b

    #@74
    .line 707
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@76
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@78
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@7b
    .line 709
    :cond_7b
    iput-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@7d
    .line 711
    :cond_7d
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@7f
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@81
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@84
    .line 715
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@86
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@89
    goto :goto_99

    #@8a
    :cond_8a
    if-eqz p2, :cond_99

    #@8c
    .line 720
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@8e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@91
    move-result-object p1

    #@92
    check-cast p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@94
    .line 721
    iget-object p1, p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@96
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@99
    :cond_99
    :goto_99
    return-void
.end method

.method public onDismiss()V
    .registers 6

    #@0
    .line 600
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1e

    #@a
    .line 601
    iget-object v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@c
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@12
    .line 602
    iget-object v4, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@14
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_1b

    #@1a
    goto :goto_1f

    #@1b
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    const/4 v3, 0x0

    #@1f
    :goto_1f
    if-eqz v3, :cond_26

    #@21
    .line 611
    iget-object v0, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@23
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@26
    :cond_26
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 303
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result p1

    #@4
    const/4 p3, 0x1

    #@5
    if-ne p1, p3, :cond_f

    #@7
    const/16 p1, 0x52

    #@9
    if-ne p2, p1, :cond_f

    #@b
    .line 304
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    #@e
    return p3

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 6

    #@0
    .line 630
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    if-eqz v1, :cond_1f

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@13
    .line 631
    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@15
    if-ne p1, v3, :cond_6

    #@17
    .line 633
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    #@1e
    return v2

    #@1f
    .line 638
    :cond_1f
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_30

    #@25
    .line 639
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@28
    .line 641
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2a
    if-eqz v0, :cond_2f

    #@2c
    .line 642
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    #@2f
    :cond_2f
    return v2

    #@30
    :cond_30
    const/4 p1, 0x0

    #@31
    return p1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 750
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@2
    if-eq v0, p1, :cond_12

    #@4
    .line 751
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@6
    .line 754
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@8
    .line 755
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    .line 754
    invoke-static {v0, p1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result p1

    #@10
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@12
    :cond_12
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    #@0
    .line 624
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    #@0
    .line 242
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    #@2
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    #@0
    .line 741
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@2
    if-eq v0, p1, :cond_12

    #@4
    .line 742
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@6
    .line 743
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@8
    .line 744
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@b
    move-result v0

    #@c
    .line 743
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result p1

    #@10
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@12
    :cond_12
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 773
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    #@3
    .line 774
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mXOffset:I

    #@5
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    #@0
    .line 761
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    return-void
.end method

.method public setShowTitle(Z)V
    .registers 2

    #@0
    .line 785
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowTitle:Z

    #@2
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 779
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    #@3
    .line 780
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mYOffset:I

    #@5
    return-void
.end method

.method public show()V
    .registers 3

    #@0
    .line 260
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 265
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1d

    #@13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    #@19
    .line 266
    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@1c
    goto :goto_d

    #@1d
    .line 268
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@1f
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@22
    .line 270
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@24
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@26
    if-eqz v0, :cond_43

    #@28
    .line 273
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@2a
    if-nez v1, :cond_2e

    #@2c
    const/4 v1, 0x1

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    const/4 v1, 0x0

    #@2f
    .line 274
    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@35
    if-eqz v1, :cond_3c

    #@37
    .line 276
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@39
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3c
    .line 278
    :cond_3c
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@3e
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@40
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@43
    :cond_43
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    #@0
    .line 617
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object p1

    #@6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_22

    #@c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@12
    .line 618
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    #@21
    goto :goto_6

    #@22
    :cond_22
    return-void
.end method
