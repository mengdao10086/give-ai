.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"

# interfaces
.implements Landroidx/core/view/MenuHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$LayoutParams;,
        Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field final mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

.field private mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mProvidedMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 242
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 246
    sget v0, Landroidx/appcompat/R$attr;->toolbarStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    #@0
    .line 250
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const v0, 0x800013

    #@6
    .line 190
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    #@8
    .line 202
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@f
    .line 205
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@16
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [I

    #@19
    .line 207
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    #@1b
    .line 209
    new-instance v0, Landroidx/core/view/MenuHostHelper;

    #@1d
    new-instance v1, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;

    #@1f
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    #@22
    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Runnable;)V

    #@25
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    #@27
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    #@2e
    .line 213
    new-instance v0, Landroidx/appcompat/widget/Toolbar$1;

    #@30
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    #@33
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    #@35
    .line 235
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    #@37
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    #@3a
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@3c
    .line 253
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v0

    #@40
    sget-object v1, Landroidx/appcompat/R$styleable;->Toolbar:[I

    #@42
    const/4 v2, 0x0

    #@43
    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@46
    move-result-object v0

    #@47
    .line 255
    sget-object v5, Landroidx/appcompat/R$styleable;->Toolbar:[I

    #@49
    .line 256
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@4c
    move-result-object v7

    #@4d
    const/4 v9, 0x0

    #@4e
    move-object v3, p0

    #@4f
    move-object v4, p1

    #@50
    move-object v6, p2

    #@51
    move v8, p3

    #@52
    .line 255
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@55
    .line 258
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    #@57
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@5a
    move-result p1

    #@5b
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    #@5d
    .line 259
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    #@5f
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@62
    move-result p1

    #@63
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    #@65
    .line 260
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_android_gravity:I

    #@67
    iget p2, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    #@69
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    #@6c
    move-result p1

    #@6d
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    #@6f
    .line 261
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_buttonGravity:I

    #@71
    const/16 p2, 0x30

    #@73
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    #@76
    move-result p1

    #@77
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    #@79
    .line 264
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleMargin:I

    #@7b
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@7e
    move-result p1

    #@7f
    .line 265
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    #@81
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@84
    move-result p2

    #@85
    if-eqz p2, :cond_8d

    #@87
    .line 267
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    #@89
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@8c
    move-result p1

    #@8d
    .line 269
    :cond_8d
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@8f
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@91
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@93
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@95
    .line 271
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    #@97
    const/4 p2, -0x1

    #@98
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@9b
    move-result p1

    #@9c
    if-ltz p1, :cond_a0

    #@9e
    .line 273
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@a0
    .line 276
    :cond_a0
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    #@a2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@a5
    move-result p1

    #@a6
    if-ltz p1, :cond_aa

    #@a8
    .line 278
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@aa
    .line 281
    :cond_aa
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    #@ac
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@af
    move-result p1

    #@b0
    if-ltz p1, :cond_b4

    #@b2
    .line 283
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@b4
    .line 286
    :cond_b4
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    #@b6
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@b9
    move-result p1

    #@ba
    if-ltz p1, :cond_be

    #@bc
    .line 289
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@be
    .line 292
    :cond_be
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    #@c0
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@c3
    move-result p1

    #@c4
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    #@c6
    .line 294
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    #@c8
    const/high16 p2, -0x80000000

    #@ca
    .line 295
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@cd
    move-result p1

    #@ce
    .line 297
    sget p3, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    #@d0
    .line 298
    invoke-virtual {v0, p3, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@d3
    move-result p3

    #@d4
    .line 300
    sget v1, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    #@d6
    .line 301
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@d9
    move-result v1

    #@da
    .line 302
    sget v3, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    #@dc
    .line 303
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@df
    move-result v3

    #@e0
    .line 305
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    #@e3
    .line 306
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@e5
    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    #@e8
    if-ne p1, p2, :cond_ec

    #@ea
    if-eq p3, p2, :cond_f1

    #@ec
    .line 310
    :cond_ec
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@ee
    invoke-virtual {v1, p1, p3}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    #@f1
    .line 313
    :cond_f1
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    #@f3
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@f6
    move-result p1

    #@f7
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@f9
    .line 315
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    #@fb
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@fe
    move-result p1

    #@ff
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    #@101
    .line 318
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_collapseIcon:I

    #@103
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@106
    move-result-object p1

    #@107
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    #@109
    .line 319
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    #@10b
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@10e
    move-result-object p1

    #@10f
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    #@111
    .line 321
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_title:I

    #@113
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@116
    move-result-object p1

    #@117
    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11a
    move-result p2

    #@11b
    if-nez p2, :cond_120

    #@11d
    .line 323
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@120
    .line 326
    :cond_120
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_subtitle:I

    #@122
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@125
    move-result-object p1

    #@126
    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@129
    move-result p2

    #@12a
    if-nez p2, :cond_12f

    #@12c
    .line 328
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@12f
    .line 332
    :cond_12f
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@132
    move-result-object p1

    #@133
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@135
    .line 333
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_popupTheme:I

    #@137
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@13a
    move-result p1

    #@13b
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    #@13e
    .line 335
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_navigationIcon:I

    #@140
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@143
    move-result-object p1

    #@144
    if-eqz p1, :cond_149

    #@146
    .line 337
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@149
    .line 339
    :cond_149
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    #@14b
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@14e
    move-result-object p1

    #@14f
    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@152
    move-result p2

    #@153
    if-nez p2, :cond_158

    #@155
    .line 341
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@158
    .line 344
    :cond_158
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_logo:I

    #@15a
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@15d
    move-result-object p1

    #@15e
    if-eqz p1, :cond_163

    #@160
    .line 346
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@163
    .line 349
    :cond_163
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_logoDescription:I

    #@165
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@168
    move-result-object p1

    #@169
    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16c
    move-result p2

    #@16d
    if-nez p2, :cond_172

    #@16f
    .line 351
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    #@172
    .line 354
    :cond_172
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    #@174
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@177
    move-result p1

    #@178
    if-eqz p1, :cond_183

    #@17a
    .line 355
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    #@17c
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@17f
    move-result-object p1

    #@180
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    #@183
    .line 358
    :cond_183
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    #@185
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@188
    move-result p1

    #@189
    if-eqz p1, :cond_194

    #@18b
    .line 359
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    #@18d
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@190
    move-result-object p1

    #@191
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    #@194
    .line 362
    :cond_194
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_menu:I

    #@196
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@199
    move-result p1

    #@19a
    if-eqz p1, :cond_1a5

    #@19c
    .line 363
    sget p1, Landroidx/appcompat/R$styleable;->Toolbar_menu:I

    #@19e
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@1a1
    move-result p1

    #@1a2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    #@1a5
    .line 366
    :cond_1a5
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@1a8
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 2188
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    if-ne v0, v2, :cond_a

    #@8
    move v0, v2

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v0, v1

    #@b
    .line 2189
    :goto_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@e
    move-result v3

    #@f
    .line 2191
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@12
    move-result v4

    #@13
    .line 2190
    invoke-static {p2, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@16
    move-result p2

    #@17
    .line 2193
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@1a
    if-eqz v0, :cond_41

    #@1c
    sub-int/2addr v3, v2

    #@1d
    :goto_1d
    if-ltz v3, :cond_65

    #@1f
    .line 2197
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    .line 2198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@29
    .line 2199
    iget v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    #@2b
    if-nez v2, :cond_3e

    #@2d
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_3e

    #@33
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@35
    .line 2200
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    #@38
    move-result v1

    #@39
    if-ne v1, p2, :cond_3e

    #@3b
    .line 2201
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    #@40
    goto :goto_1d

    #@41
    :cond_41
    :goto_41
    if-ge v1, v3, :cond_65

    #@43
    .line 2206
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@46
    move-result-object v0

    #@47
    .line 2207
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@4d
    .line 2208
    iget v4, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    #@4f
    if-nez v4, :cond_62

    #@51
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_62

    #@57
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@59
    .line 2209
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    #@5c
    move-result v2

    #@5d
    if-ne v2, p2, :cond_62

    #@5f
    .line 2210
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    :cond_62
    add-int/lit8 v1, v1, 0x1

    #@64
    goto :goto_41

    #@65
    :cond_65
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .registers 5

    #@0
    .line 1559
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 1562
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@9
    move-result-object v0

    #@a
    goto :goto_18

    #@b
    .line 1563
    :cond_b
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_16

    #@11
    .line 1564
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@14
    move-result-object v0

    #@15
    goto :goto_18

    #@16
    .line 1566
    :cond_16
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@18
    :goto_18
    const/4 v1, 0x1

    #@19
    .line 1568
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    #@1b
    if-eqz p2, :cond_2a

    #@1d
    .line 1570
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@1f
    if-eqz p2, :cond_2a

    #@21
    .line 1571
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@24
    .line 1572
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@26
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_2d

    #@2a
    .line 1574
    :cond_2a
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2d
    :goto_2d
    return-void
.end method

.method private ensureContentInsets()V
    .registers 2

    #@0
    .line 2333
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 2334
    new-instance v0, Landroidx/appcompat/widget/RtlSpacingHelper;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@b
    :cond_b
    return-void
.end method

.method private ensureLogoView()V
    .registers 3

    #@0
    .line 717
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2
    if-nez v0, :cond_f

    #@4
    .line 718
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@f
    :cond_f
    return-void
.end method

.method private ensureMenu()V
    .registers 4

    #@0
    .line 1184
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    #@3
    .line 1185
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@8
    move-result-object v0

    #@9
    if-nez v0, :cond_2b

    #@b
    .line 1187
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@d
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    #@13
    .line 1188
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@15
    if-nez v1, :cond_1e

    #@17
    .line 1189
    new-instance v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@19
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    #@1c
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1e
    .line 1191
    :cond_1e
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@20
    const/4 v2, 0x1

    #@21
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    #@24
    .line 1192
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@26
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@28
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@2b
    :cond_2b
    return-void
.end method

.method private ensureMenuView()V
    .registers 4

    #@0
    .line 1197
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@2
    if-nez v0, :cond_3d

    #@4
    .line 1198
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@f
    .line 1199
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    #@11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    #@14
    .line 1200
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@16
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    #@18
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    #@1b
    .line 1201
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@1d
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@1f
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    #@21
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    #@24
    .line 1202
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@27
    move-result-object v0

    #@28
    .line 1203
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    #@2a
    and-int/lit8 v1, v1, 0x70

    #@2c
    const v2, 0x800005

    #@2f
    or-int/2addr v1, v2

    #@30
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@32
    .line 1204
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@34
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@37
    .line 1205
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@39
    const/4 v1, 0x0

    #@3a
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@3d
    :cond_3d
    return-void
.end method

.method private ensureNavButtonView()V
    .registers 5

    #@0
    .line 1519
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2
    if-nez v0, :cond_25

    #@4
    .line 1520
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    #@d
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@10
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@12
    .line 1522
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@15
    move-result-object v0

    #@16
    .line 1523
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    #@18
    and-int/lit8 v1, v1, 0x70

    #@1a
    const v2, 0x800003

    #@1d
    or-int/2addr v1, v2

    #@1e
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@20
    .line 1524
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@22
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@25
    :cond_25
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .registers 6

    #@0
    .line 2217
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 2218
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result p1

    #@8
    and-int/lit8 p1, p1, 0x7

    #@a
    const/4 v1, 0x1

    #@b
    if-eq p1, v1, :cond_17

    #@d
    const/4 v2, 0x3

    #@e
    if-eq p1, v2, :cond_17

    #@10
    const/4 v3, 0x5

    #@11
    if-eq p1, v3, :cond_17

    #@13
    if-ne v0, v1, :cond_16

    #@15
    move v2, v3

    #@16
    :cond_16
    return v2

    #@17
    :cond_17
    return p1
.end method

.method private getChildTop(Landroid/view/View;I)I
    .registers 9

    #@0
    .line 2137
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@6
    .line 2138
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@9
    move-result p1

    #@a
    const/4 v1, 0x0

    #@b
    if-lez p2, :cond_12

    #@d
    sub-int p2, p1, p2

    #@f
    .line 2139
    div-int/lit8 p2, p2, 0x2

    #@11
    goto :goto_13

    #@12
    :cond_12
    move p2, v1

    #@13
    .line 2140
    :goto_13
    iget v2, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@15
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildVerticalGravity(I)I

    #@18
    move-result v2

    #@19
    const/16 v3, 0x30

    #@1b
    if-eq v2, v3, :cond_5b

    #@1d
    const/16 v3, 0x50

    #@1f
    if-eq v2, v3, :cond_4c

    #@21
    .line 2150
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    #@24
    move-result p2

    #@25
    .line 2151
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    #@28
    move-result v2

    #@29
    .line 2152
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    #@2c
    move-result v3

    #@2d
    sub-int v4, v3, p2

    #@2f
    sub-int/2addr v4, v2

    #@30
    sub-int/2addr v4, p1

    #@31
    .line 2154
    div-int/lit8 v4, v4, 0x2

    #@33
    .line 2155
    iget v5, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@35
    if-ge v4, v5, :cond_3a

    #@37
    .line 2156
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@39
    goto :goto_4a

    #@3a
    :cond_3a
    sub-int/2addr v3, v2

    #@3b
    sub-int/2addr v3, p1

    #@3c
    sub-int/2addr v3, v4

    #@3d
    sub-int/2addr v3, p2

    #@3e
    .line 2160
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@40
    if-ge v3, p1, :cond_4a

    #@42
    .line 2161
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@44
    sub-int/2addr p1, v3

    #@45
    sub-int/2addr v4, p1

    #@46
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    #@49
    move-result v4

    #@4a
    :cond_4a
    :goto_4a
    add-int/2addr p2, v4

    #@4b
    return p2

    #@4c
    .line 2145
    :cond_4c
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    #@4f
    move-result v1

    #@50
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    #@53
    move-result v2

    #@54
    sub-int/2addr v1, v2

    #@55
    sub-int/2addr v1, p1

    #@56
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@58
    sub-int/2addr v1, p1

    #@59
    sub-int/2addr v1, p2

    #@5a
    return v1

    #@5b
    .line 2142
    :cond_5b
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    #@5e
    move-result p1

    #@5f
    sub-int/2addr p1, p2

    #@60
    return p1
.end method

.method private getChildVerticalGravity(I)I
    .registers 3

    #@0
    and-int/lit8 p1, p1, 0x70

    #@2
    const/16 v0, 0x10

    #@4
    if-eq p1, v0, :cond_12

    #@6
    const/16 v0, 0x30

    #@8
    if-eq p1, v0, :cond_12

    #@a
    const/16 v0, 0x50

    #@c
    if-eq p1, v0, :cond_12

    #@e
    .line 2176
    iget p1, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    #@10
    and-int/lit8 p1, p1, 0x70

    #@12
    :cond_12
    return p1
.end method

.method private getCurrentMenuItems()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    #@0
    .line 2368
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2370
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    .line 2371
    :goto_a
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    #@d
    move-result v3

    #@e
    if-ge v2, v3, :cond_1a

    #@10
    .line 2372
    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-object v0
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .registers 3

    #@0
    .line 2235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 2236
    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@9
    move-result v0

    #@a
    .line 2237
    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@d
    move-result p1

    #@e
    add-int/2addr v0, p1

    #@f
    return v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    #@0
    .line 1210
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    #@9
    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .registers 3

    #@0
    .line 2241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 2242
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@8
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@a
    add-int/2addr v0, p1

    #@b
    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 2092
    aget v1, p2, v0

    #@3
    const/4 v2, 0x1

    #@4
    .line 2093
    aget p2, p2, v2

    #@6
    .line 2095
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    move v3, v0

    #@b
    move v4, v3

    #@c
    :goto_c
    if-ge v3, v2, :cond_3e

    #@e
    .line 2097
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Landroid/view/View;

    #@14
    .line 2098
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@1a
    .line 2099
    iget v7, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    #@1c
    sub-int/2addr v7, v1

    #@1d
    .line 2100
    iget v1, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    #@1f
    sub-int/2addr v1, p2

    #@20
    .line 2101
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@23
    move-result p2

    #@24
    .line 2102
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@27
    move-result v6

    #@28
    neg-int v7, v7

    #@29
    .line 2103
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result v7

    #@2d
    neg-int v1, v1

    #@2e
    .line 2104
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v1

    #@32
    .line 2105
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@35
    move-result v5

    #@36
    add-int/2addr p2, v5

    #@37
    add-int/2addr p2, v6

    #@38
    add-int/2addr v4, p2

    #@39
    add-int/lit8 v3, v3, 0x1

    #@3b
    move p2, v1

    #@3c
    move v1, v7

    #@3d
    goto :goto_c

    #@3e
    :cond_3e
    return v4
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 2305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p0, :cond_11

    #@6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x1

    #@12
    :goto_12
    return p1
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .registers 9

    #@0
    .line 2112
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@6
    .line 2113
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    #@8
    const/4 v2, 0x0

    #@9
    aget v3, p3, v2

    #@b
    sub-int/2addr v1, v3

    #@c
    .line 2114
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v3

    #@10
    add-int/2addr p2, v3

    #@11
    neg-int v1, v1

    #@12
    .line 2115
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v1

    #@16
    aput v1, p3, v2

    #@18
    .line 2116
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    #@1b
    move-result p3

    #@1c
    .line 2117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@1f
    move-result p4

    #@20
    add-int v1, p2, p4

    #@22
    .line 2118
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@25
    move-result v2

    #@26
    add-int/2addr v2, p3

    #@27
    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@2a
    .line 2119
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    #@2c
    add-int/2addr p4, p1

    #@2d
    add-int/2addr p2, p4

    #@2e
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .registers 10

    #@0
    .line 2125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@6
    .line 2126
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    #@8
    const/4 v2, 0x1

    #@9
    aget v3, p3, v2

    #@b
    sub-int/2addr v1, v3

    #@c
    const/4 v3, 0x0

    #@d
    .line 2127
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v4

    #@11
    sub-int/2addr p2, v4

    #@12
    neg-int v1, v1

    #@13
    .line 2128
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v1

    #@17
    aput v1, p3, v2

    #@19
    .line 2129
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    #@1c
    move-result p3

    #@1d
    .line 2130
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@20
    move-result p4

    #@21
    sub-int v1, p2, p4

    #@23
    .line 2131
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@26
    move-result v2

    #@27
    add-int/2addr v2, p3

    #@28
    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    #@2b
    .line 2132
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    #@2d
    add-int/2addr p4, p1

    #@2e
    sub-int/2addr p2, p4

    #@2f
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 14

    #@0
    .line 1701
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1703
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@8
    const/4 v2, 0x0

    #@9
    aget v3, p6, v2

    #@b
    sub-int/2addr v1, v3

    #@c
    .line 1704
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@e
    const/4 v4, 0x1

    #@f
    aget v5, p6, v4

    #@11
    sub-int/2addr v3, v5

    #@12
    .line 1705
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v5

    #@16
    .line 1706
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v6

    #@1a
    add-int/2addr v5, v6

    #@1b
    neg-int v1, v1

    #@1c
    .line 1708
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v1

    #@20
    aput v1, p6, v2

    #@22
    neg-int v1, v3

    #@23
    .line 1709
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v1

    #@27
    aput v1, p6, v4

    #@29
    .line 1712
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    #@2c
    move-result p6

    #@2d
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    #@30
    move-result v1

    #@31
    add-int/2addr p6, v1

    #@32
    add-int/2addr p6, v5

    #@33
    add-int/2addr p6, p3

    #@34
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@36
    .line 1711
    invoke-static {p2, p6, p3}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    #@39
    move-result p2

    #@3a
    .line 1714
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    #@3d
    move-result p3

    #@3e
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    #@41
    move-result p6

    #@42
    add-int/2addr p3, p6

    #@43
    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@45
    add-int/2addr p3, p6

    #@46
    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@48
    add-int/2addr p3, p6

    #@49
    add-int/2addr p3, p5

    #@4a
    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@4c
    .line 1713
    invoke-static {p4, p3, p5}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    #@4f
    move-result p3

    #@50
    .line 1717
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@53
    .line 1718
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@56
    move-result p1

    #@57
    add-int/2addr p1, v5

    #@58
    return p1
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .registers 10

    #@0
    .line 1676
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1679
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11
    add-int/2addr v1, v2

    #@12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@14
    add-int/2addr v1, v2

    #@15
    add-int/2addr v1, p3

    #@16
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@18
    .line 1678
    invoke-static {p2, v1, p3}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    #@1b
    move-result p2

    #@1c
    .line 1682
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    #@1f
    move-result p3

    #@20
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    #@23
    move-result v1

    #@24
    add-int/2addr p3, v1

    #@25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@27
    add-int/2addr p3, v1

    #@28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@2a
    add-int/2addr p3, v1

    #@2b
    add-int/2addr p3, p5

    #@2c
    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@2e
    .line 1681
    invoke-static {p4, p3, p5}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    #@31
    move-result p3

    #@32
    .line 1685
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@35
    move-result p4

    #@36
    const/high16 p5, 0x40000000    # 2.0f

    #@38
    if-eq p4, p5, :cond_4a

    #@3a
    if-ltz p6, :cond_4a

    #@3c
    if-eqz p4, :cond_46

    #@3e
    .line 1688
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@41
    move-result p3

    #@42
    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    #@45
    move-result p6

    #@46
    .line 1690
    :cond_46
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@49
    move-result p3

    #@4a
    .line 1692
    :cond_4a
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@4d
    return-void
.end method

.method private onCreateMenu()V
    .registers 5

    #@0
    .line 2379
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@3
    move-result-object v0

    #@4
    .line 2380
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    #@7
    move-result-object v1

    #@8
    .line 2381
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    #@a
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v0, v3}, Landroidx/core/view/MenuHostHelper;->onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    #@11
    .line 2383
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    #@14
    move-result-object v2

    #@15
    .line 2384
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@18
    .line 2385
    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    #@1a
    .line 2387
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    #@1c
    invoke-virtual {v1, v0}, Landroidx/core/view/MenuHostHelper;->onPrepareMenu(Landroid/view/Menu;)V

    #@1f
    return-void
.end method

.method private postShowOverflowMenu()V
    .registers 2

    #@0
    .line 1614
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 1615
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    #@a
    return-void
.end method

.method private shouldCollapse()Z
    .registers 6

    #@0
    .line 1725
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 1727
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@9
    move-result v0

    #@a
    move v2, v1

    #@b
    :goto_b
    if-ge v2, v0, :cond_27

    #@d
    .line 1729
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    .line 1730
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_24

    #@17
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@1a
    move-result v4

    #@1b
    if-lez v4, :cond_24

    #@1d
    .line 1731
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@20
    move-result v3

    #@21
    if-lez v3, :cond_24

    #@23
    return v1

    #@24
    :cond_24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_b

    #@27
    :cond_27
    const/4 v0, 0x1

    #@28
    return v0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .registers 3

    #@0
    if-eqz p1, :cond_12

    #@2
    .line 2231
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p0, :cond_12

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@b
    move-result p1

    #@c
    const/16 v0, 0x8

    #@e
    if-eq p1, v0, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    :goto_13
    return p1
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .registers 3

    #@0
    .line 2296
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_18

    #@a
    .line 2299
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/view/View;

    #@12
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    .line 2301
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1d
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;)V
    .registers 3

    #@0
    .line 2393
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    #@5
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    #@0
    .line 2399
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    #@5
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5

    #@0
    .line 2407
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    #@5
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    #@0
    .line 537
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_12

    #@6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@8
    if-eqz v0, :cond_12

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowReserved()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    .line 2270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

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

.method public collapseActionView()V
    .registers 2

    #@0
    .line 747
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_8

    #@6
    .line 748
    :cond_6
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@8
    :goto_8
    if-eqz v0, :cond_d

    #@a
    .line 750
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    #@d
    :cond_d
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 2

    #@0
    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 616
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    #@7
    :cond_7
    return-void
.end method

.method ensureCollapseButtonView()V
    .registers 5

    #@0
    .line 1540
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@2
    if-nez v0, :cond_3e

    #@4
    .line 1541
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    #@d
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@10
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@12
    .line 1543
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@17
    .line 1544
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@19
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1e
    .line 1545
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@21
    move-result-object v0

    #@22
    .line 1546
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    #@24
    and-int/lit8 v1, v1, 0x70

    #@26
    const v2, 0x800003

    #@29
    or-int/2addr v1, v2

    #@2a
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@2c
    const/4 v1, 0x2

    #@2d
    .line 1547
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    #@2f
    .line 1548
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@31
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@34
    .line 1549
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@36
    new-instance v1, Landroidx/appcompat/widget/Toolbar$3;

    #@38
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$3;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    #@3b
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3e
    :cond_3e
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 154
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .registers 3

    #@0
    .line 2265
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 154
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 154
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .registers 4

    #@0
    .line 2247
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .registers 3

    #@0
    .line 2252
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 2253
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@6
    check-cast p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 2254
    :cond_c
    instance-of v0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 2255
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@12
    check-cast p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    #@14
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 2256
    :cond_18
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1a
    if-eqz v0, :cond_24

    #@1c
    .line 2257
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@1e
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@20
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@23
    return-object v0

    #@24
    .line 2259
    :cond_24
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@26
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@29
    return-object v0
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1065
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1111
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getContentInsetEnd()I
    .registers 2

    #@0
    .line 1300
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getEnd()I

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

.method public getContentInsetEndWithActions()I
    .registers 3

    #@0
    .line 1426
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_7

    #@6
    goto :goto_b

    #@7
    .line 1428
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    #@a
    move-result v0

    #@b
    :goto_b
    return v0
.end method

.method public getContentInsetLeft()I
    .registers 2

    #@0
    .line 1344
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getLeft()I

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

.method public getContentInsetRight()I
    .registers 2

    #@0
    .line 1365
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getRight()I

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

.method public getContentInsetStart()I
    .registers 2

    #@0
    .line 1279
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getStart()I

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

.method public getContentInsetStartWithNavigation()I
    .registers 3

    #@0
    .line 1382
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_7

    #@6
    goto :goto_b

    #@7
    .line 1384
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    #@a
    move-result v0

    #@b
    :goto_b
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .registers 4

    #@0
    .line 1479
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_13

    #@5
    .line 1480
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_13

    #@b
    .line 1481
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_13

    #@11
    const/4 v0, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v0, v1

    #@14
    :goto_14
    if-eqz v0, :cond_25

    #@16
    .line 1484
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    #@19
    move-result v0

    #@1a
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    #@1c
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v1

    #@20
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v0

    #@24
    goto :goto_29

    #@25
    .line 1485
    :cond_25
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    #@28
    move-result v0

    #@29
    :goto_29
    return v0
.end method

.method public getCurrentContentInsetLeft()I
    .registers 3

    #@0
    .line 1498
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_c

    #@7
    .line 1499
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    #@a
    move-result v0

    #@b
    goto :goto_10

    #@c
    .line 1500
    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    #@f
    move-result v0

    #@10
    :goto_10
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .registers 3

    #@0
    .line 1513
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_c

    #@7
    .line 1514
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    #@a
    move-result v0

    #@b
    goto :goto_10

    #@c
    .line 1515
    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    #@f
    move-result v0

    #@10
    :goto_10
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .registers 4

    #@0
    .line 1464
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_16

    #@6
    .line 1465
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v1

    #@11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v0

    #@15
    goto :goto_1a

    #@16
    .line 1466
    :cond_16
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    #@19
    move-result v0

    #@1a
    :goto_1a
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 674
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 713
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    #@0
    .line 1158
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    #@3
    .line 1159
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method getNavButtonView()Landroid/view/View;
    .registers 2

    #@0
    .line 1536
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2
    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 942
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1036
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method getOuterActionMenuPresenter()Landroidx/appcompat/widget/ActionMenuPresenter;
    .registers 2

    #@0
    .line 2360
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1179
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    #@3
    .line 1180
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 2364
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    #@0
    .line 395
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    #@2
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 818
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method final getSubtitleTextView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 2353
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 761
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleMarginBottom()I
    .registers 2

    #@0
    .line 496
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@2
    return v0
.end method

.method public getTitleMarginEnd()I
    .registers 2

    #@0
    .line 473
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@2
    return v0
.end method

.method public getTitleMarginStart()I
    .registers 2

    #@0
    .line 427
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@2
    return v0
.end method

.method public getTitleMarginTop()I
    .registers 2

    #@0
    .line 450
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@2
    return v0
.end method

.method final getTitleTextView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 2344
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/DecorToolbar;
    .registers 3

    #@0
    .line 2276
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    #@2
    if-nez v0, :cond_c

    #@4
    .line 2277
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    #@a
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    #@c
    .line 2279
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    #@e
    return-object v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    #@0
    .line 733
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    #@0
    .line 571
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->hideOverflowMenu()Z

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

.method public inflateMenu(I)V
    .registers 4

    #@0
    .line 1223
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    #@b
    return-void
.end method

.method public invalidateMenu()V
    .registers 4

    #@0
    .line 2426
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1e

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/view/MenuItem;

    #@12
    .line 2427
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    #@19
    move-result v1

    #@1a
    invoke-interface {v2, v1}, Landroid/view/Menu;->removeItem(I)V

    #@1d
    goto :goto_6

    #@1e
    .line 2429
    :cond_1e
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->onCreateMenu()V

    #@21
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    #@0
    .line 553
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowPending()Z

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

.method public isOverflowMenuShowing()Z
    .registers 2

    #@0
    .line 547
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowing()Z

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

.method public isTitleTruncated()Z
    .registers 6

    #@0
    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 627
    :cond_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_d

    #@c
    return v1

    #@d
    .line 632
    :cond_d
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    #@10
    move-result v2

    #@11
    move v3, v1

    #@12
    :goto_12
    if-ge v3, v2, :cond_1f

    #@14
    .line 634
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    #@17
    move-result v4

    #@18
    if-lez v4, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_12

    #@1f
    :cond_1f
    return v1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 1620
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 1621
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/16 v2, 0x9

    #@7
    if-ne v0, v2, :cond_b

    #@9
    .line 1657
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    #@b
    .line 1660
    :cond_b
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    #@d
    const/4 v4, 0x1

    #@e
    if-nez v3, :cond_1a

    #@10
    .line 1661
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result p1

    #@14
    if-ne v0, v2, :cond_1a

    #@16
    if-nez p1, :cond_1a

    #@18
    .line 1663
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    #@1a
    :cond_1a
    const/16 p1, 0xa

    #@1c
    if-eq v0, p1, :cond_21

    #@1e
    const/4 p1, 0x3

    #@1f
    if-ne v0, p1, :cond_23

    #@21
    .line 1668
    :cond_21
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    #@23
    :cond_23
    return v4
.end method

.method protected onLayout(ZIIII)V
    .registers 25

    #@0
    move-object/from16 v0, p0

    #@2
    .line 1874
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x1

    #@8
    if-ne v1, v3, :cond_c

    #@a
    move v1, v3

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v1, v2

    #@d
    .line 1875
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    #@10
    move-result v4

    #@11
    .line 1876
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    #@14
    move-result v5

    #@15
    .line 1877
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    #@18
    move-result v6

    #@19
    .line 1878
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    #@1c
    move-result v7

    #@1d
    .line 1879
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    #@20
    move-result v8

    #@21
    .line 1880
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    #@24
    move-result v9

    #@25
    sub-int v10, v4, v7

    #@27
    .line 1884
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    #@29
    .line 1885
    aput v2, v11, v3

    #@2b
    aput v2, v11, v2

    #@2d
    .line 1888
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@30
    move-result v12

    #@31
    if-ltz v12, :cond_3a

    #@33
    sub-int v13, p5, p3

    #@35
    .line 1889
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v12

    #@39
    goto :goto_3b

    #@3a
    :cond_3a
    move v12, v2

    #@3b
    .line 1891
    :goto_3b
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@3d
    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@40
    move-result v13

    #@41
    if-eqz v13, :cond_55

    #@43
    if-eqz v1, :cond_4e

    #@45
    .line 1893
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@47
    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@4a
    move-result v13

    #@4b
    move v14, v13

    #@4c
    move v13, v6

    #@4d
    goto :goto_57

    #@4e
    .line 1896
    :cond_4e
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@50
    invoke-direct {v0, v13, v6, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@53
    move-result v13

    #@54
    goto :goto_56

    #@55
    :cond_55
    move v13, v6

    #@56
    :goto_56
    move v14, v10

    #@57
    .line 1901
    :goto_57
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@59
    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@5c
    move-result v15

    #@5d
    if-eqz v15, :cond_6e

    #@5f
    if-eqz v1, :cond_68

    #@61
    .line 1903
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@63
    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@66
    move-result v14

    #@67
    goto :goto_6e

    #@68
    .line 1906
    :cond_68
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@6a
    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@6d
    move-result v13

    #@6e
    .line 1911
    :cond_6e
    :goto_6e
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@70
    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@73
    move-result v15

    #@74
    if-eqz v15, :cond_85

    #@76
    if-eqz v1, :cond_7f

    #@78
    .line 1913
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@7a
    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@7d
    move-result v13

    #@7e
    goto :goto_85

    #@7f
    .line 1916
    :cond_7f
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@81
    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@84
    move-result v14

    #@85
    .line 1921
    :cond_85
    :goto_85
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    #@88
    move-result v15

    #@89
    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    #@8c
    move-result v16

    #@8d
    sub-int v3, v15, v13

    #@8f
    .line 1923
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@92
    move-result v3

    #@93
    aput v3, v11, v2

    #@95
    sub-int v3, v10, v14

    #@97
    sub-int v3, v16, v3

    #@99
    .line 1924
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@9c
    move-result v3

    #@9d
    const/16 v17, 0x1

    #@9f
    aput v3, v11, v17

    #@a1
    .line 1925
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    #@a4
    move-result v3

    #@a5
    sub-int v10, v10, v16

    #@a7
    .line 1926
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    #@aa
    move-result v10

    #@ab
    .line 1928
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@ad
    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@b0
    move-result v13

    #@b1
    if-eqz v13, :cond_c2

    #@b3
    if-eqz v1, :cond_bc

    #@b5
    .line 1930
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@b7
    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@ba
    move-result v10

    #@bb
    goto :goto_c2

    #@bc
    .line 1933
    :cond_bc
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@be
    invoke-direct {v0, v13, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@c1
    move-result v3

    #@c2
    .line 1938
    :cond_c2
    :goto_c2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@c4
    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@c7
    move-result v13

    #@c8
    if-eqz v13, :cond_d9

    #@ca
    if-eqz v1, :cond_d3

    #@cc
    .line 1940
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@ce
    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@d1
    move-result v10

    #@d2
    goto :goto_d9

    #@d3
    .line 1943
    :cond_d3
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@d5
    invoke-direct {v0, v13, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@d8
    move-result v3

    #@d9
    .line 1948
    :cond_d9
    :goto_d9
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@db
    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@de
    move-result v13

    #@df
    .line 1949
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@e1
    invoke-direct {v0, v14}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@e4
    move-result v14

    #@e5
    if-eqz v13, :cond_100

    #@e7
    .line 1952
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@e9
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ec
    move-result-object v15

    #@ed
    check-cast v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@ef
    .line 1953
    iget v2, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@f1
    move/from16 p4, v7

    #@f3
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@f5
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@f8
    move-result v7

    #@f9
    add-int/2addr v2, v7

    #@fa
    iget v7, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@fc
    add-int/2addr v2, v7

    #@fd
    const/4 v7, 0x0

    #@fe
    add-int/2addr v2, v7

    #@ff
    goto :goto_103

    #@100
    :cond_100
    move/from16 p4, v7

    #@102
    const/4 v2, 0x0

    #@103
    :goto_103
    if-eqz v14, :cond_11d

    #@105
    .line 1956
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@107
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10a
    move-result-object v7

    #@10b
    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@10d
    .line 1957
    iget v15, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@10f
    move/from16 v16, v4

    #@111
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@113
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@116
    move-result v4

    #@117
    add-int/2addr v15, v4

    #@118
    iget v4, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@11a
    add-int/2addr v15, v4

    #@11b
    add-int/2addr v2, v15

    #@11c
    goto :goto_11f

    #@11d
    :cond_11d
    move/from16 v16, v4

    #@11f
    :goto_11f
    if-nez v13, :cond_12b

    #@121
    if-eqz v14, :cond_124

    #@123
    goto :goto_12b

    #@124
    :cond_124
    move/from16 v18, v6

    #@126
    move/from16 p3, v12

    #@128
    :cond_128
    :goto_128
    const/4 v1, 0x0

    #@129
    goto/16 :goto_290

    #@12b
    :cond_12b
    :goto_12b
    if-eqz v13, :cond_130

    #@12d
    .line 1962
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@12f
    goto :goto_132

    #@130
    :cond_130
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@132
    :goto_132
    if-eqz v14, :cond_137

    #@134
    .line 1963
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@136
    goto :goto_139

    #@137
    :cond_137
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@139
    .line 1964
    :goto_139
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13c
    move-result-object v4

    #@13d
    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@13f
    .line 1965
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@142
    move-result-object v7

    #@143
    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@145
    if-eqz v13, :cond_14f

    #@147
    .line 1966
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@149
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@14c
    move-result v15

    #@14d
    if-gtz v15, :cond_159

    #@14f
    :cond_14f
    if-eqz v14, :cond_15c

    #@151
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@153
    .line 1967
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@156
    move-result v15

    #@157
    if-lez v15, :cond_15c

    #@159
    :cond_159
    const/16 v17, 0x1

    #@15b
    goto :goto_15e

    #@15c
    :cond_15c
    const/16 v17, 0x0

    #@15e
    .line 1969
    :goto_15e
    iget v15, v0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    #@160
    and-int/lit8 v15, v15, 0x70

    #@162
    move/from16 v18, v6

    #@164
    const/16 v6, 0x30

    #@166
    if-eq v15, v6, :cond_1a7

    #@168
    const/16 v6, 0x50

    #@16a
    if-eq v15, v6, :cond_19b

    #@16c
    sub-int v6, v5, v8

    #@16e
    sub-int/2addr v6, v9

    #@16f
    sub-int/2addr v6, v2

    #@170
    .line 1976
    div-int/lit8 v6, v6, 0x2

    #@172
    .line 1977
    iget v15, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@174
    move/from16 p3, v12

    #@176
    iget v12, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@178
    add-int/2addr v15, v12

    #@179
    if-ge v6, v15, :cond_182

    #@17b
    .line 1978
    iget v2, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@17d
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@17f
    add-int v6, v2, v4

    #@181
    goto :goto_199

    #@182
    :cond_182
    sub-int/2addr v5, v9

    #@183
    sub-int/2addr v5, v2

    #@184
    sub-int/2addr v5, v6

    #@185
    sub-int/2addr v5, v8

    #@186
    .line 1982
    iget v2, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@188
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@18a
    add-int/2addr v2, v4

    #@18b
    if-ge v5, v2, :cond_199

    #@18d
    .line 1983
    iget v2, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@18f
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@191
    add-int/2addr v2, v4

    #@192
    sub-int/2addr v2, v5

    #@193
    sub-int/2addr v6, v2

    #@194
    const/4 v2, 0x0

    #@195
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@198
    move-result v6

    #@199
    :cond_199
    :goto_199
    add-int/2addr v8, v6

    #@19a
    goto :goto_1b4

    #@19b
    :cond_19b
    move/from16 p3, v12

    #@19d
    sub-int/2addr v5, v9

    #@19e
    .line 1990
    iget v4, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@1a0
    sub-int/2addr v5, v4

    #@1a1
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@1a3
    sub-int/2addr v5, v4

    #@1a4
    sub-int v8, v5, v2

    #@1a6
    goto :goto_1b4

    #@1a7
    :cond_1a7
    move/from16 p3, v12

    #@1a9
    .line 1971
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    #@1ac
    move-result v2

    #@1ad
    iget v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@1af
    add-int/2addr v2, v4

    #@1b0
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@1b2
    add-int v8, v2, v4

    #@1b4
    :goto_1b4
    if-eqz v1, :cond_226

    #@1b6
    if-eqz v17, :cond_1bb

    #@1b8
    .line 1995
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@1ba
    goto :goto_1bc

    #@1bb
    :cond_1bb
    const/4 v1, 0x0

    #@1bc
    :goto_1bc
    const/4 v2, 0x1

    #@1bd
    aget v4, v11, v2

    #@1bf
    sub-int/2addr v1, v4

    #@1c0
    const/4 v4, 0x0

    #@1c1
    .line 1996
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@1c4
    move-result v5

    #@1c5
    sub-int/2addr v10, v5

    #@1c6
    neg-int v1, v1

    #@1c7
    .line 1997
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@1ca
    move-result v1

    #@1cb
    aput v1, v11, v2

    #@1cd
    if-eqz v13, :cond_1f3

    #@1cf
    .line 2002
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1d1
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d4
    move-result-object v1

    #@1d5
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@1d7
    .line 2003
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1d9
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@1dc
    move-result v2

    #@1dd
    sub-int v2, v10, v2

    #@1df
    .line 2004
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1e1
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@1e4
    move-result v4

    #@1e5
    add-int/2addr v4, v8

    #@1e6
    .line 2005
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1e8
    invoke-virtual {v5, v2, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@1eb
    .line 2006
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@1ed
    sub-int/2addr v2, v5

    #@1ee
    .line 2007
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@1f0
    add-int v8, v4, v1

    #@1f2
    goto :goto_1f4

    #@1f3
    :cond_1f3
    move v2, v10

    #@1f4
    :goto_1f4
    if-eqz v14, :cond_21c

    #@1f6
    .line 2010
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1f8
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1fb
    move-result-object v1

    #@1fc
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@1fe
    .line 2011
    iget v4, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@200
    add-int/2addr v8, v4

    #@201
    .line 2012
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@203
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@206
    move-result v4

    #@207
    sub-int v4, v10, v4

    #@209
    .line 2013
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@20b
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@20e
    move-result v5

    #@20f
    add-int/2addr v5, v8

    #@210
    .line 2014
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@212
    invoke-virtual {v6, v4, v8, v10, v5}, Landroid/widget/TextView;->layout(IIII)V

    #@215
    .line 2015
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@217
    sub-int v4, v10, v4

    #@219
    .line 2016
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@21b
    goto :goto_21d

    #@21c
    :cond_21c
    move v4, v10

    #@21d
    :goto_21d
    if-eqz v17, :cond_128

    #@21f
    .line 2019
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@222
    move-result v1

    #@223
    move v10, v1

    #@224
    goto/16 :goto_128

    #@226
    :cond_226
    if-eqz v17, :cond_22c

    #@228
    .line 2022
    iget v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@22a
    const/4 v1, 0x0

    #@22b
    goto :goto_22e

    #@22c
    :cond_22c
    const/4 v1, 0x0

    #@22d
    const/4 v7, 0x0

    #@22e
    :goto_22e
    aget v2, v11, v1

    #@230
    sub-int/2addr v7, v2

    #@231
    .line 2023
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    #@234
    move-result v2

    #@235
    add-int/2addr v3, v2

    #@236
    neg-int v2, v7

    #@237
    .line 2024
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@23a
    move-result v2

    #@23b
    aput v2, v11, v1

    #@23d
    if-eqz v13, :cond_262

    #@23f
    .line 2029
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@241
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@244
    move-result-object v2

    #@245
    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@247
    .line 2030
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@249
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@24c
    move-result v4

    #@24d
    add-int/2addr v4, v3

    #@24e
    .line 2031
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@250
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@253
    move-result v5

    #@254
    add-int/2addr v5, v8

    #@255
    .line 2032
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@257
    invoke-virtual {v6, v3, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    #@25a
    .line 2033
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@25c
    add-int/2addr v4, v6

    #@25d
    .line 2034
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@25f
    add-int v8, v5, v2

    #@261
    goto :goto_263

    #@262
    :cond_262
    move v4, v3

    #@263
    :goto_263
    if-eqz v14, :cond_289

    #@265
    .line 2037
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@267
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@26a
    move-result-object v2

    #@26b
    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@26d
    .line 2038
    iget v5, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    #@26f
    add-int/2addr v8, v5

    #@270
    .line 2039
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@272
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@275
    move-result v5

    #@276
    add-int/2addr v5, v3

    #@277
    .line 2040
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@279
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@27c
    move-result v6

    #@27d
    add-int/2addr v6, v8

    #@27e
    .line 2041
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@280
    invoke-virtual {v7, v3, v8, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    #@283
    .line 2042
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@285
    add-int/2addr v5, v6

    #@286
    .line 2043
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@288
    goto :goto_28a

    #@289
    :cond_289
    move v5, v3

    #@28a
    :goto_28a
    if-eqz v17, :cond_290

    #@28c
    .line 2046
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@28f
    move-result v3

    #@290
    .line 2054
    :cond_290
    :goto_290
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@292
    const/4 v4, 0x3

    #@293
    invoke-direct {v0, v2, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@296
    .line 2055
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@298
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@29b
    move-result v2

    #@29c
    move v7, v1

    #@29d
    :goto_29d
    if-ge v7, v2, :cond_2b0

    #@29f
    .line 2057
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2a1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a4
    move-result-object v4

    #@2a5
    check-cast v4, Landroid/view/View;

    #@2a7
    move/from16 v12, p3

    #@2a9
    invoke-direct {v0, v4, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@2ac
    move-result v3

    #@2ad
    add-int/lit8 v7, v7, 0x1

    #@2af
    goto :goto_29d

    #@2b0
    :cond_2b0
    move/from16 v12, p3

    #@2b2
    .line 2061
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2b4
    const/4 v4, 0x5

    #@2b5
    invoke-direct {v0, v2, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@2b8
    .line 2062
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2ba
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2bd
    move-result v2

    #@2be
    move v7, v1

    #@2bf
    :goto_2bf
    if-ge v7, v2, :cond_2d0

    #@2c1
    .line 2064
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2c3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c6
    move-result-object v4

    #@2c7
    check-cast v4, Landroid/view/View;

    #@2c9
    invoke-direct {v0, v4, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@2cc
    move-result v10

    #@2cd
    add-int/lit8 v7, v7, 0x1

    #@2cf
    goto :goto_2bf

    #@2d0
    .line 2070
    :cond_2d0
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2d2
    const/4 v4, 0x1

    #@2d3
    invoke-direct {v0, v2, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@2d6
    .line 2071
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2d8
    invoke-direct {v0, v2, v11}, Landroidx/appcompat/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    #@2db
    move-result v2

    #@2dc
    sub-int v4, v16, v18

    #@2de
    sub-int v4, v4, p4

    #@2e0
    .line 2072
    div-int/lit8 v4, v4, 0x2

    #@2e2
    add-int v6, v18, v4

    #@2e4
    .line 2073
    div-int/lit8 v4, v2, 0x2

    #@2e6
    sub-int/2addr v6, v4

    #@2e7
    add-int/2addr v2, v6

    #@2e8
    if-ge v6, v3, :cond_2eb

    #@2ea
    goto :goto_2f2

    #@2eb
    :cond_2eb
    if-le v2, v10, :cond_2f1

    #@2ed
    sub-int/2addr v2, v10

    #@2ee
    sub-int v3, v6, v2

    #@2f0
    goto :goto_2f2

    #@2f1
    :cond_2f1
    move v3, v6

    #@2f2
    .line 2082
    :goto_2f2
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2f4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2f7
    move-result v2

    #@2f8
    :goto_2f8
    if-ge v1, v2, :cond_309

    #@2fa
    .line 2084
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2fc
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2ff
    move-result-object v4

    #@300
    check-cast v4, Landroid/view/View;

    #@302
    invoke-direct {v0, v4, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@305
    move-result v3

    #@306
    add-int/lit8 v1, v1, 0x1

    #@308
    goto :goto_2f8

    #@309
    .line 2088
    :cond_309
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@30b
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@30e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    #@0
    move-object/from16 v7, p0

    #@2
    .line 1744
    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    #@4
    .line 1747
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@7
    move-result v9

    #@8
    const/4 v10, 0x0

    #@9
    xor-int/lit8 v11, v9, 0x1

    #@b
    .line 1758
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@d
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_4d

    #@13
    .line 1759
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@15
    const/4 v5, 0x0

    #@16
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    #@18
    const/4 v3, 0x0

    #@19
    move-object/from16 v0, p0

    #@1b
    move/from16 v2, p1

    #@1d
    move/from16 v4, p2

    #@1f
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    #@22
    .line 1761
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@24
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    #@27
    move-result v0

    #@28
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2a
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@2d
    move-result v1

    #@2e
    add-int/2addr v0, v1

    #@2f
    .line 1762
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@31
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@34
    move-result v1

    #@35
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@37
    .line 1763
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@3a
    move-result v2

    #@3b
    add-int/2addr v1, v2

    #@3c
    .line 1762
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v1

    #@40
    .line 1764
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@42
    .line 1765
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    #@45
    move-result v2

    #@46
    .line 1764
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    #@49
    move-result v2

    #@4a
    move v12, v1

    #@4b
    move v13, v2

    #@4c
    goto :goto_50

    #@4d
    :cond_4d
    move v0, v10

    #@4e
    move v12, v0

    #@4f
    move v13, v12

    #@50
    .line 1768
    :goto_50
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@52
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_8f

    #@58
    .line 1769
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@5a
    const/4 v5, 0x0

    #@5b
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    #@5d
    const/4 v3, 0x0

    #@5e
    move-object/from16 v0, p0

    #@60
    move/from16 v2, p1

    #@62
    move/from16 v4, p2

    #@64
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    #@67
    .line 1771
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@69
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    #@6c
    move-result v0

    #@6d
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@6f
    .line 1772
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@72
    move-result v1

    #@73
    add-int/2addr v0, v1

    #@74
    .line 1773
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@76
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@79
    move-result v1

    #@7a
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@7c
    .line 1774
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@7f
    move-result v2

    #@80
    add-int/2addr v1, v2

    #@81
    .line 1773
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    #@84
    move-result v12

    #@85
    .line 1775
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@87
    .line 1776
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    #@8a
    move-result v1

    #@8b
    .line 1775
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    #@8e
    move-result v13

    #@8f
    .line 1779
    :cond_8f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    #@92
    move-result v1

    #@93
    .line 1780
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@96
    move-result v2

    #@97
    add-int v14, v10, v2

    #@99
    sub-int/2addr v1, v0

    #@9a
    .line 1781
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    #@9d
    move-result v0

    #@9e
    aput v0, v8, v9

    #@a0
    .line 1784
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@a2
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_e0

    #@a8
    .line 1785
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@aa
    const/4 v5, 0x0

    #@ab
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    #@ad
    move-object/from16 v0, p0

    #@af
    move/from16 v2, p1

    #@b1
    move v3, v14

    #@b2
    move/from16 v4, p2

    #@b4
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    #@b7
    .line 1787
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@b9
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    #@bc
    move-result v0

    #@bd
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@bf
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@c2
    move-result v1

    #@c3
    add-int/2addr v0, v1

    #@c4
    .line 1788
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@c6
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    #@c9
    move-result v1

    #@ca
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@cc
    .line 1789
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@cf
    move-result v2

    #@d0
    add-int/2addr v1, v2

    #@d1
    .line 1788
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    #@d4
    move-result v12

    #@d5
    .line 1790
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@d7
    .line 1791
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredState()I

    #@da
    move-result v1

    #@db
    .line 1790
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    #@de
    move-result v13

    #@df
    goto :goto_e1

    #@e0
    :cond_e0
    move v0, v10

    #@e1
    .line 1794
    :goto_e1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    #@e4
    move-result v1

    #@e5
    .line 1795
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@e8
    move-result v2

    #@e9
    add-int/2addr v14, v2

    #@ea
    sub-int/2addr v1, v0

    #@eb
    .line 1796
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    #@ee
    move-result v0

    #@ef
    aput v0, v8, v11

    #@f1
    .line 1798
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@f3
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@f6
    move-result v0

    #@f7
    if-eqz v0, :cond_124

    #@f9
    .line 1799
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@fb
    const/4 v5, 0x0

    #@fc
    move-object/from16 v0, p0

    #@fe
    move/from16 v2, p1

    #@100
    move v3, v14

    #@101
    move/from16 v4, p2

    #@103
    move-object v6, v8

    #@104
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@107
    move-result v0

    #@108
    add-int/2addr v14, v0

    #@109
    .line 1801
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@10b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@10e
    move-result v0

    #@10f
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@111
    .line 1802
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@114
    move-result v1

    #@115
    add-int/2addr v0, v1

    #@116
    .line 1801
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    #@119
    move-result v12

    #@11a
    .line 1803
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@11c
    .line 1804
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    #@11f
    move-result v0

    #@120
    .line 1803
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    #@123
    move-result v13

    #@124
    .line 1807
    :cond_124
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@126
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@129
    move-result v0

    #@12a
    if-eqz v0, :cond_157

    #@12c
    .line 1808
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@12e
    const/4 v5, 0x0

    #@12f
    move-object/from16 v0, p0

    #@131
    move/from16 v2, p1

    #@133
    move v3, v14

    #@134
    move/from16 v4, p2

    #@136
    move-object v6, v8

    #@137
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@13a
    move-result v0

    #@13b
    add-int/2addr v14, v0

    #@13c
    .line 1810
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@13e
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    #@141
    move-result v0

    #@142
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@144
    .line 1811
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@147
    move-result v1

    #@148
    add-int/2addr v0, v1

    #@149
    .line 1810
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    #@14c
    move-result v12

    #@14d
    .line 1812
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@14f
    .line 1813
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    #@152
    move-result v0

    #@153
    .line 1812
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    #@156
    move-result v13

    #@157
    .line 1816
    :cond_157
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@15a
    move-result v9

    #@15b
    move v11, v10

    #@15c
    :goto_15c
    if-ge v11, v9, :cond_19c

    #@15e
    .line 1818
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@161
    move-result-object v15

    #@162
    .line 1819
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@165
    move-result-object v0

    #@166
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@168
    .line 1820
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    #@16a
    if-nez v0, :cond_199

    #@16c
    invoke-direct {v7, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@16f
    move-result v0

    #@170
    if-nez v0, :cond_173

    #@172
    goto :goto_199

    #@173
    :cond_173
    const/4 v5, 0x0

    #@174
    move-object/from16 v0, p0

    #@176
    move-object v1, v15

    #@177
    move/from16 v2, p1

    #@179
    move v3, v14

    #@17a
    move/from16 v4, p2

    #@17c
    move-object v6, v8

    #@17d
    .line 1825
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@180
    move-result v0

    #@181
    add-int/2addr v14, v0

    #@182
    .line 1827
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    #@185
    move-result v0

    #@186
    invoke-direct {v7, v15}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@189
    move-result v1

    #@18a
    add-int/2addr v0, v1

    #@18b
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    #@18e
    move-result v0

    #@18f
    .line 1828
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    #@192
    move-result v1

    #@193
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    #@196
    move-result v1

    #@197
    move v12, v0

    #@198
    move v13, v1

    #@199
    :cond_199
    :goto_199
    add-int/lit8 v11, v11, 0x1

    #@19b
    goto :goto_15c

    #@19c
    .line 1833
    :cond_19c
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@19e
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@1a0
    add-int v9, v0, v1

    #@1a2
    .line 1834
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@1a4
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@1a6
    add-int v11, v0, v1

    #@1a8
    .line 1835
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1aa
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@1ad
    move-result v0

    #@1ae
    if-eqz v0, :cond_1e7

    #@1b0
    .line 1836
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1b2
    add-int v3, v14, v11

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move/from16 v2, p1

    #@1b8
    move/from16 v4, p2

    #@1ba
    move v5, v9

    #@1bb
    move-object v6, v8

    #@1bc
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@1bf
    .line 1839
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1c1
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@1c4
    move-result v0

    #@1c5
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1c7
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@1ca
    move-result v1

    #@1cb
    add-int/2addr v0, v1

    #@1cc
    .line 1840
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1ce
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@1d1
    move-result v1

    #@1d2
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1d4
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@1d7
    move-result v2

    #@1d8
    add-int/2addr v1, v2

    #@1d9
    .line 1841
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1db
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    #@1de
    move-result v2

    #@1df
    invoke-static {v13, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    #@1e2
    move-result v13

    #@1e3
    move v15, v1

    #@1e4
    move v6, v13

    #@1e5
    move v13, v0

    #@1e6
    goto :goto_1ea

    #@1e7
    :cond_1e7
    move v15, v10

    #@1e8
    move v6, v13

    #@1e9
    move v13, v15

    #@1ea
    .line 1843
    :goto_1ea
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1ec
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@1ef
    move-result v0

    #@1f0
    if-eqz v0, :cond_221

    #@1f2
    .line 1844
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1f4
    add-int v3, v14, v11

    #@1f6
    add-int v5, v15, v9

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    move/from16 v2, p1

    #@1fc
    move/from16 v4, p2

    #@1fe
    move v9, v6

    #@1ff
    move-object v6, v8

    #@200
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@203
    move-result v0

    #@204
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    #@207
    move-result v13

    #@208
    .line 1848
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@20a
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@20d
    move-result v0

    #@20e
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@210
    .line 1849
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@213
    move-result v1

    #@214
    add-int/2addr v0, v1

    #@215
    add-int/2addr v15, v0

    #@216
    .line 1850
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@218
    .line 1851
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    #@21b
    move-result v0

    #@21c
    .line 1850
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    #@21f
    move-result v6

    #@220
    goto :goto_222

    #@221
    :cond_221
    move v9, v6

    #@222
    :goto_222
    add-int/2addr v14, v13

    #@223
    .line 1855
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    #@226
    move-result v0

    #@227
    .line 1859
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    #@22a
    move-result v1

    #@22b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    #@22e
    move-result v2

    #@22f
    add-int/2addr v1, v2

    #@230
    add-int/2addr v14, v1

    #@231
    .line 1860
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    #@234
    move-result v1

    #@235
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    #@238
    move-result v2

    #@239
    add-int/2addr v1, v2

    #@23a
    add-int/2addr v0, v1

    #@23b
    .line 1863
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumWidth()I

    #@23e
    move-result v1

    #@23f
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    #@242
    move-result v1

    #@243
    const/high16 v2, -0x1000000

    #@245
    and-int/2addr v2, v6

    #@246
    move/from16 v3, p1

    #@248
    .line 1862
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    #@24b
    move-result v1

    #@24c
    .line 1866
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumHeight()I

    #@24f
    move-result v2

    #@250
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@253
    move-result v0

    #@254
    shl-int/lit8 v2, v6, 0x10

    #@256
    move/from16 v3, p2

    #@258
    .line 1865
    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    #@25b
    move-result v0

    #@25c
    .line 1869
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->shouldCollapse()Z

    #@25f
    move-result v2

    #@260
    if-eqz v2, :cond_263

    #@262
    goto :goto_264

    #@263
    :cond_263
    move v10, v0

    #@264
    :goto_264
    invoke-virtual {v7, v1, v10}, Landroidx/appcompat/widget/Toolbar;->setMeasuredDimension(II)V

    #@267
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    #@0
    .line 1592
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1593
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 1597
    :cond_8
    check-cast p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    #@a
    .line 1598
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 1600
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@13
    if-eqz v0, :cond_1a

    #@15
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@18
    move-result-object v0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    .line 1601
    :goto_1b
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@1d
    if-eqz v1, :cond_30

    #@1f
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@21
    if-eqz v1, :cond_30

    #@23
    if-eqz v0, :cond_30

    #@25
    .line 1602
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@27
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@2a
    move-result-object v0

    #@2b
    if-eqz v0, :cond_30

    #@2d
    .line 1604
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    #@30
    .line 1608
    :cond_30
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@32
    if-eqz p1, :cond_37

    #@34
    .line 1609
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->postShowOverflowMenu()V

    #@37
    :cond_37
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    #@0
    .line 514
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    #@3
    .line 517
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    #@6
    .line 518
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@8
    const/4 v1, 0x1

    #@9
    if-ne p1, v1, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v1, 0x0

    #@d
    :goto_d
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/RtlSpacingHelper;->setDirection(Z)V

    #@10
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 1580
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1582
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@b
    if-eqz v1, :cond_1b

    #@d
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@f
    if-eqz v1, :cond_1b

    #@11
    .line 1583
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@13
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@15
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@18
    move-result v1

    #@19
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@1b
    .line 1586
    :cond_1b
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    #@1e
    move-result v1

    #@1f
    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@21
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 1631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_9

    #@7
    .line 1633
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    #@9
    .line 1636
    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    #@b
    const/4 v3, 0x1

    #@c
    if-nez v2, :cond_18

    #@e
    .line 1637
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result p1

    #@12
    if-nez v0, :cond_18

    #@14
    if-nez p1, :cond_18

    #@16
    .line 1639
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    #@18
    :cond_18
    if-eq v0, v3, :cond_1d

    #@1a
    const/4 p1, 0x3

    #@1b
    if-ne v0, p1, :cond_1f

    #@1d
    .line 1644
    :cond_1d
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    #@1f
    :cond_1f
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .registers 5

    #@0
    .line 2283
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_26

    #@8
    .line 2286
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 2287
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@12
    .line 2288
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    #@14
    const/4 v3, 0x2

    #@15
    if-eq v2, v3, :cond_23

    #@17
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@19
    if-eq v1, v2, :cond_23

    #@1b
    .line 2289
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    #@1e
    .line 2290
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    :cond_23
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_6

    #@26
    :cond_26
    return-void
.end method

.method public removeMenuProvider(Landroidx/core/view/MenuProvider;)V
    .registers 3

    #@0
    .line 2413
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/MenuHostHelper;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    #@5
    return-void
.end method

.method public setCollapseContentDescription(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 1079
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 1093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 1094
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    #@9
    .line 1096
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 1097
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@10
    :cond_10
    return-void
.end method

.method public setCollapseIcon(I)V
    .registers 3

    #@0
    .line 1125
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 1140
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    #@5
    .line 1141
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    goto :goto_14

    #@b
    .line 1142
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@d
    if-eqz p1, :cond_14

    #@f
    .line 1143
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    :cond_14
    :goto_14
    return-void
.end method

.method public setCollapsible(Z)V
    .registers 2

    #@0
    .line 2315
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    #@2
    .line 2316
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@5
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .registers 3

    #@0
    if-gez p1, :cond_4

    #@2
    const/high16 p1, -0x80000000

    #@4
    .line 1447
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    #@6
    if-eq p1, v0, :cond_13

    #@8
    .line 1448
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    #@a
    .line 1449
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object p1

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 1450
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@13
    :cond_13
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .registers 3

    #@0
    if-gez p1, :cond_4

    #@2
    const/high16 p1, -0x80000000

    #@4
    .line 1404
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@6
    if-eq p1, v0, :cond_13

    #@8
    .line 1405
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@a
    .line 1406
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object p1

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 1407
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@13
    :cond_13
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .registers 4

    #@0
    .line 1322
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    #@3
    .line 1323
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@5
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    #@8
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .registers 4

    #@0
    .line 1257
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    #@3
    .line 1258
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    #@5
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    #@8
    return-void
.end method

.method public setLogo(I)V
    .registers 3

    #@0
    .line 531
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-eqz p1, :cond_14

    #@2
    .line 652
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    #@5
    .line 653
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@7
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_2a

    #@d
    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@13
    goto :goto_2a

    #@14
    .line 656
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@16
    if-eqz v0, :cond_2a

    #@18
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2a

    #@1e
    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@20
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@23
    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@25
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2a
    .line 660
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2c
    if-eqz v0, :cond_31

    #@2e
    .line 661
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@31
    :cond_31
    return-void
.end method

.method public setLogoDescription(I)V
    .registers 3

    #@0
    .line 686
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    #@b
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 699
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    #@9
    .line 701
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 702
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@10
    :cond_10
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 6

    #@0
    if-nez p1, :cond_7

    #@2
    .line 577
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 581
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    #@a
    .line 582
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@c
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@f
    move-result-object v0

    #@10
    if-ne v0, p1, :cond_13

    #@12
    return-void

    #@13
    :cond_13
    if-eqz v0, :cond_1f

    #@15
    .line 588
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@17
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    #@1a
    .line 589
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1c
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    #@1f
    .line 592
    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@21
    if-nez v0, :cond_2a

    #@23
    .line 593
    new-instance v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@25
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    #@28
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@2a
    :cond_2a
    const/4 v0, 0x1

    #@2b
    .line 596
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@2e
    if-eqz p1, :cond_3d

    #@30
    .line 598
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@32
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@35
    .line 599
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@37
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@39
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@3c
    goto :goto_52

    #@3d
    .line 601
    :cond_3d
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@3f
    const/4 v1, 0x0

    #@40
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@43
    .line 602
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@45
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@47
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@4a
    .line 603
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    #@4d
    .line 604
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@4f
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    #@52
    .line 606
    :goto_52
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@54
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    #@56
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    #@59
    .line 607
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@5b
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    #@5e
    .line 608
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@60
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 4

    #@0
    .line 2325
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    .line 2326
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    #@4
    .line 2327
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 2328
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    #@b
    :cond_b
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 956
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 970
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 971
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    #@9
    .line 973
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@b
    if-eqz v0, :cond_15

    #@d
    .line 974
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@10
    .line 975
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@12
    invoke-static {v0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@15
    :cond_15
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3

    #@0
    .line 994
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-eqz p1, :cond_14

    #@2
    .line 1013
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    #@5
    .line 1014
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@7
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_2a

    #@d
    .line 1015
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@13
    goto :goto_2a

    #@14
    .line 1017
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@16
    if-eqz v0, :cond_2a

    #@18
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2a

    #@1e
    .line 1018
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@20
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@23
    .line 1019
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@25
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2a
    .line 1021
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2c
    if-eqz v0, :cond_31

    #@2e
    .line 1022
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@31
    :cond_31
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    #@0
    .line 1049
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    #@3
    .line 1050
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@8
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 2

    #@0
    .line 1235
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    #@2
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 1168
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    #@3
    .line 1169
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    #@0
    .line 377
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    #@2
    if-eq v0, p1, :cond_1a

    #@4
    .line 378
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    #@6
    if-nez p1, :cond_f

    #@8
    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@e
    goto :goto_1a

    #@f
    .line 382
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@11
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@18
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    #@0
    .line 829
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@b
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5

    #@0
    .line 840
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_40

    #@6
    .line 841
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@8
    if-nez v0, :cond_31

    #@a
    .line 842
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 843
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    #@10
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@15
    .line 844
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    #@18
    .line 845
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@1f
    .line 846
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    #@21
    if-eqz v1, :cond_28

    #@23
    .line 847
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@25
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@28
    .line 849
    :cond_28
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    #@2a
    if-eqz v0, :cond_31

    #@2c
    .line 850
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@31
    .line 853
    :cond_31
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@33
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_56

    #@39
    .line 854
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@3b
    const/4 v1, 0x1

    #@3c
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@3f
    goto :goto_56

    #@40
    .line 856
    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@42
    if-eqz v0, :cond_56

    #@44
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_56

    #@4a
    .line 857
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4c
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@4f
    .line 858
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@51
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@56
    .line 860
    :cond_56
    :goto_56
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@58
    if-eqz v0, :cond_5d

    #@5a
    .line 861
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5d
    .line 863
    :cond_5d
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    #@5f
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 4

    #@0
    .line 882
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    #@2
    .line 883
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 884
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@9
    :cond_9
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .registers 2

    #@0
    .line 915
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 924
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 925
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 926
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@9
    :cond_9
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    #@0
    .line 773
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 5

    #@0
    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_40

    #@6
    .line 786
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    if-nez v0, :cond_31

    #@a
    .line 787
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 788
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    #@10
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@15
    .line 789
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    #@18
    .line 790
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@1f
    .line 791
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    #@21
    if-eqz v1, :cond_28

    #@23
    .line 792
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@25
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@28
    .line 794
    :cond_28
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    #@2a
    if-eqz v0, :cond_31

    #@2c
    .line 795
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@2e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@31
    .line 798
    :cond_31
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@33
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_56

    #@39
    .line 799
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@3b
    const/4 v1, 0x1

    #@3c
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@3f
    goto :goto_56

    #@40
    .line 801
    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@42
    if-eqz v0, :cond_56

    #@44
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_56

    #@4a
    .line 802
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4c
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@4f
    .line 803
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@51
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@56
    .line 805
    :cond_56
    :goto_56
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@58
    if-eqz v0, :cond_5d

    #@5a
    .line 806
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5d
    .line 808
    :cond_5d
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    #@5f
    return-void
.end method

.method public setTitleMargin(IIII)V
    .registers 5

    #@0
    .line 412
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@2
    .line 413
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@4
    .line 414
    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@6
    .line 415
    iput p4, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@8
    .line 417
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@b
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .registers 2

    #@0
    .line 507
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    #@2
    .line 508
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@5
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .registers 2

    #@0
    .line 484
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    #@2
    .line 486
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@5
    return-void
.end method

.method public setTitleMarginStart(I)V
    .registers 2

    #@0
    .line 438
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    #@2
    .line 440
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@5
    return-void
.end method

.method public setTitleMarginTop(I)V
    .registers 2

    #@0
    .line 461
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    #@2
    .line 463
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    #@5
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4

    #@0
    .line 871
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    #@2
    .line 872
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 873
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@9
    :cond_9
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 2

    #@0
    .line 894
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 903
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 904
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 905
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@9
    :cond_9
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    #@0
    .line 562
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->showOverflowMenu()Z

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
