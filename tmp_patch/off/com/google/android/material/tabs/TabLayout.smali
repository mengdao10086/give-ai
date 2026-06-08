.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;,
        Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;,
        Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;,
        Lcom/google/android/material/tabs/TabLayout$TabView;,
        Lcom/google/android/material/tabs/TabLayout$Tab;,
        Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$TabIndicatorAnimationMode;,
        Lcom/google/android/material/tabs/TabLayout$TabIndicatorGravity;,
        Lcom/google/android/material/tabs/TabLayout$TabGravity;,
        Lcom/google/android/material/tabs/TabLayout$LabelVisibility;,
        Lcom/google/android/material/tabs/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final DEF_STYLE_RES:I

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_ANIMATION_MODE_ELASTIC:I = 0x1

.field public static final INDICATOR_ANIMATION_MODE_FADE:I = 0x2

.field public static final INDICATOR_ANIMATION_MODE_LINEAR:I = 0x0

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TabLayout"

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final SELECTED_INDICATOR_HEIGHT_DEFAULT:I = -0x1

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field private final defaultTabTextAppearance:I

.field indicatorPosition:I

.field inlineLabel:Z

.field mode:I

.field private pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field private selectedTabTextAppearance:I

.field selectedTabTextSize:F

.field private setupViewPagerImplicitly:Z

.field final slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIconTint:Landroid/content/res/ColorStateList;

.field tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field tabIndicatorAnimationDuration:I

.field tabIndicatorAnimationMode:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabIndicatorHeight:I

.field private tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

.field private final tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field private tabSelectedIndicatorColor:I

.field private final tabTextAppearance:I

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/tabs/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;

