.class public Lcom/google/android/material/search/SearchView;
.super Landroid/widget/FrameLayout;
.source "SearchView.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchView$SavedState;,
        Lcom/google/android/material/search/SearchView$TransitionState;,
        Lcom/google/android/material/search/SearchView$TransitionListener;,
        Lcom/google/android/material/search/SearchView$Behavior;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final TALKBACK_FOCUS_CHANGE_DELAY_MS:J = 0x64L


# instance fields
.field private animatedMenuItems:Z

.field private animatedNavigationIcon:Z

.field private autoShowKeyboard:Z

.field final backgroundView:Landroid/view/View;

.field private childImportantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final clearButton:Landroid/widget/ImageButton;

.field final contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

.field final divider:Landroid/view/View;

.field final dummyToolbar:Landroidx/appcompat/widget/Toolbar;

.field final editText:Landroid/widget/EditText;

.field private final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field final headerContainer:Landroid/widget/FrameLayout;

.field private final layoutInflated:Z

.field final rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field final scrim:Landroid/view/View;

.field private searchBar:Lcom/google/android/material/search/SearchBar;

.field final searchPrefix:Landroid/widget/TextView;

.field private final searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field private softInputMode:I

.field final statusBarSpacer:Landroid/view/View;

.field private statusBarSpacerEnabledOverride:Z

.field final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

.field final toolbarContainer:Landroid/widget/FrameLayout;

