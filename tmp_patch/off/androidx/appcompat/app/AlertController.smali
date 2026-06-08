.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$CheckedItemAdapter;,
        Landroidx/appcompat/app/AlertController$AlertParams;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 7

    #@0
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 82
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    #@6
    .line 101
    iput v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    #@8
    const/4 v1, -0x1

    #@9
    .line 111
    iput v1, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    #@b
    .line 122
    iput v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    #@d
    .line 126
    new-instance v1, Landroidx/appcompat/app/AlertController$1;

    #@f
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$1;-><init>(Landroidx/appcompat/app/AlertController;)V

    #@12
    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@14
    .line 183
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    #@16
    .line 184
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    #@18
    .line 185
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@1a
    .line 186
    new-instance p3, Landroidx/appcompat/app/AlertController$ButtonHandler;

    #@1c
    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    #@1f
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    #@21
    .line 188
    sget-object p3, Landroidx/appcompat/R$styleable;->AlertDialog:[I

    #@23
    sget v1, Landroidx/appcompat/R$attr;->alertDialogStyle:I

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@29
    move-result-object p1

    #@2a
    .line 191
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_android_layout:I

    #@2c
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2f
    move-result p3

    #@30
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    #@32
    .line 192
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    #@34
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@37
    move-result p3

    #@38
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    #@3a
    .line 194
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listLayout:I

    #@3c
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3f
    move-result p3

    #@40
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListLayout:I

    #@42
    .line 195
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    #@44
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@47
    move-result p3

    #@48
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    #@4a
    .line 196
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    #@4c
    .line 197
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4f
    move-result p3

    #@50
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    #@52
    .line 198
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    #@54
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@57
    move-result p3

    #@58
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    #@5a
    .line 199
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_showTitle:I

    #@5c
    const/4 v1, 0x1

    #@5d
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@60
    move-result p3

    #@61
    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    #@63
    .line 200
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_buttonIconDimen:I

    #@65
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@68
    move-result p3

    #@69
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    #@6b
    .line 202
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@6e
    .line 205
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    #@71
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 5

    #@0
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 213
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@a
    const/4 v2, 0x0

    #@b
    if-nez v0, :cond_e

    #@d
    return v2

    #@e
    .line 217
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    #@10
    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@13
    move-result v0

    #@14
    :cond_14
    if-lez v0, :cond_23

    #@16
    add-int/lit8 v0, v0, -0x1

    #@18
    .line 221
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v3

    #@1c
    .line 222
    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_14

    #@22
    return v1

    #@23
    :cond_23
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 4

    #@0
    .line 829
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    #@6
    const/4 v1, 0x1

    #@7
    .line 830
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@9
    const/high16 v1, 0x3f000000    # 0.5f

    #@b
    .line 831
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@d
    .line 832
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@10
    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    if-eqz p1, :cond_11

    #@4
    const/4 v2, -0x1

    #@5
    .line 750
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_d

    #@b
    move v2, v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v2, v1

    #@e
    .line 749
    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@11
    :cond_11
    if-eqz p2, :cond_1f

    #@13
    const/4 p1, 0x1

    #@14
    .line 754
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    #@17
    move-result p0

    #@18
    if-eqz p0, :cond_1b

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v0, v1

    #@1c
    .line 753
    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    #@1f
    :cond_1f
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5

    #@0
    if-nez p1, :cond_f

    #@2
    .line 443
    instance-of p1, p2, Landroid/view/ViewStub;

    #@4
    if-eqz p1, :cond_c

    #@6
    .line 444
    check-cast p2, Landroid/view/ViewStub;

    #@8
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@b
    move-result-object p2

    #@c
    .line 447
    :cond_c
    check-cast p2, Landroid/view/ViewGroup;

    #@e
    return-object p2

    #@f
    :cond_f
    if-eqz p2, :cond_1e

    #@11
    .line 452
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object v0

    #@15
    .line 453
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@17
    if-eqz v1, :cond_1e

    #@19
    .line 454
    check-cast v0, Landroid/view/ViewGroup;

    #@1b
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1e
    .line 459
    :cond_1e
    instance-of p2, p1, Landroid/view/ViewStub;

    #@20
    if-eqz p2, :cond_28

    #@22
    .line 460
    check-cast p1, Landroid/view/ViewStub;

    #@24
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@27
    move-result-object p1

    #@28
    .line 463
    :cond_28
    check-cast p1, Landroid/view/ViewGroup;

    #@2a
    return-object p1
.end method

.method private selectContentView()I
    .registers 4

    #@0
    .line 237
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    #@2
    if-nez v0, :cond_7

    #@4
    .line 238
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    #@6
    return v0

    #@7
    .line 240
    :cond_7
    iget v1, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    #@9
    const/4 v2, 0x1

    #@a
    if-ne v1, v2, :cond_d

    #@c
    return v0

    #@d
    .line 243
    :cond_d
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    #@f
    return v0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 8

    #@0
    .line 560
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@2
    sget v1, Landroidx/appcompat/R$id;->scrollIndicatorUp:I

    #@4
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    .line 561
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@a
    sget v2, Landroidx/appcompat/R$id;->scrollIndicatorDown:I

    #@c
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    .line 565
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    #@13
    if-eqz v0, :cond_18

    #@15
    .line 568
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@18
    :cond_18
    if-eqz v1, :cond_1d

    #@1a
    .line 571
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1d
    :cond_1d
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 9

    #@0
    const v0, 0x1020019

    #@3
    .line 763
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/widget/Button;

    #@9
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@b
    .line 764
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@10
    .line 766
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    const/16 v1, 0x8

    #@18
    const/4 v2, 0x0

    #@19
    const/4 v3, 0x1

    #@1a
    const/4 v4, 0x0

    #@1b
    if-eqz v0, :cond_28

    #@1d
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    #@1f
    if-nez v0, :cond_28

    #@21
    .line 767
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    #@26
    move v0, v4

    #@27
    goto :goto_45

    #@28
    .line 769
    :cond_28
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@2a
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@2c
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@2f
    .line 770
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    #@31
    if-eqz v0, :cond_3f

    #@33
    .line 771
    iget v5, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    #@35
    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@38
    .line 772
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@3a
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    #@3c
    invoke-virtual {v0, v5, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@3f
    .line 774
    :cond_3f
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@41
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    #@44
    move v0, v3

    #@45
    :goto_45
    const v5, 0x102001a

    #@48
    .line 778
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Landroid/widget/Button;

    #@4e
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@50
    .line 779
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@52
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@55
    .line 781
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5a
    move-result v5

    #@5b
    if-eqz v5, :cond_67

    #@5d
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    #@5f
    if-nez v5, :cond_67

    #@61
    .line 782
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@63
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    #@66
    goto :goto_85

    #@67
    .line 784
    :cond_67
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@69
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@6b
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@6e
    .line 785
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    #@70
    if-eqz v5, :cond_7e

    #@72
    .line 786
    iget v6, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    #@74
    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@77
    .line 787
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@79
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    #@7b
    invoke-virtual {v5, v6, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@7e
    .line 789
    :cond_7e
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@80
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    #@83
    or-int/lit8 v0, v0, 0x2

    #@85
    :goto_85
    const v5, 0x102001b

    #@88
    .line 793
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@8b
    move-result-object v5

    #@8c
    check-cast v5, Landroid/widget/Button;

    #@8e
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@90
    .line 794
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@92
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@95
    .line 796
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@97
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9a
    move-result v5

    #@9b
    if-eqz v5, :cond_a7

    #@9d
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    #@9f
    if-nez v5, :cond_a7

    #@a1
    .line 797
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@a3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    #@a6
    goto :goto_c5

    #@a7
    .line 799
    :cond_a7
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@a9
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@ab
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@ae
    .line 800
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    #@b0
    if-eqz v5, :cond_be

    #@b2
    .line 801
    iget v6, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    #@b4
    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@b7
    .line 802
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@b9
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    #@bb
    invoke-virtual {v5, v6, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@be
    .line 804
    :cond_be
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@c0
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    #@c3
    or-int/lit8 v0, v0, 0x4

    #@c5
    .line 808
    :goto_c5
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    #@c7
    invoke-static {v2}, Landroidx/appcompat/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    #@ca
    move-result v2

    #@cb
    if-eqz v2, :cond_e6

    #@cd
    if-ne v0, v3, :cond_d5

    #@cf
    .line 814
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@d1
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@d4
    goto :goto_e6

    #@d5
    :cond_d5
    const/4 v2, 0x2

    #@d6
    if-ne v0, v2, :cond_de

    #@d8
    .line 816
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@da
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@dd
    goto :goto_e6

    #@de
    :cond_de
    const/4 v2, 0x4

    #@df
    if-ne v0, v2, :cond_e6

    #@e1
    .line 818
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@e3
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@e6
    :cond_e6
    :goto_e6
    if-eqz v0, :cond_e9

    #@e8
    goto :goto_ea

    #@e9
    :cond_e9
    move v3, v4

    #@ea
    :goto_ea
    if-nez v3, :cond_ef

    #@ec
    .line 824
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@ef
    :cond_ef
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 6

    #@0
    .line 719
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@2
    sget v1, Landroidx/appcompat/R$id;->scrollView:I

    #@4
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    #@a
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@c
    const/4 v1, 0x0

    #@d
    .line 720
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    #@10
    .line 721
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@12
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    #@15
    const v0, 0x102000b

    #@18
    .line 724
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/widget/TextView;

    #@1e
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@20
    if-nez v0, :cond_23

    #@22
    return-void

    #@23
    .line 729
    :cond_23
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@25
    if-eqz v1, :cond_2b

    #@27
    .line 730
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2a
    goto :goto_5b

    #@2b
    :cond_2b
    const/16 v1, 0x8

    #@2d
    .line 732
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@30
    .line 733
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@32
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@34
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    #@37
    .line 735
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@39
    if-eqz v0, :cond_58

    #@3b
    .line 736
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@3d
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    #@40
    move-result-object p1

    #@41
    check-cast p1, Landroid/view/ViewGroup;

    #@43
    .line 737
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@48
    move-result v0

    #@49
    .line 738
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@4c
    .line 739
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@4e
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@50
    const/4 v3, -0x1

    #@51
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@54
    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@57
    goto :goto_5b

    #@58
    .line 742
    :cond_58
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@5b
    :goto_5b
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 7

    #@0
    .line 640
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    goto :goto_18

    #@6
    .line 642
    :cond_6
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    #@8
    if-eqz v0, :cond_17

    #@a
    .line 643
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    #@c
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@f
    move-result-object v0

    #@10
    .line 644
    iget v2, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    #@12
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    :goto_18
    if-eqz v0, :cond_1b

    #@1a
    const/4 v1, 0x1

    #@1b
    :cond_1b
    if-eqz v1, :cond_23

    #@1d
    .line 650
    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2a

    #@23
    .line 651
    :cond_23
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@25
    const/high16 v3, 0x20000

    #@27
    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    #@2a
    :cond_2a
    if-eqz v1, :cond_5c

    #@2c
    .line 656
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@2e
    sget v2, Landroidx/appcompat/R$id;->custom:I

    #@30
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/widget/FrameLayout;

    #@36
    .line 657
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@38
    const/4 v3, -0x1

    #@39
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3c
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3f
    .line 659
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    #@41
    if-eqz v0, :cond_4e

    #@43
    .line 660
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    #@45
    iget v2, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    #@47
    iget v3, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    #@49
    iget v4, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    #@4b
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    #@4e
    .line 664
    :cond_4e
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@50
    if-eqz v0, :cond_61

    #@52
    .line 665
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@55
    move-result-object p1

    #@56
    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@58
    const/4 v0, 0x0

    #@59
    iput v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@5b
    goto :goto_61

    #@5c
    :cond_5c
    const/16 v0, 0x8

    #@5e
    .line 668
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@61
    :cond_61
    :goto_61
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 7

    #@0
    .line 673
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@2
    const/16 v1, 0x8

    #@4
    if-eqz v0, :cond_20

    #@6
    .line 675
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@8
    const/4 v2, -0x1

    #@9
    const/4 v3, -0x2

    #@a
    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@d
    .line 678
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@13
    .line 681
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@15
    sget v0, Landroidx/appcompat/R$id;->title_template:I

    #@17
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object p1

    #@1b
    .line 682
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@1e
    goto/16 :goto_96

    #@20
    .line 684
    :cond_20
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@22
    const v2, 0x1020006

    #@25
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/widget/ImageView;

    #@2b
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@2d
    .line 686
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@32
    move-result v0

    #@33
    xor-int/lit8 v0, v0, 0x1

    #@35
    if-eqz v0, :cond_83

    #@37
    .line 687
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    #@39
    if-eqz v0, :cond_83

    #@3b
    .line 689
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@3d
    sget v0, Landroidx/appcompat/R$id;->alertTitle:I

    #@3f
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@42
    move-result-object p1

    #@43
    check-cast p1, Landroid/widget/TextView;

    #@45
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@47
    .line 690
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4c
    .line 695
    iget p1, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    #@4e
    if-eqz p1, :cond_56

    #@50
    .line 696
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@52
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@55
    goto :goto_96

    #@56
    .line 697
    :cond_56
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@58
    if-eqz p1, :cond_60

    #@5a
    .line 698
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@5c
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5f
    goto :goto_96

    #@60
    .line 702
    :cond_60
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@62
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@64
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    #@67
    move-result v0

    #@68
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@6a
    .line 703
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    #@6d
    move-result v2

    #@6e
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@70
    .line 704
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    #@73
    move-result v3

    #@74
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@76
    .line 705
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    #@79
    move-result v4

    #@7a
    .line 702
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    #@7d
    .line 706
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7f
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@82
    goto :goto_96

    #@83
    .line 710
    :cond_83
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@85
    sget v2, Landroidx/appcompat/R$id;->title_template:I

    #@87
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@8a
    move-result-object v0

    #@8b
    .line 711
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@8e
    .line 712
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@93
    .line 713
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@96
    :goto_96
    return-void
.end method

.method private setupView()V
    .registers 9

    #@0
    .line 467
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    #@2
    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    #@4
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    .line 468
    sget v1, Landroidx/appcompat/R$id;->topPanel:I

    #@a
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    .line 469
    sget v2, Landroidx/appcompat/R$id;->contentPanel:I

    #@10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v2

    #@14
    .line 470
    sget v3, Landroidx/appcompat/R$id;->buttonPanel:I

    #@16
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@19
    move-result-object v3

    #@1a
    .line 474
    sget v4, Landroidx/appcompat/R$id;->customPanel:I

    #@1c
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/view/ViewGroup;

    #@22
    .line 475
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    #@25
    .line 477
    sget v4, Landroidx/appcompat/R$id;->topPanel:I

    #@27
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object v4

    #@2b
    .line 478
    sget v5, Landroidx/appcompat/R$id;->contentPanel:I

    #@2d
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v5

    #@31
    .line 479
    sget v6, Landroidx/appcompat/R$id;->buttonPanel:I

    #@33
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@36
    move-result-object v6

    #@37
    .line 482
    invoke-direct {p0, v4, v1}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@3a
    move-result-object v1

    #@3b
    .line 483
    invoke-direct {p0, v5, v2}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@3e
    move-result-object v2

    #@3f
    .line 484
    invoke-direct {p0, v6, v3}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@42
    move-result-object v3

    #@43
    .line 486
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    #@46
    .line 487
    invoke-direct {p0, v3}, Landroidx/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    #@49
    .line 488
    invoke-direct {p0, v1}, Landroidx/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    #@4c
    const/16 v4, 0x8

    #@4e
    const/4 v5, 0x1

    #@4f
    const/4 v6, 0x0

    #@50
    if-eqz v0, :cond_5a

    #@52
    .line 491
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    #@55
    move-result v0

    #@56
    if-eq v0, v4, :cond_5a

    #@58
    move v0, v5

    #@59
    goto :goto_5b

    #@5a
    :cond_5a
    move v0, v6

    #@5b
    :goto_5b
    if-eqz v1, :cond_65

    #@5d
    .line 493
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    #@60
    move-result v7

    #@61
    if-eq v7, v4, :cond_65

    #@63
    move v7, v5

    #@64
    goto :goto_66

    #@65
    :cond_65
    move v7, v6

    #@66
    :goto_66
    if-eqz v3, :cond_70

    #@68
    .line 495
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    #@6b
    move-result v3

    #@6c
    if-eq v3, v4, :cond_70

    #@6e
    move v3, v5

    #@6f
    goto :goto_71

    #@70
    :cond_70
    move v3, v6

    #@71
    :goto_71
    if-nez v3, :cond_80

    #@73
    if-eqz v2, :cond_80

    #@75
    .line 500
    sget v4, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    #@77
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@7a
    move-result-object v4

    #@7b
    if-eqz v4, :cond_80

    #@7d
    .line 502
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    #@80
    :cond_80
    if-eqz v7, :cond_a0

    #@82
    .line 509
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@84
    if-eqz v4, :cond_89

    #@86
    .line 510
    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    #@89
    .line 515
    :cond_89
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@8b
    if-nez v4, :cond_94

    #@8d
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@8f
    if-eqz v4, :cond_92

    #@91
    goto :goto_94

    #@92
    :cond_92
    const/4 v1, 0x0

    #@93
    goto :goto_9a

    #@94
    .line 516
    :cond_94
    :goto_94
    sget v4, Landroidx/appcompat/R$id;->titleDividerNoCustom:I

    #@96
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@99
    move-result-object v1

    #@9a
    :goto_9a
    if-eqz v1, :cond_ad

    #@9c
    .line 520
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    #@9f
    goto :goto_ad

    #@a0
    :cond_a0
    if-eqz v2, :cond_ad

    #@a2
    .line 524
    sget v1, Landroidx/appcompat/R$id;->textSpacerNoTitle:I

    #@a4
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@a7
    move-result-object v1

    #@a8
    if-eqz v1, :cond_ad

    #@aa
    .line 526
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    #@ad
    .line 531
    :cond_ad
    :goto_ad
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@af
    instance-of v4, v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    #@b1
    if-eqz v4, :cond_b8

    #@b3
    .line 532
    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    #@b5
    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    #@b8
    :cond_b8
    if-nez v0, :cond_cc

    #@ba
    .line 537
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@bc
    if-eqz v0, :cond_bf

    #@be
    goto :goto_c1

    #@bf
    :cond_bf
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@c1
    :goto_c1
    if-eqz v0, :cond_cc

    #@c3
    if-eqz v3, :cond_c6

    #@c5
    const/4 v6, 0x2

    #@c6
    :cond_c6
    or-int v1, v7, v6

    #@c8
    const/4 v3, 0x3

    #@c9
    .line 541
    invoke-direct {p0, v2, v0, v1, v3}, Landroidx/appcompat/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    #@cc
    .line 546
    :cond_cc
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@ce
    if-eqz v0, :cond_e2

    #@d0
    .line 547
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    #@d2
    if-eqz v1, :cond_e2

    #@d4
    .line 548
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@d7
    .line 549
    iget v1, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    #@d9
    const/4 v2, -0x1

    #@da
    if-le v1, v2, :cond_e2

    #@dc
    .line 551
    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    #@df
    .line 552
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    #@e2
    :cond_e2
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 4

    #@0
    .line 177
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8
    move-result-object p0

    #@9
    sget v1, Landroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@f
    .line 179
    iget p0, v0, Landroid/util/TypedValue;->data:I

    #@11
    if-eqz p0, :cond_14

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v2, 0x0

    #@15
    :goto_15
    return v2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    #@0
    const/4 v0, -0x3

    #@1
    if-eq p1, v0, :cond_11

    #@3
    const/4 v0, -0x2

    #@4
    if-eq p1, v0, :cond_e

    #@6
    const/4 v0, -0x1

    #@7
    if-eq p1, v0, :cond_b

    #@9
    const/4 p1, 0x0

    #@a
    return-object p1

    #@b
    .line 410
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@d
    return-object p1

    #@e
    .line 412
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@10
    return-object p1

    #@11
    .line 414
    :cond_11
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@13
    return-object p1
.end method

.method public getIconAttributeResId(I)I
    .registers 5

    #@0
    .line 398
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 399
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@f
    .line 400
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    #@11
    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    #@0
    .line 404
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    #@2
    return-object v0
.end method

.method public installContent()V
    .registers 3

    #@0
    .line 231
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->selectContentView()I

    #@3
    move-result v0

    #@4
    .line 232
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    #@6
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    #@9
    .line 233
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->setupView()V

    #@c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 422
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@2
    if-eqz p1, :cond_c

    #@4
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 427
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    #@2
    if-eqz p1, :cond_c

    #@4
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    if-nez p4, :cond_a

    #@2
    if-eqz p3, :cond_a

    #@4
    .line 324
    iget-object p4, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object p4

    #@a
    :cond_a
    const/4 p3, -0x3

    #@b
    if-eq p1, p3, :cond_29

    #@d
    const/4 p3, -0x2

    #@e
    if-eq p1, p3, :cond_22

    #@10
    const/4 p3, -0x1

    #@11
    if-ne p1, p3, :cond_1a

    #@13
    .line 330
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@15
    .line 331
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    #@17
    .line 332
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    #@19
    goto :goto_2f

    #@1a
    .line 348
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string p2, "Button does not exist"

    #@1e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw p1

    #@22
    .line 336
    :cond_22
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@24
    .line 337
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    #@26
    .line 338
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    #@28
    goto :goto_2f

    #@29
    .line 342
    :cond_29
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@2b
    .line 343
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    #@2d
    .line 344
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    #@2f
    :goto_2f
    return-void
.end method

.method public setButtonPanelLayoutHint(I)V
    .registers 2

    #@0
    .line 303
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    #@2
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    #@0
    .line 257
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@2
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 359
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@3
    .line 360
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    #@5
    .line 362
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7
    if-eqz v0, :cond_1c

    #@9
    if-eqz p1, :cond_17

    #@b
    const/4 p1, 0x0

    #@c
    .line 364
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@f
    .line 365
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@11
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    #@13
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    #@16
    goto :goto_1c

    #@17
    :cond_17
    const/16 p1, 0x8

    #@19
    .line 367
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 378
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v0, 0x0

    #@3
    .line 379
    iput v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    #@5
    .line 381
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7
    if-eqz v1, :cond_19

    #@9
    if-eqz p1, :cond_14

    #@b
    .line 383
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@e
    .line 384
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    goto :goto_19

    #@14
    :cond_14
    const/16 p1, 0x8

    #@16
    .line 386
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@19
    :cond_19
    :goto_19
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 261
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@2
    .line 262
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 247
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 248
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    :cond_9
    return-void
.end method

.method public setView(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 271
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    #@3
    .line 272
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    #@5
    const/4 p1, 0x0

    #@6
    .line 273
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    #@8
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 280
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    #@2
    const/4 p1, 0x0

    #@3
    .line 281
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    #@5
    .line 282
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    #@7
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 6

    #@0
    .line 290
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    #@2
    const/4 p1, 0x0

    #@3
    .line 291
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    #@5
    const/4 p1, 0x1

    #@6
    .line 292
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    #@8
    .line 293
    iput p2, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    #@a
    .line 294
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    #@c
    .line 295
    iput p4, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    #@e
    .line 296
    iput p5, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    #@10
    return-void
.end method
