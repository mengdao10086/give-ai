.class public Landroidx/appcompat/view/menu/ActionMenuItemView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;,
        Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 64
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    #@0
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 74
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    #@a
    move-result v1

    #@b
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    #@d
    .line 75
    sget-object v1, Landroidx/appcompat/R$styleable;->ActionMenuItemView:[I

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@13
    move-result-object p1

    #@14
    .line 77
    sget p2, Landroidx/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I

    #@16
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@19
    move-result p2

    #@1a
    iput p2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    #@1c
    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1f
    .line 81
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@22
    move-result-object p1

    #@23
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@25
    const/high16 p2, 0x42000000    # 32.0f

    #@27
    mul-float/2addr p1, p2

    #@28
    const/high16 p2, 0x3f000000    # 0.5f

    #@2a
    add-float/2addr p1, p2

    #@2b
    float-to-int p1, p1

    #@2c
    .line 82
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@2e
    .line 84
    invoke-virtual {p0, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@31
    const/4 p1, -0x1

    #@32
    .line 86
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    #@34
    .line 87
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    #@37
    return-void
.end method

.method private shouldAllowTextWithIcon()Z
    .registers 6

    #@0
    .line 108
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v0

    #@c
    .line 109
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@e
    .line 110
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@10
    const/16 v3, 0x1e0

    #@12
    if-ge v1, v3, :cond_22

    #@14
    const/16 v4, 0x280

    #@16
    if-lt v1, v4, :cond_1a

    #@18
    if-ge v2, v3, :cond_22

    #@1a
    .line 112
    :cond_1a
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@1c
    const/4 v1, 0x2

    #@1d
    if-ne v0, v1, :cond_20

    #@1f
    goto :goto_22

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_23

    #@22
    :cond_22
    :goto_22
    const/4 v0, 0x1

    #@23
    :goto_23
    return v0
.end method

.method private updateTextButtonVisibility()V
    .registers 5

    #@0
    .line 193
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    xor-int/2addr v0, v1

    #@8
    .line 194
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz v2, :cond_1e

    #@c
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@e
    .line 195
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->showsTextAsAction()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1d

    #@14
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    #@16
    if-nez v2, :cond_1e

    #@18
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    #@1a
    if-eqz v2, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v1, 0x0

    #@1e
    :cond_1e
    :goto_1e
    and-int/2addr v0, v1

    #@1f
    const/4 v1, 0x0

    #@20
    if-eqz v0, :cond_25

    #@22
    .line 197
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    #@24
    goto :goto_26

    #@25
    :cond_25
    move-object v2, v1

    #@26
    :goto_26
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    #@29
    .line 200
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2b
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    #@2e
    move-result-object v2

    #@2f
    .line 201
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_43

    #@35
    if-eqz v0, :cond_39

    #@37
    move-object v2, v1

    #@38
    goto :goto_3f

    #@39
    .line 204
    :cond_39
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@3b
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@3e
    move-result-object v2

    #@3f
    :goto_3f
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@42
    goto :goto_46

    #@43
    .line 206
    :cond_43
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@46
    .line 209
    :goto_46
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@48
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    #@4b
    move-result-object v2

    #@4c
    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_5f

    #@52
    if-eqz v0, :cond_55

    #@54
    goto :goto_5b

    #@55
    .line 212
    :cond_55
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@57
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@5a
    move-result-object v1

    #@5b
    :goto_5b
    invoke-static {p0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@5e
    goto :goto_62

    #@5f
    .line 214
    :cond_5f
    invoke-static {p0, v2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@62
    :goto_62
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 100
    const-class v0, Landroid/widget/Button;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public hasText()Z
    .registers 2

    #@0
    .line 242
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    xor-int/lit8 v0, v0, 0x1

    #@a
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .registers 3

    #@0
    .line 129
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p2

    #@6
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 132
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleForItemView(Landroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    #@c
    move-result-object p2

    #@d
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    #@10
    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@13
    move-result p2

    #@14
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setId(I)V

    #@17
    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    #@1a
    move-result p2

    #@1b
    if-eqz p2, :cond_1f

    #@1d
    const/4 p2, 0x0

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    const/16 p2, 0x8

    #@21
    :goto_21
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setVisibility(I)V

    #@24
    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    #@27
    move-result p2

    #@28
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setEnabled(Z)V

    #@2b
    .line 137
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@2e
    move-result p1

    #@2f
    if-eqz p1, :cond_3c

    #@31
    .line 138
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    #@33
    if-nez p1, :cond_3c

    #@35
    .line 139
    new-instance p1, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    #@37
    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V

    #@3a
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    #@3c
    :cond_3c
    return-void
.end method

.method public needsDividerAfter()Z
    .registers 2

    #@0
    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    #@0
    .line 264
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@8
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_10

    #@e
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

.method public onClick(Landroid/view/View;)V
    .registers 3

    #@0
    .line 155
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    #@2
    if-eqz p1, :cond_9

    #@4
    .line 156
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@6
    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    #@9
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    #@0
    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 94
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    #@6
    move-result p1

    #@7
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    #@9
    .line 95
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    #@c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    #@0
    .line 274
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 275
    iget v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    #@8
    if-ltz v1, :cond_19

    #@a
    .line 276
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingTop()I

    #@d
    move-result v2

    #@e
    .line 277
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingRight()I

    #@11
    move-result v3

    #@12
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingBottom()I

    #@15
    move-result v4

    #@16
    .line 276
    invoke-super {p0, v1, v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    #@19
    .line 280
    :cond_19
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    #@1c
    .line 282
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1f
    move-result v1

    #@20
    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@23
    move-result p1

    #@24
    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    #@27
    move-result v2

    #@28
    const/high16 v3, -0x80000000

    #@2a
    if-ne v1, v3, :cond_33

    #@2c
    .line 285
    iget v3, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    #@2e
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@31
    move-result p1

    #@32
    goto :goto_35

    #@33
    .line 286
    :cond_33
    iget p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    #@35
    :goto_35
    const/high16 v3, 0x40000000    # 2.0f

    #@37
    if-eq v1, v3, :cond_46

    #@39
    .line 288
    iget v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    #@3b
    if-lez v1, :cond_46

    #@3d
    if-ge v2, p1, :cond_46

    #@3f
    .line 290
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@42
    move-result p1

    #@43
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    #@46
    :cond_46
    if-nez v0, :cond_6c

    #@48
    .line 294
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4a
    if-eqz p1, :cond_6c

    #@4c
    .line 297
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    #@4f
    move-result p1

    #@50
    .line 298
    iget-object p2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@52
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@55
    move-result-object p2

    #@56
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@59
    move-result p2

    #@5a
    sub-int/2addr p1, p2

    #@5b
    .line 299
    div-int/lit8 p1, p1, 0x2

    #@5d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingTop()I

    #@60
    move-result p2

    #@61
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingRight()I

    #@64
    move-result v0

    #@65
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingBottom()I

    #@68
    move-result v1

    #@69
    invoke-super {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    #@6c
    :cond_6c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    .line 338
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 146
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    #@a
    if-eqz v0, :cond_14

    #@c
    .line 147
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    return p1

    #@14
    .line 150
    :cond_14
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@17
    move-result p1

    #@18
    return p1
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public setExpandedFormat(Z)V
    .registers 3

    #@0
    .line 184
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    #@2
    if-eq v0, p1, :cond_d

    #@4
    .line 185
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    #@6
    .line 186
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 187
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->actionFormatChanged()V

    #@d
    :cond_d
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 220
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz p1, :cond_25

    #@4
    .line 222
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v0

    #@8
    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@b
    move-result v1

    #@c
    .line 224
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@e
    if-le v0, v2, :cond_17

    #@10
    int-to-float v3, v2

    #@11
    int-to-float v0, v0

    #@12
    div-float/2addr v3, v0

    #@13
    int-to-float v0, v1

    #@14
    mul-float/2addr v0, v3

    #@15
    float-to-int v1, v0

    #@16
    move v0, v2

    #@17
    :cond_17
    if-le v1, v2, :cond_20

    #@19
    int-to-float v3, v2

    #@1a
    int-to-float v1, v1

    #@1b
    div-float/2addr v3, v1

    #@1c
    int-to-float v0, v0

    #@1d
    mul-float/2addr v0, v3

    #@1e
    float-to-int v0, v0

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move v2, v1

    #@21
    :goto_21
    const/4 v1, 0x0

    #@22
    .line 234
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    .line 236
    invoke-virtual {p0, p1, v0, v0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@29
    .line 238
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    #@2c
    return-void
.end method

.method public setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    #@0
    .line 161
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    #@2
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    #@0
    .line 118
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    #@2
    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    #@5
    return-void
.end method

.method public setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;)V
    .registers 2

    #@0
    .line 165
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    #@2
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    #@0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 252
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 254
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

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
