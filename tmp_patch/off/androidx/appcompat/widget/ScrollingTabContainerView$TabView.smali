.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.app.ActionBar$Tab"


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroidx/appcompat/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .registers 8

    #@0
    .line 395
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    #@2
    .line 396
    sget p1, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, p2, v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@8
    const/4 p1, 0x1

    #@9
    new-array p1, p1, [I

    #@b
    const v1, 0x10100d4

    #@e
    const/4 v2, 0x0

    #@f
    aput v1, p1, v2

    #@11
    .line 382
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    #@13
    .line 397
    iput-object p3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    #@15
    .line 399
    sget p3, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    #@17
    invoke-static {p2, v0, p1, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@1a
    move-result-object p1

    #@1b
    .line 401
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@1e
    move-result p2

    #@1f
    if-eqz p2, :cond_28

    #@21
    .line 402
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object p2

    #@25
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@28
    .line 404
    :cond_28
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@2b
    if-eqz p4, :cond_33

    #@2d
    const p1, 0x800013

    #@30
    .line 407
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    #@33
    .line 410
    :cond_33
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    #@36
    return-void
.end method


# virtual methods
.method public bindTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 2

    #@0
    .line 414
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    #@2
    .line 415
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    #@5
    return-void
.end method

.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    #@0
    .line 522
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    #@2
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 429
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    #@5
    .line 431
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    #@0
    .line 436
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    #@5
    .line 439
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    #@0
    .line 444
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 447
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    #@5
    iget p1, p1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@7
    if-lez p1, :cond_20

    #@9
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    #@c
    move-result p1

    #@d
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    #@f
    iget v0, v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@11
    if-le p1, v0, :cond_20

    #@13
    .line 448
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    #@15
    iget p1, p1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@17
    const/high16 v0, 0x40000000    # 2.0f

    #@19
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1c
    move-result p1

    #@1d
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@20
    :cond_20
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    #@0
    .line 420
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 421
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    #@c
    if-eqz v0, :cond_14

    #@e
    if-eqz p1, :cond_14

    #@10
    const/4 p1, 0x4

    #@11
    .line 423
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    #@14
    :cond_14
    return-void
.end method

.method public update()V
    .registers 11

    #@0
    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    #@2
    .line 455
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x8

    #@8
    const/4 v3, 0x0

    #@9
    if-eqz v1, :cond_32

    #@b
    .line 457
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object v0

    #@f
    if-eq v0, p0, :cond_1b

    #@11
    if-eqz v0, :cond_18

    #@13
    .line 459
    check-cast v0, Landroid/view/ViewGroup;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@18
    .line 460
    :cond_18
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    #@1b
    .line 462
    :cond_1b
    iput-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    #@1d
    .line 463
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@1f
    if-eqz v0, :cond_24

    #@21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@24
    .line 464
    :cond_24
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@26
    if-eqz v0, :cond_d3

    #@28
    .line 465
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@2b
    .line 466
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@2d
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@30
    goto/16 :goto_d3

    #@32
    .line 469
    :cond_32
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    #@34
    if-eqz v1, :cond_3b

    #@36
    .line 470
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    #@39
    .line 471
    iput-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    #@3b
    .line 474
    :cond_3b
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    #@3e
    move-result-object v1

    #@3f
    .line 475
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    #@42
    move-result-object v4

    #@43
    const/16 v5, 0x10

    #@45
    const/4 v6, 0x0

    #@46
    const/4 v7, -0x2

    #@47
    if-eqz v1, :cond_70

    #@49
    .line 478
    iget-object v8, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@4b
    if-nez v8, :cond_65

    #@4d
    .line 479
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    #@4f
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    #@52
    move-result-object v9

    #@53
    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    #@56
    .line 480
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    #@58
    invoke-direct {v9, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@5b
    .line 482
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@5d
    .line 483
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@60
    .line 484
    invoke-virtual {p0, v8, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    #@63
    .line 485
    iput-object v8, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@65
    .line 487
    :cond_65
    iget-object v8, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@67
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6a
    .line 488
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@6c
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    #@6f
    goto :goto_7c

    #@70
    .line 489
    :cond_70
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@72
    if-eqz v1, :cond_7c

    #@74
    .line 490
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@77
    .line 491
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@79
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7c
    .line 494
    :cond_7c
    :goto_7c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7f
    move-result v1

    #@80
    xor-int/lit8 v1, v1, 0x1

    #@82
    if-eqz v1, :cond_b2

    #@84
    .line 496
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@86
    if-nez v2, :cond_a7

    #@88
    .line 497
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    #@8a
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    #@8d
    move-result-object v8

    #@8e
    sget v9, Landroidx/appcompat/R$attr;->actionBarTabTextStyle:I

    #@90
    invoke-direct {v2, v8, v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@93
    .line 499
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@95
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@98
    .line 500
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    #@9a
    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@9d
    .line 502
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@9f
    .line 503
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@a2
    .line 504
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    #@a5
    .line 505
    iput-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@a7
    .line 507
    :cond_a7
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@a9
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@ac
    .line 508
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@ae
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@b1
    goto :goto_be

    #@b2
    .line 509
    :cond_b2
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@b4
    if-eqz v4, :cond_be

    #@b6
    .line 510
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@b9
    .line 511
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@bb
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@be
    .line 514
    :cond_be
    :goto_be
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@c0
    if-eqz v2, :cond_c9

    #@c2
    .line 515
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@c9
    :cond_c9
    if-eqz v1, :cond_cc

    #@cb
    goto :goto_d0

    #@cc
    .line 517
    :cond_cc
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    #@cf
    move-result-object v3

    #@d0
    :goto_d0
    invoke-static {p0, v3}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@d3
    :cond_d3
    :goto_d3
    return-void
.end method
