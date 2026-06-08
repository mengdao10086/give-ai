.class Landroidx/appcompat/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/DropDownListView$Api21Impl;,
        Landroidx/appcompat/widget/DropDownListView$Api30Impl;,
        Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;,
        Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

.field private final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 126
    sget v1, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 57
    new-instance p1, Landroid/graphics/Rect;

    #@8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    #@d
    const/4 p1, 0x0

    #@e
    .line 58
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    #@10
    .line 59
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    #@12
    .line 60
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    #@14
    .line 61
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    #@16
    .line 127
    iput-boolean p2, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    #@18
    .line 128
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->setCacheColorHint(I)V

    #@1b
    .line 131
    :try_start_1b
    const-class p1, Landroid/widget/AbsListView;

    #@1d
    const-string p2, "mIsChildViewEnabled"

    #@1f
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@22
    move-result-object p1

    #@23
    iput-object p1, p0, Landroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    #@25
    const/4 p2, 0x1

    #@26
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_29} :catch_2a

    #@29
    goto :goto_2e

    #@2a
    :catch_2a
    move-exception p1

    #@2b
    .line 134
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    #@2e
    :goto_2e
    return-void
.end method

.method private clearPressedItem()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 643
    iput-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    #@3
    .line 644
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    #@6
    .line 646
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    #@9
    .line 648
    iget v1, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    #@b
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    #@e
    move-result v2

    #@f
    sub-int/2addr v1, v2

    #@10
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v1

    #@14
    if-eqz v1, :cond_19

    #@16
    .line 650
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    #@19
    .line 653
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@1b
    if-eqz v0, :cond_23

    #@1d
    .line 654
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    #@20
    const/4 v0, 0x0

    #@21
    .line 655
    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@23
    :cond_23
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 555
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/DropDownListView;->getItemIdAtPosition(I)J

    #@3
    move-result-wide v0

    #@4
    .line 556
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    #@7
    return-void
.end method

.method private drawSelectorCompat(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 578
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_16

    #@8
    .line 579
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_16

    #@e
    .line 581
    iget-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@13
    .line 582
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@16
    :cond_16
    return-void
.end method

.method private positionSelectorCompat(ILandroid/view/View;)V
    .registers 8

    #@0
    .line 618
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    #@2
    .line 619
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@d
    move-result v3

    #@e
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@11
    move-result v4

    #@12
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@15
    .line 622
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@17
    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    #@19
    sub-int/2addr v1, v2

    #@1a
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@1c
    .line 623
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@1e
    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    #@20
    sub-int/2addr v1, v2

    #@21
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@23
    .line 624
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@25
    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    #@27
    add-int/2addr v1, v2

    #@28
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@2a
    .line 625
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@2c
    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    #@2e
    add-int/2addr v1, v2

    #@2f
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@31
    .line 630
    :try_start_31
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    #@33
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    .line 631
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    #@3a
    move-result p2

    #@3b
    if-eq p2, v0, :cond_56

    #@3d
    .line 632
    iget-object p2, p0, Landroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    #@3f
    if-nez v0, :cond_43

    #@41
    const/4 v0, 0x1

    #@42
    goto :goto_44

    #@43
    :cond_43
    const/4 v0, 0x0

    #@44
    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4b
    const/4 p2, -0x1

    #@4c
    if-eq p1, p2, :cond_56

    #@4e
    .line 634
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_51} :catch_52

    #@51
    goto :goto_56

    #@52
    :catch_52
    move-exception p1

    #@53
    .line 638
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@56
    :cond_56
    :goto_56
    return-void
.end method