.field private final transitionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/search/SearchView$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private useWindowInsetsController:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 124
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SearchView:I

    #@2
    sput v0, Lcom/google/android/material/search/SearchView;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 156
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 160
    sget v0, Lcom/google/android/material/R$attr;->materialSearchViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    #@0
    .line 164
    sget v4, Lcom/google/android/material/search/SearchView;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 143
    new-instance p1, Ljava/util/LinkedHashSet;

    #@b
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    #@10
    const/16 p1, 0x10

    #@12
    .line 146
    iput p1, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    #@14
    .line 152
    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@16
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@18
    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getContext()Landroid/content/Context;

    #@1b
    move-result-object p1

    #@1c
    .line 168
    sget-object v2, Lcom/google/android/material/R$styleable;->SearchView:[I

    #@1e
    const/4 v6, 0x0

    #@1f
    new-array v5, v6, [I

    #@21
    move-object v0, p1

    #@22
    move-object v1, p2

    #@23
    move v3, p3

    #@24
    .line 169
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@27
    move-result-object p2

    #@28
    .line 172
    sget p3, Lcom/google/android/material/R$styleable;->SearchView_headerLayout:I

    #@2a
    const/4 v0, -0x1

    #@2b
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2e
    move-result p3

    #@2f
    .line 173
    sget v1, Lcom/google/android/material/R$styleable;->SearchView_android_textAppearance:I

    #@31
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@34
    move-result v0

    #@35
    .line 174
    sget v1, Lcom/google/android/material/R$styleable;->SearchView_android_text:I

    #@37
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 175
    sget v2, Lcom/google/android/material/R$styleable;->SearchView_android_hint:I

    #@3d
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 176
    sget v3, Lcom/google/android/material/R$styleable;->SearchView_searchPrefixText:I

    #@43
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 177
    sget v4, Lcom/google/android/material/R$styleable;->SearchView_useDrawerArrowDrawable:I

    #@49
    .line 178
    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4c
    move-result v4

    #@4d
    .line 179
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_animateNavigationIcon:I

    #@4f
    const/4 v7, 0x1

    #@50
    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@53
    move-result v5

    #@54
    iput-boolean v5, p0, Lcom/google/android/material/search/SearchView;->animatedNavigationIcon:Z

    #@56
    .line 180
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_animateMenuItems:I

    #@58
    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5b
    move-result v5

    #@5c
    iput-boolean v5, p0, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    #@5e
    .line 181
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_hideNavigationIcon:I

    #@60
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@63
    move-result v5

    #@64
    .line 182
    sget v6, Lcom/google/android/material/R$styleable;->SearchView_autoShowKeyboard:I

    #@66
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@69
    move-result v6

    #@6a
    iput-boolean v6, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    #@6c
    .line 184
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@6f
    .line 186
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@72
    move-result-object p2

    #@73
    sget v6, Lcom/google/android/material/R$layout;->mtrl_search_view:I

    #@75
    invoke-virtual {p2, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@78
    .line 187
    iput-boolean v7, p0, Lcom/google/android/material/search/SearchView;->layoutInflated:Z

    #@7a
    .line 189
    sget p2, Lcom/google/android/material/R$id;->search_view_scrim:I

    #@7c
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@7f
    move-result-object p2

    #@80
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->scrim:Landroid/view/View;

    #@82
    .line 190
    sget p2, Lcom/google/android/material/R$id;->search_view_root:I

    #@84
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@87
    move-result-object p2

    #@88
    check-cast p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@8a
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@8c
    .line 191
    sget p2, Lcom/google/android/material/R$id;->search_view_background:I

    #@8e
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@91
    move-result-object p2

    #@92
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->backgroundView:Landroid/view/View;

    #@94
    .line 192
    sget p2, Lcom/google/android/material/R$id;->search_view_status_bar_spacer:I

    #@96
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@99
    move-result-object p2

    #@9a
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    #@9c
    .line 193
    sget p2, Lcom/google/android/material/R$id;->search_view_header_container:I

    #@9e
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@a1
    move-result-object p2

    #@a2
    check-cast p2, Landroid/widget/FrameLayout;

    #@a4
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@a6
    .line 194
    sget p2, Lcom/google/android/material/R$id;->search_view_toolbar_container:I

    #@a8
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@ab
    move-result-object p2

    #@ac
    check-cast p2, Landroid/widget/FrameLayout;

    #@ae
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbarContainer:Landroid/widget/FrameLayout;

    #@b0
    .line 195
    sget p2, Lcom/google/android/material/R$id;->search_view_toolbar:I

    #@b2
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@b5
    move-result-object p2

    #@b6
    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    #@b8
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@ba
    .line 196
    sget p2, Lcom/google/android/material/R$id;->search_view_dummy_toolbar:I

    #@bc
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@bf
    move-result-object p2

    #@c0
    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    #@c2
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@c4
    .line 197
    sget p2, Lcom/google/android/material/R$id;->search_view_search_prefix:I

    #@c6
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@c9
    move-result-object p2

    #@ca
    check-cast p2, Landroid/widget/TextView;

    #@cc
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    #@ce
    .line 198
    sget p2, Lcom/google/android/material/R$id;->search_view_edit_text:I

    #@d0
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@d3
    move-result-object p2

    #@d4
    check-cast p2, Landroid/widget/EditText;

    #@d6
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@d8
    .line 199
    sget p2, Lcom/google/android/material/R$id;->search_view_clear_button:I

    #@da
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@dd
    move-result-object p2

    #@de
    check-cast p2, Landroid/widget/ImageButton;

    #@e0
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    #@e2
    .line 200
    sget p2, Lcom/google/android/material/R$id;->search_view_divider:I

    #@e4
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@e7
    move-result-object p2

    #@e8
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    #@ea
    .line 201
    sget p2, Lcom/google/android/material/R$id;->search_view_content_container:I

    #@ec
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->findViewById(I)Landroid/view/View;

    #@ef
    move-result-object p2

    #@f0
    check-cast p2, Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@f2
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@f4
    .line 203
    new-instance p2, Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@f6
    invoke-direct {p2, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@f9
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@fb
    .line 204
    new-instance p2, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@fd
    invoke-direct {p2, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    #@100
    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@102
    .line 206
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpRootView()V

    #@105
    .line 207
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay()V

    #@108
    .line 208
    invoke-direct {p0, p3}, Lcom/google/android/material/search/SearchView;->setUpHeaderLayout(I)V

    #@10b
    .line 209
    invoke-virtual {p0, v3}, Lcom/google/android/material/search/SearchView;->setSearchPrefixText(Ljava/lang/CharSequence;)V

    #@10e
    .line 210
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/search/SearchView;->setUpEditText(ILjava/lang/String;Ljava/lang/String;)V

    #@111
    .line 211
    invoke-direct {p0, v4, v5}, Lcom/google/android/material/search/SearchView;->setUpBackButton(ZZ)V

    #@114
    .line 212
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpClearButton()V

    #@117
    .line 213
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpContentOnTouchListener()V

    #@11a
    .line 214
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpInsetListeners()V

    #@11d
    return-void
.end method

.method private getActivityWindow()Landroid/view/Window;
    .registers 2

    #@0
    .line 255
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_10

    #@c
    .line 256
    :cond_c
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@f
    move-result-object v0

    #@10
    :goto_10
    return-object v0
.end method

.method private getOverlayElevation()F
    .registers 3

    #@0
    .line 278
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 279
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getCompatElevation()F

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 281
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v0

    #@d
    sget v1, Lcom/google/android/material/R$dimen;->m3_searchview_elevation:I

    #@f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    #@12
    move-result v0

    #@13
    return v0
.end method

.method private getStatusBarHeight()I
    .registers 5

    #@0
    .line 362
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const-string v1, "dimen"

    #@6
    const-string v2, "android"

    #@8
    const-string v3, "status_bar_height"

    #@a
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_19

    #@10
    .line 364
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@17
    move-result v0

    #@18
    return v0

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method private isNavigationIconDrawerArrowDrawable(Landroidx/appcompat/widget/Toolbar;)Z
    .registers 2

    #@0
    .line 400
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    instance-of p1, p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@a
    return p1
.end method

.method static synthetic lambda$setUpDividerInsetListener$6(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    #@0
    .line 458
    invoke-virtual {p4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@3
    move-result p3

    #@4
    add-int/2addr p1, p3

    #@5
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@7
    .line 459
    invoke-virtual {p4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@a
    move-result p1

    #@b
    add-int/2addr p2, p1

    #@c
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@e
    return-object p4
.end method

.method static synthetic lambda$setUpRootView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    const/4 p0, 0x1

    #@1
    return p0
.end method

.method private setStatusBarSpacerEnabledInternal(Z)V
    .registers 3

    #@0
    .line 699
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    #@2
    if-eqz p1, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    goto :goto_8

    #@6
    :cond_6
    const/16 p1, 0x8

    #@8
    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    #@b
    return-void
.end method

.method private setUpBackButton(ZZ)V
    .registers 4

    #@0
    if-eqz p2, :cond_9

    #@2
    .line 303
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@4
    const/4 p2, 0x0

    #@5
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void

    #@9
    .line 307
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@b
    new-instance v0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda2;

    #@d
    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@10
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    #@13
    if-eqz p1, :cond_2c

    #@15
    .line 310
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@17
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getContext()Landroid/content/Context;

    #@1a
    move-result-object p2

    #@1b
    invoke-direct {p1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    #@1e
    .line 311
    sget p2, Lcom/google/android/material/R$attr;->colorOnSurface:I

    #@20
    invoke-static {p0, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@23
    move-result p2

    #@24
    invoke-virtual {p1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    #@27
    .line 312
    iget-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@29
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@2c
    :cond_2c
    return-void
.end method

.method private setUpBackgroundViewElevationOverlay()V
    .registers 2

    #@0
    .line 265
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getOverlayElevation()F

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay(F)V

    #@7
    return-void
.end method

.method private setUpBackgroundViewElevationOverlay(F)V
    .registers 4

    #@0
    .line 269
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->backgroundView:Landroid/view/View;

    #@6
    if-nez v1, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 273
    :cond_9
    invoke-virtual {v0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayWithThemeSurfaceColorIfNeeded(F)I

    #@c
    move-result p1

    #@d
    .line 274
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->backgroundView:Landroid/view/View;

    #@f
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    #@12
    :cond_12
    :goto_12
    return-void
.end method

.method private setUpClearButton()V
    .registers 3

    #@0
    .line 317
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    #@2
    new-instance v1, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda7;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@a
    .line 323
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@c
    new-instance v1, Lcom/google/android/material/search/SearchView$1;

    #@e
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$1;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@14
    return-void
.end method

.method private setUpContentOnTouchListener()V
    .registers 3

    #@0
    .line 340
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@2
    new-instance v1, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@a
    return-void
.end method

.method private setUpDividerInsetListener()V
    .registers 6

    #@0
    .line 452
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    .line 453
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@a
    .line 454
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@c
    .line 455
    iget-object v3, p0, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    #@e
    new-instance v4, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda3;

    #@10
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda3;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    #@13
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@16
    return-void
.end method

.method private setUpEditText(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_8

    #@3
    .line 295
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@5
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@8
    .line 297
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@a
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@d
    .line 298
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@f
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@12
    return-void
.end method

.method private setUpHeaderLayout(I)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_15

    #@3
    .line 288
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@11
    move-result-object p1

    #@12
    .line 289
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->addHeaderView(Landroid/view/View;)V

    #@15
    :cond_15
    return-void
.end method

.method private setUpInsetListeners()V
    .registers 1

    #@0
    .line 415
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpToolbarInsetListener()V

    #@3
    .line 416
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpDividerInsetListener()V

    #@6
    .line 417
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacerInsetListener()V

    #@9
    return-void
.end method

.method private setUpRootView()V
    .registers 3

    #@0
    .line 261
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@2
    new-instance v1, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda1;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda1;-><init>()V

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@a
    return-void
.end method

.method private setUpStatusBarSpacer(I)V
    .registers 3

    #@0
    .line 350
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@8
    if-eq v0, p1, :cond_17

    #@a
    .line 351
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    #@c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v0

    #@10
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@12
    .line 352
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    #@14
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    #@17
    :cond_17
    return-void
.end method

.method private setUpStatusBarSpacerInsetListener()V
    .registers 3

    #@0
    .line 436
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getStatusBarHeight()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacer(I)V

    #@7
    .line 439
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    #@9
    new-instance v1, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;

    #@b
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@e
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@11
    return-void
.end method

.method private setUpToolbarInsetListener()V
    .registers 3

    #@0
    .line 421
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    new-instance v1, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda8;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@7
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@a
    return-void
.end method

.method private updateChildImportantForAccessibility(Landroid/view/ViewGroup;Z)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 855
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_50

    #@7
    .line 856
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    if-ne v1, p0, :cond_e

    #@d
    goto :goto_4d

    #@e
    .line 861
    :cond_e
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@10
    invoke-virtual {v2}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getId()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_20

    #@1a
    .line 863
    check-cast v1, Landroid/view/ViewGroup;

    #@1c
    invoke-direct {p0, v1, p2}, Lcom/google/android/material/search/SearchView;->updateChildImportantForAccessibility(Landroid/view/ViewGroup;Z)V

    #@1f
    goto :goto_4d

    #@20
    :cond_20
    if-nez p2, :cond_3c

    #@22
    .line 868
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    #@24
    if-eqz v2, :cond_4d

    #@26
    .line 869
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_4d

    #@2c
    .line 871
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    #@2e
    .line 872
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Ljava/lang/Integer;

    #@34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v2

    #@38
    .line 871
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@3b
    goto :goto_4d

    #@3c
    .line 877
    :cond_3c
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    #@3e
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    #@41
    move-result v3

    #@42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v3

    #@46
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    const/4 v2, 0x4

    #@4a
    .line 880
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@4d
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_1

    #@50
    :cond_50
    return-void
.end method

.method private updateNavigationIconIfNeeded()V
    .registers 5

    #@0
    .line 375
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 379
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->isNavigationIconDrawerArrowDrawable(Landroidx/appcompat/widget/Toolbar;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_c

    #@b
    return-void

    #@c
    .line 383
    :cond_c
    sget v0, Lcom/google/android/material/R$drawable;->ic_arrow_back_black_24:I

    #@e
    .line 384
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@10
    if-nez v1, :cond_18

    #@12
    .line 385
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@14
    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(I)V

    #@17
    goto :goto_50

    #@18
    .line 389
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v0

    #@24
    .line 388
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v0

    #@28
    .line 390
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2a
    invoke-virtual {v1}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIconTint()Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_3d

    #@30
    .line 391
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@32
    invoke-virtual {v1}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIconTint()Ljava/lang/Integer;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v1

    #@3a
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@3d
    .line 393
    :cond_3d
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@3f
    new-instance v2, Lcom/google/android/material/internal/FadeThroughDrawable;

    #@41
    iget-object v3, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@43
    .line 394
    invoke-virtual {v3}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3, v0}, Lcom/google/android/material/internal/FadeThroughDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@4a
    .line 393
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@4d
    .line 395
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->updateNavigationIconProgressIfNeeded()V

    #@50
    :goto_50
    return-void
.end method

.method private updateNavigationIconProgressIfNeeded()V
    .registers 5

    #@0
    .line 769
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 774
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@b
    invoke-virtual {v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getVisibility()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_13

    #@11
    const/4 v1, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v1, 0x0

    #@14
    .line 775
    :goto_14
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v0

    #@1c
    .line 776
    instance-of v2, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@1e
    if-eqz v2, :cond_27

    #@20
    .line 777
    move-object v2, v0

    #@21
    check-cast v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@23
    int-to-float v3, v1

    #@24
    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    #@27
    .line 779
    :cond_27
    instance-of v2, v0, Lcom/google/android/material/internal/FadeThroughDrawable;

    #@29
    if-eqz v2, :cond_31

    #@2b
    .line 780
    check-cast v0, Lcom/google/android/material/internal/FadeThroughDrawable;

    #@2d
    int-to-float v1, v1

    #@2e
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    #@31
    :cond_31
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 493
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@5
    .line 494
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@7
    const/4 v0, 0x0

    #@8
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@b
    return-void
.end method

.method public addTransitionListener(Lcom/google/android/material/search/SearchView$TransitionListener;)V
    .registers 3

    #@0
    .line 575
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    .line 219
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->layoutInflated:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 220
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@9
    goto :goto_d

    #@a
    .line 222
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@d
    :goto_d
    return-void
.end method

.method public clearFocusAndHideKeyboard()V
    .registers 3

    #@0
    .line 810
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    new-instance v1, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda9;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    #@a
    return-void
.end method

.method public clearText()V
    .registers 3

    #@0
    .line 644
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    const-string v1, ""

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@7
    return-void
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/search/SearchView;",
            ">;"
        }
    .end annotation

    #@0
    .line 250
    new-instance v0, Lcom/google/android/material/search/SearchView$Behavior;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/search/SearchView$Behavior;-><init>()V

    #@5
    return-object v0
.end method

.method public getCurrentTransitionState()Lcom/google/android/material/search/SearchView$TransitionState;
    .registers 2

    #@0
    .line 705
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@2
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    #@0
    .line 621
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 650
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSearchPrefix()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 597
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method public getSearchPrefixText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 609
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSoftInputMode()I
    .registers 2

    #@0
    .line 666
    iget v0, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    #@2
    return v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 2

    #@0
    .line 628
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .registers 2

    #@0
    .line 615
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    return-object v0
.end method

.method public hide()V
    .registers 3

    #@0
    .line 749
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@2
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView$TransitionState;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1e

    #@a
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@c
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDING:Lcom/google/android/material/search/SearchView$TransitionState;

    #@e
    .line 750
    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView$TransitionState;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_1e

    #@15
    .line 753
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@17
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->hide()V

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 754
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchView;->setModalForAccessibility(Z)V

    #@1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public inflateMenu(I)V
    .registers 3

    #@0
    .line 585
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->inflateMenu(I)V

    #@5
    return-void
.end method

.method isAdjustNothingSoftInputMode()Z
    .registers 3

    #@0
    .line 821
    iget v0, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    #@2
    const/16 v1, 0x30

    #@4
    if-ne v0, v1, :cond_8

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

.method public isAnimatedNavigationIcon()Z
    .registers 2

    #@0
    .line 524
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->animatedNavigationIcon:Z

    #@2
    return v0
.end method

.method public isAutoShowKeyboard()Z
    .registers 2

    #@0
    .line 550
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    #@2
    return v0
.end method

.method public isMenuItemsAnimated()Z
    .registers 2

    #@0
    .line 540
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    #@2
    return v0
.end method

.method public isSetupWithSearchBar()Z
    .registers 2

    #@0
    .line 466
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

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

.method public isShowing()Z
    .registers 3

    #@0
    .line 723
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@2
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView$TransitionState;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_17

    #@a
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@c
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    #@e
    .line 724
    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView$TransitionState;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    const/4 v0, 0x1

    #@18
    :goto_18
    return v0
.end method

.method public isUseWindowInsetsController()Z
    .registers 2

    #@0
    .line 570
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    #@2
    return v0
.end method

.method synthetic lambda$clearFocusAndHideKeyboard$9$com-google-android-material-search-SearchView()V
    .registers 3

    #@0
    .line 812
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    #@5
    .line 813
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 814
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->requestFocus()Z

    #@c
    .line 816
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@e
    iget-boolean v1, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    #@10
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;Z)V

    #@13
    return-void
.end method

.method synthetic lambda$requestFocusAndShowKeyboard$8$com-google-android-material-search-SearchView()V
    .registers 3

    #@0
    .line 799
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 801
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@a
    const/16 v1, 0x8

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    #@f
    .line 803
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@11
    iget-boolean v1, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    #@13
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->showKeyboard(Landroid/view/View;Z)V

    #@16
    return-void
.end method

.method synthetic lambda$setUpBackButton$1$com-google-android-material-search-SearchView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 307
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->hide()V

    #@3
    return-void
.end method

.method synthetic lambda$setUpClearButton$2$com-google-android-material-search-SearchView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 319
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->clearText()V

    #@3
    .line 320
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    #@6
    return-void
.end method

.method synthetic lambda$setUpContentOnTouchListener$3$com-google-android-material-search-SearchView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 342
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 343
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method synthetic lambda$setUpStatusBarSpacerInsetListener$5$com-google-android-material-search-SearchView(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    #@0
    .line 442
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@3
    move-result p1

    #@4
    .line 443
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacer(I)V

    #@7
    .line 444
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacerEnabledOverride:Z

    #@9
    if-nez v0, :cond_13

    #@b
    if-lez p1, :cond_f

    #@d
    const/4 p1, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    .line 445
    :goto_10
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setStatusBarSpacerEnabledInternal(Z)V

    #@13
    :cond_13
    return-object p2
.end method

.method synthetic lambda$setUpToolbarInsetListener$4$com-google-android-material-search-SearchView(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 8

    #@0
    .line 424
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 425
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@a
    goto :goto_d

    #@b
    :cond_b
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@d
    :goto_d
    if-eqz p1, :cond_12

    #@f
    .line 426
    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@11
    goto :goto_14

    #@12
    :cond_12
    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@14
    .line 427
    :goto_14
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@16
    .line 428
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@19
    move-result v2

    #@1a
    add-int/2addr v0, v2

    #@1b
    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    #@1d
    .line 429
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@20
    move-result v3

    #@21
    add-int/2addr p1, v3

    #@22
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@24
    .line 427
    invoke-virtual {v1, v0, v2, p1, p3}, Lcom/google/android/material/appbar/MaterialToolbar;->setPadding(IIII)V

    #@27
    return-object p2
.end method

.method synthetic lambda$setupWithSearchBar$7$com-google-android-material-search-SearchView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 479
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->show()V

    #@3
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    #@0
    .line 242
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 244
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    #@6
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    #@0
    .line 228
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    #@3
    .line 230
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->updateSoftInputMode()V

    #@6
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 935
    instance-of v0, p1, Lcom/google/android/material/search/SearchView$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 936
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 940
    :cond_8
    check-cast p1, Lcom/google/android/material/search/SearchView$SavedState;

    #@a
    .line 941
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 942
    iget-object v0, p1, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    #@13
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchView;->setText(Ljava/lang/CharSequence;)V

    #@16
    .line 943
    iget p1, p1, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    #@18
    if-nez p1, :cond_1c

    #@1a
    const/4 p1, 0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    :goto_1d
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setVisible(Z)V

    #@20
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 926
    new-instance v0, Lcom/google/android/material/search/SearchView$SavedState;

    #@2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 927
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getText()Landroid/text/Editable;

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_11

    #@f
    const/4 v1, 0x0

    #@10
    goto :goto_15

    #@11
    .line 928
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :goto_15
    iput-object v1, v0, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    #@17
    .line 929
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@19
    invoke-virtual {v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getVisibility()I

    #@1c
    move-result v1

    #@1d
    iput v1, v0, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    #@1f
    return-object v0
.end method

.method public removeAllHeaderViews()V
    .registers 3

    #@0
    .line 507
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 508
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@7
    const/16 v1, 0x8

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@c
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 499
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    #@5
    .line 500
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@7
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    #@a
    move-result p1

    #@b
    if-nez p1, :cond_14

    #@d
    .line 501
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@f
    const/16 v0, 0x8

    #@11
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@14
    :cond_14
    return-void
.end method

.method public removeTransitionListener(Lcom/google/android/material/search/SearchView$TransitionListener;)V
    .registers 3

    #@0
    .line 580
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public requestFocusAndShowKeyboard()V
    .registers 5

    #@0
    .line 797
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    new-instance v1, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@7
    const-wide/16 v2, 0x64

    #@9
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c
    return-void
.end method

.method requestFocusAndShowKeyboardIfNeeded()V
    .registers 2

    #@0
    .line 789
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 790
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboard()V

    #@7
    :cond_7
    return-void
.end method

.method public setAnimatedNavigationIcon(Z)V
    .registers 2

    #@0
    .line 516
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->animatedNavigationIcon:Z

    #@2
    return-void
.end method

.method public setAutoShowKeyboard(Z)V
    .registers 2

    #@0
    .line 545
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    #@2
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    #@0
    .line 236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    #@3
    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay(F)V

    #@6
    return-void
.end method

.method public setHint(I)V
    .registers 3

    #@0
    .line 660
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    #@5
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 655
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setMenuItemsAnimated(Z)V
    .registers 2

    #@0
    .line 532
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    #@2
    return-void
.end method

.method public setModalForAccessibility(Z)V
    .registers 5

    #@0
    .line 829
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getRootView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup;

    #@6
    if-eqz p1, :cond_13

    #@8
    .line 832
    new-instance v1, Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v2

    #@e
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    #@11
    iput-object v1, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    #@13
    .line 834
    :cond_13
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/SearchView;->updateChildImportantForAccessibility(Landroid/view/ViewGroup;Z)V

    #@16
    if-nez p1, :cond_1b

    #@18
    const/4 p1, 0x0

    #@19
    .line 838
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    #@1b
    :cond_1b
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 3

    #@0
    .line 591
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    #@5
    return-void
.end method

.method public setSearchPrefixText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 602
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 603
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    #@7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_10

    #@d
    const/16 p1, 0x8

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p1, 0x0

    #@11
    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    #@14
    return-void
.end method

.method public setStatusBarSpacerEnabled(Z)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 694
    iput-boolean v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacerEnabledOverride:Z

    #@3
    .line 695
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setStatusBarSpacerEnabledInternal(Z)V

    #@6
    return-void
.end method

.method public setText(I)V
    .registers 3

    #@0
    .line 639
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    #@5
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 634
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setToolbarTouchscreenBlocksFocus(Z)V
    .registers 3

    #@0
    .line 849
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setTouchscreenBlocksFocus(Z)V

    #@5
    return-void
.end method

.method setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V
    .registers 5

    #@0
    .line 709
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchView$TransitionState;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 713
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@b
    .line 714
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@d
    .line 715
    new-instance v1, Ljava/util/LinkedHashSet;

    #@f
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    #@11
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    #@14
    .line 716
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_28

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/google/android/material/search/SearchView$TransitionListener;

    #@24
    .line 717
    invoke-interface {v2, p0, v0, p1}, Lcom/google/android/material/search/SearchView$TransitionListener;->onStateChanged(Lcom/google/android/material/search/SearchView;Lcom/google/android/material/search/SearchView$TransitionState;Lcom/google/android/material/search/SearchView$TransitionState;)V

    #@27
    goto :goto_18

    #@28
    :cond_28
    return-void
.end method

.method public setUseWindowInsetsController(Z)V
    .registers 2

    #@0
    .line 560
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    #@2
    return-void
.end method

.method public setVisible(Z)V
    .registers 5

    #@0
    .line 759
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getVisibility()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    move v0, v1

    #@c
    .line 760
    :goto_c
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@e
    if-eqz p1, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/16 v1, 0x8

    #@13
    :goto_13
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    #@16
    .line 761
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->updateNavigationIconProgressIfNeeded()V

    #@19
    if-eq v0, p1, :cond_1e

    #@1b
    .line 763
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setModalForAccessibility(Z)V

    #@1e
    :cond_1e
    if-eqz p1, :cond_23

    #@20
    .line 765
    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@22
    goto :goto_25

    #@23
    :cond_23
    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@25
    :goto_25
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    #@28
    return-void
.end method

.method public setupWithSearchBar(Lcom/google/android/material/search/SearchBar;)V
    .registers 3

    #@0
    .line 476
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@2
    .line 477
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setSearchBar(Lcom/google/android/material/search/SearchBar;)V

    #@7
    if-eqz p1, :cond_11

    #@9
    .line 479
    new-instance v0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda6;

    #@b
    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@e
    invoke-virtual {p1, v0}, Lcom/google/android/material/search/SearchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@11
    .line 481
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->updateNavigationIconIfNeeded()V

    #@14
    .line 482
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay()V

    #@17
    return-void
.end method

.method public show()V
    .registers 3

    #@0
    .line 734
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@2
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView$TransitionState;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1e

    #@a
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    #@c
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    #@e
    .line 735
    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView$TransitionState;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_1e

    #@15
    .line 738
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@17
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->show()V

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 739
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchView;->setModalForAccessibility(Z)V

    #@1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public updateSoftInputMode()V
    .registers 2

    #@0
    .line 678
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getActivityWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 680
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@9
    move-result-object v0

    #@a
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@c
    iput v0, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    #@e
    :cond_e
    return-void
.end method
