.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "MaterialToolbar.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private logoAdjustViewBounds:Ljava/lang/Boolean;

.field private logoScaleType:Landroid/widget/ImageView$ScaleType;

.field private navigationIconTint:Ljava/lang/Integer;

.field private subtitleCentered:Z

.field private titleCentered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 72
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Toolbar:I

    #@2
    sput v0, Lcom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    #@4
    const/16 v0, 0x8

    #@6
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    #@8
    const/4 v1, 0x0

    #@9
    .line 74
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x1

    #@e
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x3

    #@18
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@1a
    aput-object v2, v0, v1

    #@1c
    const/4 v1, 0x4

    #@1d
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    #@1f
    aput-object v2, v0, v1

    #@21
    const/4 v1, 0x5

    #@22
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@24
    aput-object v2, v0, v1

    #@26
    const/4 v1, 0x6

    #@27
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@29
    aput-object v2, v0, v1

    #@2b
    const/4 v1, 0x7

    #@2c
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@2e
    aput-object v2, v0, v1

    #@30
    sput-object v0, Lcom/google/android/material/appbar/MaterialToolbar;->LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;

    #@32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 93
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 97
    sget v0, Lcom/google/android/material/R$attr;->toolbarStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 101
    sget v4, Lcom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 103
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getContext()Landroid/content/Context;

    #@c
    move-result-object p1

    #@d
    .line 105
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialToolbar:[I

    #@f
    const/4 v6, 0x0

    #@10
    new-array v5, v6, [I

    #@12
    move-object v0, p1

    #@13
    move-object v1, p2

    #@14
    move v3, p3

    #@15
    .line 106
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@18
    move-result-object p2

    #@19
    .line 109
    sget p3, Lcom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    #@1b
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1e
    move-result p3

    #@1f
    const/4 v0, -0x1

    #@20
    if-eqz p3, :cond_2b

    #@22
    .line 110
    sget p3, Lcom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    #@24
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@27
    move-result p3

    #@28
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    #@2b
    .line 113
    :cond_2b
    sget p3, Lcom/google/android/material/R$styleable;->MaterialToolbar_titleCentered:I

    #@2d
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@30
    move-result p3

    #@31
    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    #@33
    .line 114
    sget p3, Lcom/google/android/material/R$styleable;->MaterialToolbar_subtitleCentered:I

    #@35
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@38
    move-result p3

    #@39
    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    #@3b
    .line 116
    sget p3, Lcom/google/android/material/R$styleable;->MaterialToolbar_logoScaleType:I

    #@3d
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@40
    move-result p3

    #@41
    if-ltz p3, :cond_4c

    #@43
    .line 117
    sget-object v0, Lcom/google/android/material/appbar/MaterialToolbar;->LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;

    #@45
    array-length v1, v0

    #@46
    if-ge p3, v1, :cond_4c

    #@48
    .line 118
    aget-object p3, v0, p3

    #@4a
    iput-object p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    #@4c
    .line 121
    :cond_4c
    sget p3, Lcom/google/android/material/R$styleable;->MaterialToolbar_logoAdjustViewBounds:I

    #@4e
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@51
    move-result p3

    #@52
    if-eqz p3, :cond_60

    #@54
    .line 122
    sget p3, Lcom/google/android/material/R$styleable;->MaterialToolbar_logoAdjustViewBounds:I

    #@56
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@59
    move-result p3

    #@5a
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5d
    move-result-object p3

    #@5e
    iput-object p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    #@60
    .line 125
    :cond_60
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@63
    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->initBackground(Landroid/content/Context;)V

    #@66
    return-void
.end method

.method private calculateTitleBoundLimits(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    .line 164
    div-int/lit8 v1, v0, 0x2

    #@6
    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingLeft()I

    #@9
    move-result v2

    #@a
    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingRight()I

    #@d
    move-result v3

    #@e
    sub-int/2addr v0, v3

    #@f
    const/4 v3, 0x0

    #@10
    .line 168
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildCount()I

    #@13
    move-result v4

    #@14
    if-ge v3, v4, :cond_49

    #@16
    .line 169
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v4

    #@1a
    .line 170
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@1d
    move-result v5

    #@1e
    const/16 v6, 0x8

    #@20
    if-eq v5, v6, :cond_46

    #@22
    if-eq v4, p1, :cond_46

    #@24
    if-eq v4, p2, :cond_46

    #@26
    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@29
    move-result v5

    #@2a
    if-ge v5, v1, :cond_36

    #@2c
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@2f
    move-result v5

    #@30
    if-le v5, v2, :cond_36

    #@32
    .line 172
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@35
    move-result v2

    #@36
    .line 174
    :cond_36
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@39
    move-result v5

    #@3a
    if-le v5, v1, :cond_46

    #@3c
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@3f
    move-result v5

    #@40
    if-ge v5, v0, :cond_46

    #@42
    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@45
    move-result v0

    #@46
    :cond_46
    add-int/lit8 v3, v3, 0x1

    #@48
    goto :goto_10

    #@49
    .line 180
    :cond_49
    new-instance p1, Landroid/util/Pair;

    #@4b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object p2

    #@4f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v0

    #@53
    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@56
    return-object p1
.end method

.method private initBackground(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 365
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 366
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    #@8
    if-nez v1, :cond_b

    #@a
    return-void

    #@b
    .line 369
    :cond_b
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@d
    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@10
    if-eqz v0, :cond_19

    #@12
    .line 371
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    #@14
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@17
    move-result v0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    .line 372
    :goto_1a
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@21
    .line 373
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@24
    .line 374
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@27
    move-result p1

    #@28
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@2b
    .line 375
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@2e
    return-void
.end method

.method private layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 185
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@7
    move-result v1

    #@8
    .line 188
    div-int/lit8 v0, v0, 0x2

    #@a
    div-int/lit8 v2, v1, 0x2

    #@c
    sub-int/2addr v0, v2

    #@d
    add-int/2addr v1, v0

    #@e
    .line 191
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@10
    check-cast v2, Ljava/lang/Integer;

    #@12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v2

    #@16
    sub-int/2addr v2, v0

    #@17
    const/4 v3, 0x0

    #@18
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v2

    #@1c
    .line 192
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1e
    check-cast p2, Ljava/lang/Integer;

    #@20
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result p2

    #@24
    sub-int p2, v1, p2

    #@26
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    #@29
    move-result p2

    #@2a
    .line 193
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result p2

    #@2e
    if-lez p2, :cond_41

    #@30
    add-int/2addr v0, p2

    #@31
    sub-int/2addr v1, p2

    #@32
    sub-int p2, v1, v0

    #@34
    const/high16 v2, 0x40000000    # 2.0f

    #@36
    .line 200
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@39
    move-result p2

    #@3a
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    #@3d
    move-result v2

    #@3e
    .line 199
    invoke-virtual {p1, p2, v2}, Landroid/view/View;->measure(II)V

    #@41
    .line 204
    :cond_41
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@44
    move-result p2

    #@45
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@48
    move-result v2

    #@49
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@4c
    return-void
.end method

.method private maybeCenterTitleViews()V
    .registers 5

    #@0
    .line 139
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    #@2
    if-nez v0, :cond_9

    #@4
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 143
    :cond_9
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;

    #@c
    move-result-object v0

    #@d
    .line 144
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;

    #@10
    move-result-object v1

    #@11
    if-nez v0, :cond_16

    #@13
    if-nez v1, :cond_16

    #@15
    return-void

    #@16
    .line 150
    :cond_16
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->calculateTitleBoundLimits(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;

    #@19
    move-result-object v2

    #@1a
    .line 152
    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    #@1c
    if-eqz v3, :cond_23

    #@1e
    if-eqz v0, :cond_23

    #@20
    .line 153
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    #@23
    .line 156
    :cond_23
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    #@25
    if-eqz v0, :cond_2c

    #@27
    if-eqz v1, :cond_2c

    #@29
    .line 157
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    #@2c
    :cond_2c
    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    if-eqz p1, :cond_17

    #@2
    .line 380
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 381
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object p1

    #@e
    .line 382
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@17
    :cond_17
    return-object p1
.end method

.method private updateLogoImageView()V
    .registers 3

    #@0
    .line 208
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getLogoImageView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageView;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_18

    #@6
    .line 211
    iget-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    #@8
    if-eqz v1, :cond_11

    #@a
    .line 212
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    #@11
    .line 214
    :cond_11
    iget-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    #@13
    if-eqz v1, :cond_18

    #@15
    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@18
    :cond_18
    return-void
.end method


# virtual methods
.method public clearNavigationIconTint()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 296
    iput-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    #@3
    .line 297
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_17

    #@9
    .line 299
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v2

    #@d
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v2

    #@11
    .line 300
    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@14
    .line 301
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@17
    :cond_17
    return-void
.end method

.method public getLogoScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    #@0
    .line 227
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    #@2
    return-object v0
.end method

.method public getNavigationIconTint()Ljava/lang/Integer;
    .registers 2

    #@0
    .line 313
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public isLogoAdjustViewBounds()Z
    .registers 2

    #@0
    .line 244
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method public isSubtitleCentered()Z
    .registers 2

    #@0
    .line 361
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    #@2
    return v0
.end method

.method public isTitleCentered()Z
    .registers 2

    #@0
    .line 337
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    #@0
    .line 257
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    #@3
    .line 259
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    #@6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 132
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    #@3
    .line 134
    invoke-direct {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->maybeCenterTitleViews()V

    #@6
    .line 135
    invoke-direct {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->updateLogoImageView()V

    #@9
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    #@0
    .line 265
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    #@3
    .line 267
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    #@6
    return-void
.end method

.method public setLogoAdjustViewBounds(Z)V
    .registers 3

    #@0
    .line 249
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@7
    move-result v0

    #@8
    if-eq v0, p1, :cond_13

    #@a
    .line 250
    :cond_a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    #@10
    .line 251
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    #@13
    :cond_13
    return-void
.end method

.method public setLogoScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    #@0
    .line 232
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 233
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    #@6
    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 272
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method public setNavigationIconTint(I)V
    .registers 2

    #@0
    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    #@6
    .line 282
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    :cond_f
    return-void
.end method

.method public setSubtitleCentered(Z)V
    .registers 3

    #@0
    .line 348
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 349
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    #@6
    .line 350
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method

.method public setTitleCentered(Z)V
    .registers 3

    #@0
    .line 324
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 325
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    #@6
    .line 326
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method
