.class public Landroidx/appcompat/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroidx/appcompat/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Landroidx/appcompat/widget/Toolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .registers 5

    #@0
    .line 96
    sget v0, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    #@2
    sget v1, Landroidx/appcompat/R$drawable;->abc_ic_ab_back_material:I

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V

    #@7
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    .registers 8

    #@0
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 p4, 0x0

    #@4
    .line 90
    iput p4, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@6
    .line 92
    iput p4, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@8
    .line 102
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@a
    .line 103
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@10
    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    #@16
    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@18
    if-eqz v0, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v0, p4

    #@1d
    :goto_1d
    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    #@1f
    .line 106
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@25
    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@28
    move-result-object p1

    #@29
    sget-object v0, Landroidx/appcompat/R$styleable;->ActionBar:[I

    #@2b
    sget v1, Landroidx/appcompat/R$attr;->actionBarStyle:I

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-static {p1, v2, v0, v1, p4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@31
    move-result-object p1

    #@32
    .line 109
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    #@34
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@3a
    if-eqz p2, :cond_109

    #@3c
    .line 111
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    #@3e
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@41
    move-result-object p2

    #@42
    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_4b

    #@48
    .line 113
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    #@4b
    .line 116
    :cond_4b
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    #@4d
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@50
    move-result-object p2

    #@51
    .line 117
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_5a

    #@57
    .line 118
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    #@5a
    .line 121
    :cond_5a
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    #@5c
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5f
    move-result-object p2

    #@60
    if-eqz p2, :cond_65

    #@62
    .line 123
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@65
    .line 126
    :cond_65
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    #@67
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@6a
    move-result-object p2

    #@6b
    if-eqz p2, :cond_70

    #@6d
    .line 128
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@70
    .line 130
    :cond_70
    iget-object p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@72
    if-nez p2, :cond_7b

    #@74
    iget-object p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@76
    if-eqz p2, :cond_7b

    #@78
    .line 131
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@7b
    .line 133
    :cond_7b
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    #@7d
    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@80
    move-result p2

    #@81
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    #@84
    .line 135
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    #@86
    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@89
    move-result p2

    #@8a
    if-eqz p2, :cond_a6

    #@8c
    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@8e
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@91
    move-result-object v0

    #@92
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@95
    move-result-object v0

    #@96
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@98
    invoke-virtual {v0, p2, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@9b
    move-result-object p2

    #@9c
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    #@9f
    .line 140
    iget p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@a1
    or-int/lit8 p2, p2, 0x10

    #@a3
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    #@a6
    .line 143
    :cond_a6
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    #@a8
    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    #@ab
    move-result p2

    #@ac
    if-lez p2, :cond_bb

    #@ae
    .line 145
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@b0
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b3
    move-result-object v0

    #@b4
    .line 146
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b6
    .line 147
    iget-object p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@b8
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@bb
    .line 150
    :cond_bb
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    #@bd
    const/4 v0, -0x1

    #@be
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@c1
    move-result p2

    #@c2
    .line 152
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    #@c4
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@c7
    move-result v0

    #@c8
    if-gez p2, :cond_cc

    #@ca
    if-ltz v0, :cond_d9

    #@cc
    .line 155
    :cond_cc
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@ce
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    #@d1
    move-result p2

    #@d2
    .line 156
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    #@d5
    move-result v0

    #@d6
    .line 155
    invoke-virtual {v1, p2, v0}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    #@d9
    .line 159
    :cond_d9
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    #@db
    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@de
    move-result p2

    #@df
    if-eqz p2, :cond_ea

    #@e1
    .line 161
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@e3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    #@ea
    .line 164
    :cond_ea
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    #@ec
    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@ef
    move-result p2

    #@f0
    if-eqz p2, :cond_fb

    #@f2
    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@f4
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@f7
    move-result-object v1

    #@f8
    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    #@fb
    .line 170
    :cond_fb
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    #@fd
    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@100
    move-result p2

    #@101
    if-eqz p2, :cond_10f

    #@103
    .line 172
    iget-object p4, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@105
    invoke-virtual {p4, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    #@108
    goto :goto_10f

    #@109
    .line 175
    :cond_109
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    #@10c
    move-result p2

    #@10d
    iput p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@10f
    .line 177
    :cond_10f
    :goto_10f
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@112
    .line 179
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    #@115
    .line 180
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@117
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    #@11a
    move-result-object p1

    #@11b
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@11d
    .line 182
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@11f
    new-instance p2, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;

    #@121
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;)V

    #@124
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    #@127
    return-void
.end method

.method private detectDisplayOptions()I
    .registers 2

    #@0
    .line 208
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_13

    #@8
    .line 210
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@10
    const/16 v0, 0xf

    #@12
    goto :goto_15

    #@13
    :cond_13
    const/16 v0, 0xb

    #@15
    :goto_15
    return v0
.end method

.method private ensureSpinner()V
    .registers 5

    #@0
    .line 506
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2
    if-nez v0, :cond_20

    #@4
    .line 507
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    sget v3, Landroidx/appcompat/R$attr;->actionDropDownStyle:I

    #@d
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@10
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@12
    .line 508
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@14
    const v1, 0x800013

    #@17
    const/4 v2, -0x2

    #@18
    invoke-direct {v0, v2, v2, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    #@1b
    .line 510
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@1d
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@20
    :cond_20
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 260
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 261
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@4
    and-int/lit8 v0, v0, 0x8

    #@6
    if-eqz v0, :cond_1a

    #@8
    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@a
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@d
    .line 263
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    #@f
    if-eqz v0, :cond_1a

    #@11
    .line 264
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@13
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getRootView()Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@1a
    :cond_1a
    return-void
.end method

.method private updateHomeAccessibility()V
    .registers 3

    #@0
    .line 633
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-eqz v0, :cond_1d

    #@6
    .line 634
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_16

    #@e
    .line 635
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@10
    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@12
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    #@15
    goto :goto_1d

    #@16
    .line 637
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@18
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@1a
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateNavigationIcon()V
    .registers 3

    #@0
    .line 614
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@8
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz v1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@f
    :goto_f
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@12
    goto :goto_19

    #@13
    .line 617
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@19
    :goto_19
    return-void
.end method

.method private updateToolbarLogo()V
    .registers 3

    #@0
    .line 326
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@2
    and-int/lit8 v1, v0, 0x2

    #@4
    if-eqz v1, :cond_15

    #@6
    and-int/lit8 v0, v0, 0x1

    #@8
    if-eqz v0, :cond_12

    #@a
    .line 328
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_16

    #@f
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    #@11
    goto :goto_16

    #@12
    .line 330
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    .line 333
    :goto_16
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@18
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@1b
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4

    #@0
    const-wide/16 v0, 0xc8

    #@2
    .line 559
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 562
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    #@b
    :cond_b
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    #@0
    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public collapseActionView()V
    .registers 2

    #@0
    .line 232
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    #@5
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 2

    #@0
    .line 378
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    #@5
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 222
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    #@0
    .line 554
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    #@0
    .line 383
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@2
    return v0
.end method

.method public getDropdownItemCount()I
    .registers 2

    #@0
    .line 538
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    #@0
    .line 533
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getHeight()I
    .registers 2

    #@0
    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    #@0
    .line 680
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNavigationMode()I
    .registers 2

    #@0
    .line 461
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@2
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 271
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 250
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    #@0
    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    #@0
    .line 669
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    #@0
    .line 441
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    #@0
    .line 227
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasIcon()Z
    .registers 2

    #@0
    .line 294
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public hasLogo()Z
    .registers 2

    #@0
    .line 299
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    #@0
    .line 358
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public initIndeterminateProgress()V
    .registers 3

    #@0
    const-string v0, "ToolbarWidgetWrapper"

    #@2
    const-string v1, "Progress display unsupported"

    #@4
    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public initProgress()V
    .registers 3

    #@0
    const-string v0, "ToolbarWidgetWrapper"

    #@2
    const-string v1, "Progress display unsupported"

    #@4
    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    #@0
    .line 348
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    #@0
    .line 343
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isTitleTruncated()Z
    .registers 2

    #@0
    .line 446
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isTitleTruncated()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 649
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@5
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 644
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@5
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setCollapsible(Z)V
    .registers 3

    #@0
    .line 451
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    #@5
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4

    #@0
    .line 543
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@6
    and-int/lit8 v1, v1, 0x10

    #@8
    if-eqz v1, :cond_f

    #@a
    .line 544
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@c
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@f
    .line 546
    :cond_f
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@11
    if-eqz p1, :cond_1e

    #@13
    .line 547
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@15
    and-int/lit8 v0, v0, 0x10

    #@17
    if-eqz v0, :cond_1e

    #@19
    .line 548
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@1b
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    #@1e
    :cond_1e
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .registers 3

    #@0
    .line 196
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 199
    :cond_5
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@7
    .line 200
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@9
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    #@c
    move-result-object p1

    #@d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result p1

    #@11
    if-eqz p1, :cond_18

    #@13
    .line 201
    iget p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@15
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    #@18
    :cond_18
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 607
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 608
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@6
    .line 609
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    #@9
    :cond_9
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 5

    #@0
    .line 388
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@2
    xor-int/2addr v0, p1

    #@3
    .line 390
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@5
    if-eqz v0, :cond_55

    #@7
    and-int/lit8 v1, v0, 0x4

    #@9
    if-eqz v1, :cond_15

    #@b
    and-int/lit8 v1, p1, 0x4

    #@d
    if-eqz v1, :cond_12

    #@f
    .line 394
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    #@12
    .line 396
    :cond_12
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    #@15
    :cond_15
    and-int/lit8 v1, v0, 0x3

    #@17
    if-eqz v1, :cond_1c

    #@19
    .line 400
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    #@1c
    :cond_1c
    and-int/lit8 v1, v0, 0x8

    #@1e
    if-eqz v1, :cond_3e

    #@20
    and-int/lit8 v1, p1, 0x8

    #@22
    if-eqz v1, :cond_33

    #@24
    .line 405
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@26
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@28
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@2b
    .line 406
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2d
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    #@2f
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@32
    goto :goto_3e

    #@33
    .line 408
    :cond_33
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@35
    const/4 v2, 0x0

    #@36
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@39
    .line 409
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@3b
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@3e
    :cond_3e
    :goto_3e
    and-int/lit8 v0, v0, 0x10

    #@40
    if-eqz v0, :cond_55

    #@42
    .line 413
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@44
    if-eqz v0, :cond_55

    #@46
    and-int/lit8 p1, p1, 0x10

    #@48
    if-eqz p1, :cond_50

    #@4a
    .line 415
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@4c
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    #@4f
    goto :goto_55

    #@50
    .line 417
    :cond_50
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@52
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@55
    :cond_55
    :goto_55
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4

    #@0
    .line 517
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    #@3
    .line 518
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@8
    .line 519
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@a
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@d
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 3

    #@0
    .line 524
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 528
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    #@7
    return-void

    #@8
    .line 525
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    #@a
    const-string v0, "Can\'t set dropdown selected position without an adapter"

    #@c
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1
.end method

.method public setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .registers 4

    #@0
    .line 425
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_11

    #@4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@a
    if-ne v0, v1, :cond_11

    #@c
    .line 426
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@e
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@11
    .line 428
    :cond_11
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@13
    if-eqz p1, :cond_36

    #@15
    .line 429
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@17
    const/4 v1, 0x2

    #@18
    if-ne v0, v1, :cond_36

    #@1a
    .line 430
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    #@20
    .line 431
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@28
    const/4 v1, -0x2

    #@29
    .line 432
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    #@2b
    .line 433
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    #@2d
    const v1, 0x800053

    #@30
    .line 434
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@32
    const/4 v0, 0x1

    #@33
    .line 435
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    #@36
    :cond_36
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 304
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 309
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 310
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    #@5
    return-void
.end method

.method public setLogo(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 320
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    #@2
    .line 321
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    #@5
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 5

    #@0
    .line 368
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-nez v0, :cond_16

    #@4
    .line 369
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    #@6
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@8
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    #@f
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@11
    .line 370
    sget v1, Landroidx/appcompat/R$id;->action_menu_presenter:I

    #@13
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setId(I)V

    #@16
    .line 372
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@18
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@1b
    .line 373
    iget-object p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@1d
    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    #@1f
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@21
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/Toolbar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    #@24
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 4

    #@0
    .line 675
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    #@5
    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 363
    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    #@3
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    goto :goto_c

    #@4
    .line 629
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 623
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@2
    .line 624
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    #@5
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 602
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 596
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 597
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    #@5
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 6

    #@0
    .line 466
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@2
    if-eq p1, v0, :cond_72

    #@4
    const/4 v1, 0x2

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v0, v2, :cond_1d

    #@8
    if-eq v0, v1, :cond_b

    #@a
    goto :goto_2e

    #@b
    .line 475
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@d
    if-eqz v0, :cond_2e

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v0

    #@13
    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@15
    if-ne v0, v3, :cond_2e

    #@17
    .line 476
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@19
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@1c
    goto :goto_2e

    #@1d
    .line 470
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@1f
    if-eqz v0, :cond_2e

    #@21
    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    #@24
    move-result-object v0

    #@25
    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@27
    if-ne v0, v3, :cond_2e

    #@29
    .line 471
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2b
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@2e
    .line 481
    :cond_2e
    :goto_2e
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@30
    if-eqz p1, :cond_72

    #@32
    const/4 v0, 0x0

    #@33
    if-eq p1, v2, :cond_68

    #@35
    if-ne p1, v1, :cond_53

    #@37
    .line 491
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@39
    if-eqz p1, :cond_72

    #@3b
    .line 492
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@3d
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    #@40
    .line 493
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@42
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@45
    move-result-object p1

    #@46
    check-cast p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@48
    const/4 v0, -0x2

    #@49
    .line 494
    iput v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    #@4b
    .line 495
    iput v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    #@4d
    const v0, 0x800053

    #@50
    .line 496
    iput v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@52
    goto :goto_72

    #@53
    .line 500
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@55
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    const-string v2, "Invalid navigation mode "

    #@59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object p1

    #@60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object p1

    #@64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0

    #@68
    .line 487
    :cond_68
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    #@6b
    .line 488
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@6d
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@6f
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    #@72
    :cond_72
    :goto_72
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 276
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    .line 277
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@4
    and-int/lit8 v0, v0, 0x8

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 278
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@a
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@d
    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 255
    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    #@3
    .line 256
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    #@6
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    #@0
    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    #@5
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    #@0
    .line 237
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    #@2
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 243
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 244
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    #@7
    :cond_7
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 6

    #@0
    .line 569
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@5
    move-result-object v0

    #@6
    if-nez p1, :cond_b

    #@8
    const/high16 v1, 0x3f800000    # 1.0f

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v1, 0x0

    #@c
    .line 570
    :goto_c
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@f
    move-result-object v0

    #@10
    .line 571
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@13
    move-result-object p2

    #@14
    new-instance p3, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;

    #@16
    invoke-direct {p3, p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V

    #@19
    .line 572
    invoke-virtual {p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@1c
    move-result-object p1

    #@1d
    return-object p1
.end method

.method public showOverflowMenu()Z
    .registers 2

    #@0
    .line 353
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