.method private positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .registers 7

    #@0
    .line 599
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v0, :cond_d

    #@8
    const/4 v3, -0x1

    #@9
    if-eq p1, v3, :cond_d

    #@b
    move v3, v1

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v3, v2

    #@e
    :goto_e
    if-eqz v3, :cond_13

    #@10
    .line 602
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@13
    .line 605
    :cond_13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorCompat(ILandroid/view/View;)V

    #@16
    if-eqz v3, :cond_30

    #@18
    .line 608
    iget-object p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    #@1a
    .line 609
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    #@1d
    move-result p2

    #@1e
    .line 610
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    #@21
    move-result p1

    #@22
    .line 611
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getVisibility()I

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v1, v2

    #@2a
    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@2d
    .line 612
    invoke-static {v0, p2, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    #@30
    :cond_30
    return-void
.end method

.method private positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .registers 6

    #@0
    .line 588
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    #@3
    .line 590
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object p2

    #@7
    if-eqz p2, :cond_f

    #@9
    const/4 v0, -0x1

    #@a
    if-eq p1, v0, :cond_f

    #@c
    .line 592
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    #@f
    :cond_f
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    .line 660
    iput-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    #@3
    .line 664
    invoke-static {p0, p3, p4}, Landroidx/appcompat/widget/DropDownListView$Api21Impl;->drawableHotspotChanged(Landroid/view/View;FF)V

    #@6
    .line 666
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->isPressed()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_f

    #@c
    .line 667
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    #@f
    .line 671
    :cond_f
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->layoutChildren()V

    #@12
    .line 675
    iget v1, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    #@14
    const/4 v2, -0x1

    #@15
    const/4 v3, 0x0

    #@16
    if-eq v1, v2, :cond_2e

    #@18
    .line 676
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    #@1b
    move-result v2

    #@1c
    sub-int/2addr v1, v2

    #@1d
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    if-eqz v1, :cond_2e

    #@23
    if-eq v1, p1, :cond_2e

    #@25
    .line 677
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2e

    #@2b
    .line 678
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    #@2e
    .line 681
    :cond_2e
    iput p2, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    #@30
    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@33
    move-result v1

    #@34
    int-to-float v1, v1

    #@35
    sub-float v1, p3, v1

    #@37
    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3a
    move-result v2

    #@3b
    int-to-float v2, v2

    #@3c
    sub-float v2, p4, v2

    #@3e
    .line 687
    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/DropDownListView$Api21Impl;->drawableHotspotChanged(Landroid/view/View;FF)V

    #@41
    .line 689
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    #@44
    move-result v1

    #@45
    if-nez v1, :cond_4a

    #@47
    .line 690
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    #@4a
    .line 694
    :cond_4a
    invoke-direct {p0, p2, p1, p3, p4}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    #@4d
    .line 699
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    #@50
    .line 703
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V

    #@53
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3

    #@0
    .line 379
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 380
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setEnabled(Z)V

    #@7
    :cond_7
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .registers 2

    #@0
    .line 707
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    #@2
    return v0
.end method

.method private updateSelectorStateCompat()V
    .registers 3

    #@0
    .line 571
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 572
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->touchModeDrawsInPressedStateCompat()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_19

    #@c
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->isPressed()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_19

    #@12
    .line 573
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getDrawableState()[I

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@19
    :cond_19
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 208
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    #@3
    .line 211
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@6
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    #@0
    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 198
    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    #@8
    const/4 v0, 0x1

    #@9
    .line 200
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    #@c
    .line 201
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    #@f
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    #@0
    .line 172
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_d

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .registers 2

    #@0
    .line 152
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_d

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .registers 2

    #@0
    .line 162
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_d

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .registers 2

    #@0
    .line 142
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    #@6
    if-nez v0, :cond_e

    #@8
    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public lookForSelectablePosition(IZ)I
    .registers 7

    #@0
    .line 237
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_4c

    #@7
    .line 238
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_e

    #@d
    goto :goto_4c

    #@e
    .line 242
    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@11
    move-result v2

    #@12
    .line 243
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_46

    #@1c
    if-eqz p2, :cond_2e

    #@1e
    const/4 p2, 0x0

    #@1f
    .line 245
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    #@22
    move-result p1

    #@23
    :goto_23
    if-ge p1, v2, :cond_3f

    #@25
    .line 246
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@28
    move-result p2

    #@29
    if-nez p2, :cond_3f

    #@2b
    add-int/lit8 p1, p1, 0x1

    #@2d
    goto :goto_23

    #@2e
    :cond_2e
    add-int/lit8 p2, v2, -0x1

    #@30
    .line 250
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@33
    move-result p1

    #@34
    :goto_34
    if-ltz p1, :cond_3f

    #@36
    .line 251
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@39
    move-result p2

    #@3a
    if-nez p2, :cond_3f

    #@3c
    add-int/lit8 p1, p1, -0x1

    #@3e
    goto :goto_34

    #@3f
    :cond_3f
    if-ltz p1, :cond_45

    #@41
    if-lt p1, v2, :cond_44

    #@43
    goto :goto_45

    #@44
    :cond_44
    return p1

    #@45
    :cond_45
    :goto_45
    return v1

    #@46
    :cond_46
    if-ltz p1, :cond_4c

    #@48
    if-lt p1, v2, :cond_4b

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    return p1

    #@4c
    :cond_4c
    :goto_4c
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .registers 16

    #@0
    .line 298
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingTop()I

    #@3
    move-result p2

    #@4
    .line 299
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingBottom()I

    #@7
    move-result p3

    #@8
    .line 300
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getDividerHeight()I

    #@b
    move-result v0

    #@c
    .line 301
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    .line 303
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@13
    move-result-object v2

    #@14
    if-nez v2, :cond_18

    #@16
    add-int/2addr p2, p3

    #@17
    return p2

    #@18
    :cond_18
    add-int/2addr p2, p3

    #@19
    const/4 p3, 0x0

    #@1a
    if-lez v0, :cond_1f

    #@1c
    if-eqz v1, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v0, p3

    #@20
    .line 320
    :goto_20
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    #@23
    move-result v1

    #@24
    const/4 v3, 0x0

    #@25
    move v4, p3

    #@26
    move v5, v4

    #@27
    move v7, v5

    #@28
    move-object v6, v3

    #@29
    :goto_29
    if-ge v4, v1, :cond_77

    #@2b
    .line 322
    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@2e
    move-result v8

    #@2f
    if-eq v8, v5, :cond_33

    #@31
    move-object v6, v3

    #@32
    move v5, v8

    #@33
    .line 327
    :cond_33
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@36
    move-result-object v6

    #@37
    .line 331
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3a
    move-result-object v8

    #@3b
    if-nez v8, :cond_44

    #@3d
    .line 334
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@40
    move-result-object v8

    #@41
    .line 335
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@44
    .line 338
    :cond_44
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@46
    if-lez v9, :cond_51

    #@48
    .line 339
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@4a
    const/high16 v9, 0x40000000    # 2.0f

    #@4c
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4f
    move-result v8

    #@50
    goto :goto_55

    #@51
    .line 342
    :cond_51
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@54
    move-result v8

    #@55
    .line 344
    :goto_55
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    #@58
    .line 348
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    #@5b
    if-lez v4, :cond_5e

    #@5d
    add-int/2addr p2, v0

    #@5e
    .line 355
    :cond_5e
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@61
    move-result v8

    #@62
    add-int/2addr p2, v8

    #@63
    if-lt p2, p4, :cond_6f

    #@65
    if-ltz p5, :cond_6e

    #@67
    if-le v4, p5, :cond_6e

    #@69
    if-lez v7, :cond_6e

    #@6b
    if-eq p2, p4, :cond_6e

    #@6d
    move p4, v7

    #@6e
    :cond_6e
    return p4

    #@6f
    :cond_6f
    if-ltz p5, :cond_74

    #@71
    if-lt v4, p5, :cond_74

    #@73
    move v7, p2

    #@74
    :cond_74
    add-int/lit8 v4, v4, 0x1

    #@76
    goto :goto_29

    #@77
    :cond_77
    return p2
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 484
    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    #@3
    .line 485
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    #@6
    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 10

    #@0
    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eq v0, v1, :cond_16

    #@8
    const/4 v3, 0x2

    #@9
    if-eq v0, v3, :cond_14

    #@b
    const/4 p2, 0x3

    #@c
    if-eq v0, p2, :cond_11

    #@e
    :cond_e
    :goto_e
    move v3, v1

    #@f
    move p2, v2

    #@10
    goto :goto_46

    #@11
    :cond_11
    :goto_11
    move p2, v2

    #@12
    move v3, p2

    #@13
    goto :goto_46

    #@14
    :cond_14
    move v3, v1

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v3, v2

    #@17
    .line 507
    :goto_17
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@1a
    move-result p2

    #@1b
    if-gez p2, :cond_1e

    #@1d
    goto :goto_11

    #@1e
    .line 513
    :cond_1e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    #@21
    move-result v4

    #@22
    float-to-int v4, v4

    #@23
    .line 514
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    #@26
    move-result p2

    #@27
    float-to-int p2, p2

    #@28
    .line 515
    invoke-virtual {p0, v4, p2}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    #@2b
    move-result v5

    #@2c
    const/4 v6, -0x1

    #@2d
    if-ne v5, v6, :cond_31

    #@2f
    move p2, v1

    #@30
    goto :goto_46

    #@31
    .line 521
    :cond_31
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    #@34
    move-result v3

    #@35
    sub-int v3, v5, v3

    #@37
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@3a
    move-result-object v3

    #@3b
    int-to-float v4, v4

    #@3c
    int-to-float p2, p2

    #@3d
    .line 522
    invoke-direct {p0, v3, v5, v4, p2}, Landroidx/appcompat/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    #@40
    if-ne v0, v1, :cond_e

    #@42
    .line 526
    invoke-direct {p0, v3, v5}, Landroidx/appcompat/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    #@45
    goto :goto_e

    #@46
    :goto_46
    if-eqz v3, :cond_4a

    #@48
    if-eqz p2, :cond_4d

    #@4a
    .line 533
    :cond_4a
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->clearPressedItem()V

    #@4d
    :cond_4d
    if-eqz v3, :cond_65

    #@4f
    .line 538
    iget-object p2, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    #@51
    if-nez p2, :cond_5a

    #@53
    .line 539
    new-instance p2, Landroidx/core/widget/ListViewAutoScrollHelper;

    #@55
    invoke-direct {p2, p0}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    #@58
    iput-object p2, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    #@5a
    .line 541
    :cond_5a
    iget-object p2, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    #@5c
    invoke-virtual {p2, v1}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    #@5f
    .line 542
    iget-object p2, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    #@61
    invoke-virtual {p2, p0, p1}, Landroidx/core/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@64
    goto :goto_6c

    #@65
    .line 543
    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    #@67
    if-eqz p1, :cond_6c

    #@69
    .line 544
    invoke-virtual {p1, v2}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    #@6c
    :cond_6c
    :goto_6c
    return v3
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xa

    #@6
    if-ne v0, v1, :cond_16

    #@8
    .line 443
    iget-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    #@a
    if-nez v1, :cond_16

    #@c
    .line 446
    new-instance v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    #@e
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroidx/appcompat/widget/DropDownListView;)V

    #@11
    iput-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    #@13
    .line 447
    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->post()V

    #@16
    .line 451
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@19
    move-result v1

    #@1a
    const/16 v2, 0x9

    #@1c
    const/4 v3, -0x1

    #@1d
    if-eq v0, v2, :cond_27

    #@1f
    const/4 v2, 0x7

    #@20
    if-ne v0, v2, :cond_23

    #@22
    goto :goto_27

    #@23
    .line 476
    :cond_23
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    #@26
    goto :goto_6f

    #@27
    .line 454
    :cond_27
    :goto_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2a
    move-result v0

    #@2b
    float-to-int v0, v0

    #@2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2f
    move-result p1

    #@30
    float-to-int p1, p1

    #@31
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    #@34
    move-result p1

    #@35
    if-eq p1, v3, :cond_6f

    #@37
    .line 456
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    #@3a
    move-result v0

    #@3b
    if-eq p1, v0, :cond_6f

    #@3d
    .line 457
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    #@40
    move-result v0

    #@41
    sub-int v0, p1, v0

    #@43
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@46
    move-result-object v0

    #@47
    .line 458
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_6c

    #@4d
    .line 461
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->requestFocus()Z

    #@50
    .line 463
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@52
    const/16 v3, 0x1e

    #@54
    if-lt v2, v3, :cond_60

    #@56
    invoke-static {}, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->canPositionSelectorForHoveredItem()Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_60

    #@5c
    .line 466
    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->positionSelectorForHoveredItem(Landroidx/appcompat/widget/DropDownListView;ILandroid/view/View;)V

    #@5f
    goto :goto_6c

    #@60
    .line 468
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@63
    move-result v0

    #@64
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getTop()I

    #@67
    move-result v2

    #@68
    sub-int/2addr v0, v2

    #@69
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/DropDownListView;->setSelectionFromTop(II)V

    #@6c
    .line 471
    :cond_6c
    :goto_6c
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    #@6f
    :cond_6f
    :goto_6f
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    goto :goto_17

    #@7
    .line 218
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@a
    move-result v0

    #@b
    float-to-int v0, v0

    #@c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@f
    move-result v1

    #@10
    float-to-int v1, v1

    #@11
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    #@17
    .line 221
    :goto_17
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    #@19
    if-eqz v0, :cond_1e

    #@1b
    .line 223
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    #@1e
    .line 225
    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@21
    move-result p1

    #@22
    return p1
.end method

.method setListSelectionHidden(Z)V
    .registers 2

    #@0
    .line 567
    iput-boolean p1, p0, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    #@2
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 177
    new-instance v0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    #@4
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    #@b
    .line 178
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@e
    .line 180
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    if-eqz p1, :cond_18

    #@15
    .line 182
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@18
    .line 185
    :cond_18
    iget p1, v0, Landroid/graphics/Rect;->left:I

    #@1a
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    #@1c
    .line 186
    iget p1, v0, Landroid/graphics/Rect;->top:I

    #@1e
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    #@20
    .line 187
    iget p1, v0, Landroid/graphics/Rect;->right:I

    #@22
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    #@24
    .line 188
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    #@26
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    #@28
    return-void
.end method
