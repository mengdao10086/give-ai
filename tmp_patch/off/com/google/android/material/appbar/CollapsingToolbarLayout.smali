.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer;,
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;,
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$TitleCollapseMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258

.field private static final DEF_STYLE_RES:I

.field public static final TITLE_COLLAPSE_MODE_FADE:I = 0x1

.field public static final TITLE_COLLAPSE_MODE_SCALE:I


# instance fields
.field final collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field private extraMultilineHeight:I

.field private extraMultilineHeightEnabled:Z

.field private forceApplySystemWindowInsetTop:Z

.field lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private refreshToolbar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private final scrimAnimationFadeInInterpolator:Landroid/animation/TimeInterpolator;

.field private final scrimAnimationFadeOutInterpolator:Landroid/animation/TimeInterpolator;

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private titleCollapseMode:I

.field private final tmpRect:Landroid/graphics/Rect;

.field private toolbar:Landroid/view/ViewGroup;

.field private toolbarDirectChild:Landroid/view/View;

.field private toolbarId:I

.field private topInsetApplied:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 124
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_CollapsingToolbar:I

    #@2
    sput v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 190
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 194
    sget v0, Lcom/google/android/material/R$attr;->collapsingToolbarLayoutStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    #@0
    .line 198
    sget v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    const/4 p1, 0x1

    #@a
    .line 149
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    #@c
    .line 160
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    #@13
    const/4 v6, -0x1

    #@14
    .line 174
    iput v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    #@16
    const/4 v7, 0x0

    #@17
    .line 183
    iput v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->topInsetApplied:I

    #@19
    .line 186
    iput v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    #@1b
    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v8

    #@1f
    .line 202
    new-instance v9, Lcom/google/android/material/internal/CollapsingTextHelper;

    #@21
    invoke-direct {v9, p0}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    #@24
    iput-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@26
    .line 203
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@28
    invoke-virtual {v9, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    #@2b
    .line 204
    invoke-virtual {v9, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->setRtlTextDirectionHeuristicsEnabled(Z)V

    #@2e
    .line 206
    new-instance v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@30
    invoke-direct {v0, v8}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    #@33
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@35
    .line 208
    sget-object v2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout:[I

    #@37
    new-array v5, v7, [I

    #@39
    move-object v0, v8

    #@3a
    move-object v1, p2

    #@3b
    move v3, p3

    #@3c
    .line 209
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@3f
    move-result-object p2

    #@40
    .line 216
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    #@42
    const v0, 0x800053

    #@45
    .line 217
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@48
    move-result p3

    #@49
    .line 216
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    #@4c
    .line 220
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    #@4e
    const v0, 0x800013

    #@51
    .line 221
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@54
    move-result p3

    #@55
    .line 220
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    #@58
    .line 225
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    #@5a
    .line 229
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5d
    move-result p3

    #@5e
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    #@60
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    #@62
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    #@64
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    #@66
    .line 232
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    #@68
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@6b
    move-result p3

    #@6c
    if-eqz p3, :cond_76

    #@6e
    .line 233
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    #@70
    .line 234
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@73
    move-result p3

    #@74
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    #@76
    .line 236
    :cond_76
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    #@78
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@7b
    move-result p3

    #@7c
    if-eqz p3, :cond_86

    #@7e
    .line 237
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    #@80
    .line 238
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@83
    move-result p3

    #@84
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    #@86
    .line 240
    :cond_86
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    #@88
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@8b
    move-result p3

    #@8c
    if-eqz p3, :cond_96

    #@8e
    .line 241
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    #@90
    .line 242
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@93
    move-result p3

    #@94
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    #@96
    .line 244
    :cond_96
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    #@98
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@9b
    move-result p3

    #@9c
    if-eqz p3, :cond_a6

    #@9e
    .line 245
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    #@a0
    .line 246
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@a3
    move-result p3

    #@a4
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    #@a6
    .line 249
    :cond_a6
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    #@a8
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ab
    move-result p3

    #@ac
    iput-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@ae
    .line 250
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_title:I

    #@b0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@b3
    move-result-object p3

    #@b4
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    #@b7
    .line 253
    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    #@b9
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    #@bc
    .line 255
    sget p3, Landroidx/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    #@be
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    #@c1
    .line 259
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    #@c3
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@c6
    move-result p3

    #@c7
    if-eqz p3, :cond_d2

    #@c9
    .line 260
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    #@cb
    .line 261
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ce
    move-result p3

    #@cf
    .line 260
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    #@d2
    .line 263
    :cond_d2
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    #@d4
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@d7
    move-result p3

    #@d8
    if-eqz p3, :cond_e3

    #@da
    .line 264
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    #@dc
    .line 265
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@df
    move-result p3

    #@e0
    .line 264
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    #@e3
    .line 269
    :cond_e3
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titleTextEllipsize:I

    #@e5
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@e8
    move-result p3

    #@e9
    if-eqz p3, :cond_f8

    #@eb
    .line 270
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titleTextEllipsize:I

    #@ed
    .line 272
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f0
    move-result p3

    #@f1
    .line 271
    invoke-direct {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->convertEllipsizeToTruncateAt(I)Landroid/text/TextUtils$TruncateAt;

    #@f4
    move-result-object p3

    #@f5
    .line 270
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitleEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@f8
    .line 275
    :cond_f8
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextColor:I

    #@fa
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@fd
    move-result p3

    #@fe
    if-eqz p3, :cond_109

    #@100
    .line 276
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextColor:I

    #@102
    .line 277
    invoke-static {v8, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@105
    move-result-object p3

    #@106
    .line 276
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    #@109
    .line 280
    :cond_109
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextColor:I

    #@10b
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@10e
    move-result p3

    #@10f
    if-eqz p3, :cond_11a

    #@111
    .line 281
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextColor:I

    #@113
    .line 282
    invoke-static {v8, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@116
    move-result-object p3

    #@117
    .line 281
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    #@11a
    .line 286
    :cond_11a
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    #@11c
    .line 287
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@11f
    move-result p3

    #@120
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    #@122
    .line 289
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_maxLines:I

    #@124
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@127
    move-result p3

    #@128
    if-eqz p3, :cond_133

    #@12a
    .line 290
    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_maxLines:I

    #@12c
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@12f
    move-result p1

    #@130
    invoke-virtual {v9, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setMaxLines(I)V

    #@133
    .line 293
    :cond_133
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titlePositionInterpolator:I

    #@135
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@138
    move-result p1

    #@139
    if-eqz p1, :cond_148

    #@13b
    .line 294
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titlePositionInterpolator:I

    #@13d
    .line 297
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@140
    move-result p1

    #@141
    .line 295
    invoke-static {v8, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@144
    move-result-object p1

    #@145
    .line 294
    invoke-virtual {v9, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    #@148
    .line 300
    :cond_148
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    #@14a
    const/16 p3, 0x258

    #@14c
    .line 301
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14f
    move-result p1

    #@150
    int-to-long v0, p1

    #@151
    iput-wide v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    #@153
    .line 304
    sget p1, Lcom/google/android/material/R$attr;->motionEasingStandardInterpolator:I

    #@155
    sget-object p3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@157
    .line 305
    invoke-static {v8, p1, p3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@15a
    move-result-object p1

    #@15b
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationFadeInInterpolator:Landroid/animation/TimeInterpolator;

    #@15d
    .line 309
    sget p1, Lcom/google/android/material/R$attr;->motionEasingStandardInterpolator:I

    #@15f
    sget-object p3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@161
    .line 310
    invoke-static {v8, p1, p3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@164
    move-result-object p1

    #@165
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationFadeOutInterpolator:Landroid/animation/TimeInterpolator;

    #@167
    .line 315
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    #@169
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@16c
    move-result-object p1

    #@16d
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    #@170
    .line 316
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    #@172
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@175
    move-result-object p1

    #@176
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    #@179
    .line 318
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titleCollapseMode:I

    #@17b
    .line 319
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@17e
    move-result p1

    #@17f
    .line 318
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitleCollapseMode(I)V

    #@182
    .line 321
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    #@184
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@187
    move-result p1

    #@188
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    #@18a
    .line 323
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_forceApplySystemWindowInsetTop:I

    #@18c
    .line 324
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18f
    move-result p1

    #@190
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->forceApplySystemWindowInsetTop:Z

    #@192
    .line 326
    sget p1, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_extraMultilineHeightEnabled:I

    #@194
    .line 327
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@197
    move-result p1

    #@198
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeightEnabled:Z

    #@19a
    .line 329
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@19d
    .line 331
    invoke-virtual {p0, v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    #@1a0
    .line 333
    new-instance p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;

    #@1a2
    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    #@1a5
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@1a8
    return-void
.end method

.method private animateScrim(I)V
    .registers 6

    #@0
    .line 906
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    #@3
    .line 907
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    #@5
    if-nez v0, :cond_25

    #@7
    .line 908
    new-instance v0, Landroid/animation/ValueAnimator;

    #@9
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@c
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    #@e
    .line 910
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@10
    if-le p1, v1, :cond_15

    #@12
    .line 911
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationFadeInInterpolator:Landroid/animation/TimeInterpolator;

    #@14
    goto :goto_17

    #@15
    .line 912
    :cond_15
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationFadeOutInterpolator:Landroid/animation/TimeInterpolator;

    #@17
    .line 909
    :goto_17
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1a
    .line 913
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    #@1c
    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;

    #@1e
    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    #@21
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@24
    goto :goto_30

    #@25
    .line 920
    :cond_25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_30

    #@2b
    .line 921
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    #@2d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@30
    .line 924
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    #@32
    iget-wide v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@37
    .line 925
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    #@39
    const/4 v1, 0x2

    #@3a
    new-array v1, v1, [I

    #@3c
    const/4 v2, 0x0

    #@3d
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@3f
    aput v3, v1, v2

    #@41
    const/4 v2, 0x1

    #@42
    aput p1, v1, v2

    #@44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@47
    .line 926
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    #@49
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@4c
    return-void
.end method

.method private convertEllipsizeToTruncateAt(I)Landroid/text/TextUtils$TruncateAt;
    .registers 3

    #@0
    if-eqz p1, :cond_11

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_e

    #@5
    const/4 v0, 0x3

    #@6
    if-eq p1, v0, :cond_b

    #@8
    .line 868
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@a
    return-object p1

    #@b
    .line 865
    :cond_b
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@d
    return-object p1

    #@e
    .line 863
    :cond_e
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@10
    return-object p1

    #@11
    .line 861
    :cond_11
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@13
    return-object p1
.end method

.method private disableLiftOnScrollIfNeeded(Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 3

    #@0
    .line 475
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isTitleCollapseFadeMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    const/4 v0, 0x0

    #@7
    .line 476
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftOnScroll(Z)V

    #@a
    :cond_a
    return-void
.end method

.method private ensureToolbar()V
    .registers 7

    #@0
    .line 496
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 501
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@8
    .line 502
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    #@a
    .line 504
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    #@c
    const/4 v2, -0x1

    #@d
    if-eq v1, v2, :cond_1f

    #@f
    .line 506
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/view/ViewGroup;

    #@15
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@17
    if-eqz v1, :cond_1f

    #@19
    .line 508
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    #@1f
    .line 512
    :cond_1f
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@21
    const/4 v2, 0x0

    #@22
    if-nez v1, :cond_3e

    #@24
    .line 516
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    #@27
    move-result v1

    #@28
    move v3, v2

    #@29
    :goto_29
    if-ge v3, v1, :cond_3c

    #@2b
    .line 517
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    #@2e
    move-result-object v4

    #@2f
    .line 518
    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isToolbar(Landroid/view/View;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_39

    #@35
    .line 519
    move-object v0, v4

    #@36
    check-cast v0, Landroid/view/ViewGroup;

    #@38
    goto :goto_3c

    #@39
    :cond_39
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_29

    #@3c
    .line 523
    :cond_3c
    :goto_3c
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@3e
    .line 526
    :cond_3e
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    #@41
    .line 527
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    #@43
    return-void
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .registers 4

    #@0
    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    :goto_4
    if-eq v0, p0, :cond_14

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 546
    instance-of v1, v0, Landroid/view/View;

    #@a
    if-eqz v1, :cond_f

    #@c
    .line 547
    move-object p1, v0

    #@d
    check-cast p1, Landroid/view/View;

    #@f
    .line 545
    :cond_f
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v0

    #@13
    goto :goto_4

    #@14
    :cond_14
    return-object p1
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .registers 3

    #@0
    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 733
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    if-eqz v1, :cond_15

    #@8
    .line 734
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@d
    move-result p0

    #@e
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@10
    add-int/2addr p0, v1

    #@11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@13
    add-int/2addr p0, v0

    #@14
    return p0

    #@15
    .line 737
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@18
    move-result p0

    #@19
    return p0
.end method

.method private static getToolbarTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 721
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 722
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 723
    :cond_b
    instance-of v0, p0, Landroid/widget/Toolbar;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 725
    check-cast p0, Landroid/widget/Toolbar;

    #@11
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    :cond_16
    const/4 p0, 0x0

    #@17
    return-object p0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;
    .registers 3

    #@0
    .line 742
    sget v0, Lcom/google/android/material/R$id;->view_offset_helper:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    #@8
    if-nez v0, :cond_14

    #@a
    .line 744
    new-instance v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    #@c
    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    #@f
    .line 745
    sget v1, Lcom/google/android/material/R$id;->view_offset_helper:I

    #@11
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@14
    :cond_14
    return-object v0
.end method

.method private isTitleCollapseFadeMode()Z
    .registers 3

    #@0
    .line 469
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->titleCollapseMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    :goto_7
    return v1
.end method

.method private static isToolbar(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 531
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    #@2
    if-nez v0, :cond_b

    #@4
    instance-of p0, p0, Landroid/widget/Toolbar;

    #@6
    if-eqz p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .registers 5

    #@0
    .line 536
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_c

    #@6
    if-ne v0, p0, :cond_9

    #@8
    goto :goto_c

    #@9
    :cond_9
    if-ne p1, v0, :cond_11

    #@b
    goto :goto_12

    #@c
    .line 537
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@e
    if-ne p1, v0, :cond_11

    #@10
    goto :goto_12

    #@11
    :cond_11
    move v1, v2

    #@12
    :goto_12
    return v1
.end method

.method private updateCollapsedBounds(Z)V
    .registers 10

    #@0
    .line 689
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@7
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    #@a
    move-result v0

    #@b
    .line 690
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@d
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    #@f
    invoke-static {p0, v1, v2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    #@12
    .line 695
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@14
    instance-of v2, v1, Landroidx/appcompat/widget/Toolbar;

    #@16
    if-eqz v2, :cond_2b

    #@18
    .line 696
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    #@1a
    .line 697
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    #@1d
    move-result v2

    #@1e
    .line 698
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    #@21
    move-result v3

    #@22
    .line 699
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    #@25
    move-result v4

    #@26
    .line 700
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    #@29
    move-result v1

    #@2a
    goto :goto_48

    #@2b
    .line 701
    :cond_2b
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@2d
    instance-of v2, v1, Landroid/widget/Toolbar;

    #@2f
    if-eqz v2, :cond_44

    #@31
    .line 702
    check-cast v1, Landroid/widget/Toolbar;

    #@33
    .line 703
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getTitleMarginStart()I

    #@36
    move-result v2

    #@37
    .line 704
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getTitleMarginEnd()I

    #@3a
    move-result v3

    #@3b
    .line 705
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getTitleMarginTop()I

    #@3e
    move-result v4

    #@3f
    .line 706
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getTitleMarginBottom()I

    #@42
    move-result v1

    #@43
    goto :goto_48

    #@44
    :cond_44
    const/4 v2, 0x0

    #@45
    move v1, v2

    #@46
    move v3, v1

    #@47
    move v4, v3

    #@48
    .line 713
    :goto_48
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@4a
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    #@4c
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@4e
    if-eqz p1, :cond_52

    #@50
    move v7, v3

    #@51
    goto :goto_53

    #@52
    :cond_52
    move v7, v2

    #@53
    :goto_53
    add-int/2addr v6, v7

    #@54
    .line 714
    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    #@56
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@58
    add-int/2addr v7, v0

    #@59
    add-int/2addr v7, v4

    #@5a
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    #@5c
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@5e
    if-eqz p1, :cond_61

    #@60
    goto :goto_62

    #@61
    :cond_61
    move v2, v3

    #@62
    :goto_62
    sub-int/2addr v4, v2

    #@63
    .line 716
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    #@65
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@67
    add-int/2addr p1, v0

    #@68
    sub-int/2addr p1, v1

    #@69
    .line 713
    invoke-virtual {v5, v6, v7, v4, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    #@6c
    return-void
.end method

.method private updateContentDescriptionFromTitle()V
    .registers 2

    #@0
    .line 1746
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getTitle()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    #@7
    return-void
.end method

.method private updateContentScrimBounds(Landroid/graphics/drawable/Drawable;II)V
    .registers 5

    #@0
    .line 481
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentScrimBounds(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V

    #@5
    return-void
.end method

.method private updateContentScrimBounds(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V
    .registers 6

    #@0
    .line 489
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isTitleCollapseFadeMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    if-eqz p2, :cond_10

    #@8
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@a
    if-eqz v0, :cond_10

    #@c
    .line 490
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@f
    move-result p4

    #@10
    :cond_10
    const/4 p2, 0x0

    #@11
    .line 492
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@14
    return-void
.end method

.method private updateDummyView()V
    .registers 4

    #@0
    .line 554
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@2
    if-nez v0, :cond_17

    #@4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 556
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b
    move-result-object v0

    #@c
    .line 557
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@e
    if-eqz v1, :cond_17

    #@10
    .line 558
    check-cast v0, Landroid/view/ViewGroup;

    #@12
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@17
    .line 561
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@19
    if-eqz v0, :cond_3e

    #@1b
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@1d
    if-eqz v0, :cond_3e

    #@1f
    .line 562
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@21
    if-nez v0, :cond_2e

    #@23
    .line 563
    new-instance v0, Landroid/view/View;

    #@25
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@2c
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@2e
    .line 565
    :cond_2e
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@33
    move-result-object v0

    #@34
    if-nez v0, :cond_3e

    #@36
    .line 566
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@38
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@3a
    const/4 v2, -0x1

    #@3b
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    #@3e
    :cond_3e
    return-void
.end method

.method private updateTextBounds(IIIIZ)V
    .registers 11

    #@0
    .line 652
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@2
    if-eqz v0, :cond_50

    #@4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@6
    if-eqz v0, :cond_50

    #@8
    .line 656
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    if-eqz v0, :cond_1a

    #@10
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1a

    #@18
    move v0, v2

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move v0, v1

    #@1b
    :goto_1b
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    #@1d
    if-nez v0, :cond_21

    #@1f
    if-eqz p5, :cond_50

    #@21
    .line 660
    :cond_21
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@24
    move-result v0

    #@25
    if-ne v0, v2, :cond_28

    #@27
    move v1, v2

    #@28
    .line 663
    :cond_28
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateCollapsedBounds(Z)V

    #@2b
    .line 666
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2d
    if-eqz v1, :cond_32

    #@2f
    .line 667
    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    #@31
    goto :goto_34

    #@32
    :cond_32
    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    #@34
    :goto_34
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    #@36
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@38
    iget v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    #@3a
    add-int/2addr v3, v4

    #@3b
    sub-int/2addr p3, p1

    #@3c
    if-eqz v1, :cond_41

    #@3e
    .line 669
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    #@40
    goto :goto_43

    #@41
    :cond_41
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    #@43
    :goto_43
    sub-int/2addr p3, p1

    #@44
    sub-int/2addr p4, p2

    #@45
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    #@47
    sub-int/2addr p4, p1

    #@48
    .line 666
    invoke-virtual {v0, v2, v3, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    #@4b
    .line 673
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@4d
    invoke-virtual {p1, p5}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    #@50
    :cond_50
    return-void
.end method

.method private updateTitleFromToolbarIfNeeded()V
    .registers 2

    #@0
    .line 679
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_1d

    #@4
    .line 680
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@6
    if-eqz v0, :cond_1d

    #@8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1d

    #@14
    .line 682
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@16
    invoke-static {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getToolbarTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    #@1d
    :cond_1d
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    #@0
    .line 1597
    instance-of p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@2
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    .line 400
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 404
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    #@6
    .line 405
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@8
    if-nez v0, :cond_20

    #@a
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_20

    #@e
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@10
    if-lez v1, :cond_20

    #@12
    .line 406
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1b
    .line 407
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@20
    .line 411
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@22
    if-eqz v0, :cond_67

    #@24
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    #@26
    if-eqz v0, :cond_67

    #@28
    .line 412
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@2a
    if-eqz v0, :cond_62

    #@2c
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@2e
    if-eqz v0, :cond_62

    #@30
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@32
    if-lez v0, :cond_62

    #@34
    .line 415
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isTitleCollapseFadeMode()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_62

    #@3a
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@3c
    .line 416
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    #@3f
    move-result v0

    #@40
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@42
    .line 417
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getFadeModeThresholdFraction()F

    #@45
    move-result v1

    #@46
    cmpg-float v0, v0, v1

    #@48
    if-gez v0, :cond_62

    #@4a
    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@4d
    move-result v0

    #@4e
    .line 420
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@50
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@53
    move-result-object v1

    #@54
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@56
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@59
    .line 421
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@5b
    invoke-virtual {v1, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    #@5e
    .line 422
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@61
    goto :goto_67

    #@62
    .line 424
    :cond_62
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@64
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    #@67
    .line 429
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@69
    if-eqz v0, :cond_9b

    #@6b
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@6d
    if-lez v0, :cond_9b

    #@6f
    .line 430
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@71
    const/4 v1, 0x0

    #@72
    if-eqz v0, :cond_79

    #@74
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@77
    move-result v0

    #@78
    goto :goto_7a

    #@79
    :cond_79
    move v0, v1

    #@7a
    :goto_7a
    if-lez v0, :cond_9b

    #@7c
    .line 432
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@7e
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    #@80
    neg-int v3, v3

    #@81
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    #@84
    move-result v4

    #@85
    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    #@87
    sub-int/2addr v0, v5

    #@88
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@8b
    .line 433
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@8d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@90
    move-result-object v0

    #@91
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@93
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@96
    .line 434
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@98
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@9b
    :cond_9b
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10

    #@0
    .line 451
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_2f

    #@6
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@8
    if-lez v0, :cond_2f

    #@a
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2f

    #@10
    .line 452
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    #@15
    move-result v3

    #@16
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    #@19
    move-result v4

    #@1a
    invoke-direct {p0, v0, p2, v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentScrimBounds(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V

    #@1d
    .line 453
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v0

    #@23
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@25
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@28
    .line 454
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@2a
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2d
    move v0, v1

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move v0, v2

    #@30
    .line 457
    :goto_30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@33
    move-result p1

    #@34
    if-nez p1, :cond_3a

    #@36
    if-eqz v0, :cond_39

    #@38
    goto :goto_3a

    #@39
    :cond_39
    move v1, v2

    #@3a
    :cond_3a
    :goto_3a
    return v1
.end method

.method protected drawableStateChanged()V
    .registers 5

    #@0
    .line 1031
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    #@3
    .line 1033
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    #@6
    move-result-object v0

    #@7
    .line 1036
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v1, :cond_17

    #@c
    .line 1037
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_17

    #@12
    .line 1038
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    move-result v1

    #@16
    or-int/2addr v2, v1

    #@17
    .line 1040
    :cond_17
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@19
    if-eqz v1, :cond_26

    #@1b
    .line 1041
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_26

    #@21
    .line 1042
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@24
    move-result v1

    #@25
    or-int/2addr v2, v1

    #@26
    .line 1044
    :cond_26
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@28
    if-eqz v1, :cond_2f

    #@2a
    .line 1045
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    #@2d
    move-result v0

    #@2e
    or-int/2addr v2, v0

    #@2f
    :cond_2f
    if-eqz v2, :cond_34

    #@31
    .line 1049
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->invalidate()V

    #@34
    :cond_34
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    #@0
    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .registers 3

    #@0
    .line 1602
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {v0, v1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    #@0
    .line 1607
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    #@0
    .line 1612
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .registers 2

    #@0
    .line 1151
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextGravity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCollapsedTitleTextSize()F
    .registers 2

    #@0
    .line 1226
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextSize()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 1241
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 997
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .registers 2

    #@0
    .line 1198
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextGravity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .registers 2

    #@0
    .line 1349
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    #@2
    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .registers 2

    #@0
    .line 1328
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    #@2
    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .registers 2

    #@0
    .line 1286
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    #@2
    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .registers 2

    #@0
    .line 1307
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    #@2
    return v0
.end method

.method public getExpandedTitleTextSize()F
    .registers 2

    #@0
    .line 1212
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextSize()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 1256
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHyphenationFrequency()I
    .registers 2

    #@0
    .line 1439
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getHyphenationFrequency()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineCount()I
    .registers 2

    #@0
    .line 1388
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getLineCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineSpacingAdd()F
    .registers 2

    #@0
    .line 1405
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getLineSpacingAdd()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineSpacingMultiplier()F
    .registers 2

    #@0
    .line 1422
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getLineSpacingMultiplier()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxLines()I
    .registers 2

    #@0
    .line 1379
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getMaxLines()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .registers 5

    #@0
    .line 1739
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    #@3
    move-result-object v0

    #@4
    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    #@a
    .line 1741
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    #@d
    move-result v2

    #@e
    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLayoutTop()I

    #@11
    move-result v0

    #@12
    sub-int/2addr v2, v0

    #@13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@16
    move-result p1

    #@17
    sub-int/2addr v2, p1

    #@18
    iget p1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    #@1a
    sub-int/2addr v2, p1

    #@1b
    return v2
.end method

.method getScrimAlpha()I
    .registers 2

    #@0
    .line 941
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@2
    return v0
.end method

.method public getScrimAnimationDuration()J
    .registers 3

    #@0
    .line 1592
    iget-wide v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    #@2
    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .registers 3

    #@0
    .line 1540
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    #@2
    if-ltz v0, :cond_b

    #@4
    .line 1542
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->topInsetApplied:I

    #@6
    add-int/2addr v0, v1

    #@7
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    #@9
    add-int/2addr v0, v1

    #@a
    return v0

    #@b
    .line 1546
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@d
    if-eqz v0, :cond_14

    #@f
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@12
    move-result v0

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    .line 1548
    :goto_15
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@18
    move-result v1

    #@19
    if-lez v1, :cond_27

    #@1b
    mul-int/lit8 v1, v1, 0x2

    #@1d
    add-int/2addr v1, v0

    #@1e
    .line 1551
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    #@21
    move-result v0

    #@22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@25
    move-result v0

    #@26
    return v0

    #@27
    .line 1556
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    #@2a
    move-result v0

    #@2b
    div-int/lit8 v0, v0, 0x3

    #@2d
    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1103
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 770
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return-object v0
.end method

.method public getTitleCollapseMode()I
    .registers 2

    #@0
    .line 807
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->titleCollapseMode:I

    #@2
    return v0
.end method

.method public getTitlePositionInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    #@0
    .line 1577
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getPositionInterpolator()Landroid/animation/TimeInterpolator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitleTextEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    #@0
    .line 854
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTitleTextEllipsize()Landroid/text/TextUtils$TruncateAt;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isExtraMultilineHeightEnabled()Z
    .registers 2

    #@0
    .line 1511
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeightEnabled:Z

    #@2
    return v0
.end method

.method public isForceApplySystemWindowInsetTop()Z
    .registers 2

    #@0
    .line 1493
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->forceApplySystemWindowInsetTop:Z

    #@2
    return v0
.end method

.method public isRtlTextDirectionHeuristicsEnabled()Z
    .registers 2

    #@0
    .line 1475
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isTitleEnabled()Z
    .registers 2

    #@0
    .line 835
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    #@0
    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 349
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v0

    #@7
    .line 350
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    #@9
    if-eqz v1, :cond_2a

    #@b
    .line 351
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    #@d
    .line 353
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->disableLiftOnScrollIfNeeded(Lcom/google/android/material/appbar/AppBarLayout;)V

    #@10
    .line 356
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@13
    move-result v1

    #@14
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    #@17
    .line 358
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    #@19
    if-nez v1, :cond_22

    #@1b
    .line 359
    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;

    #@1d
    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    #@20
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    #@22
    .line 361
    :cond_22
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    #@24
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    #@27
    .line 364
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    #@2a
    :cond_2a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    .line 441
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 442
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    #@8
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    #@0
    .line 371
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 372
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    #@6
    if-eqz v1, :cond_11

    #@8
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    #@a
    if-eqz v2, :cond_11

    #@c
    .line 373
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    #@11
    .line 376
    :cond_11
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    #@0
    .line 615
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    .line 617
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@5
    const/4 v0, 0x0

    #@6
    if-eqz p1, :cond_29

    #@8
    .line 619
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@b
    move-result p1

    #@c
    .line 620
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    #@f
    move-result v1

    #@10
    move v2, v0

    #@11
    :goto_11
    if-ge v2, v1, :cond_29

    #@13
    .line 621
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v3

    #@17
    .line 622
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_26

    #@1d
    .line 623
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@20
    move-result v4

    #@21
    if-ge v4, p1, :cond_26

    #@23
    .line 626
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@26
    :cond_26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_11

    #@29
    .line 633
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    #@2c
    move-result p1

    #@2d
    move v1, v0

    #@2e
    :goto_2e
    if-ge v1, p1, :cond_3e

    #@30
    .line 634
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v2

    #@34
    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    #@3b
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_2e

    #@3e
    :cond_3e
    const/4 v7, 0x0

    #@3f
    move-object v2, p0

    #@40
    move v3, p2

    #@41
    move v4, p3

    #@42
    move v5, p4

    #@43
    move v6, p5

    #@44
    .line 637
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTextBounds(IIIIZ)V

    #@47
    .line 639
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTitleFromToolbarIfNeeded()V

    #@4a
    .line 641
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    #@4d
    .line 644
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    #@50
    move-result p1

    #@51
    :goto_51
    if-ge v0, p1, :cond_61

    #@53
    .line 645
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    #@56
    move-result-object p2

    #@57
    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    #@5a
    move-result-object p2

    #@5b
    invoke-virtual {p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    #@5e
    add-int/lit8 v0, v0, 0x1

    #@60
    goto :goto_51

    #@61
    :cond_61
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    #@0
    .line 573
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    #@3
    .line 574
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@6
    .line 576
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result p2

    #@a
    .line 577
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@c
    if-eqz v0, :cond_13

    #@e
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@11
    move-result v0

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    :goto_14
    const/high16 v1, 0x40000000    # 2.0f

    #@16
    if-eqz p2, :cond_1c

    #@18
    .line 578
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->forceApplySystemWindowInsetTop:Z

    #@1a
    if-eqz p2, :cond_2c

    #@1c
    :cond_1c
    if-lez v0, :cond_2c

    #@1e
    .line 581
    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->topInsetApplied:I

    #@20
    .line 582
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    #@23
    move-result p2

    #@24
    add-int/2addr p2, v0

    #@25
    .line 583
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@28
    move-result p2

    #@29
    .line 584
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@2c
    .line 587
    :cond_2c
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeightEnabled:Z

    #@2e
    if-eqz p2, :cond_6f

    #@30
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@32
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getMaxLines()I

    #@35
    move-result p2

    #@36
    const/4 v0, 0x1

    #@37
    if-le p2, v0, :cond_6f

    #@39
    .line 589
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTitleFromToolbarIfNeeded()V

    #@3c
    const/4 v3, 0x0

    #@3d
    const/4 v4, 0x0

    #@3e
    .line 590
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredWidth()I

    #@41
    move-result v5

    #@42
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    #@45
    move-result v6

    #@46
    const/4 v7, 0x1

    #@47
    move-object v2, p0

    #@48
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTextBounds(IIIIZ)V

    #@4b
    .line 592
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@4d
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedLineCount()I

    #@50
    move-result p2

    #@51
    if-le p2, v0, :cond_6f

    #@53
    .line 595
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@55
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextFullHeight()F

    #@58
    move-result v2

    #@59
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@5c
    move-result v2

    #@5d
    sub-int/2addr p2, v0

    #@5e
    mul-int/2addr v2, p2

    #@5f
    .line 596
    iput v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    #@61
    .line 597
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    #@64
    move-result p2

    #@65
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    #@67
    add-int/2addr p2, v0

    #@68
    .line 598
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6b
    move-result p2

    #@6c
    .line 599
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@6f
    .line 604
    :cond_6f
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@71
    if-eqz p1, :cond_89

    #@73
    .line 605
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    #@75
    if-eqz p2, :cond_82

    #@77
    if-ne p2, p0, :cond_7a

    #@79
    goto :goto_82

    #@7a
    .line 608
    :cond_7a
    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    #@7d
    move-result p1

    #@7e
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    #@81
    goto :goto_89

    #@82
    .line 606
    :cond_82
    :goto_82
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    #@85
    move-result p1

    #@86
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    #@89
    :cond_89
    :goto_89
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 462
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    #@3
    .line 463
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz p3, :cond_a

    #@7
    .line 464
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentScrimBounds(Landroid/graphics/drawable/Drawable;II)V

    #@a
    :cond_a
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    #@0
    .line 382
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    move-object v0, p1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 388
    :goto_9
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@b
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_16

    #@11
    .line 389
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@13
    .line 390
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    #@16
    .line 395
    :cond_16
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    #@19
    move-result-object p1

    #@1a
    return-object p1
.end method

.method public setCollapsedTitleGravity(I)V
    .registers 3

    #@0
    .line 1142
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    #@5
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .registers 3

    #@0
    .line 1114
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    #@5
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .registers 2

    #@0
    .line 1123
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1132
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setCollapsedTitleTextSize(F)V
    .registers 3

    #@0
    .line 1221
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextSize(F)V

    #@5
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    .line 1235
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    #@5
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 953
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_2e

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 955
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    :cond_a
    if-eqz p1, :cond_10

    #@c
    .line 957
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    :cond_10
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_2b

    #@14
    .line 959
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    #@17
    move-result p1

    #@18
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    #@1b
    move-result v0

    #@1c
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentScrimBounds(Landroid/graphics/drawable/Drawable;II)V

    #@1f
    .line 960
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@21
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@24
    .line 961
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@26
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@28
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@2b
    .line 963
    :cond_2b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@2e
    :cond_2e
    return-void
.end method

.method public setContentScrimColor(I)V
    .registers 3

    #@0
    .line 975
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void
.end method

.method public setContentScrimResource(I)V
    .registers 3

    #@0
    .line 986
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .registers 2

    #@0
    .line 1170
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .registers 3

    #@0
    .line 1189
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    #@5
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .registers 5

    #@0
    .line 1273
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    #@2
    .line 1274
    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    #@4
    .line 1275
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    #@6
    .line 1276
    iput p4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    #@8
    .line 1277
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    #@b
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .registers 2

    #@0
    .line 1360
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    #@2
    .line 1361
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    #@5
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .registers 2

    #@0
    .line 1339
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    #@2
    .line 1340
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    #@5
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .registers 2

    #@0
    .line 1297
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    #@2
    .line 1298
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    #@5
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .registers 2

    #@0
    .line 1318
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    #@2
    .line 1319
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    #@5
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .registers 3

    #@0
    .line 1161
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    #@5
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1179
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setExpandedTitleTextSize(F)V
    .registers 3

    #@0
    .line 1207
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextSize(F)V

    #@5
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    .line 1250
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    #@5
    return-void
.end method

.method public setExtraMultilineHeightEnabled(Z)V
    .registers 2

    #@0
    .line 1502
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeightEnabled:Z

    #@2
    return-void
.end method

.method public setForceApplySystemWindowInsetTop(Z)V
    .registers 2

    #@0
    .line 1484
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->forceApplySystemWindowInsetTop:Z

    #@2
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .registers 3

    #@0
    .line 1432
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setHyphenationFrequency(I)V

    #@5
    return-void
.end method

.method public setLineSpacingAdd(F)V
    .registers 3

    #@0
    .line 1398
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setLineSpacingAdd(F)V

    #@5
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .registers 3

    #@0
    .line 1415
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setLineSpacingMultiplier(F)V

    #@5
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3

    #@0
    .line 1370
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setMaxLines(I)V

    #@5
    return-void
.end method

.method public setRtlTextDirectionHeuristicsEnabled(Z)V
    .registers 3

    #@0
    .line 1466
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setRtlTextDirectionHeuristicsEnabled(Z)V

    #@5
    return-void
.end method

.method setScrimAlpha(I)V
    .registers 3

    #@0
    .line 930
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@2
    if-eq p1, v0, :cond_14

    #@4
    .line 931
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 932
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 933
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@f
    .line 935
    :cond_f
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@11
    .line 936
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@14
    :cond_14
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .registers 3

    #@0
    .line 1587
    iput-wide p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    #@2
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .registers 3

    #@0
    .line 1526
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1527
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    #@6
    .line 1529
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    #@9
    :cond_9
    return-void
.end method

.method public setScrimsShown(Z)V
    .registers 3

    #@0
    .line 882
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isInEditMode()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    #@12
    return-void
.end method

.method public setScrimsShown(ZZ)V
    .registers 5

    #@0
    .line 895
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    #@2
    if-eq v0, p1, :cond_1a

    #@4
    const/16 v0, 0xff

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz p2, :cond_11

    #@9
    if-eqz p1, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v0, v1

    #@d
    .line 897
    :goto_d
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->animateScrim(I)V

    #@10
    goto :goto_18

    #@11
    :cond_11
    if-eqz p1, :cond_14

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v0, v1

    #@15
    .line 899
    :goto_15
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    #@18
    .line 901
    :goto_18
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    #@1a
    :cond_1a
    return-void
.end method

.method public setStaticLayoutBuilderConfigurer(Lcom/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer;)V
    .registers 3

    #@0
    .line 1457
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)V

    #@5
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 1011
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_4a

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 1013
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    :cond_a
    if-eqz p1, :cond_10

    #@c
    .line 1015
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    :cond_10
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_47

    #@14
    .line 1017
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@17
    move-result p1

    #@18
    if-eqz p1, :cond_23

    #@1a
    .line 1018
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@23
    .line 1020
    :cond_23
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@25
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@28
    move-result v0

    #@29
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@2c
    .line 1021
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@2e
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getVisibility()I

    #@31
    move-result v0

    #@32
    const/4 v1, 0x0

    #@33
    if-nez v0, :cond_37

    #@35
    const/4 v0, 0x1

    #@36
    goto :goto_38

    #@37
    :cond_37
    move v0, v1

    #@38
    :goto_38
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3b
    .line 1022
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@40
    .line 1023
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@42
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    #@44
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@47
    .line 1025
    :cond_47
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@4a
    :cond_4a
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .registers 3

    #@0
    .line 1081
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .registers 3

    #@0
    .line 1092
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 758
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 759
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    #@8
    return-void
.end method

.method public setTitleCollapseMode(I)V
    .registers 4

    #@0
    .line 780
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->titleCollapseMode:I

    #@2
    .line 782
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isTitleCollapseFadeMode()Z

    #@5
    move-result p1

    #@6
    .line 783
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeEnabled(Z)V

    #@b
    .line 785
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object v0

    #@f
    .line 786
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    #@11
    if-eqz v1, :cond_18

    #@13
    .line 787
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    #@15
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->disableLiftOnScrollIfNeeded(Lcom/google/android/material/appbar/AppBarLayout;)V

    #@18
    :cond_18
    if-eqz p1, :cond_31

    #@1a
    .line 792
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@1c
    if-nez p1, :cond_31

    #@1e
    .line 793
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object p1

    #@22
    sget v0, Lcom/google/android/material/R$dimen;->design_appbar_elevation:I

    #@24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    #@27
    move-result p1

    #@28
    .line 794
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@2a
    .line 795
    invoke-virtual {v0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayWithThemeSurfaceColorIfNeeded(F)I

    #@2d
    move-result p1

    #@2e
    .line 796
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    #@31
    :cond_31
    return-void
.end method

.method public setTitleEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3

    #@0
    .line 846
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTitleTextEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@5
    return-void
.end method

.method public setTitleEnabled(Z)V
    .registers 3

    #@0
    .line 820
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@2
    if-eq p1, v0, :cond_f

    #@4
    .line 821
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    #@6
    .line 822
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    #@9
    .line 823
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    #@c
    .line 824
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    #@f
    :cond_f
    return-void
.end method

.method public setTitlePositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 3

    #@0
    .line 1568
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    #@5
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    #@0
    .line 1060
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@3
    const/4 v0, 0x0

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move p1, v0

    #@9
    .line 1063
    :goto_9
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v1, :cond_18

    #@d
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    #@10
    move-result v1

    #@11
    if-eq v1, p1, :cond_18

    #@13
    .line 1064
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@18
    .line 1066
    :cond_18
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@1a
    if-eqz v1, :cond_27

    #@1c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    #@1f
    move-result v1

    #@20
    if-eq v1, p1, :cond_27

    #@22
    .line 1067
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@24
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@27
    :cond_27
    return-void
.end method

.method final updateScrimVisibility()V
    .registers 3

    #@0
    .line 1733
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v0, :cond_8

    #@4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_1b

    #@8
    .line 1734
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    #@b
    move-result v0

    #@c
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    #@e
    add-int/2addr v0, v1

    #@f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    #@12
    move-result v1

    #@13
    if-ge v0, v1, :cond_17

    #@15
    const/4 v0, 0x1

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    :goto_18
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(Z)V

    #@1b
    :cond_1b
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    .line 1055
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_11

    #@6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    #@8
    if-eq p1, v0, :cond_11

    #@a
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    #@c
    if-ne p1, v0, :cond_f

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
