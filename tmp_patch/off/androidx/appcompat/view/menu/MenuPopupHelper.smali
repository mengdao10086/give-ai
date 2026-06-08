.class public Landroidx/appcompat/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuPopupHelper$Api17Impl;
    }
.end annotation


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Landroidx/appcompat/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 72
    sget v5, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    #@4
    const/4 v6, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V
    .registers 11

    #@0
    const/4 v4, 0x0

    #@1
    .line 77
    sget v5, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    #@3
    const/4 v6, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .registers 13

    #@0
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    .line 83
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .registers 8

    #@0
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x800003

    #@6
    .line 64
    iput v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@8
    .line 343
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper$1;

    #@a
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/MenuPopupHelper$1;-><init>(Landroidx/appcompat/view/menu/MenuPopupHelper;)V

    #@d
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@f
    .line 89
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@11
    .line 90
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@13
    .line 91
    iput-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@15
    .line 92
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@17
    .line 93
    iput p5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@19
    .line 94
    iput p6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@1b
    return-void
.end method

.method private createPopup()Landroidx/appcompat/view/menu/MenuPopup;
    .registers 15

    #@0
    .line 233
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@2
    const-string v1, "window"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/view/WindowManager;

    #@a
    .line 235
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@d
    move-result-object v0

    #@e
    .line 236
    new-instance v1, Landroid/graphics/Point;

    #@10
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@13
    .line 239
    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper$Api17Impl;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    #@16
    .line 244
    iget v0, v1, Landroid/graphics/Point;->x:I

    #@18
    iget v1, v1, Landroid/graphics/Point;->y:I

    #@1a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v0

    #@1e
    .line 245
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v1

    #@24
    sget v2, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    #@26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@29
    move-result v1

    #@2a
    if-lt v0, v1, :cond_2e

    #@2c
    const/4 v0, 0x1

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    :goto_2f
    if-eqz v0, :cond_42

    #@31
    .line 251
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@33
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@35
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@37
    iget v4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@39
    iget v5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@3b
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@3d
    move-object v1, v0

    #@3e
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    #@41
    goto :goto_54

    #@42
    .line 254
    :cond_42
    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup;

    #@44
    iget-object v8, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@46
    iget-object v9, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@48
    iget-object v10, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@4a
    iget v11, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@4c
    iget v12, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@4e
    iget-boolean v13, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@50
    move-object v7, v0

    #@51
    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    #@54
    .line 259
    :goto_54
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@56
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopup;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@59
    .line 260
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@5b
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@5e
    .line 263
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@60
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    #@63
    .line 264
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@65
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopup;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@68
    .line 265
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    #@6a
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    #@6d
    .line 266
    iget v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@6f
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopup;->setGravity(I)V

    #@72
    return-object v0
.end method

.method private showPopup(IIZZ)V
    .registers 8

    #@0
    .line 272
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    #@3
    move-result-object v0

    #@4
    .line 273
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/MenuPopup;->setShowTitle(Z)V

    #@7
    if-eqz p3, :cond_48

    #@9
    .line 279
    iget p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@b
    iget-object p4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@d
    .line 280
    invoke-static {p4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@10
    move-result p4

    #@11
    .line 279
    invoke-static {p3, p4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@14
    move-result p3

    #@15
    and-int/lit8 p3, p3, 0x7

    #@17
    const/4 p4, 0x5

    #@18
    if-ne p3, p4, :cond_21

    #@1a
    .line 282
    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@1c
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    #@1f
    move-result p3

    #@20
    sub-int/2addr p1, p3

    #@21
    .line 285
    :cond_21
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuPopup;->setHorizontalOffset(I)V

    #@24
    .line 286
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/MenuPopup;->setVerticalOffset(I)V

    #@27
    .line 292
    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2c
    move-result-object p3

    #@2d
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@30
    move-result-object p3

    #@31
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    #@33
    const/high16 p4, 0x42400000    # 48.0f

    #@35
    mul-float/2addr p3, p4

    #@36
    const/high16 p4, 0x40000000    # 2.0f

    #@38
    div-float/2addr p3, p4

    #@39
    float-to-int p3, p3

    #@3a
    .line 294
    new-instance p4, Landroid/graphics/Rect;

    #@3c
    sub-int v1, p1, p3

    #@3e
    sub-int v2, p2, p3

    #@40
    add-int/2addr p1, p3

    #@41
    add-int/2addr p2, p3

    #@42
    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@45
    .line 296
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    #@48
    .line 299
    :cond_48
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->show()V

    #@4b
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    #@0
    .line 307
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 308
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@8
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->dismiss()V

    #@b
    :cond_b
    return-void
.end method

.method public getGravity()I
    .registers 2

    #@0
    .line 143
    iget v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@2
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    #@0
    .line 354
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->getListView()Landroid/widget/ListView;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPopup()Landroidx/appcompat/view/menu/MenuPopup;
    .registers 2

    #@0
    .line 164
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@2
    if-nez v0, :cond_a

    #@4
    .line 165
    invoke-direct {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->createPopup()Landroidx/appcompat/view/menu/MenuPopup;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@a
    .line 167
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@c
    return-object v0
.end method

.method public isShowing()Z
    .registers 2

    #@0
    .line 329
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->isShowing()Z

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

.method protected onDismiss()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 321
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@3
    .line 323
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 324
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@a
    :cond_a
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 109
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@2
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 3

    #@0
    .line 122
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    #@2
    .line 123
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 124
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    #@9
    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 2

    #@0
    .line 136
    iput p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@2
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    #@0
    .line 98
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    return-void
.end method

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 3

    #@0
    .line 334
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    .line 335
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 336
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuPopup;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@9
    :cond_9
    return-void
.end method

.method public show()V
    .registers 3

    #@0
    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 148
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
.end method

.method public show(II)V
    .registers 3

    #@0
    .line 153
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_7

    #@6
    return-void

    #@7
    .line 154
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    #@9
    const-string p2, "MenuPopupHelper cannot be used without an anchor"

    #@b
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public tryShow()Z
    .registers 4

    #@0
    .line 177
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 181
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@a
    const/4 v2, 0x0

    #@b
    if-nez v0, :cond_e

    #@d
    return v2

    #@e
    .line 185
    :cond_e
    invoke-direct {p0, v2, v2, v2, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    #@11
    return v1
.end method

.method public tryShow(II)Z
    .registers 5

    #@0
    .line 213
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 217
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 p1, 0x0

    #@d
    return p1

    #@e
    .line 221
    :cond_e
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    #@11
    return v1
.end method
