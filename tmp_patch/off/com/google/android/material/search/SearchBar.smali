.class public Lcom/google/android/material/search/SearchBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchBar$SavedState;,
        Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;,
        Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_FLAGS:I = 0x35

.field private static final DEF_STYLE_RES:I

.field private static final NAMESPACE_APP:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private centerView:Landroid/view/View;

.field private final defaultMarginsEnabled:Z

.field private final defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private defaultScrollFlagsEnabled:Z

.field private final forceDefaultNavigationOnClickListener:Z

.field private final layoutInflated:Z

.field private menuResId:I

.field private navigationIconTint:Ljava/lang/Integer;

.field private originalNavigationIconBackground:Landroid/graphics/drawable/Drawable;

.field private final searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field private final textView:Landroid/widget/TextView;

.field private final tintNavigationIcon:Z

.field private final touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 120
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SearchBar:I

    #@2
    sput v0, Lcom/google/android/material/search/SearchBar;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 148
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 152
    sget v0, Lcom/google/android/material/R$attr;->materialSearchBarStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    #@0
    .line 156
    sget v6, Lcom/google/android/material/search/SearchBar;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    const/4 p1, -0x1

    #@a
    .line 139
    iput p1, p0, Lcom/google/android/material/search/SearchBar;->menuResId:I

    #@c
    .line 144
    new-instance v0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda0;

    #@e
    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchBar;)V

    #@11
    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@13
    .line 158
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getContext()Landroid/content/Context;

    #@16
    move-result-object v7

    #@17
    .line 159
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBar;->validateAttributes(Landroid/util/AttributeSet;)V

    #@1a
    .line 161
    sget v0, Lcom/google/android/material/R$drawable;->ic_search_black_24:I

    #@1c
    .line 162
    invoke-static {v7, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@22
    .line 163
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@24
    invoke-direct {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;-><init>()V

    #@27
    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@29
    .line 165
    sget-object v2, Lcom/google/android/material/R$styleable;->SearchBar:[I

    #@2b
    const/4 v8, 0x0

    #@2c
    new-array v5, v8, [I

    #@2e
    move-object v0, v7

    #@2f
    move-object v1, p2

    #@30
    move v3, p3

    #@31
    move v4, v6

    #@32
    .line 166
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@35
    move-result-object v0

    #@36
    .line 170
    invoke-static {v7, p2, p3, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@39
    move-result-object p2

    #@3a
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@3d
    move-result-object p2

    #@3e
    .line 171
    sget p3, Lcom/google/android/material/R$styleable;->SearchBar_elevation:I

    #@40
    const/4 v1, 0x0

    #@41
    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@44
    move-result p3

    #@45
    .line 172
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_defaultMarginsEnabled:I

    #@47
    const/4 v2, 0x1

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4b
    move-result v1

    #@4c
    iput-boolean v1, p0, Lcom/google/android/material/search/SearchBar;->defaultMarginsEnabled:Z

    #@4e
    .line 173
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_defaultScrollFlagsEnabled:I

    #@50
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@53
    move-result v1

    #@54
    iput-boolean v1, p0, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    #@56
    .line 174
    sget v1, Lcom/google/android/material/R$styleable;->SearchBar_hideNavigationIcon:I

    #@58
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5b
    move-result v1

    #@5c
    .line 175
    sget v3, Lcom/google/android/material/R$styleable;->SearchBar_forceDefaultNavigationOnClickListener:I

    #@5e
    .line 176
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@61
    move-result v3

    #@62
    iput-boolean v3, p0, Lcom/google/android/material/search/SearchBar;->forceDefaultNavigationOnClickListener:Z

    #@64
    .line 177
    sget v3, Lcom/google/android/material/R$styleable;->SearchBar_tintNavigationIcon:I

    #@66
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@69
    move-result v3

    #@6a
    iput-boolean v3, p0, Lcom/google/android/material/search/SearchBar;->tintNavigationIcon:Z

    #@6c
    .line 178
    sget v3, Lcom/google/android/material/R$styleable;->SearchBar_navigationIconTint:I

    #@6e
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@71
    move-result v3

    #@72
    if-eqz v3, :cond_80

    #@74
    .line 179
    sget v3, Lcom/google/android/material/R$styleable;->SearchBar_navigationIconTint:I

    #@76
    invoke-virtual {v0, v3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@79
    move-result v3

    #@7a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v3

    #@7e
    iput-object v3, p0, Lcom/google/android/material/search/SearchBar;->navigationIconTint:Ljava/lang/Integer;

    #@80
    .line 181
    :cond_80
    sget v3, Lcom/google/android/material/R$styleable;->SearchBar_android_textAppearance:I

    #@82
    invoke-virtual {v0, v3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@85
    move-result p1

    #@86
    .line 182
    sget v3, Lcom/google/android/material/R$styleable;->SearchBar_android_text:I

    #@88
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    .line 183
    sget v4, Lcom/google/android/material/R$styleable;->SearchBar_android_hint:I

    #@8e
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    .line 184
    sget v5, Lcom/google/android/material/R$styleable;->SearchBar_strokeWidth:I

    #@94
    const/high16 v6, -0x40800000    # -1.0f

    #@96
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@99
    move-result v5

    #@9a
    .line 185
    sget v6, Lcom/google/android/material/R$styleable;->SearchBar_strokeColor:I

    #@9c
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    #@9f
    move-result v6

    #@a0
    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@a3
    if-nez v1, :cond_a8

    #@a5
    .line 190
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->initNavigationIcon()V

    #@a8
    .line 192
    :cond_a8
    invoke-virtual {p0, v2}, Lcom/google/android/material/search/SearchBar;->setClickable(Z)V

    #@ab
    .line 193
    invoke-virtual {p0, v2}, Lcom/google/android/material/search/SearchBar;->setFocusable(Z)V

    #@ae
    .line 195
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@b1
    move-result-object v0

    #@b2
    sget v1, Lcom/google/android/material/R$layout;->mtrl_search_bar:I

    #@b4
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b7
    .line 196
    iput-boolean v2, p0, Lcom/google/android/material/search/SearchBar;->layoutInflated:Z

    #@b9
    .line 198
    sget v0, Lcom/google/android/material/R$id;->search_bar_text_view:I

    #@bb
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->findViewById(I)Landroid/view/View;

    #@be
    move-result-object v0

    #@bf
    check-cast v0, Landroid/widget/TextView;

    #@c1
    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@c3
    .line 200
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    #@c6
    .line 201
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/material/search/SearchBar;->initTextView(ILjava/lang/String;Ljava/lang/String;)V

    #@c9
    .line 202
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/google/android/material/search/SearchBar;->initBackground(Lcom/google/android/material/shape/ShapeAppearanceModel;FFI)V

    #@cc
    .line 205
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getContext()Landroid/content/Context;

    #@cf
    move-result-object p1

    #@d0
    const-string p2, "accessibility"

    #@d2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d5
    move-result-object p1

    #@d6
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    #@d8
    iput-object p1, p0, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@da
    .line 206
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->setupTouchExplorationStateChangeListener()V

    #@dd
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchBar;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    #@0
    .line 118
    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/search/SearchBar;)Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    .registers 1

    #@0
    .line 118
    iget-object p0, p0, Lcom/google/android/material/search/SearchBar;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@2
    return-object p0
.end method

.method private defaultIfZero(II)I
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    move p1, p2

    #@3
    :cond_3
    return p1
.end method

.method private getCompatBackgroundColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 9

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [[I

    #@3
    const/4 v2, 0x1

    #@4
    new-array v3, v2, [I

    #@6
    const v4, 0x10100a7

    #@9
    const/4 v5, 0x0

    #@a
    aput v4, v3, v5

    #@c
    aput-object v3, v1, v5

    #@e
    new-array v3, v2, [I

    #@10
    const v4, 0x101009c

    #@13
    aput v4, v3, v5

    #@15
    aput-object v3, v1, v2

    #@17
    new-array v3, v5, [I

    #@19
    const/4 v4, 0x2

    #@1a
    aput-object v3, v1, v4

    #@1c
    .line 307
    invoke-static {p1, p2}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@1f
    move-result p2

    #@20
    new-array v0, v0, [I

    #@22
    aput p2, v0, v5

    #@24
    aput p2, v0, v2

    #@26
    aput p1, v0, v4

    #@28
    .line 309
    new-instance p1, Landroid/content/res/ColorStateList;

    #@2a
    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@2d
    return-object p1
.end method

.method private initBackground(Lcom/google/android/material/shape/ShapeAppearanceModel;FFI)V
    .registers 6

    #@0
    .line 277
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@5
    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    .line 278
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getContext()Landroid/content/Context;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@e
    .line 279
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@10
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@13
    const/4 p1, 0x0

    #@14
    cmpl-float p1, p3, p1

    #@16
    if-ltz p1, :cond_1d

    #@18
    .line 281
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1a
    invoke-virtual {p1, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    #@1d
    .line 284
    :cond_1d
    sget p1, Lcom/google/android/material/R$attr;->colorSurface:I

    #@1f
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@22
    move-result p1

    #@23
    .line 285
    sget p2, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    #@25
    invoke-static {p0, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@28
    move-result p2

    #@29
    .line 288
    iget-object p3, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2b
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@2e
    move-result-object p1

    #@2f
    invoke-virtual {p3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@32
    .line 289
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    #@34
    .line 290
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@37
    move-result-object p2

    #@38
    iget-object p3, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3a
    invoke-direct {p1, p2, p3, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@3d
    .line 296
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@40
    return-void
.end method

.method private initNavigationIcon()V
    .registers 2

    #@0
    .line 250
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_9

    #@6
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@8
    goto :goto_d

    #@9
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@10
    const/4 v0, 0x1

    #@11
    .line 255
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBar;->setNavigationIconDecorative(Z)V

    #@14
    return-void
.end method

.method private initTextView(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_8

    #@3
    .line 260
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@5
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@8
    .line 262
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchBar;->setText(Ljava/lang/CharSequence;)V

    #@b
    .line 263
    invoke-virtual {p0, p3}, Lcom/google/android/material/search/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    #@e
    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object p1

    #@12
    if-nez p1, :cond_29

    #@14
    .line 265
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@16
    .line 266
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object p1

    #@1a
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1c
    .line 267
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object p2

    #@20
    sget p3, Lcom/google/android/material/R$dimen;->m3_searchbar_text_margin_start_no_navigation_icon:I

    #@22
    .line 268
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@25
    move-result p2

    #@26
    .line 265
    invoke-static {p1, p2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@29
    :cond_29
    return-void
.end method

.method private layoutCenterView()V
    .registers 10

    #@0
    .line 501
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 505
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@8
    move-result v0

    #@9
    .line 506
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredWidth()I

    #@c
    move-result v1

    #@d
    div-int/lit8 v1, v1, 0x2

    #@f
    div-int/lit8 v2, v0, 0x2

    #@11
    sub-int v5, v1, v2

    #@13
    add-int v7, v5, v0

    #@15
    .line 509
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@1a
    move-result v0

    #@1b
    .line 510
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredHeight()I

    #@1e
    move-result v1

    #@1f
    div-int/lit8 v1, v1, 0x2

    #@21
    div-int/lit8 v2, v0, 0x2

    #@23
    sub-int v6, v1, v2

    #@25
    add-int v8, v6, v0

    #@27
    .line 513
    iget-object v4, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@29
    move-object v3, p0

    #@2a
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/search/SearchBar;->layoutChild(Landroid/view/View;IIII)V

    #@2d
    return-void
.end method

.method private layoutChild(Landroid/view/View;IIII)V
    .registers 8

    #@0
    .line 517
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_15

    #@7
    .line 518
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredWidth()I

    #@a
    move-result v0

    #@b
    sub-int/2addr v0, p4

    #@c
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredWidth()I

    #@f
    move-result p4

    #@10
    sub-int/2addr p4, p2

    #@11
    invoke-virtual {p1, v0, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    #@14
    goto :goto_18

    #@15
    .line 520
    :cond_15
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    #@18
    :goto_18
    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 365
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->tintNavigationIcon:Z

    #@2
    if-eqz v0, :cond_28

    #@4
    if-nez p1, :cond_7

    #@6
    goto :goto_28

    #@7
    .line 370
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->navigationIconTint:Ljava/lang/Integer;

    #@9
    if-eqz v0, :cond_10

    #@b
    .line 371
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v0

    #@f
    goto :goto_1d

    #@10
    .line 377
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@12
    if-ne p1, v0, :cond_17

    #@14
    .line 378
    sget v0, Lcom/google/android/material/R$attr;->colorOnSurfaceVariant:I

    #@16
    goto :goto_19

    #@17
    .line 379
    :cond_17
    sget v0, Lcom/google/android/material/R$attr;->colorOnSurface:I

    #@19
    .line 380
    :goto_19
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@1c
    move-result v0

    #@1d
    .line 383
    :goto_1d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@20
    move-result-object p1

    #@21
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object p1

    #@25
    .line 384
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@28
    :cond_28
    :goto_28
    return-object p1
.end method

.method private measureCenterView(II)V
    .registers 4

    #@0
    .line 495
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 496
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    #@7
    :cond_7
    return-void
.end method

.method private setDefaultMargins()V
    .registers 5

    #@0
    .line 462
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->defaultMarginsEnabled:Z

    #@2
    if-eqz v0, :cond_42

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    if-eqz v0, :cond_42

    #@c
    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 464
    sget v1, Lcom/google/android/material/R$dimen;->m3_searchbar_margin_horizontal:I

    #@12
    .line 465
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@15
    move-result v1

    #@16
    .line 466
    sget v2, Lcom/google/android/material/R$dimen;->m3_searchbar_margin_vertical:I

    #@18
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1b
    move-result v0

    #@1c
    .line 467
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@22
    .line 468
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@24
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    #@27
    move-result v3

    #@28
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@2a
    .line 469
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@2c
    invoke-direct {p0, v3, v0}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    #@2f
    move-result v3

    #@30
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@32
    .line 470
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@34
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    #@37
    move-result v1

    #@38
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@3a
    .line 471
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@3c
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    #@3f
    move-result v0

    #@40
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@42
    :cond_42
    return-void
.end method

.method private setNavigationIconDecorative(Z)V
    .registers 4

    #@0
    .line 389
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    xor-int/lit8 v1, p1, 0x1

    #@9
    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    #@c
    xor-int/lit8 v1, p1, 0x1

    #@e
    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    #@11
    .line 397
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_19

    #@17
    .line 400
    iput-object v1, p0, Lcom/google/android/material/search/SearchBar;->originalNavigationIconBackground:Landroid/graphics/drawable/Drawable;

    #@19
    :cond_19
    if-eqz p1, :cond_1d

    #@1b
    const/4 p1, 0x0

    #@1c
    goto :goto_1f

    #@1d
    .line 406
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar;->originalNavigationIconBackground:Landroid/graphics/drawable/Drawable;

    #@1f
    .line 405
    :goto_1f
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    return-void
.end method

.method private setOrClearDefaultScrollFlags()V
    .registers 4

    #@0
    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@6
    if-eqz v0, :cond_28

    #@8
    .line 481
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@e
    .line 482
    iget-boolean v1, p0, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    #@10
    const/16 v2, 0x35

    #@12
    if-eqz v1, :cond_1e

    #@14
    .line 483
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_28

    #@1a
    .line 484
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    #@1d
    goto :goto_28

    #@1e
    .line 487
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    #@21
    move-result v1

    #@22
    if-ne v1, v2, :cond_28

    #@24
    const/4 v1, 0x0

    #@25
    .line 488
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    #@28
    :cond_28
    :goto_28
    return-void
.end method

.method private setupTouchExplorationStateChangeListener()V
    .registers 2

    #@0
    .line 210
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2
    if-eqz v0, :cond_1e

    #@4
    .line 212
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_16

    #@a
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@c
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_16

    #@12
    const/4 v0, 0x1

    #@13
    .line 213
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->setFocusableInTouchMode(Z)V

    #@16
    .line 217
    :cond_16
    new-instance v0, Lcom/google/android/material/search/SearchBar$1;

    #@18
    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchBar$1;-><init>(Lcom/google/android/material/search/SearchBar;)V

    #@1b
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1e
    :cond_1e
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const-string v0, "title"

    #@5
    const-string v1, "http://schemas.android.com/apk/res-auto"

    #@7
    .line 238
    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_1e

    #@d
    const-string v0, "subtitle"

    #@f
    .line 242
    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-void

    #@16
    .line 243
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@18
    const-string v0, "SearchBar does not support subtitle. Use hint or text instead."

    #@1a
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p1

    #@1e
    .line 239
    :cond_1e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@20
    const-string v0, "SearchBar does not support title. Use hint or text instead."

    #@22
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@25
    throw p1
.end method


# virtual methods
.method public addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    #@0
    .line 781
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    #@5
    return-void
.end method

.method public addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    #@0
    .line 723
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    #@5
    return-void
.end method

.method public addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .registers 3

    #@0
    .line 666
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V

    #@5
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    .line 314
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->layoutInflated:Z

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@6
    if-nez v0, :cond_12

    #@8
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView;

    #@a
    if-nez v0, :cond_12

    #@c
    .line 315
    iput-object p1, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@e
    const/4 v0, 0x0

    #@f
    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@12
    .line 318
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@15
    return-void
.end method

.method public clearText()V
    .registers 3

    #@0
    .line 565
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    const-string v1, ""

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7
    return-void
.end method

.method public collapse(Landroid/view/View;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 744
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/search/SearchBar;->collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 750
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchBar;->collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z
    .registers 5

    #@0
    .line 768
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isCollapsing()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_12

    #@c
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isExpanding()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_19

    #@12
    .line 769
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@14
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->startCollapseAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    #@17
    const/4 p1, 0x1

    #@18
    return p1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return p1
.end method

.method public expand(Landroid/view/View;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 686
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/search/SearchBar;->expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 692
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchBar;->expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z
    .registers 5

    #@0
    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isExpanding()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_12

    #@c
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isCollapsing()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_19

    #@12
    .line 711
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@14
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->startExpandAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    #@17
    const/4 p1, 0x1

    #@18
    return p1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return p1
.end method

.method public getCenterView()Landroid/view/View;
    .registers 2

    #@0
    .line 527
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method getCompatElevation()F
    .registers 2

    #@0
    .line 799
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    #@7
    move-result v0

    #@8
    goto :goto_d

    #@9
    :cond_9
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@c
    move-result v0

    #@d
    :goto_d
    return v0
.end method

.method public getCornerSize()F
    .registers 2

    #@0
    .line 613
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 571
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getMenuResId()I
    .registers 2

    #@0
    .line 795
    iget v0, p0, Lcom/google/android/material/search/SearchBar;->menuResId:I

    #@2
    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    #@0
    .line 587
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    #@0
    .line 600
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeWidth()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 550
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 544
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method public inflateMenu(I)V
    .registers 2

    #@0
    .line 411
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    #@3
    .line 412
    iput p1, p0, Lcom/google/android/material/search/SearchBar;->menuResId:I

    #@5
    return-void
.end method

.method public isCollapsing()Z
    .registers 2

    #@0
    .line 738
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isCollapsing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDefaultScrollFlagsEnabled()Z
    .registers 2

    #@0
    .line 621
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    #@2
    return v0
.end method

.method public isExpanding()Z
    .registers 2

    #@0
    .line 680
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isExpanding()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOnLoadAnimationFadeInEnabled()Z
    .registers 2

    #@0
    .line 652
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isOnLoadAnimationFadeInEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-search-SearchBar(Z)V
    .registers 2

    #@0
    .line 145
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar;->setFocusableInTouchMode(Z)V

    #@3
    return-void
.end method

.method synthetic lambda$startOnLoadAnimation$1$com-google-android-material-search-SearchBar()V
    .registers 2

    #@0
    .line 639
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V

    #@5
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 431
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    #@3
    .line 433
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@5
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@8
    .line 434
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->setDefaultMargins()V

    #@b
    .line 435
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->setOrClearDefaultScrollFlags()V

    #@e
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    #@0
    .line 332
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 333
    const-class v0, Landroid/widget/EditText;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 334
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v1

    #@14
    .line 337
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getHint()Ljava/lang/CharSequence;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    #@1b
    .line 338
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    #@1e
    if-eqz v1, :cond_24

    #@20
    .line 342
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getHint()Ljava/lang/CharSequence;

    #@23
    move-result-object v0

    #@24
    .line 345
    :cond_24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@27
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 424
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    #@3
    .line 426
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->layoutCenterView()V

    #@6
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    #@0
    .line 417
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->onMeasure(II)V

    #@3
    .line 419
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBar;->measureCenterView(II)V

    #@6
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 865
    instance-of v0, p1, Lcom/google/android/material/search/SearchBar$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 866
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 869
    :cond_8
    check-cast p1, Lcom/google/android/material/search/SearchBar$SavedState;

    #@a
    .line 870
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 871
    iget-object p1, p1, Lcom/google/android/material/search/SearchBar$SavedState;->text:Ljava/lang/String;

    #@13
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar;->setText(Ljava/lang/CharSequence;)V

    #@16
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 857
    new-instance v0, Lcom/google/android/material/search/SearchBar$SavedState;

    #@2
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 858
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_11

    #@f
    const/4 v1, 0x0

    #@10
    goto :goto_15

    #@11
    .line 859
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :goto_15
    iput-object v1, v0, Lcom/google/android/material/search/SearchBar$SavedState;->text:Ljava/lang/String;

    #@17
    return-object v0
.end method

.method public removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .registers 3

    #@0
    .line 791
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .registers 3

    #@0
    .line 733
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z
    .registers 3

    #@0
    .line 675
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public setCenterView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 532
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 533
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->removeView(Landroid/view/View;)V

    #@7
    const/4 v0, 0x0

    #@8
    .line 534
    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    #@a
    :cond_a
    if-eqz p1, :cond_f

    #@c
    .line 537
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar;->addView(Landroid/view/View;)V

    #@f
    :cond_f
    return-void
.end method

.method public setDefaultScrollFlagsEnabled(Z)V
    .registers 2

    #@0
    .line 629
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    #@2
    .line 630
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->setOrClearDefaultScrollFlags()V

    #@5
    return-void
.end method

.method public setElevation(F)V
    .registers 3

    #@0
    .line 324
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    #@3
    .line 325
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 326
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@a
    :cond_a
    return-void
.end method

.method public setHint(I)V
    .registers 3

    #@0
    .line 581
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(I)V

    #@5
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 576
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 360
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    #@0
    .line 350
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->forceDefaultNavigationOnClickListener:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 354
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    .line 355
    :goto_d
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBar;->setNavigationIconDecorative(Z)V

    #@10
    return-void
.end method

.method public setOnLoadAnimationFadeInEnabled(Z)V
    .registers 3

    #@0
    .line 657
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->setOnLoadAnimationFadeInEnabled(Z)V

    #@5
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    #@0
    .line 592
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getStrokeColor()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_f

    #@6
    .line 593
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@f
    :cond_f
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    #@0
    .line 605
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getStrokeWidth()F

    #@3
    move-result v0

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 606
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    #@d
    :cond_d
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    return-void
.end method

.method public setText(I)V
    .registers 3

    #@0
    .line 560
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    #@5
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 555
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    return-void
.end method

.method public startOnLoadAnimation()V
    .registers 2

    #@0
    .line 639
    new-instance v0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/search/SearchBar;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->post(Ljava/lang/Runnable;)Z

    #@8
    return-void
.end method

.method public stopOnLoadAnimation()V
    .registers 2

    #@0
    .line 647
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    invoke-virtual {v0, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->stopOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V

    #@5
    return-void
.end method
