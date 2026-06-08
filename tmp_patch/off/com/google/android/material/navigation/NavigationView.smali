.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field private bottomInsetScrimEnabled:Z

.field private drawerLayoutCornerSize:I

.field private layoutGravity:I

.field listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

.field private final maxWidth:I

.field private final menu:Lcom/google/android/material/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private final shapeClipBounds:Landroid/graphics/RectF;

.field private shapeClipPath:Landroid/graphics/Path;

.field private final tmpLocation:[I

.field private topInsetScrimEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [I

    #@3
    const v2, 0x10100a0

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    .line 111
    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    #@b
    new-array v0, v0, [I

    #@d
    const v1, -0x101009e

    #@10
    aput v1, v0, v3

    #@12
    .line 112
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    #@14
    .line 114
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    #@16
    sput v0, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    #@18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 137
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 141
    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p2

    #@4
    move/from16 v8, p3

    #@6
    .line 145
    sget v9, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    #@8
    move-object/from16 v1, p1

    #@a
    invoke-static {v1, v7, v8, v9}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@11
    .line 118
    new-instance v10, Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@13
    invoke-direct {v10}, Lcom/google/android/material/internal/NavigationMenuPresenter;-><init>()V

    #@16
    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@18
    const/4 v1, 0x2

    #@19
    new-array v1, v1, [I

    #@1b
    .line 123
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    #@1d
    const/4 v11, 0x1

    #@1e
    .line 127
    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    #@20
    .line 128
    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    #@22
    const/4 v12, 0x0

    #@23
    .line 130
    iput v12, v0, Lcom/google/android/material/navigation/NavigationView;->layoutGravity:I

    #@25
    .line 131
    iput v12, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    #@27
    .line 134
    new-instance v1, Landroid/graphics/RectF;

    #@29
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@2c
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    #@2e
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@31
    move-result-object v13

    #@32
    .line 150
    new-instance v14, Lcom/google/android/material/internal/NavigationMenu;

    #@34
    invoke-direct {v14, v13}, Lcom/google/android/material/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    #@37
    iput-object v14, v0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    #@39
    .line 153
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    #@3b
    new-array v6, v12, [I

    #@3d
    move-object v1, v13

    #@3e
    move-object/from16 v2, p2

    #@40
    move/from16 v4, p3

    #@42
    move v5, v9

    #@43
    .line 154
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    #@46
    move-result-object v1

    #@47
    .line 161
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    #@49
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_58

    #@4f
    .line 162
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    #@51
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@54
    move-result-object v2

    #@55
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@58
    .line 167
    :cond_58
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    #@5a
    .line 168
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@5d
    move-result v2

    #@5e
    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    #@60
    .line 170
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_layout_gravity:I

    #@62
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@65
    move-result v2

    #@66
    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->layoutGravity:I

    #@68
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@6b
    move-result-object v2

    #@6c
    if-eqz v2, :cond_76

    #@6e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@71
    move-result-object v2

    #@72
    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    #@74
    if-eqz v2, :cond_9e

    #@76
    .line 176
    :cond_76
    invoke-static {v13, v7, v8, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@7d
    move-result-object v2

    #@7e
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@81
    move-result-object v3

    #@82
    .line 178
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@84
    invoke-direct {v4, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@87
    .line 179
    instance-of v2, v3, Landroid/graphics/drawable/ColorDrawable;

    #@89
    if-eqz v2, :cond_98

    #@8b
    .line 180
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    #@8d
    .line 181
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@90
    move-result v2

    #@91
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@94
    move-result-object v2

    #@95
    .line 180
    invoke-virtual {v4, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@98
    .line 183
    :cond_98
    invoke-virtual {v4, v13}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@9b
    .line 184
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@9e
    .line 187
    :cond_9e
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    #@a0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_b0

    #@a6
    .line 188
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    #@a8
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@ab
    move-result v2

    #@ac
    int-to-float v2, v2

    #@ad
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    #@b0
    .line 190
    :cond_b0
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    #@b2
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@b5
    move-result v2

    #@b6
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    #@b9
    .line 192
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    #@bb
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@be
    move-result v2

    #@bf
    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    #@c1
    .line 195
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    #@c3
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@c6
    move-result v2

    #@c7
    const/4 v3, 0x0

    #@c8
    if-eqz v2, :cond_d1

    #@ca
    .line 196
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    #@cc
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@cf
    move-result-object v2

    #@d0
    goto :goto_d2

    #@d1
    :cond_d1
    move-object v2, v3

    #@d2
    .line 200
    :goto_d2
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    #@d4
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@d7
    move-result v4

    #@d8
    if-eqz v4, :cond_e1

    #@da
    .line 201
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    #@dc
    .line 202
    invoke-virtual {v1, v4, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@df
    move-result v4

    #@e0
    goto :goto_e2

    #@e1
    :cond_e1
    move v4, v12

    #@e2
    :goto_e2
    const v5, 0x1010038

    #@e5
    if-nez v4, :cond_ed

    #@e7
    if-nez v2, :cond_ed

    #@e9
    .line 208
    invoke-direct {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    #@ec
    move-result-object v2

    #@ed
    .line 212
    :cond_ed
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    #@ef
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@f2
    move-result v6

    #@f3
    if-eqz v6, :cond_fc

    #@f5
    .line 213
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    #@f7
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@fa
    move-result-object v5

    #@fb
    goto :goto_100

    #@fc
    .line 215
    :cond_fc
    invoke-direct {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    #@ff
    move-result-object v5

    #@100
    .line 219
    :goto_100
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    #@102
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@105
    move-result v6

    #@106
    if-eqz v6, :cond_10f

    #@108
    .line 220
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    #@10a
    invoke-virtual {v1, v6, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@10d
    move-result v6

    #@10e
    goto :goto_110

    #@10f
    :cond_10f
    move v6, v12

    #@110
    .line 223
    :goto_110
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    #@112
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@115
    move-result v7

    #@116
    if-eqz v7, :cond_121

    #@118
    .line 224
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    #@11a
    invoke-virtual {v1, v7, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@11d
    move-result v7

    #@11e
    invoke-virtual {v0, v7}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    #@121
    .line 228
    :cond_121
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    #@123
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@126
    move-result v7

    #@127
    if-eqz v7, :cond_130

    #@129
    .line 229
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    #@12b
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@12e
    move-result-object v7

    #@12f
    goto :goto_131

    #@130
    :cond_130
    move-object v7, v3

    #@131
    :goto_131
    if-nez v6, :cond_13c

    #@133
    if-nez v7, :cond_13c

    #@135
    const v7, 0x1010036

    #@138
    .line 234
    invoke-direct {v0, v7}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    #@13b
    move-result-object v7

    #@13c
    .line 237
    :cond_13c
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    #@13e
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@141
    move-result-object v8

    #@142
    if-nez v8, :cond_166

    #@144
    .line 240
    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->hasShapeAppearance(Landroidx/appcompat/widget/TintTypedArray;)Z

    #@147
    move-result v9

    #@148
    if-eqz v9, :cond_166

    #@14a
    .line 241
    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemBackground(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;

    #@14d
    move-result-object v8

    #@14e
    .line 243
    sget v9, Lcom/google/android/material/R$styleable;->NavigationView_itemRippleColor:I

    #@150
    invoke-static {v13, v1, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@153
    move-result-object v9

    #@154
    if-eqz v9, :cond_166

    #@156
    .line 250
    invoke-direct {v0, v1, v3}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    #@159
    move-result-object v15

    #@15a
    .line 251
    new-instance v11, Landroid/graphics/drawable/RippleDrawable;

    #@15c
    .line 252
    invoke-static {v9}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@15f
    move-result-object v9

    #@160
    invoke-direct {v11, v9, v3, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@163
    .line 255
    invoke-virtual {v10, v11}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V

    #@166
    .line 259
    :cond_166
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    #@168
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@16b
    move-result v3

    #@16c
    if-eqz v3, :cond_177

    #@16e
    .line 260
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    #@170
    .line 261
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@173
    move-result v3

    #@174
    .line 262
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    #@177
    .line 265
    :cond_177
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    #@179
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@17c
    move-result v3

    #@17d
    if-eqz v3, :cond_188

    #@17f
    .line 266
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    #@181
    .line 267
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@184
    move-result v3

    #@185
    .line 268
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    #@188
    .line 271
    :cond_188
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    #@18a
    .line 272
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@18d
    move-result v3

    #@18e
    .line 273
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    #@191
    .line 275
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    #@193
    .line 276
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@196
    move-result v3

    #@197
    .line 277
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    #@19a
    .line 279
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    #@19c
    .line 280
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@19f
    move-result v3

    #@1a0
    .line 281
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    #@1a3
    .line 283
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    #@1a5
    .line 284
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@1a8
    move-result v3

    #@1a9
    .line 285
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    #@1ac
    .line 287
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    #@1ae
    iget-boolean v9, v0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    #@1b0
    .line 288
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@1b3
    move-result v3

    #@1b4
    .line 287
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    #@1b7
    .line 290
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    #@1b9
    iget-boolean v9, v0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    #@1bb
    .line 291
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@1be
    move-result v3

    #@1bf
    .line 290
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    #@1c2
    .line 294
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    #@1c4
    .line 295
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@1c7
    move-result v3

    #@1c8
    .line 297
    sget v9, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    #@1ca
    const/4 v11, 0x1

    #@1cb
    invoke-virtual {v1, v9, v11}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@1ce
    move-result v9

    #@1cf
    invoke-virtual {v0, v9}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    #@1d2
    .line 299
    new-instance v9, Lcom/google/android/material/navigation/NavigationView$1;

    #@1d4
    invoke-direct {v9, v0}, Lcom/google/android/material/navigation/NavigationView$1;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    #@1d7
    invoke-virtual {v14, v9}, Lcom/google/android/material/internal/NavigationMenu;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    #@1da
    .line 309
    invoke-virtual {v10, v11}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setId(I)V

    #@1dd
    .line 310
    invoke-virtual {v10, v13, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@1e0
    if-eqz v4, :cond_1e5

    #@1e2
    .line 312
    invoke-virtual {v10, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderTextAppearance(I)V

    #@1e5
    .line 314
    :cond_1e5
    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderColor(Landroid/content/res/ColorStateList;)V

    #@1e8
    .line 315
    invoke-virtual {v10, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    #@1eb
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getOverScrollMode()I

    #@1ee
    move-result v2

    #@1ef
    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    #@1f2
    if-eqz v6, :cond_1f7

    #@1f4
    .line 318
    invoke-virtual {v10, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    #@1f7
    .line 320
    :cond_1f7
    invoke-virtual {v10, v7}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    #@1fa
    .line 321
    invoke-virtual {v10, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    #@1fd
    .line 322
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    #@200
    .line 323
    invoke-virtual {v14, v10}, Lcom/google/android/material/internal/NavigationMenu;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    #@203
    .line 324
    invoke-virtual {v10, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    #@206
    move-result-object v2

    #@207
    check-cast v2, Landroid/view/View;

    #@209
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->addView(Landroid/view/View;)V

    #@20c
    .line 326
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    #@20e
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@211
    move-result v2

    #@212
    if-eqz v2, :cond_21d

    #@214
    .line 327
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    #@216
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@219
    move-result v2

    #@21a
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    #@21d
    .line 330
    :cond_21d
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    #@21f
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@222
    move-result v2

    #@223
    if-eqz v2, :cond_22e

    #@225
    .line 331
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    #@227
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@22a
    move-result v2

    #@22b
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    #@22e
    .line 334
    :cond_22e
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@231
    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V

    #@234
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationView;)[I
    .registers 1

    #@0
    .line 109
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;
    .registers 1

    #@0
    .line 109
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    return-object p0
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 12

    #@0
    .line 927
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 928
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x1

    #@e
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@11
    move-result p1

    #@12
    const/4 v1, 0x0

    #@13
    if-nez p1, :cond_16

    #@15
    return-object v1

    #@16
    .line 931
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@19
    move-result-object p1

    #@1a
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    #@1c
    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@1f
    move-result-object p1

    #@20
    .line 932
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@23
    move-result-object v3

    #@24
    .line 933
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@27
    move-result-object v3

    #@28
    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    #@2a
    .line 934
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_31

    #@30
    return-object v1

    #@31
    .line 937
    :cond_31
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@33
    .line 938
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@36
    move-result v1

    #@37
    .line 939
    new-instance v3, Landroid/content/res/ColorStateList;

    #@39
    const/4 v4, 0x3

    #@3a
    new-array v5, v4, [[I

    #@3c
    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    #@3e
    const/4 v7, 0x0

    #@3f
    aput-object v6, v5, v7

    #@41
    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    #@43
    aput-object v8, v5, v2

    #@45
    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->EMPTY_STATE_SET:[I

    #@47
    const/4 v9, 0x2

    #@48
    aput-object v8, v5, v9

    #@4a
    new-array v4, v4, [I

    #@4c
    .line 942
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@4f
    move-result p1

    #@50
    aput p1, v4, v7

    #@52
    aput v0, v4, v2

    #@54
    aput v1, v4, v9

    #@56
    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@59
    return-object v3
.end method

.method private createDefaultItemBackground(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    #@6
    .line 425
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object v0

    #@a
    .line 427
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method private createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .registers 12

    #@0
    .line 433
    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@6
    move-result v0

    #@7
    .line 434
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    #@9
    .line 435
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@c
    move-result v2

    #@d
    .line 436
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@f
    .line 439
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v3

    #@13
    .line 438
    invoke-static {v3, v0, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@16
    move-result-object v0

    #@17
    .line 440
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {v4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@1e
    .line 441
    invoke-virtual {v4, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@21
    .line 443
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    #@23
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@26
    move-result v5

    #@27
    .line 444
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    #@29
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@2c
    move-result v6

    #@2d
    .line 445
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    #@2f
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@32
    move-result v7

    #@33
    .line 446
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    #@35
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@38
    move-result v8

    #@39
    .line 447
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    #@3b
    move-object v3, p1

    #@3c
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@3f
    return-object p1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    #@0
    .line 919
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    #@2
    if-nez v0, :cond_f

    #@4
    .line 920
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    #@f
    .line 922
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    #@11
    return-object v0
.end method

.method private hasShapeAppearance(Landroidx/appcompat/widget/TintTypedArray;)Z
    .registers 3

    #@0
    .line 393
    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    #@2
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    #@a
    .line 394
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 p1, 0x1

    #@14
    :goto_14
    return p1
.end method

.method private maybeUpdateCornerSizeForDrawerLayout(II)V
    .registers 7

    #@0
    .line 354
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    #@6
    if-eqz v0, :cond_7e

    #@8
    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    #@a
    if-lez v0, :cond_7e

    #@c
    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@12
    if-eqz v0, :cond_7e

    #@14
    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1a
    .line 360
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@21
    move-result-object v1

    #@22
    .line 361
    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->layoutGravity:I

    #@24
    .line 362
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@27
    move-result v3

    #@28
    invoke-static {v2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@2b
    move-result v2

    #@2c
    const/4 v3, 0x3

    #@2d
    if-ne v2, v3, :cond_3c

    #@2f
    .line 365
    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    #@31
    int-to-float v2, v2

    #@32
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@35
    .line 366
    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    #@37
    int-to-float v2, v2

    #@38
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@3b
    goto :goto_48

    #@3c
    .line 369
    :cond_3c
    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    #@3e
    int-to-float v2, v2

    #@3f
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@42
    .line 370
    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    #@44
    int-to-float v2, v2

    #@45
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@48
    .line 372
    :goto_48
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@4f
    .line 374
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    #@51
    if-nez v1, :cond_5a

    #@53
    .line 375
    new-instance v1, Landroid/graphics/Path;

    #@55
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@58
    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    #@5a
    .line 377
    :cond_5a
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    #@5c
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    #@5f
    .line 378
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    #@61
    int-to-float p1, p1

    #@62
    int-to-float p2, p2

    #@63
    const/4 v2, 0x0

    #@64
    invoke-virtual {v1, v2, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    #@67
    .line 379
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@6a
    move-result-object p1

    #@6b
    .line 381
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@6e
    move-result-object p2

    #@6f
    .line 382
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    #@72
    move-result v0

    #@73
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    #@75
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    #@77
    .line 380
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    #@7a
    .line 385
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    #@7d
    goto :goto_86

    #@7e
    :cond_7e
    const/4 p1, 0x0

    #@7f
    .line 387
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    #@81
    .line 388
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    #@83
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    #@86
    :goto_86
    return-void
.end method

.method private setupInsetScrimsListener()V
    .registers 3

    #@0
    .line 962
    new-instance v0, Lcom/google/android/material/navigation/NavigationView$2;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationView$2;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    #@5
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@7
    .line 999
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@d
    .line 1000
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@10
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 555
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    #@5
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 501
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 502
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@7
    return-void

    #@8
    .line 506
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@b
    move-result v0

    #@c
    .line 507
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    #@e
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    #@11
    .line 508
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@14
    .line 509
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@17
    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 784
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    #@0
    .line 878
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetEnd()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    #@0
    .line 863
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetStart()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeaderCount()I
    .registers 2

    #@0
    .line 573
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3

    #@0
    .line 584
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 637
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .registers 2

    #@0
    .line 669
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItemIconPadding()I
    .registers 2

    #@0
    .line 731
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemIconPadding()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 595
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getItemMaxLines()I
    .registers 2

    #@0
    .line 821
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemMaxLines()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 616
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getItemVerticalPadding()I
    .registers 2

    #@0
    .line 700
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemVerticalPadding()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    #@0
    .line 536
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    #@2
    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .registers 2

    #@0
    .line 908
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetEnd()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSubheaderInsetStart()I
    .registers 2

    #@0
    .line 893
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetStart()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 3

    #@0
    .line 546
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public inflateMenu(I)V
    .registers 4

    #@0
    .line 527
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    #@6
    .line 528
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    #@c
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    #@f
    .line 529
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@11
    const/4 v0, 0x0

    #@12
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    #@15
    .line 530
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@17
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    #@1a
    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .registers 2

    #@0
    .line 845
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    #@2
    return v0
.end method

.method public isTopInsetScrimEnabled()Z
    .registers 2

    #@0
    .line 828
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    #@0
    .line 399
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    #@3
    .line 400
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    #@6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    #@0
    .line 948
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    #@3
    .line 952
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@c
    return-void
.end method

.method protected onInsetsChanged(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3

    #@0
    .line 516
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    #@5
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    #@0
    .line 482
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x80000000

    #@6
    const/high16 v2, 0x40000000    # 2.0f

    #@8
    if-eq v0, v1, :cond_14

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_22

    #@d
    .line 492
    :cond_d
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    #@f
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@12
    move-result p1

    #@13
    goto :goto_22

    #@14
    .line 489
    :cond_14
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@17
    move-result p1

    #@18
    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    #@1a
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result p1

    #@1e
    .line 488
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21
    move-result p1

    #@22
    .line 496
    :goto_22
    invoke-super {p0, p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    #@25
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 461
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 462
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 465
    :cond_8
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    #@a
    .line 466
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 467
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    #@13
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    #@15
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    #@18
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    #@0
    .line 452
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 453
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 454
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@e
    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    #@10
    .line 455
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    #@12
    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    #@14
    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    #@17
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSizeChanged(IIII)V

    #@3
    .line 406
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    #@6
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 564
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .registers 2

    #@0
    .line 855
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    #@2
    return-void
.end method

.method public setCheckedItem(I)V
    .registers 3

    #@0
    .line 760
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_f

    #@8
    .line 762
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@a
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@f
    :cond_f
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .registers 3

    #@0
    .line 772
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    #@2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    #@5
    move-result p1

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_14

    #@c
    .line 774
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@e
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@13
    return-void

    #@14
    .line 776
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    #@18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .registers 3

    #@0
    .line 885
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetEnd(I)V

    #@5
    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 3

    #@0
    .line 870
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetStart(I)V

    #@5
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    #@0
    .line 412
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setElevation(F)V

    #@3
    .line 414
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    #@6
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 658
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3

    #@0
    .line 648
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .registers 3

    #@0
    .line 679
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    #@5
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .registers 4

    #@0
    .line 689
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9
    move-result p1

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    #@d
    return-void
.end method

.method public setItemIconPadding(I)V
    .registers 3

    #@0
    .line 741
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    #@5
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .registers 4

    #@0
    .line 751
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9
    move-result p1

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    #@d
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    #@0
    .line 803
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconSize(I)V

    #@5
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 605
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setItemMaxLines(I)V
    .registers 3

    #@0
    .line 812
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemMaxLines(I)V

    #@5
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 3

    #@0
    .line 793
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    #@5
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 626
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setItemVerticalPadding(I)V
    .registers 3

    #@0
    .line 710
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    #@5
    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .registers 4

    #@0
    .line 720
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9
    move-result p1

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    #@d
    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .registers 2

    #@0
    .line 477
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    #@2
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 3

    #@0
    .line 341
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setOverScrollMode(I)V

    #@3
    .line 342
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 343
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    #@a
    :cond_a
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .registers 3

    #@0
    .line 915
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetEnd(I)V

    #@5
    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .registers 3

    #@0
    .line 900
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetStart(I)V

    #@5
    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .registers 2

    #@0
    .line 838
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    #@2
    return-void
.end method