.field private viewPagerScrollState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 182
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_TabLayout:I

    #@2
    sput v0, Lcom/google/android/material/tabs/TabLayout;->DEF_STYLE_RES:I

    #@4
    .line 205
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    #@6
    const/16 v1, 0x10

    #@8
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    #@b
    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    #@d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 512
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 516
    sget v0, Lcom/google/android/material/R$attr;->tabStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    #@0
    .line 520
    sget v4, Lcom/google/android/material/tabs/TabLayout;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    const/4 p1, -0x1

    #@a
    .line 300
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@c
    .line 447
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@13
    .line 459
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    #@15
    const/4 v6, 0x0

    #@16
    .line 464
    iput v6, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    #@18
    const v0, 0x7fffffff

    #@1b
    .line 473
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    #@1d
    .line 486
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorHeight:I

    #@1f
    .line 495
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@26
    .line 509
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    #@28
    const/16 v1, 0xc

    #@2a
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    #@2d
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    #@2f
    .line 522
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@32
    move-result-object v7

    #@33
    .line 525
    invoke-virtual {p0, v6}, Lcom/google/android/material/tabs/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    #@36
    .line 528
    new-instance v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@38
    invoke-direct {v8, p0, v7}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    #@3b
    iput-object v8, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@3d
    .line 529
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@3f
    const/4 v1, -0x2

    #@40
    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@43
    invoke-super {p0, v8, v6, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@46
    .line 535
    sget-object v2, Lcom/google/android/material/R$styleable;->TabLayout:[I

    #@48
    const/4 v9, 0x1

    #@49
    new-array v5, v9, [I

    #@4b
    sget v0, Lcom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    #@4d
    aput v0, v5, v6

    #@4f
    move-object v0, v7

    #@50
    move-object v1, p2

    #@51
    move v3, p3

    #@52
    .line 536
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@55
    move-result-object p2

    #@56
    .line 544
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@59
    move-result-object p3

    #@5a
    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    #@5c
    if-eqz p3, :cond_81

    #@5e
    .line 545
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@61
    move-result-object p3

    #@62
    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    #@64
    .line 546
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@66
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@69
    .line 547
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@6c
    move-result p3

    #@6d
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@70
    move-result-object p3

    #@71
    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@74
    .line 548
    invoke-virtual {v0, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@77
    .line 549
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@7a
    move-result p3

    #@7b
    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@7e
    .line 550
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@81
    .line 553
    :cond_81
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicator:I

    #@83
    .line 554
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    #@86
    move-result-object p3

    #@87
    .line 553
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    #@8a
    .line 555
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorColor:I

    #@8c
    .line 556
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@8f
    move-result p3

    #@90
    .line 555
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    #@93
    .line 557
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorHeight:I

    #@95
    .line 558
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@98
    move-result p3

    #@99
    .line 557
    invoke-virtual {v8, p3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    #@9c
    .line 559
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorGravity:I

    #@9e
    .line 560
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@a1
    move-result p3

    #@a2
    .line 559
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    #@a5
    .line 561
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationMode:I

    #@a7
    .line 562
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@aa
    move-result p3

    #@ab
    .line 561
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorAnimationMode(I)V

    #@ae
    .line 563
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    #@b0
    invoke-virtual {p2, p3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b3
    move-result p3

    #@b4
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    #@b7
    .line 565
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPadding:I

    #@b9
    .line 568
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@bc
    move-result p3

    #@bd
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    #@bf
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    #@c1
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    #@c3
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    #@c5
    .line 569
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingStart:I

    #@c7
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    #@c9
    .line 570
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@cc
    move-result p3

    #@cd
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    #@cf
    .line 571
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingTop:I

    #@d1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    #@d3
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@d6
    move-result p3

    #@d7
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    #@d9
    .line 572
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingEnd:I

    #@db
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    #@dd
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@e0
    move-result p3

    #@e1
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    #@e3
    .line 573
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingBottom:I

    #@e5
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    #@e7
    .line 574
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@ea
    move-result p3

    #@eb
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    #@ed
    .line 576
    invoke-static {v7}, Lcom/google/android/material/internal/ThemeEnforcement;->isMaterial3Theme(Landroid/content/Context;)Z

    #@f0
    move-result p3

    #@f1
    if-eqz p3, :cond_f8

    #@f3
    .line 577
    sget p3, Lcom/google/android/material/R$attr;->textAppearanceTitleSmall:I

    #@f5
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I

    #@f7
    goto :goto_fc

    #@f8
    .line 579
    :cond_f8
    sget p3, Lcom/google/android/material/R$attr;->textAppearanceButton:I

    #@fa
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I

    #@fc
    .line 581
    :goto_fc
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    #@fe
    sget v0, Lcom/google/android/material/R$style;->TextAppearance_Design_Tab:I

    #@100
    .line 582
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@103
    move-result p3

    #@104
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    #@106
    .line 585
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    #@108
    .line 586
    invoke-virtual {v7, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@10b
    move-result-object v0

    #@10c
    .line 589
    :try_start_10c
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@10e
    .line 590
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@111
    move-result v1

    #@112
    int-to-float v1, v1

    #@113
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    #@115
    .line 592
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    #@117
    .line 593
    invoke-static {v7, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@11a
    move-result-object v1

    #@11b
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_11d
    .catchall {:try_start_10c .. :try_end_11d} :catchall_229

    #@11d
    .line 598
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@120
    .line 601
    sget v0, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextAppearance:I

    #@122
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@125
    move-result v0

    #@126
    if-eqz v0, :cond_130

    #@128
    .line 602
    sget v0, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextAppearance:I

    #@12a
    .line 603
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12d
    move-result p3

    #@12e
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    #@130
    .line 606
    :cond_130
    iget p3, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    #@132
    if-eq p3, p1, :cond_172

    #@134
    .line 610
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    #@136
    .line 611
    invoke-virtual {v7, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@139
    move-result-object p3

    #@13a
    .line 615
    :try_start_13a
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@13c
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    #@13e
    float-to-int v1, v1

    #@13f
    .line 616
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@142
    move-result v0

    #@143
    int-to-float v0, v0

    #@144
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextSize:F

    #@146
    .line 619
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    #@148
    .line 620
    invoke-static {v7, p3, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@14b
    move-result-object v0

    #@14c
    if-eqz v0, :cond_169

    #@14e
    .line 626
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@150
    .line 628
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@153
    move-result v1

    #@154
    new-array v2, v9, [I

    #@156
    const v3, 0x10100a1

    #@159
    aput v3, v2, v6

    #@15b
    .line 631
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@15e
    move-result v3

    #@15f
    .line 629
    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@162
    move-result v0

    #@163
    .line 627
    invoke-static {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    #@166
    move-result-object v0

    #@167
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_169
    .catchall {:try_start_13a .. :try_end_169} :catchall_16d

    #@169
    .line 634
    :cond_169
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    #@16c
    goto :goto_172

    #@16d
    :catchall_16d
    move-exception p1

    #@16e
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    #@171
    .line 635
    throw p1

    #@172
    .line 638
    :cond_172
    :goto_172
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    #@174
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@177
    move-result p3

    #@178
    if-eqz p3, :cond_182

    #@17a
    .line 640
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    #@17c
    .line 641
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@17f
    move-result-object p3

    #@180
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@182
    .line 644
    :cond_182
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    #@184
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@187
    move-result p3

    #@188
    if-eqz p3, :cond_19c

    #@18a
    .line 648
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    #@18c
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@18f
    move-result p3

    #@190
    .line 649
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@192
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@195
    move-result v0

    #@196
    invoke-static {v0, p3}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    #@199
    move-result-object p3

    #@19a
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@19c
    .line 652
    :cond_19c
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTint:I

    #@19e
    .line 653
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@1a1
    move-result-object p3

    #@1a2
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    #@1a4
    .line 654
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTintMode:I

    #@1a6
    .line 655
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a9
    move-result p3

    #@1aa
    const/4 v0, 0x0

    #@1ab
    invoke-static {p3, v0}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@1ae
    move-result-object p3

    #@1af
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1b1
    .line 657
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabRippleColor:I

    #@1b3
    .line 658
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@1b6
    move-result-object p3

    #@1b7
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    #@1b9
    .line 660
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    #@1bb
    const/16 v0, 0x12c

    #@1bd
    .line 661
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1c0
    move-result p3

    #@1c1
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    #@1c3
    .line 662
    sget p3, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@1c5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1c7
    .line 663
    invoke-static {v7, p3, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@1ca
    move-result-object p3

    #@1cb
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

    #@1cd
    .line 666
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabMinWidth:I

    #@1cf
    .line 667
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1d2
    move-result p3

    #@1d3
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    #@1d5
    .line 668
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabMaxWidth:I

    #@1d7
    .line 669
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1da
    move-result p1

    #@1db
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    #@1dd
    .line 670
    sget p1, Lcom/google/android/material/R$styleable;->TabLayout_tabBackground:I

    #@1df
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e2
    move-result p1

    #@1e3
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    #@1e5
    .line 671
    sget p1, Lcom/google/android/material/R$styleable;->TabLayout_tabContentStart:I

    #@1e7
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1ea
    move-result p1

    #@1eb
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    #@1ed
    .line 673
    sget p1, Lcom/google/android/material/R$styleable;->TabLayout_tabMode:I

    #@1ef
    invoke-virtual {p2, p1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1f2
    move-result p1

    #@1f3
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@1f5
    .line 674
    sget p1, Lcom/google/android/material/R$styleable;->TabLayout_tabGravity:I

    #@1f7
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1fa
    move-result p1

    #@1fb
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@1fd
    .line 675
    sget p1, Lcom/google/android/material/R$styleable;->TabLayout_tabInlineLabel:I

    #@1ff
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@202
    move-result p1

    #@203
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@205
    .line 676
    sget p1, Lcom/google/android/material/R$styleable;->TabLayout_tabUnboundedRipple:I

    #@207
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@20a
    move-result p1

    #@20b
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    #@20d
    .line 677
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@210
    .line 680
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    #@213
    move-result-object p1

    #@214
    .line 681
    sget p2, Lcom/google/android/material/R$dimen;->design_tab_text_size_2line:I

    #@216
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@219
    move-result p2

    #@21a
    int-to-float p2, p2

    #@21b
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    #@21d
    .line 682
    sget p2, Lcom/google/android/material/R$dimen;->design_tab_scrollable_min_width:I

    #@21f
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@222
    move-result p1

    #@223
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    #@225
    .line 685
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    #@228
    return-void

    #@229
    :catchall_229
    move-exception p1

    #@22a
    .line 598
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@22d
    .line 599
    throw p1
.end method

.method static synthetic access$1100(Lcom/google/android/material/tabs/TabLayout;)I
    .registers 1

    #@0
    .line 180
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I

    #@2
    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/tabs/TabLayout;)I
    .registers 1

    #@0
    .line 180
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    #@2
    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/tabs/TabLayout;)I
    .registers 1

    #@0
    .line 180
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    #@2
    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/material/tabs/TabLayout;)I
    .registers 1

    #@0
    .line 180
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout;->viewPagerScrollState:I

    #@2
    return p0
.end method

.method static synthetic access$1700(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;
    .registers 1

    #@0
    .line 180
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    #@2
    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/material/tabs/TabLayout;)Landroid/animation/TimeInterpolator;
    .registers 1

    #@0
    .line 180
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object p0
.end method

.method private addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V
    .registers 4

    #@0
    .line 824
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    #@3
    move-result-object v0

    #@4
    .line 825
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 826
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    #@a
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@d
    .line 828
    :cond_d
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    #@f
    if-eqz v1, :cond_16

    #@11
    .line 829
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@16
    .line 831
    :cond_16
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    #@18
    if-eqz v1, :cond_1f

    #@1a
    .line 832
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    #@1c
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@1f
    .line 834
    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_30

    #@29
    .line 835
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@30
    .line 837
    :cond_30
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@33
    return-void
.end method

.method private addTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    #@0
    .line 1702
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@2
    const/4 v1, 0x0

    #@3
    .line 1703
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    #@6
    .line 1704
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setActivated(Z)V

    #@9
    .line 1705
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@b
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@e
    move-result p1

    #@f
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@16
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .registers 3

    #@0
    .line 1729
    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 1730
    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    #@6
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V

    #@9
    return-void

    #@a
    .line 1732
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string v0, "Only TabItem instances can be added to TabLayout"

    #@e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method private animateToTab(I)V
    .registers 8

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_4

    #@3
    return-void

    #@4
    .line 1869
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWindowToken()Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v0, :cond_42

    #@c
    .line 1870
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_42

    #@12
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@14
    .line 1871
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    goto :goto_42

    #@1b
    .line 1878
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getScrollX()I

    #@1e
    move-result v0

    #@1f
    .line 1879
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    #@22
    move-result v2

    #@23
    if-eq v0, v2, :cond_3a

    #@25
    .line 1882
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    #@28
    .line 1884
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@2a
    const/4 v4, 0x2

    #@2b
    new-array v4, v4, [I

    #@2d
    const/4 v5, 0x0

    #@2e
    aput v0, v4, v5

    #@30
    aput v2, v4, v1

    #@32
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@35
    .line 1885
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@3a
    .line 1889
    :cond_3a
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@3c
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    #@3e
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    #@41
    return-void

    #@42
    .line 1874
    :cond_42
    :goto_42
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    #@45
    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_f

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_9

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p1, v0, :cond_16

    #@8
    goto :goto_1e

    #@9
    .line 2064
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@b
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    #@e
    goto :goto_1e

    #@f
    :cond_f
    const-string p1, "TabLayout"

    #@11
    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    #@13
    .line 2067
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 2073
    :cond_16
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@18
    const v0, 0x800003

    #@1b
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    #@1e
    :goto_1e
    return-void
.end method

.method private applyModeAndGravity()V
    .registers 5

    #@0
    .line 2036
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_b

    #@6
    if-ne v0, v1, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    move v0, v2

    #@a
    goto :goto_14

    #@b
    .line 2038
    :cond_b
    :goto_b
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    #@d
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    #@f
    sub-int/2addr v0, v3

    #@10
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v0

    #@14
    .line 2040
    :goto_14
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@16
    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@19
    .line 2042
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@1b
    const/4 v2, 0x1

    #@1c
    if-eqz v0, :cond_34

    #@1e
    if-eq v0, v2, :cond_23

    #@20
    if-eq v0, v1, :cond_23

    #@22
    goto :goto_39

    #@23
    .line 2045
    :cond_23
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@25
    if-ne v0, v1, :cond_2e

    #@27
    const-string v0, "TabLayout"

    #@29
    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    #@2b
    .line 2046
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2051
    :cond_2e
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@30
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    #@33
    goto :goto_39

    #@34
    .line 2054
    :cond_34
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@36
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->applyGravityForModeScrollable(I)V

    #@39
    .line 2058
    :goto_39
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    #@3c
    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .registers 7

    #@0
    .line 2010
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x2

    #@4
    if-eqz v0, :cond_a

    #@6
    if-ne v0, v2, :cond_9

    #@8
    goto :goto_a

    #@9
    :cond_9
    return v1

    #@a
    .line 2011
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_13

    #@12
    return v1

    #@13
    :cond_13
    add-int/lit8 p1, p1, 0x1

    #@15
    .line 2016
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@17
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@1a
    move-result v3

    #@1b
    if-ge p1, v3, :cond_24

    #@1d
    .line 2017
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@1f
    invoke-virtual {v3, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object p1

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    .line 2019
    :goto_25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@28
    move-result v3

    #@29
    if-eqz p1, :cond_2f

    #@2b
    .line 2020
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@2e
    move-result v1

    #@2f
    .line 2023
    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@32
    move-result p1

    #@33
    div-int/lit8 v0, v3, 0x2

    #@35
    add-int/2addr p1, v0

    #@36
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    #@39
    move-result v0

    #@3a
    div-int/2addr v0, v2

    #@3b
    sub-int/2addr p1, v0

    #@3c
    add-int/2addr v3, v1

    #@3d
    int-to-float v0, v3

    #@3e
    const/high16 v1, 0x3f000000    # 0.5f

    #@40
    mul-float/2addr v0, v1

    #@41
    mul-float/2addr v0, p2

    #@42
    float-to-int p2, v0

    #@43
    .line 2027
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4b

    #@49
    add-int/2addr p1, p2

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    sub-int/2addr p1, p2

    #@4c
    :goto_4c
    return p1
.end method

.method private configureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 6

    #@0
    .line 1685
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    #@3
    .line 1686
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@8
    .line 1688
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result p1

    #@e
    add-int/lit8 p2, p2, 0x1

    #@10
    const/4 v0, -0x1

    #@11
    :goto_11
    if-ge p2, p1, :cond_32

    #@13
    .line 1693
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@1b
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@1e
    move-result v1

    #@1f
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@21
    if-ne v1, v2, :cond_24

    #@23
    move v0, p2

    #@24
    .line 1696
    :cond_24
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2c
    invoke-virtual {v1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    #@2f
    add-int/lit8 p2, p2, 0x1

    #@31
    goto :goto_11

    #@32
    .line 1698
    :cond_32
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@34
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [[I

    #@3
    new-array v0, v0, [I

    #@5
    .line 3440
    sget-object v2, Lcom/google/android/material/tabs/TabLayout;->SELECTED_STATE_SET:[I

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    aput p1, v0, v3

    #@c
    .line 3445
    sget-object p1, Lcom/google/android/material/tabs/TabLayout;->EMPTY_STATE_SET:[I

    #@e
    const/4 v2, 0x1

    #@f
    aput-object p1, v1, v2

    #@11
    aput p0, v0, v2

    #@13
    .line 3449
    new-instance p0, Landroid/content/res/ColorStateList;

    #@15
    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@18
    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    #@0
    .line 1738
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    const/4 v2, -0x1

    #@4
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@7
    .line 1740
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    #@a
    return-object v0
.end method

.method private createTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)Lcom/google/android/material/tabs/TabLayout$TabView;
    .registers 4

    #@0
    .line 1669
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    #@2
    if-eqz v0, :cond_b

    #@4
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    if-nez v0, :cond_17

    #@e
    .line 1671
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    #@17
    .line 1673
    :cond_17
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@1a
    const/4 v1, 0x1

    #@1b
    .line 1674
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setFocusable(Z)V

    #@1e
    .line 1675
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setMinimumWidth(I)V

    #@25
    .line 1676
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    #@28
    move-result-object v1

    #@29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_37

    #@2f
    .line 1677
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$400(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    #@32
    move-result-object p1

    #@33
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@36
    goto :goto_3e

    #@37
    .line 1679
    :cond_37
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@3e
    :goto_3e
    return-object v0
.end method

.method private dispatchTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 4

    #@0
    .line 2004
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

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
    .line 2005
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@12
    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method private dispatchTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 4

    #@0
    .line 1992
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

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
    .line 1993
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@12
    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method private dispatchTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 4

    #@0
    .line 1998
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

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
    .line 1999
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@12
    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method private ensureScrollAnimator()V
    .registers 4

    #@0
    .line 1893
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-nez v0, :cond_22

    #@4
    .line 1894
    new-instance v0, Landroid/animation/ValueAnimator;

    #@6
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@b
    .line 1895
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

    #@d
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@10
    .line 1896
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@12
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    #@14
    int-to-long v1, v1

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@18
    .line 1897
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@1a
    new-instance v1, Lcom/google/android/material/tabs/TabLayout$1;

    #@1c
    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayout$1;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    #@1f
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@22
    :cond_22
    return-void
.end method

.method private getDefaultHeight()I
    .registers 6

    #@0
    .line 3455
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_29

    #@a
    .line 3456
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@12
    if-eqz v3, :cond_26

    #@14
    .line 3457
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v4

    #@18
    if-eqz v4, :cond_26

    #@1a
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_26

    #@24
    const/4 v1, 0x1

    #@25
    goto :goto_29

    #@26
    :cond_26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_8

    #@29
    :cond_29
    :goto_29
    if-eqz v1, :cond_32

    #@2b
    .line 3462
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@2d
    if-nez v0, :cond_32

    #@2f
    const/16 v0, 0x48

    #@31
    goto :goto_34

    #@32
    :cond_32
    const/16 v0, 0x30

    #@34
    :goto_34
    return v0
.end method

.method private getTabMinWidth()I
    .registers 3

    #@0
    .line 3466
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_6

    #@5
    return v0

    #@6
    .line 3471
    :cond_6
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@8
    if-eqz v0, :cond_10

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_e

    #@d
    goto :goto_10

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_12

    #@10
    :cond_10
    :goto_10
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    #@12
    :goto_12
    return v0
.end method

.method private getTabScrollRange()I
    .registers 3

    #@0
    .line 1618
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@2
    .line 1619
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getWidth()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    #@9
    move-result v1

    #@a
    sub-int/2addr v0, v1

    #@b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingLeft()I

    #@e
    move-result v1

    #@f
    sub-int/2addr v0, v1

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingRight()I

    #@13
    move-result v1

    #@14
    sub-int/2addr v0, v1

    #@15
    const/4 v1, 0x0

    #@16
    .line 1618
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method private isScrollingEnabled()Z
    .registers 3

    #@0
    .line 841
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_e

    #@d
    goto :goto_10

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_11

    #@10
    :cond_10
    :goto_10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0
.end method

.method private removeTabViewAt(I)V
    .registers 4

    #@0
    .line 1855
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@8
    .line 1856
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@a
    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->removeViewAt(I)V

    #@d
    if-eqz v0, :cond_17

    #@f
    .line 1858
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->reset()V

    #@12
    .line 1859
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    #@14
    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@17
    .line 1861
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->requestLayout()V

    #@1a
    return-void
.end method

.method private setSelectedTabView(I)V
    .registers 8

    #@0
    .line 1918
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_4e

    #@8
    const/4 v1, 0x0

    #@9
    move v2, v1

    #@a
    :goto_a
    if-ge v2, v0, :cond_4e

    #@c
    .line 1921
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@e
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x1

    #@13
    if-ne v2, p1, :cond_1b

    #@15
    .line 1924
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_23

    #@1b
    :cond_1b
    if-eq v2, p1, :cond_3c

    #@1d
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3c

    #@23
    :cond_23
    if-ne v2, p1, :cond_27

    #@25
    move v5, v4

    #@26
    goto :goto_28

    #@27
    :cond_27
    move v5, v1

    #@28
    .line 1925
    :goto_28
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    #@2b
    if-ne v2, p1, :cond_2e

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    move v4, v1

    #@2f
    .line 1926
    :goto_2f
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    #@32
    .line 1927
    instance-of v4, v3, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@34
    if-eqz v4, :cond_4b

    #@36
    .line 1928
    check-cast v3, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@38
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTab()V

    #@3b
    goto :goto_4b

    #@3c
    :cond_3c
    if-ne v2, p1, :cond_40

    #@3e
    move v5, v4

    #@3f
    goto :goto_41

    #@40
    :cond_40
    move v5, v1

    #@41
    .line 1932
    :goto_41
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    #@44
    if-ne v2, p1, :cond_47

    #@46
    goto :goto_48

    #@47
    :cond_47
    move v4, v1

    #@48
    .line 1933
    :goto_48
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    #@4b
    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_a

    #@4e
    :cond_4e
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .registers 6

    #@0
    .line 1512
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    #@2
    if-eqz v0, :cond_14

    #@4
    .line 1514
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 1515
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    #@b
    .line 1517
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    #@d
    if-eqz v0, :cond_14

    #@f
    .line 1518
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    #@11
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    #@14
    .line 1522
    :cond_14
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@16
    const/4 v1, 0x0

    #@17
    if-eqz v0, :cond_1e

    #@19
    .line 1524
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    #@1c
    .line 1525
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@1e
    :cond_1e
    if-eqz p1, :cond_69

    #@20
    .line 1529
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    #@22
    .line 1532
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    #@24
    if-nez v0, :cond_2d

    #@26
    .line 1533
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    #@28
    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    #@2b
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    #@2d
    .line 1535
    :cond_2d
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    #@2f
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    #@32
    .line 1536
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    #@34
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    #@37
    .line 1539
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;

    #@39
    invoke-direct {v0, p1}, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    #@3c
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@3e
    .line 1540
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    #@41
    .line 1542
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    #@44
    move-result-object v0

    #@45
    if-eqz v0, :cond_4a

    #@47
    .line 1546
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    #@4a
    .line 1550
    :cond_4a
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    #@4c
    if-nez v0, :cond_55

    #@4e
    .line 1551
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    #@50
    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    #@53
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    #@55
    .line 1553
    :cond_55
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    #@57
    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    #@5a
    .line 1554
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    #@5c
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    #@5f
    .line 1557
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    #@62
    move-result p1

    #@63
    const/4 p2, 0x0

    #@64
    const/4 v0, 0x1

    #@65
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    #@68
    goto :goto_6f

    #@69
    .line 1561
    :cond_69
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    #@6b
    const/4 p1, 0x0

    #@6c
    .line 1562
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    #@6f
    .line 1565
    :goto_6f
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    #@71
    return-void
.end method

.method private updateAllTabs()V
    .registers 4

    #@0
    .line 1662
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_17

    #@9
    .line 1663
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@11
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_7

    #@17
    :cond_17
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4

    #@0
    .line 1745
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_11

    #@5
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@7
    if-nez v0, :cond_11

    #@9
    const/4 v0, 0x0

    #@a
    .line 1746
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@c
    const/high16 v0, 0x3f800000    # 1.0f

    #@e
    .line 1747
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@10
    goto :goto_17

    #@11
    :cond_11
    const/4 v0, -0x2

    #@12
    .line 1749
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@14
    const/4 v0, 0x0

    #@15
    .line 1750
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@17
    :goto_17
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 913
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    .line 914
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    :cond_d
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .registers 2

    #@0
    .line 898
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    #@3
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 3

    #@0
    .line 780
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    #@9
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 4

    #@0
    .line 791
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    #@9
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V
    .registers 5

    #@0
    .line 812
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@2
    if-ne v0, p0, :cond_10

    #@4
    .line 815
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->configureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    #@7
    .line 816
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@a
    if-eqz p3, :cond_f

    #@c
    .line 819
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    #@f
    :cond_f
    return-void

    #@10
    .line 813
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@12
    const-string p2, "Tab belongs to a different TabLayout."

    #@14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .registers 4

    #@0
    .line 801
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    #@9
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 1710
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    #@0
    .line 1715
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 1725
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    #@0
    .line 1720
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .registers 2

    #@0
    .line 942
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    return-void
.end method

.method protected createTabFromPool()Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 2

    #@0
    .line 966
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    #@2
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@8
    if-nez v0, :cond_f

    #@a
    .line 968
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@c
    invoke-direct {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;-><init>()V

    #@f
    :cond_f
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    #@0
    .line 3480
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getSelectedTabPosition()I
    .registers 2

    #@0
    .line 999
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, -0x1

    #@a
    :goto_a
    return v0
.end method

.method public getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 3

    #@0
    if-ltz p1, :cond_12

    #@2
    .line 990
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_9

    #@8
    goto :goto_12

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@11
    goto :goto_13

    #@12
    :cond_12
    :goto_12
    const/4 p1, 0x0

    #@13
    :goto_13
    return-object p1
.end method

.method public getTabCount()I
    .registers 2

    #@0
    .line 984
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTabGravity()I
    .registers 2

    #@0
    .line 1119
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@2
    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1372
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTabIndicatorAnimationMode()I
    .registers 2

    #@0
    .line 1196
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationMode:I

    #@2
    return v0
.end method

.method public getTabIndicatorGravity()I
    .registers 2

    #@0
    .line 1152
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    #@2
    return v0
.end method

.method getTabMaxWidth()I
    .registers 2

    #@0
    .line 3484
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    #@2
    return v0
.end method

.method public getTabMode()I
    .registers 2

    #@0
    .line 1096
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@2
    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1383
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1430
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1334
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .registers 2

    #@0
    .line 1316
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    #@2
    return v0
.end method

.method public isInlineLabel()Z
    .registers 2

    #@0
    .line 1272
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@2
    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .registers 2

    #@0
    .line 1229
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    #@2
    return v0
.end method

.method public newTab()Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 4

    #@0
    .line 954
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->createTabFromPool()Lcom/google/android/material/tabs/TabLayout$Tab;

    #@3
    move-result-object v0

    #@4
    .line 955
    iput-object p0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@6
    .line 956
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->createTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)Lcom/google/android/material/tabs/TabLayout$TabView;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@c
    .line 957
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->id:I
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$000(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    #@f
    move-result v1

    #@10
    const/4 v2, -0x1

    #@11
    if-eq v1, v2, :cond_1c

    #@13
    .line 958
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    #@15
    # getter for: Lcom/google/android/material/tabs/TabLayout$Tab;->id:I
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$000(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setId(I)V

    #@1c
    :cond_1c
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    #@0
    .line 1590
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    #@3
    .line 1592
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    #@6
    .line 1594
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    #@8
    if-nez v0, :cond_18

    #@a
    .line 1597
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object v0

    #@e
    .line 1598
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    #@10
    if-eqz v1, :cond_18

    #@12
    .line 1601
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    #@18
    :cond_18
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 1608
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    #@3
    .line 1610
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    #@5
    if-eqz v0, :cond_e

    #@7
    const/4 v0, 0x0

    #@8
    .line 1612
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    #@b
    const/4 v0, 0x0

    #@c
    .line 1613
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    #@e
    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1777
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@3
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1b

    #@9
    .line 1778
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@b
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    .line 1779
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@11
    if-eqz v2, :cond_18

    #@13
    .line 1780
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@15
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V
    invoke-static {v1, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$500(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V

    #@18
    :cond_18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_1

    #@1b
    .line 1784
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    #@1e
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    #@0
    .line 1764
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 1765
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@6
    move-result-object p1

    #@7
    .line 1769
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    const/4 v2, 0x1

    #@d
    .line 1767
    invoke-static {v2, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    #@10
    move-result-object v0

    #@11
    .line 1766
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    #@14
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 849
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->isScrollingEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method protected onMeasure(II)V
    .registers 9

    #@0
    .line 1791
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getDefaultHeight()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@b
    move-result v0

    #@c
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@f
    move-result v0

    #@10
    .line 1792
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@13
    move-result v1

    #@14
    const/high16 v2, -0x80000000

    #@16
    const/high16 v3, 0x40000000    # 2.0f

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x1

    #@1a
    if-eq v1, v2, :cond_2e

    #@1c
    if-eqz v1, :cond_1f

    #@1e
    goto :goto_41

    #@1f
    .line 1801
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    #@22
    move-result p2

    #@23
    add-int/2addr v0, p2

    #@24
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    #@27
    move-result p2

    #@28
    add-int/2addr v0, p2

    #@29
    .line 1800
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c
    move-result p2

    #@2d
    goto :goto_41

    #@2e
    .line 1794
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    #@31
    move-result v1

    #@32
    if-ne v1, v5, :cond_41

    #@34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@37
    move-result v1

    #@38
    if-lt v1, v0, :cond_41

    #@3a
    .line 1795
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    #@41
    .line 1807
    :cond_41
    :goto_41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@44
    move-result v0

    #@45
    .line 1808
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_5f

    #@4b
    .line 1812
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    #@4d
    if-lez v1, :cond_50

    #@4f
    goto :goto_5d

    #@50
    :cond_50
    int-to-float v0, v0

    #@51
    .line 1814
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@54
    move-result-object v1

    #@55
    const/16 v2, 0x38

    #@57
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@5a
    move-result v1

    #@5b
    sub-float/2addr v0, v1

    #@5c
    float-to-int v1, v0

    #@5d
    :goto_5d
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    #@5f
    .line 1818
    :cond_5f
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    #@62
    .line 1820
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    #@65
    move-result p1

    #@66
    if-ne p1, v5, :cond_ad

    #@68
    .line 1823
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    #@6b
    move-result-object p1

    #@6c
    .line 1826
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@6e
    if-eqz v0, :cond_82

    #@70
    if-eq v0, v5, :cond_76

    #@72
    const/4 v1, 0x2

    #@73
    if-eq v0, v1, :cond_82

    #@75
    goto :goto_8d

    #@76
    .line 1835
    :cond_76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@79
    move-result v0

    #@7a
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    #@7d
    move-result v1

    #@7e
    if-eq v0, v1, :cond_8d

    #@80
    :goto_80
    move v4, v5

    #@81
    goto :goto_8d

    #@82
    .line 1831
    :cond_82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@85
    move-result v0

    #@86
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    #@89
    move-result v1

    #@8a
    if-ge v0, v1, :cond_8d

    #@8c
    goto :goto_80

    #@8d
    :cond_8d
    :goto_8d
    if-eqz v4, :cond_ad

    #@8f
    .line 1844
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    #@92
    move-result v0

    #@93
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    #@96
    move-result v1

    #@97
    add-int/2addr v0, v1

    #@98
    .line 1845
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9b
    move-result-object v1

    #@9c
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@9e
    .line 1842
    invoke-static {p2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getChildMeasureSpec(III)I

    #@a1
    move-result p2

    #@a2
    .line 1848
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    #@a5
    move-result v0

    #@a6
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a9
    move-result v0

    #@aa
    .line 1849
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    #@ad
    :cond_ad
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x8

    #@6
    if-ne v0, v1, :cond_10

    #@8
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->isScrollingEnabled()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 p1, 0x0

    #@f
    return p1

    #@10
    .line 858
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method populateFromPagerAdapter()V
    .registers 6

    #@0
    .line 1643
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    #@3
    .line 1645
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@5
    if-eqz v0, :cond_40

    #@7
    .line 1646
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    move v2, v1

    #@d
    :goto_d
    if-ge v2, v0, :cond_23

    #@f
    .line 1648
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@15
    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_d

    #@23
    .line 1652
    :cond_23
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    #@25
    if-eqz v1, :cond_40

    #@27
    if-lez v0, :cond_40

    #@29
    .line 1653
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    #@2c
    move-result v0

    #@2d
    .line 1654
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    #@30
    move-result v1

    #@31
    if-eq v0, v1, :cond_40

    #@33
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    #@36
    move-result v1

    #@37
    if-ge v0, v1, :cond_40

    #@39
    .line 1655
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@40
    :cond_40
    return-void
.end method

.method protected releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z
    .registers 3

    #@0
    .line 975
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeAllTabs()V
    .registers 3

    #@0
    .line 1053
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_10

    #@a
    .line 1054
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_8

    #@10
    .line 1057
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2c

    #@1c
    .line 1058
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@22
    .line 1059
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@25
    .line 1060
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->reset()V

    #@28
    .line 1061
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z

    #@2b
    goto :goto_16

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    .line 1064
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2f
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 937
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .registers 2

    #@0
    .line 925
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    #@3
    return-void
.end method

.method public removeTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 3

    #@0
    .line 1009
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@2
    if-ne v0, p0, :cond_c

    #@4
    .line 1013
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->removeTabAt(I)V

    #@b
    return-void

    #@c
    .line 1010
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v0, "Tab does not belong to this TabLayout."

    #@10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw p1
.end method

.method public removeTabAt(I)V
    .registers 9

    #@0
    .line 1023
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_a

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@8
    move-result v0

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v0, v1

    #@b
    .line 1024
    :goto_b
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    #@e
    .line 1026
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@16
    if-eqz v2, :cond_1e

    #@18
    .line 1028
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->reset()V

    #@1b
    .line 1029
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z

    #@1e
    .line 1032
    :cond_1e
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v2

    #@24
    const/4 v3, -0x1

    #@25
    move v4, p1

    #@26
    :goto_26
    if-ge v4, v2, :cond_47

    #@28
    .line 1037
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@30
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@33
    move-result v5

    #@34
    iget v6, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@36
    if-ne v5, v6, :cond_39

    #@38
    move v3, v4

    #@39
    .line 1040
    :cond_39
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v5

    #@3f
    check-cast v5, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@41
    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    #@44
    add-int/lit8 v4, v4, 0x1

    #@46
    goto :goto_26

    #@47
    .line 1043
    :cond_47
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@49
    if-ne v0, p1, :cond_66

    #@4b
    .line 1046
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_55

    #@53
    const/4 p1, 0x0

    #@54
    goto :goto_63

    #@55
    :cond_55
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    #@57
    add-int/lit8 p1, p1, -0x1

    #@59
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@5c
    move-result p1

    #@5d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object p1

    #@61
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$Tab;

    #@63
    :goto_63
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@66
    :cond_66
    return-void
.end method

.method public selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1945
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    #@4
    return-void
.end method

.method public selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .registers 7

    #@0
    .line 1957
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@2
    if-ne v0, p1, :cond_11

    #@4
    if-eqz v0, :cond_44

    #@6
    .line 1961
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@9
    .line 1962
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@c
    move-result p1

    #@d
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    #@10
    goto :goto_44

    #@11
    :cond_11
    const/4 v1, -0x1

    #@12
    if-eqz p1, :cond_19

    #@14
    .line 1965
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@17
    move-result v2

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v2, v1

    #@1a
    :goto_1a
    if-eqz p2, :cond_34

    #@1c
    if-eqz v0, :cond_24

    #@1e
    .line 1967
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    #@21
    move-result p2

    #@22
    if-ne p2, v1, :cond_2c

    #@24
    :cond_24
    if-eq v2, v1, :cond_2c

    #@26
    const/4 p2, 0x0

    #@27
    const/4 v3, 0x1

    #@28
    .line 1970
    invoke-virtual {p0, v2, p2, v3}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    #@2b
    goto :goto_2f

    #@2c
    .line 1972
    :cond_2c
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    #@2f
    :goto_2f
    if-eq v2, v1, :cond_34

    #@31
    .line 1975
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    #@34
    .line 1980
    :cond_34
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    #@36
    if-eqz v0, :cond_3f

    #@38
    .line 1982
    iget-object p2, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    #@3a
    if-eqz p2, :cond_3f

    #@3c
    .line 1983
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@3f
    :cond_3f
    if-eqz p1, :cond_44

    #@41
    .line 1986
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    #@44
    :cond_44
    :goto_44
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    #@0
    .line 1757
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    #@3
    .line 1759
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    #@6
    return-void
.end method

.method public setInlineLabel(Z)V
    .registers 4

    #@0
    .line 1240
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@2
    if-eq v0, p1, :cond_24

    #@4
    .line 1241
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    #@6
    const/4 p1, 0x0

    #@7
    .line 1242
    :goto_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@c
    move-result v0

    #@d
    if-ge p1, v0, :cond_21

    #@f
    .line 1243
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@11
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 1244
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@17
    if-eqz v1, :cond_1e

    #@19
    .line 1245
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@1b
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateOrientation()V

    #@1e
    :cond_1e
    add-int/lit8 p1, p1, 0x1

    #@20
    goto :goto_7

    #@21
    .line 1248
    :cond_21
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    #@24
    :cond_24
    return-void
.end method

.method public setInlineLabelResource(I)V
    .registers 3

    #@0
    .line 1261
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    #@b
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 878
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 879
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    #@7
    .line 883
    :cond_7
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 885
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    #@e
    :cond_e
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 867
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    #@3
    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .registers 5

    #@0
    .line 1623
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 1625
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@b
    .line 1628
    :cond_b
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@d
    if-eqz p2, :cond_21

    #@f
    if-eqz p1, :cond_21

    #@11
    .line 1632
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    #@13
    if-nez p2, :cond_1c

    #@15
    .line 1633
    new-instance p2, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;

    #@17
    invoke-direct {p2, p0}, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    #@1a
    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    #@1c
    .line 1635
    :cond_1c
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    #@1e
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@21
    .line 1639
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    #@24
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    #@0
    .line 1908
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    #@3
    .line 1909
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@5
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@8
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 731
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    #@4
    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .registers 7

    #@0
    int-to-float v0, p1

    #@1
    add-float/2addr v0, p2

    #@2
    .line 751
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_38

    #@8
    .line 752
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@a
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@d
    move-result v1

    #@e
    if-lt v0, v1, :cond_11

    #@10
    goto :goto_38

    #@11
    :cond_11
    if-eqz p4, :cond_18

    #@13
    .line 758
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@15
    invoke-virtual {p4, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    #@18
    .line 762
    :cond_18
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@1a
    if-eqz p4, :cond_27

    #@1c
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@1f
    move-result p4

    #@20
    if-eqz p4, :cond_27

    #@22
    .line 763
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    #@24
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    #@27
    :cond_27
    const/4 p4, 0x0

    #@28
    if-gez p1, :cond_2c

    #@2a
    move p1, p4

    #@2b
    goto :goto_30

    #@2c
    .line 765
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    #@2f
    move-result p1

    #@30
    :goto_30
    invoke-virtual {p0, p1, p4}, Lcom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    #@33
    if-eqz p3, :cond_38

    #@35
    .line 769
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    #@38
    :cond_38
    :goto_38
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 1472
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    .line 1471
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    #@d
    goto :goto_12

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    .line 1474
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    #@12
    :goto_12
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    .line 1448
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    #@4
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    #@7
    .line 1450
    :cond_7
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@11
    .line 1451
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    #@13
    invoke-static {p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@16
    .line 1453
    iget p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorHeight:I

    #@18
    const/4 v0, -0x1

    #@19
    if-ne p1, v0, :cond_21

    #@1b
    .line 1454
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@20
    move-result p1

    #@21
    .line 1456
    :cond_21
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@23
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    #@26
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 3

    #@0
    .line 700
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    #@2
    .line 701
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@4
    invoke-static {v0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@7
    const/4 p1, 0x0

    #@8
    .line 702
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    #@b
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .registers 3

    #@0
    .line 1137
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    #@2
    if-eq v0, p1, :cond_b

    #@4
    .line 1138
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    #@6
    .line 1139
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@8
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@b
    :cond_b
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 715
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorHeight:I

    #@2
    .line 716
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    #@7
    return-void
.end method

.method public setTabGravity(I)V
    .registers 3

    #@0
    .line 1106
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1107
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@6
    .line 1108
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    #@9
    :cond_9
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1353
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1354
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    #@6
    .line 1355
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    #@9
    :cond_9
    return-void
.end method

.method public setTabIconTintResource(I)V
    .registers 3

    #@0
    .line 1366
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    #@b
    return-void
.end method

.method public setTabIndicatorAnimationMode(I)V
    .registers 4

    #@0
    .line 1168
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationMode:I

    #@2
    if-eqz p1, :cond_33

    #@4
    const/4 v0, 0x1

    #@5
    if-eq p1, v0, :cond_2b

    #@7
    const/4 v0, 0x2

    #@8
    if-ne p1, v0, :cond_12

    #@a
    .line 1177
    new-instance p1, Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;

    #@c
    invoke-direct {p1}, Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;-><init>()V

    #@f
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    #@11
    goto :goto_3a

    #@12
    .line 1180
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p1

    #@1d
    const-string v1, " is not a valid TabIndicatorAnimationMode"

    #@1f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p1

    #@23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1174
    :cond_2b
    new-instance p1, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;

    #@2d
    invoke-direct {p1}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;-><init>()V

    #@30
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    #@32
    goto :goto_3a

    #@33
    .line 1171
    :cond_33
    new-instance p1, Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    #@35
    invoke-direct {p1}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    #@38
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    #@3a
    :goto_3a
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .registers 2

    #@0
    .line 1215
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    #@2
    .line 1216
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@4
    # invokes: Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$100(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)V

    #@7
    .line 1217
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@9
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@c
    return-void
.end method

.method public setTabMode(I)V
    .registers 3

    #@0
    .line 1083
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 1084
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@6
    .line 1085
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    #@9
    :cond_9
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    #@0
    .line 1397
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_25

    #@4
    .line 1398
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    #@6
    const/4 p1, 0x0

    #@7
    .line 1399
    :goto_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@c
    move-result v0

    #@d
    if-ge p1, v0, :cond_25

    #@f
    .line 1400
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@11
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 1401
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@17
    if-eqz v1, :cond_22

    #@19
    .line 1402
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@1b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$200(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    #@22
    :cond_22
    add-int/lit8 p1, p1, 0x1

    #@24
    goto :goto_7

    #@25
    :cond_25
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .registers 3

    #@0
    .line 1418
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    #@b
    return-void
.end method

.method public setTabTextColors(II)V
    .registers 3

    #@0
    .line 1344
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1325
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1326
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    #@6
    .line 1327
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    #@9
    :cond_9
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1575
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    #@4
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .registers 4

    #@0
    .line 1285
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    #@2
    if-eq v0, p1, :cond_25

    #@4
    .line 1286
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    #@6
    const/4 p1, 0x0

    #@7
    .line 1287
    :goto_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@c
    move-result v0

    #@d
    if-ge p1, v0, :cond_25

    #@f
    .line 1288
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@11
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 1289
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@17
    if-eqz v1, :cond_22

    #@19
    .line 1290
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    #@1b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    # invokes: Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$200(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    #@22
    :cond_22
    add-int/lit8 p1, p1, 0x1

    #@24
    goto :goto_7

    #@25
    :cond_25
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .registers 3

    #@0
    .line 1305
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    #@b
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1487
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    #@4
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1507
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    #@4
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    #@0
    .line 1585
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabScrollRange()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method updateTabViews(Z)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 2081
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@3
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_27

    #@9
    .line 2082
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    #@b
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    .line 2083
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    #@16
    .line 2084
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    #@1c
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    #@1f
    if-eqz p1, :cond_24

    #@21
    .line 2086
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    #@24
    :cond_24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_1

    #@27
    :cond_27
    return-void
.end method

.method updateViewPagerScrollState(I)V
    .registers 2

    #@0
    .line 1579
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPagerScrollState:I

    #@2
    return-void
.end method
