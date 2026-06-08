.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field private final mBehaviorConsumed:[I

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 118
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 119
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    #@10
    .line 127
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

    #@12
    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    #@15
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    #@17
    const/4 v0, 0x2

    #@18
    new-array v0, v0, [Ljava/lang/Class;

    #@1a
    const/4 v1, 0x0

    #@1b
    .line 133
    const-class v2, Landroid/content/Context;

    #@1d
    aput-object v2, v0, v1

    #@1f
    const/4 v1, 0x1

    #@20
    const-class v2, Landroid/util/AttributeSet;

    #@22
    aput-object v2, v0, v1

    #@24
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    #@26
    .line 138
    new-instance v0, Ljava/lang/ThreadLocal;

    #@28
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@2b
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    #@2d
    .line 152
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    #@2f
    const/16 v1, 0xc

    #@31
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    #@34
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    #@36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 207
    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 211
    sget v0, Landroidx/coordinatorlayout/R$attr;->coordinatorLayoutStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    #@0
    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@a
    .line 169
    new-instance v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@c
    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@11
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    #@18
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    #@1f
    const/4 v0, 0x2

    #@20
    new-array v1, v0, [I

    #@22
    .line 178
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@24
    new-array v0, v0, [I

    #@26
    .line 182
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    #@28
    .line 203
    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    #@2a
    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    #@2d
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@2f
    const/4 v0, 0x0

    #@30
    if-nez p3, :cond_3b

    #@32
    .line 218
    sget-object v1, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    #@34
    sget v2, Landroidx/coordinatorlayout/R$style;->Widget_Support_CoordinatorLayout:I

    #@36
    .line 219
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@39
    move-result-object v1

    #@3a
    goto :goto_41

    #@3b
    :cond_3b
    sget-object v1, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    #@3d
    .line 221
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@40
    move-result-object v1

    #@41
    .line 223
    :goto_41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@43
    const/16 v3, 0x1d

    #@45
    if-lt v2, v3, :cond_61

    #@47
    if-nez p3, :cond_56

    #@49
    .line 225
    sget-object v4, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    #@4b
    const/4 v7, 0x0

    #@4c
    sget v8, Landroidx/coordinatorlayout/R$style;->Widget_Support_CoordinatorLayout:I

    #@4e
    move-object v2, p0

    #@4f
    move-object v3, p1

    #@50
    move-object v5, p2

    #@51
    move-object v6, v1

    #@52
    invoke-virtual/range {v2 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@55
    goto :goto_61

    #@56
    .line 229
    :cond_56
    sget-object v4, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    #@58
    const/4 v8, 0x0

    #@59
    move-object v2, p0

    #@5a
    move-object v3, p1

    #@5b
    move-object v5, p2

    #@5c
    move-object v6, v1

    #@5d
    move v7, p3

    #@5e
    invoke-virtual/range {v2 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@61
    .line 234
    :cond_61
    :goto_61
    sget p2, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_keylines:I

    #@63
    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@66
    move-result p2

    #@67
    if-eqz p2, :cond_8a

    #@69
    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6c
    move-result-object p1

    #@6d
    .line 237
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@70
    move-result-object p2

    #@71
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    #@73
    .line 238
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@76
    move-result-object p1

    #@77
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@79
    .line 239
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    #@7b
    array-length p2, p2

    #@7c
    :goto_7c
    if-ge v0, p2, :cond_8a

    #@7e
    .line 241
    iget-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    #@80
    aget v2, p3, v0

    #@82
    int-to-float v2, v2

    #@83
    mul-float/2addr v2, p1

    #@84
    float-to-int v2, v2

    #@85
    aput v2, p3, v0

    #@87
    add-int/lit8 v0, v0, 0x1

    #@89
    goto :goto_7c

    #@8a
    .line 244
    :cond_8a
    sget p1, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_statusBarBackground:I

    #@8c
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@8f
    move-result-object p1

    #@90
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@92
    .line 245
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@95
    .line 247
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    #@98
    .line 248
    new-instance p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;

    #@9a
    invoke-direct {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    #@9d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    #@a0
    .line 250
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@a3
    move-result p1

    #@a4
    if-nez p1, :cond_aa

    #@a6
    const/4 p1, 0x1

    #@a7
    .line 252
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@aa
    :cond_aa
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .registers 1

    #@0
    .line 156
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    #@2
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Rect;

    #@8
    if-nez v0, :cond_f

    #@a
    .line 158
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    :cond_f
    return-object v0
.end method

.method private static clamp(III)I
    .registers 3

    #@0
    if-ge p0, p1, :cond_3

    #@2
    return p1

    #@3
    :cond_3
    if-le p0, p2, :cond_6

    #@5
    return p2

    #@6
    :cond_6
    return p0
.end method

.method private constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .registers 10

    #@0
    .line 1066
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@3
    move-result v0

    #@4
    .line 1067
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@7
    move-result v1

    #@8
    .line 1070
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@b
    move-result v2

    #@c
    iget v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@e
    add-int/2addr v2, v3

    #@f
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@11
    .line 1072
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@14
    move-result v4

    #@15
    sub-int/2addr v0, v4

    #@16
    sub-int/2addr v0, p3

    #@17
    iget v4, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@19
    sub-int/2addr v0, v4

    #@1a
    .line 1071
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v0

    #@1e
    .line 1070
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v0

    #@22
    .line 1073
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@25
    move-result v2

    #@26
    iget v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    #@28
    add-int/2addr v2, v3

    #@29
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@2b
    .line 1075
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@2e
    move-result v4

    #@2f
    sub-int/2addr v1, v4

    #@30
    sub-int/2addr v1, p4

    #@31
    iget p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@33
    sub-int/2addr v1, p1

    #@34
    .line 1074
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    #@37
    move-result p1

    #@38
    .line 1073
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result p1

    #@3c
    add-int/2addr p3, v0

    #@3d
    add-int/2addr p4, p1

    #@3e
    .line 1077
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@41
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    #@0
    .line 854
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object p1

    #@7
    .line 858
    :cond_7
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_c
    if-ge v1, v0, :cond_32

    #@e
    .line 859
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    .line 860
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2f

    #@18
    .line 861
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@1e
    .line 862
    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_2f

    #@24
    .line 866
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    #@27
    move-result-object p1

    #@28
    .line 867
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2f

    #@2e
    goto :goto_32

    #@2f
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_c

    #@32
    :cond_32
    :goto_32
    return-object p1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V
    .registers 13

    #@0
    .line 992
    iget p1, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    #@2
    .line 993
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    #@5
    move-result p1

    #@6
    .line 992
    invoke-static {p1, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@9
    move-result p1

    #@a
    .line 994
    iget p5, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    #@c
    .line 995
    invoke-static {p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    #@f
    move-result p5

    #@10
    .line 994
    invoke-static {p5, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@13
    move-result p2

    #@14
    and-int/lit8 p5, p1, 0x7

    #@16
    and-int/lit8 p1, p1, 0x70

    #@18
    and-int/lit8 v0, p2, 0x7

    #@1a
    and-int/lit8 p2, p2, 0x70

    #@1c
    const/4 v1, 0x5

    #@1d
    const/4 v2, 0x1

    #@1e
    if-eq v0, v2, :cond_28

    #@20
    if-eq v0, v1, :cond_25

    #@22
    .line 1012
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@24
    goto :goto_31

    #@25
    .line 1015
    :cond_25
    iget v0, p3, Landroid/graphics/Rect;->right:I

    #@27
    goto :goto_31

    #@28
    .line 1018
    :cond_28
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@2a
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    #@2d
    move-result v3

    #@2e
    div-int/lit8 v3, v3, 0x2

    #@30
    add-int/2addr v0, v3

    #@31
    :goto_31
    const/16 v3, 0x50

    #@33
    const/16 v4, 0x10

    #@35
    if-eq p2, v4, :cond_3f

    #@37
    if-eq p2, v3, :cond_3c

    #@39
    .line 1025
    iget p2, p3, Landroid/graphics/Rect;->top:I

    #@3b
    goto :goto_48

    #@3c
    .line 1028
    :cond_3c
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    #@3e
    goto :goto_48

    #@3f
    .line 1031
    :cond_3f
    iget p2, p3, Landroid/graphics/Rect;->top:I

    #@41
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@44
    move-result p3

    #@45
    div-int/lit8 p3, p3, 0x2

    #@47
    add-int/2addr p2, p3

    #@48
    :goto_48
    if-eq p5, v2, :cond_4e

    #@4a
    if-eq p5, v1, :cond_51

    #@4c
    sub-int/2addr v0, p6

    #@4d
    goto :goto_51

    #@4e
    .line 1045
    :cond_4e
    div-int/lit8 p3, p6, 0x2

    #@50
    sub-int/2addr v0, p3

    #@51
    :cond_51
    :goto_51
    if-eq p1, v4, :cond_57

    #@53
    if-eq p1, v3, :cond_5a

    #@55
    sub-int/2addr p2, p7

    #@56
    goto :goto_5a

    #@57
    .line 1058
    :cond_57
    div-int/lit8 p1, p7, 0x2

    #@59
    sub-int/2addr p2, p1

    #@5a
    :cond_5a
    :goto_5a
    add-int/2addr p6, v0

    #@5b
    add-int/2addr p7, p2

    #@5c
    .line 1062
    invoke-virtual {p4, v0, p2, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    #@5f
    return-void
.end method

.method private getKeyline(I)I
    .registers 6

    #@0
    .line 600
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    #@2
    const/4 v1, 0x0

    #@3
    const-string v2, "CoordinatorLayout"

    #@5
    if-nez v0, :cond_24

    #@7
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v3, "No keylines defined for "

    #@b
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string v3, " - attempted index lookup "

    #@14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    return v1

    #@24
    :cond_24
    if-ltz p1, :cond_2d

    #@26
    .line 605
    array-length v3, v0

    #@27
    if-lt p1, v3, :cond_2a

    #@29
    goto :goto_2d

    #@2a
    .line 610
    :cond_2a
    aget p1, v0, p1

    #@2c
    return p1

    #@2d
    .line 606
    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f
    const-string v3, "Keyline index "

    #@31
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object p1

    #@38
    const-string v0, " out of range for "

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object p1

    #@42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object p1

    #@46
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    return v1
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 444
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@3
    .line 446
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    #@6
    move-result v0

    #@7
    .line 447
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v2, v1, -0x1

    #@d
    :goto_d
    if-ltz v2, :cond_21

    #@f
    if-eqz v0, :cond_16

    #@11
    .line 449
    invoke-virtual {p0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    #@14
    move-result v3

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v3, v2

    #@17
    .line 450
    :goto_17
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v3

    #@1b
    .line 451
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    add-int/lit8 v2, v2, -0x1

    #@20
    goto :goto_d

    #@21
    .line 454
    :cond_21
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    #@23
    if-eqz v0, :cond_28

    #@25
    .line 455
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@28
    :cond_28
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 1607
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@2
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method private layoutChild(Landroid/view/View;I)V
    .registers 12

    #@0
    .line 1193
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 1194
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@9
    move-result-object v7

    #@a
    .line 1195
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@d
    move-result v1

    #@e
    iget v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@10
    add-int/2addr v1, v2

    #@11
    .line 1196
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@14
    move-result v2

    #@15
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    #@17
    add-int/2addr v2, v3

    #@18
    .line 1197
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@1f
    move-result v4

    #@20
    sub-int/2addr v3, v4

    #@21
    iget v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@23
    sub-int/2addr v3, v4

    #@24
    .line 1198
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@27
    move-result v4

    #@28
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@2b
    move-result v5

    #@2c
    sub-int/2addr v4, v5

    #@2d
    iget v5, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@2f
    sub-int/2addr v4, v5

    #@30
    .line 1195
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@33
    .line 1200
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@35
    if-eqz v1, :cond_6f

    #@37
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_6f

    #@3d
    .line 1201
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_6f

    #@43
    .line 1204
    iget v1, v7, Landroid/graphics/Rect;->left:I

    #@45
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@47
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@4a
    move-result v2

    #@4b
    add-int/2addr v1, v2

    #@4c
    iput v1, v7, Landroid/graphics/Rect;->left:I

    #@4e
    .line 1205
    iget v1, v7, Landroid/graphics/Rect;->top:I

    #@50
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@52
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@55
    move-result v2

    #@56
    add-int/2addr v1, v2

    #@57
    iput v1, v7, Landroid/graphics/Rect;->top:I

    #@59
    .line 1206
    iget v1, v7, Landroid/graphics/Rect;->right:I

    #@5b
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@5d
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@60
    move-result v2

    #@61
    sub-int/2addr v1, v2

    #@62
    iput v1, v7, Landroid/graphics/Rect;->right:I

    #@64
    .line 1207
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    #@66
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@68
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@6b
    move-result v2

    #@6c
    sub-int/2addr v1, v2

    #@6d
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    #@6f
    .line 1210
    :cond_6f
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@72
    move-result-object v8

    #@73
    .line 1211
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    #@75
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    #@78
    move-result v1

    #@79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@7c
    move-result v2

    #@7d
    .line 1212
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@80
    move-result v3

    #@81
    move-object v4, v7

    #@82
    move-object v5, v8

    #@83
    move v6, p2

    #@84
    .line 1211
    invoke-static/range {v1 .. v6}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@87
    .line 1213
    iget p2, v8, Landroid/graphics/Rect;->left:I

    #@89
    iget v0, v8, Landroid/graphics/Rect;->top:I

    #@8b
    iget v1, v8, Landroid/graphics/Rect;->right:I

    #@8d
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    #@8f
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@92
    .line 1215
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@95
    .line 1216
    invoke-static {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@98
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .registers 8

    #@0
    .line 1106
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    .line 1107
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@7
    move-result-object v1

    #@8
    .line 1109
    :try_start_8
    invoke-virtual {p0, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 1110
    invoke-virtual {p0, p1, p3, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@e
    .line 1111
    iget p2, v1, Landroid/graphics/Rect;->left:I

    #@10
    iget p3, v1, Landroid/graphics/Rect;->top:I

    #@12
    iget v2, v1, Landroid/graphics/Rect;->right:I

    #@14
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    #@16
    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_20

    #@19
    .line 1113
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@1c
    .line 1114
    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@1f
    return-void

    #@20
    :catchall_20
    move-exception p1

    #@21
    .line 1113
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@24
    .line 1114
    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@27
    .line 1115
    throw p1
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .registers 12

    #@0
    .line 1130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 1131
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    #@8
    .line 1132
    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    #@b
    move-result v1

    #@c
    .line 1131
    invoke-static {v1, p3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result v1

    #@10
    and-int/lit8 v2, v1, 0x7

    #@12
    and-int/lit8 v1, v1, 0x70

    #@14
    .line 1136
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@17
    move-result v3

    #@18
    .line 1137
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@1b
    move-result v4

    #@1c
    .line 1138
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@1f
    move-result v5

    #@20
    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@23
    move-result v6

    #@24
    const/4 v7, 0x1

    #@25
    if-ne p3, v7, :cond_29

    #@27
    sub-int p2, v3, p2

    #@29
    .line 1145
    :cond_29
    invoke-direct {p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    #@2c
    move-result p2

    #@2d
    sub-int/2addr p2, v5

    #@2e
    if-eq v2, v7, :cond_36

    #@30
    const/4 p3, 0x5

    #@31
    if-eq v2, p3, :cond_34

    #@33
    goto :goto_39

    #@34
    :cond_34
    add-int/2addr p2, v5

    #@35
    goto :goto_39

    #@36
    .line 1157
    :cond_36
    div-int/lit8 p3, v5, 0x2

    #@38
    add-int/2addr p2, p3

    #@39
    :goto_39
    const/16 p3, 0x10

    #@3b
    const/4 v2, 0x0

    #@3c
    if-eq v1, p3, :cond_46

    #@3e
    const/16 p3, 0x50

    #@40
    if-eq v1, p3, :cond_43

    #@42
    goto :goto_49

    #@43
    :cond_43
    add-int/lit8 v2, v6, 0x0

    #@45
    goto :goto_49

    #@46
    .line 1170
    :cond_46
    div-int/lit8 p3, v6, 0x2

    #@48
    add-int/2addr v2, p3

    #@49
    .line 1175
    :goto_49
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@4c
    move-result p3

    #@4d
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@4f
    add-int/2addr p3, v1

    #@50
    .line 1177
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@53
    move-result v1

    #@54
    sub-int/2addr v3, v1

    #@55
    sub-int/2addr v3, v5

    #@56
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@58
    sub-int/2addr v3, v1

    #@59
    .line 1176
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result p2

    #@5d
    .line 1175
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    #@60
    move-result p2

    #@61
    .line 1178
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@64
    move-result p3

    #@65
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    #@67
    add-int/2addr p3, v1

    #@68
    .line 1180
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@6b
    move-result v1

    #@6c
    sub-int/2addr v4, v1

    #@6d
    sub-int/2addr v4, v6

    #@6e
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@70
    sub-int/2addr v4, v0

    #@71
    .line 1179
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@74
    move-result v0

    #@75
    .line 1178
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    #@78
    move-result p3

    #@79
    add-int/2addr v5, p2

    #@7a
    add-int/2addr v6, p3

    #@7b
    .line 1182
    invoke-virtual {p1, p2, p3, v5, v6}, Landroid/view/View;->layout(IIII)V

    #@7e
    return-void
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 12

    #@0
    .line 1413
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 1418
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@a
    move-result v0

    #@b
    if-lez v0, :cond_105

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@10
    move-result v0

    #@11
    if-gtz v0, :cond_15

    #@13
    goto/16 :goto_105

    #@15
    .line 1423
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@1b
    .line 1424
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@1e
    move-result-object v1

    #@1f
    .line 1425
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@22
    move-result-object v2

    #@23
    .line 1426
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@26
    move-result-object v3

    #@27
    .line 1427
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@2a
    move-result v4

    #@2b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@2e
    move-result v5

    #@2f
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@32
    move-result v6

    #@33
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@36
    move-result v7

    #@37
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@3a
    if-eqz v1, :cond_70

    #@3c
    .line 1429
    invoke-virtual {v1, p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_70

    #@42
    .line 1431
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_49

    #@48
    goto :goto_73

    #@49
    .line 1432
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@4b
    new-instance p2, Ljava/lang/StringBuilder;

    #@4d
    const-string p3, "Rect should be within the child\'s bounds. Rect:"

    #@4f
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@52
    .line 1433
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@55
    move-result-object p3

    #@56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object p2

    #@5a
    const-string p3, " | Bounds:"

    #@5c
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object p2

    #@60
    .line 1434
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@63
    move-result-object p3

    #@64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object p2

    #@68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object p2

    #@6c
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw p1

    #@70
    .line 1437
    :cond_70
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@73
    .line 1441
    :goto_73
    invoke-static {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@76
    .line 1443
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_80

    #@7c
    .line 1445
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@7f
    return-void

    #@80
    .line 1449
    :cond_80
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    #@82
    invoke-static {v1, p3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@85
    move-result p3

    #@86
    and-int/lit8 v1, p3, 0x30

    #@88
    const/16 v3, 0x30

    #@8a
    const/4 v4, 0x1

    #@8b
    const/4 v5, 0x0

    #@8c
    if-ne v1, v3, :cond_a2

    #@8e
    .line 1454
    iget v1, v2, Landroid/graphics/Rect;->top:I

    #@90
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    #@92
    sub-int/2addr v1, v3

    #@93
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    #@95
    sub-int/2addr v1, v3

    #@96
    .line 1455
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@98
    if-ge v1, v3, :cond_a2

    #@9a
    .line 1456
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@9c
    sub-int/2addr v3, v1

    #@9d
    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    #@a0
    move v1, v4

    #@a1
    goto :goto_a3

    #@a2
    :cond_a2
    move v1, v5

    #@a3
    :goto_a3
    and-int/lit8 v3, p3, 0x50

    #@a5
    const/16 v6, 0x50

    #@a7
    if-ne v3, v6, :cond_c1

    #@a9
    .line 1461
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@ac
    move-result v3

    #@ad
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    #@af
    sub-int/2addr v3, v6

    #@b0
    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@b2
    sub-int/2addr v3, v6

    #@b3
    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    #@b5
    add-int/2addr v3, v6

    #@b6
    .line 1462
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    #@b8
    if-ge v3, v6, :cond_c1

    #@ba
    .line 1463
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@bc
    sub-int/2addr v3, v1

    #@bd
    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    #@c0
    move v1, v4

    #@c1
    :cond_c1
    if-nez v1, :cond_c6

    #@c3
    .line 1468
    invoke-direct {p0, p1, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    #@c6
    :cond_c6
    and-int/lit8 v1, p3, 0x3

    #@c8
    const/4 v3, 0x3

    #@c9
    if-ne v1, v3, :cond_df

    #@cb
    .line 1473
    iget v1, v2, Landroid/graphics/Rect;->left:I

    #@cd
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@cf
    sub-int/2addr v1, v3

    #@d0
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    #@d2
    sub-int/2addr v1, v3

    #@d3
    .line 1474
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@d5
    if-ge v1, v3, :cond_df

    #@d7
    .line 1475
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@d9
    sub-int/2addr v3, v1

    #@da
    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    #@dd
    move v1, v4

    #@de
    goto :goto_e0

    #@df
    :cond_df
    move v1, v5

    #@e0
    :goto_e0
    const/4 v3, 0x5

    #@e1
    and-int/2addr p3, v3

    #@e2
    if-ne p3, v3, :cond_fc

    #@e4
    .line 1480
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@e7
    move-result p3

    #@e8
    iget v3, v2, Landroid/graphics/Rect;->right:I

    #@ea
    sub-int/2addr p3, v3

    #@eb
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@ed
    sub-int/2addr p3, v3

    #@ee
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    #@f0
    add-int/2addr p3, v0

    #@f1
    .line 1481
    iget v0, p2, Landroid/graphics/Rect;->right:I

    #@f3
    if-ge p3, v0, :cond_fc

    #@f5
    .line 1482
    iget p2, p2, Landroid/graphics/Rect;->right:I

    #@f7
    sub-int/2addr p3, p2

    #@f8
    invoke-direct {p0, p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    #@fb
    goto :goto_fd

    #@fc
    :cond_fc
    move v4, v1

    #@fd
    :goto_fd
    if-nez v4, :cond_102

    #@ff
    .line 1487
    invoke-direct {p0, p1, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    #@102
    .line 1490
    :cond_102
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@105
    :cond_105
    :goto_105
    return-void
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 8

    #@0
    .line 615
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    :cond_8
    const-string v0, "."

    #@a
    .line 620
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_26

    #@10
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p2

    #@21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p2

    #@25
    goto :goto_4c

    #@26
    :cond_26
    const/16 v0, 0x2e

    #@28
    .line 623
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@2b
    move-result v1

    #@2c
    if-ltz v1, :cond_2f

    #@2e
    goto :goto_4c

    #@2f
    .line 628
    :cond_2f
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    #@31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_4c

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object p2

    #@48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object p2

    #@4c
    .line 634
    :cond_4c
    :goto_4c
    :try_start_4c
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    #@4e
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Ljava/util/Map;

    #@54
    if-nez v1, :cond_5e

    #@56
    .line 636
    new-instance v1, Ljava/util/HashMap;

    #@58
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5b
    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@5e
    .line 639
    :cond_5e
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Ljava/lang/reflect/Constructor;

    #@64
    const/4 v2, 0x1

    #@65
    const/4 v3, 0x0

    #@66
    if-nez v0, :cond_7c

    #@68
    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@6b
    move-result-object v0

    #@6c
    invoke-static {p2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@6f
    move-result-object v0

    #@70
    .line 643
    sget-object v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    #@72
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@75
    move-result-object v0

    #@76
    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@79
    .line 645
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    :cond_7c
    const/4 v1, 0x2

    #@7d
    new-array v1, v1, [Ljava/lang/Object;

    #@7f
    aput-object p0, v1, v3

    #@81
    aput-object p1, v1, v2

    #@83
    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    move-result-object p0

    #@87
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_89} :catch_8a

    #@89
    return-object p0

    #@8a
    :catch_8a
    move-exception p0

    #@8b
    .line 649
    new-instance p1, Ljava/lang/RuntimeException;

    #@8d
    new-instance v0, Ljava/lang/StringBuilder;

    #@8f
    const-string v1, "Could not inflate Behavior subclass "

    #@91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object p2

    #@98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object p2

    #@9c
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9f
    throw p1
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .registers 26

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move/from16 v2, p2

    #@6
    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@9
    move-result v3

    #@a
    .line 468
    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    #@c
    .line 469
    invoke-direct {v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    #@f
    .line 472
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v5

    #@13
    const/4 v6, 0x0

    #@14
    const/4 v7, 0x0

    #@15
    move v8, v6

    #@16
    move v9, v8

    #@17
    move v10, v9

    #@18
    :goto_18
    if-ge v8, v5, :cond_81

    #@1a
    .line 474
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v11

    #@1e
    check-cast v11, Landroid/view/View;

    #@20
    .line 475
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@23
    move-result-object v12

    #@24
    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@26
    .line 476
    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@29
    move-result-object v13

    #@2a
    const/4 v14, 0x1

    #@2b
    if-nez v9, :cond_2f

    #@2d
    if-eqz v10, :cond_54

    #@2f
    :cond_2f
    if-eqz v3, :cond_54

    #@31
    if-eqz v13, :cond_7e

    #@33
    if-nez v7, :cond_47

    #@35
    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@38
    move-result-wide v17

    #@39
    const/16 v19, 0x3

    #@3b
    const/16 v20, 0x0

    #@3d
    const/16 v21, 0x0

    #@3f
    const/16 v22, 0x0

    #@41
    move-wide/from16 v15, v17

    #@43
    .line 484
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@46
    move-result-object v7

    #@47
    :cond_47
    if-eqz v2, :cond_50

    #@49
    if-eq v2, v14, :cond_4c

    #@4b
    goto :goto_7e

    #@4c
    .line 492
    :cond_4c
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@4f
    goto :goto_7e

    #@50
    .line 489
    :cond_50
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@53
    goto :goto_7e

    #@54
    :cond_54
    if-nez v9, :cond_6a

    #@56
    if-eqz v13, :cond_6a

    #@58
    if-eqz v2, :cond_62

    #@5a
    if-eq v2, v14, :cond_5d

    #@5c
    goto :goto_66

    #@5d
    .line 505
    :cond_5d
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@60
    move-result v9

    #@61
    goto :goto_66

    #@62
    .line 502
    :cond_62
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@65
    move-result v9

    #@66
    :goto_66
    if-eqz v9, :cond_6a

    #@68
    .line 509
    iput-object v11, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    #@6a
    .line 515
    :cond_6a
    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    #@6d
    move-result v10

    #@6e
    .line 516
    invoke-virtual {v12, v0, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    #@71
    move-result v11

    #@72
    if-eqz v11, :cond_78

    #@74
    if-nez v10, :cond_78

    #@76
    move v10, v14

    #@77
    goto :goto_79

    #@78
    :cond_78
    move v10, v6

    #@79
    :goto_79
    if-eqz v11, :cond_7e

    #@7b
    if-nez v10, :cond_7e

    #@7d
    goto :goto_81

    #@7e
    :cond_7e
    :goto_7e
    add-int/lit8 v8, v8, 0x1

    #@80
    goto :goto_18

    #@81
    .line 525
    :cond_81
    :goto_81
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@84
    return v9
.end method

.method private prepareChildren()V
    .registers 9

    #@0
    .line 689
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 690
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@7
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->clear()V

    #@a
    .line 692
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    move v2, v1

    #@10
    :goto_10
    if-ge v2, v0, :cond_4a

    #@12
    .line 693
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v3

    #@16
    .line 695
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@19
    move-result-object v4

    #@1a
    .line 696
    invoke-virtual {v4, p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    #@1d
    .line 698
    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@1f
    invoke-virtual {v5, v3}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    #@22
    move v5, v1

    #@23
    :goto_23
    if-ge v5, v0, :cond_47

    #@25
    if-ne v5, v2, :cond_28

    #@27
    goto :goto_44

    #@28
    .line 705
    :cond_28
    invoke-virtual {p0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@2b
    move-result-object v6

    #@2c
    .line 706
    invoke-virtual {v4, p0, v3, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_44

    #@32
    .line 707
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@34
    invoke-virtual {v7, v6}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    #@37
    move-result v7

    #@38
    if-nez v7, :cond_3f

    #@3a
    .line 709
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@3c
    invoke-virtual {v7, v6}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    #@3f
    .line 712
    :cond_3f
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@41
    invoke-virtual {v7, v6, v3}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    #@44
    :cond_44
    :goto_44
    add-int/lit8 v5, v5, 0x1

    #@46
    goto :goto_23

    #@47
    :cond_47
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_10

    #@4a
    .line 718
    :cond_4a
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@4c
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@4e
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    #@51
    move-result-object v1

    #@52
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@55
    .line 721
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@57
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@5a
    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 164
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    #@3
    .line 165
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    #@5
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@8
    return-void
.end method

.method private resetTouchBehaviors(Z)V
    .registers 15

    #@0
    .line 412
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_34

    #@8
    .line 414
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    .line 415
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@12
    .line 416
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@15
    move-result-object v4

    #@16
    if-eqz v4, :cond_31

    #@18
    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v7

    #@1c
    const/4 v9, 0x3

    #@1d
    const/4 v10, 0x0

    #@1e
    const/4 v11, 0x0

    #@1f
    const/4 v12, 0x0

    #@20
    move-wide v5, v7

    #@21
    .line 419
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@24
    move-result-object v5

    #@25
    if-eqz p1, :cond_2b

    #@27
    .line 422
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@2a
    goto :goto_2e

    #@2b
    .line 424
    :cond_2b
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@2e
    .line 426
    :goto_2e
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    #@31
    :cond_31
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_6

    #@34
    :cond_34
    move p1, v1

    #@35
    :goto_35
    if-ge p1, v0, :cond_47

    #@37
    .line 431
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@3a
    move-result-object v2

    #@3b
    .line 432
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@41
    .line 433
    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    #@44
    add-int/lit8 p1, p1, 0x1

    #@46
    goto :goto_35

    #@47
    :cond_47
    const/4 p1, 0x0

    #@48
    .line 435
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    #@4a
    .line 436
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    #@4c
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/16 p0, 0x11

    #@4
    :cond_4
    return p0
.end method

.method private static resolveGravity(I)I
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x7

    #@2
    if-nez v0, :cond_8

    #@4
    const v0, 0x800003

    #@7
    or-int/2addr p0, v0

    #@8
    :cond_8
    and-int/lit8 v0, p0, 0x70

    #@a
    if-nez v0, :cond_e

    #@c
    or-int/lit8 p0, p0, 0x30

    #@e
    :cond_e
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const p0, 0x800035

    #@5
    :cond_5
    return p0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 1494
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 1495
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    #@8
    if-eq v1, p2, :cond_13

    #@a
    .line 1496
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    #@c
    sub-int v1, p2, v1

    #@e
    .line 1497
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@11
    .line 1498
    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    #@13
    :cond_13
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 1503
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 1504
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    #@8
    if-eq v1, p2, :cond_13

    #@a
    .line 1505
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    #@c
    sub-int v1, p2, v1

    #@e
    .line 1506
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@11
    .line 1507
    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    #@13
    :cond_13
    return-void
.end method

.method private setupForInsets()V
    .registers 2

    #@0
    .line 3309
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1c

    #@6
    .line 3310
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 3311
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

    #@c
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    #@f
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    #@11
    .line 3321
    :cond_11
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    #@13
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@16
    const/16 v0, 0x500

    #@18
    .line 3324
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    #@1b
    goto :goto_20

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    .line 3327
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@20
    :goto_20
    return-void
.end method


# virtual methods
.method addPreDrawListener()V
    .registers 3

    #@0
    .line 1615
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    #@2
    if-eqz v0, :cond_18

    #@4
    .line 1617
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@6
    if-nez v0, :cond_f

    #@8
    .line 1618
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@a
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    #@d
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@f
    .line 1620
    :cond_f
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@12
    move-result-object v0

    #@13
    .line 1621
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@18
    :cond_18
    const/4 v0, 0x1

    #@19
    .line 1626
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    #@1b
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    .line 1760
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

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

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .registers 6

    #@0
    .line 1523
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@2
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_2d

    #@8
    .line 1524
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_2d

    #@e
    const/4 v1, 0x0

    #@f
    .line 1525
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@12
    move-result v2

    #@13
    if-ge v1, v2, :cond_2d

    #@15
    .line 1526
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/view/View;

    #@1b
    .line 1528
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@21
    .line 1529
    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@24
    move-result-object v3

    #@25
    if-eqz v3, :cond_2a

    #@27
    .line 1531
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    #@2a
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_f

    #@2d
    :cond_2d
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    #@0
    .line 1722
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_56

    #@7
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_56

    #@d
    .line 1723
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@10
    move-result-object v0

    #@11
    .line 1724
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    if-eq v2, p0, :cond_1a

    #@18
    move v2, v3

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move v2, v1

    #@1b
    :goto_1b
    invoke-virtual {p0, p1, v2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    #@1e
    .line 1725
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@21
    move-result-object p1

    #@22
    .line 1726
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@25
    move-result-object v2

    #@26
    if-eq v2, p0, :cond_2a

    #@28
    move v2, v3

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    move v2, v1

    #@2b
    :goto_2b
    invoke-virtual {p0, p2, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    #@2e
    .line 1728
    :try_start_2e
    iget p2, v0, Landroid/graphics/Rect;->left:I

    #@30
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@32
    if-gt p2, v2, :cond_47

    #@34
    iget p2, v0, Landroid/graphics/Rect;->top:I

    #@36
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@38
    if-gt p2, v2, :cond_47

    #@3a
    iget p2, v0, Landroid/graphics/Rect;->right:I

    #@3c
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@3e
    if-lt p2, v2, :cond_47

    #@40
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    #@42
    iget v2, p1, Landroid/graphics/Rect;->top:I
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_4e

    #@44
    if-lt p2, v2, :cond_47

    #@46
    move v1, v3

    #@47
    .line 1731
    :cond_47
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@4a
    .line 1732
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@4d
    return v1

    #@4e
    :catchall_4e
    move-exception p2

    #@4f
    .line 1731
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@52
    .line 1732
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@55
    .line 1733
    throw p2

    #@56
    :cond_56
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 13

    #@0
    .line 1253
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 1254
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@8
    if-eqz v1, :cond_89

    #@a
    .line 1255
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@c
    invoke-virtual {v1, p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F

    #@f
    move-result v1

    #@10
    const/4 v2, 0x0

    #@11
    cmpl-float v2, v1, v2

    #@13
    if-lez v2, :cond_89

    #@15
    .line 1257
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@17
    if-nez v2, :cond_20

    #@19
    .line 1258
    new-instance v2, Landroid/graphics/Paint;

    #@1b
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@1e
    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@20
    .line 1260
    :cond_20
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@22
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@24
    invoke-virtual {v0, p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I

    #@27
    move-result v0

    #@28
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@2b
    .line 1261
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@2d
    const/high16 v2, 0x437f0000    # 255.0f

    #@2f
    mul-float/2addr v1, v2

    #@30
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@33
    move-result v1

    #@34
    const/4 v2, 0x0

    #@35
    const/16 v3, 0xff

    #@37
    invoke-static {v1, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->clamp(III)I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@3e
    .line 1263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@41
    move-result v0

    #@42
    .line 1264
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_62

    #@48
    .line 1267
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@4b
    move-result v1

    #@4c
    int-to-float v3, v1

    #@4d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@50
    move-result v1

    #@51
    int-to-float v4, v1

    #@52
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@55
    move-result v1

    #@56
    int-to-float v5, v1

    #@57
    .line 1268
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@5a
    move-result v1

    #@5b
    int-to-float v6, v1

    #@5c
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@5e
    move-object v2, p1

    #@5f
    .line 1267
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    #@62
    .line 1271
    :cond_62
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@65
    move-result v1

    #@66
    int-to-float v3, v1

    #@67
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@6a
    move-result v1

    #@6b
    int-to-float v4, v1

    #@6c
    .line 1272
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@6f
    move-result v1

    #@70
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@73
    move-result v2

    #@74
    sub-int/2addr v1, v2

    #@75
    int-to-float v5, v1

    #@76
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@79
    move-result v1

    #@7a
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@7d
    move-result v2

    #@7e
    sub-int/2addr v1, v2

    #@7f
    int-to-float v6, v1

    #@80
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@82
    move-object v2, p1

    #@83
    .line 1271
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@86
    .line 1274
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@89
    .line 1277
    :cond_89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@8c
    move-result p1

    #@8d
    return p1
.end method

.method protected drawableStateChanged()V
    .registers 5

    #@0
    .line 332
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    #@3
    .line 334
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    #@6
    move-result-object v0

    #@7
    .line 337
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v1, :cond_17

    #@c
    .line 338
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_17

    #@12
    .line 339
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    move-result v0

    #@16
    or-int/2addr v2, v0

    #@17
    :cond_17
    if-eqz v2, :cond_1c

    #@19
    .line 343
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->invalidate()V

    #@1c
    :cond_1c
    return-void
.end method

.method ensurePreDrawListener()V
    .registers 5

    #@0
    .line 1585
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_17

    #@8
    .line 1587
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    .line 1588
    invoke-direct {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_14

    #@12
    const/4 v1, 0x1

    #@13
    goto :goto_17

    #@14
    :cond_14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_6

    #@17
    .line 1594
    :cond_17
    :goto_17
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    #@19
    if-eq v1, v0, :cond_24

    #@1b
    if-eqz v1, :cond_21

    #@1d
    .line 1596
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addPreDrawListener()V

    #@20
    goto :goto_24

    #@21
    .line 1598
    :cond_21
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removePreDrawListener()V

    #@24
    :cond_24
    :goto_24
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 112
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 3

    #@0
    .line 1755
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    invoke-direct {v0, v1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 112
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 112
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 4

    #@0
    .line 1740
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 3

    #@0
    .line 1745
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 1746
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 1747
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 1748
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 1750
    :cond_18
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@1a
    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    return-object v0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 979
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_29

    #@6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@9
    move-result v0

    #@a
    const/16 v1, 0x8

    #@c
    if-ne v0, v1, :cond_f

    #@e
    goto :goto_29

    #@f
    :cond_f
    if-eqz p2, :cond_15

    #@11
    .line 984
    invoke-virtual {p0, p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@14
    goto :goto_28

    #@15
    .line 986
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@18
    move-result p2

    #@19
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@1c
    move-result v0

    #@1d
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@20
    move-result v1

    #@21
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@24
    move-result p1

    #@25
    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@28
    :goto_28
    return-void

    #@29
    .line 980
    :cond_29
    :goto_29
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    #@2c
    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 1547
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@2
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object p1

    #@6
    .line 1548
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@b
    if-eqz p1, :cond_12

    #@d
    .line 1550
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    #@f
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@12
    .line 1552
    :cond_12
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    #@14
    return-object p1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 1576
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    #@3
    .line 1577
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 1566
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    #@2
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object p1

    #@6
    .line 1567
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@b
    if-eqz p1, :cond_12

    #@d
    .line 1569
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    #@f
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@12
    .line 1571
    :cond_12
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    #@14
    return-object p1
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 732
    invoke-static {p0, p1, p2}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    #@3
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 16

    #@0
    .line 1090
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 1091
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@9
    move-result v9

    #@a
    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@d
    move-result v10

    #@e
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move v3, p2

    #@11
    move-object v4, p3

    #@12
    move-object v5, p4

    #@13
    move-object v6, v0

    #@14
    move v7, v9

    #@15
    move v8, v10

    #@16
    .line 1093
    invoke-direct/range {v1 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    #@19
    .line 1095
    invoke-direct {p0, v0, p4, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    #@1c
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 965
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 966
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    return-void
.end method

.method public final getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 401
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@2
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    #@0
    .line 2017
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 8

    #@0
    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 655
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    #@8
    if-nez v1, :cond_76

    #@a
    .line 656
    instance-of v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    #@c
    const-string v2, "CoordinatorLayout"

    #@e
    const/4 v3, 0x1

    #@f
    if-eqz v1, :cond_24

    #@11
    .line 657
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    #@13
    invoke-interface {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@16
    move-result-object p1

    #@17
    if-nez p1, :cond_1e

    #@19
    const-string v1, "Attached behavior class is null"

    #@1b
    .line 659
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 661
    :cond_1e
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    #@21
    .line 662
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    #@23
    goto :goto_76

    #@24
    .line 665
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@27
    move-result-object p1

    #@28
    const/4 v1, 0x0

    #@29
    :goto_29
    if-eqz p1, :cond_3a

    #@2b
    .line 667
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    #@2d
    .line 668
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    #@33
    if-nez v1, :cond_3a

    #@35
    .line 670
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@38
    move-result-object p1

    #@39
    goto :goto_29

    #@3a
    :cond_3a
    if-eqz v1, :cond_74

    #@3c
    .line 675
    :try_start_3c
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    #@3f
    move-result-object p1

    #@40
    const/4 v4, 0x0

    #@41
    new-array v5, v4, [Ljava/lang/Class;

    #@43
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@46
    move-result-object p1

    #@47
    new-array v4, v4, [Ljava/lang/Object;

    #@49
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object p1

    #@4d
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@4f
    .line 674
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_52} :catch_53

    #@52
    goto :goto_74

    #@53
    :catch_53
    move-exception p1

    #@54
    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    const-string v5, "Default behavior class "

    #@58
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5b
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    const-string v4, " could not be instantiated. Did you forget a default constructor?"

    #@69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@74
    .line 682
    :cond_74
    :goto_74
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    #@76
    :cond_76
    :goto_76
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 327
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    #@0
    .line 742
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@b
    move-result v2

    #@c
    add-int/2addr v1, v2

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    #@0
    .line 737
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@b
    move-result v2

    #@c
    add-int/2addr v1, v2

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .registers 5

    #@0
    .line 1704
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    .line 1705
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@7
    .line 1707
    :try_start_7
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    #@a
    move-result p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    #@b
    .line 1709
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@e
    return p1

    #@f
    :catchall_f
    move-exception p1

    #@10
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@13
    .line 1710
    throw p1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .registers 19

    #@0
    move-object/from16 v8, p0

    #@2
    move-object/from16 v9, p1

    #@4
    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    move-object v10, v0

    #@9
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@b
    .line 1654
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    #@d
    if-eqz v0, :cond_77

    #@f
    .line 1655
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@12
    move-result-object v11

    #@13
    .line 1656
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@16
    move-result-object v12

    #@17
    .line 1657
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@1a
    move-result-object v13

    #@1b
    .line 1659
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    #@1d
    invoke-virtual {v8, v0, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@20
    const/4 v14, 0x0

    #@21
    .line 1660
    invoke-virtual {v8, v9, v14, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    #@24
    .line 1662
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    #@27
    move-result v15

    #@28
    .line 1663
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@2b
    move-result v7

    #@2c
    move-object/from16 v0, p0

    #@2e
    move-object/from16 v1, p1

    #@30
    move/from16 v2, p2

    #@32
    move-object v3, v11

    #@33
    move-object v4, v13

    #@34
    move-object v5, v10

    #@35
    move v6, v15

    #@36
    move/from16 p2, v7

    #@38
    .line 1664
    invoke-direct/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    #@3b
    .line 1666
    iget v0, v13, Landroid/graphics/Rect;->left:I

    #@3d
    iget v1, v12, Landroid/graphics/Rect;->left:I

    #@3f
    if-ne v0, v1, :cond_47

    #@41
    iget v0, v13, Landroid/graphics/Rect;->top:I

    #@43
    iget v1, v12, Landroid/graphics/Rect;->top:I

    #@45
    if-eq v0, v1, :cond_48

    #@47
    :cond_47
    const/4 v14, 0x1

    #@48
    :cond_48
    move/from16 v0, p2

    #@4a
    .line 1668
    invoke-direct {v8, v10, v13, v15, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    #@4d
    .line 1670
    iget v0, v13, Landroid/graphics/Rect;->left:I

    #@4f
    iget v1, v12, Landroid/graphics/Rect;->left:I

    #@51
    sub-int/2addr v0, v1

    #@52
    .line 1671
    iget v1, v13, Landroid/graphics/Rect;->top:I

    #@54
    iget v2, v12, Landroid/graphics/Rect;->top:I

    #@56
    sub-int/2addr v1, v2

    #@57
    if-eqz v0, :cond_5c

    #@59
    .line 1674
    invoke-static {v9, v0}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@5c
    :cond_5c
    if-eqz v1, :cond_61

    #@5e
    .line 1677
    invoke-static {v9, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@61
    :cond_61
    if-eqz v14, :cond_6e

    #@63
    .line 1682
    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@66
    move-result-object v0

    #@67
    if-eqz v0, :cond_6e

    #@69
    .line 1684
    iget-object v1, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    #@6b
    invoke-virtual {v0, v8, v9, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    #@6e
    .line 1688
    :cond_6e
    invoke-static {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@71
    .line 1689
    invoke-static {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@74
    .line 1690
    invoke-static {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@77
    :cond_77
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    #@0
    .line 264
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 265
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    #@7
    .line 266
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    #@9
    if-eqz v0, :cond_1f

    #@b
    .line 267
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@d
    if-nez v0, :cond_16

    #@f
    .line 268
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@11
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    #@14
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@16
    .line 270
    :cond_16
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v0

    #@1a
    .line 271
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@1c
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@1f
    .line 273
    :cond_1f
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@21
    if-nez v0, :cond_2c

    #@23
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2c

    #@29
    .line 276
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    #@2c
    :cond_2c
    const/4 v0, 0x1

    #@2d
    .line 278
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    #@2f
    return-void
.end method

.method final onChildViewsChanged(I)V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    .line 1307
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@7
    move-result v2

    #@8
    .line 1308
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    .line 1309
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@11
    move-result-object v4

    #@12
    .line 1310
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@15
    move-result-object v5

    #@16
    .line 1311
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    #@19
    move-result-object v6

    #@1a
    const/4 v7, 0x0

    #@1b
    move v8, v7

    #@1c
    :goto_1c
    if-ge v8, v3, :cond_107

    #@1e
    .line 1314
    iget-object v9, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@20
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v9

    #@24
    check-cast v9, Landroid/view/View;

    #@26
    .line 1315
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@29
    move-result-object v10

    #@2a
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@2c
    if-nez v1, :cond_38

    #@2e
    .line 1316
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    #@31
    move-result v11

    #@32
    const/16 v12, 0x8

    #@34
    if-ne v11, v12, :cond_38

    #@36
    goto/16 :goto_103

    #@38
    :cond_38
    move v11, v7

    #@39
    :goto_39
    if-ge v11, v8, :cond_4d

    #@3b
    .line 1323
    iget-object v12, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@3d
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v12

    #@41
    check-cast v12, Landroid/view/View;

    #@43
    .line 1325
    iget-object v13, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    #@45
    if-ne v13, v12, :cond_4a

    #@47
    .line 1326
    invoke-virtual {v0, v9, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    #@4a
    :cond_4a
    add-int/lit8 v11, v11, 0x1

    #@4c
    goto :goto_39

    #@4d
    :cond_4d
    const/4 v11, 0x1

    #@4e
    .line 1331
    invoke-virtual {v0, v9, v11, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    #@51
    .line 1334
    iget v12, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    #@53
    if-eqz v12, :cond_a9

    #@55
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    #@58
    move-result v12

    #@59
    if-nez v12, :cond_a9

    #@5b
    .line 1335
    iget v12, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    #@5d
    invoke-static {v12, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@60
    move-result v12

    #@61
    and-int/lit8 v13, v12, 0x70

    #@63
    const/16 v14, 0x30

    #@65
    if-eq v13, v14, :cond_7c

    #@67
    const/16 v14, 0x50

    #@69
    if-eq v13, v14, :cond_6c

    #@6b
    goto :goto_86

    #@6c
    .line 1342
    :cond_6c
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    #@6e
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@71
    move-result v14

    #@72
    iget v15, v5, Landroid/graphics/Rect;->top:I

    #@74
    sub-int/2addr v14, v15

    #@75
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    #@78
    move-result v13

    #@79
    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    #@7b
    goto :goto_86

    #@7c
    .line 1339
    :cond_7c
    iget v13, v4, Landroid/graphics/Rect;->top:I

    #@7e
    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    #@80
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    #@83
    move-result v13

    #@84
    iput v13, v4, Landroid/graphics/Rect;->top:I

    #@86
    :goto_86
    and-int/lit8 v12, v12, 0x7

    #@88
    const/4 v13, 0x3

    #@89
    if-eq v12, v13, :cond_9f

    #@8b
    const/4 v13, 0x5

    #@8c
    if-eq v12, v13, :cond_8f

    #@8e
    goto :goto_a9

    #@8f
    .line 1350
    :cond_8f
    iget v12, v4, Landroid/graphics/Rect;->right:I

    #@91
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@94
    move-result v13

    #@95
    iget v14, v5, Landroid/graphics/Rect;->left:I

    #@97
    sub-int/2addr v13, v14

    #@98
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    #@9b
    move-result v12

    #@9c
    iput v12, v4, Landroid/graphics/Rect;->right:I

    #@9e
    goto :goto_a9

    #@9f
    .line 1347
    :cond_9f
    iget v12, v4, Landroid/graphics/Rect;->left:I

    #@a1
    iget v13, v5, Landroid/graphics/Rect;->right:I

    #@a3
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    #@a6
    move-result v12

    #@a7
    iput v12, v4, Landroid/graphics/Rect;->left:I

    #@a9
    .line 1356
    :cond_a9
    :goto_a9
    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    #@ab
    if-eqz v10, :cond_b6

    #@ad
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    #@b0
    move-result v10

    #@b1
    if-nez v10, :cond_b6

    #@b3
    .line 1357
    invoke-direct {v0, v9, v4, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    #@b6
    :cond_b6
    const/4 v10, 0x2

    #@b7
    if-eq v1, v10, :cond_c6

    #@b9
    .line 1362
    invoke-virtual {v0, v9, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@bc
    .line 1363
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v12

    #@c0
    if-eqz v12, :cond_c3

    #@c2
    goto :goto_103

    #@c3
    .line 1366
    :cond_c3
    invoke-virtual {v0, v9, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@c6
    :cond_c6
    add-int/lit8 v12, v8, 0x1

    #@c8
    :goto_c8
    if-ge v12, v3, :cond_103

    #@ca
    .line 1371
    iget-object v13, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@cc
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@cf
    move-result-object v13

    #@d0
    check-cast v13, Landroid/view/View;

    #@d2
    .line 1372
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d5
    move-result-object v14

    #@d6
    check-cast v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@d8
    .line 1373
    invoke-virtual {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@db
    move-result-object v15

    #@dc
    if-eqz v15, :cond_100

    #@de
    .line 1375
    invoke-virtual {v15, v0, v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    #@e1
    move-result v16

    #@e2
    if-eqz v16, :cond_100

    #@e4
    if-nez v1, :cond_f0

    #@e6
    .line 1376
    invoke-virtual {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    #@e9
    move-result v16

    #@ea
    if-eqz v16, :cond_f0

    #@ec
    .line 1379
    invoke-virtual {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    #@ef
    goto :goto_100

    #@f0
    :cond_f0
    if-eq v1, v10, :cond_f7

    #@f2
    .line 1393
    invoke-virtual {v15, v0, v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    #@f5
    move-result v13

    #@f6
    goto :goto_fb

    #@f7
    .line 1388
    :cond_f7
    invoke-virtual {v15, v0, v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    #@fa
    move v13, v11

    #@fb
    :goto_fb
    if-ne v1, v11, :cond_100

    #@fd
    .line 1400
    invoke-virtual {v14, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    #@100
    :cond_100
    :goto_100
    add-int/lit8 v12, v12, 0x1

    #@102
    goto :goto_c8

    #@103
    :cond_103
    :goto_103
    add-int/lit8 v8, v8, 0x1

    #@105
    goto/16 :goto_1c

    #@107
    .line 1406
    :cond_107
    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@10a
    .line 1407
    invoke-static {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@10d
    .line 1408
    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    #@110
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    #@0
    .line 283
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 284
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    #@7
    .line 285
    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    #@9
    if-eqz v1, :cond_18

    #@b
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@d
    if-eqz v1, :cond_18

    #@f
    .line 286
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@12
    move-result-object v1

    #@13
    .line 287
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@15
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@18
    .line 289
    :cond_18
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    #@1a
    if-eqz v1, :cond_1f

    #@1c
    .line 290
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    #@1f
    .line 292
    :cond_1f
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    #@21
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 926
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 927
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    #@5
    if-eqz v0, :cond_26

    #@7
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v0, :cond_26

    #@b
    .line 928
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@d
    const/4 v1, 0x0

    #@e
    if-eqz v0, :cond_15

    #@10
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@13
    move-result v0

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v0, v1

    #@16
    :goto_16
    if-lez v0, :cond_26

    #@18
    .line 930
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@21
    .line 931
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@23
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@26
    :cond_26
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-nez v0, :cond_a

    #@7
    .line 536
    invoke-direct {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    #@a
    :cond_a
    const/4 v2, 0x0

    #@b
    .line 539
    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    #@e
    move-result p1

    #@f
    if-eq v0, v1, :cond_14

    #@11
    const/4 v2, 0x3

    #@12
    if-ne v0, v2, :cond_17

    #@14
    .line 542
    :cond_14
    invoke-direct {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    #@17
    :cond_17
    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    .line 906
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result p1

    #@4
    .line 907
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@6
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@9
    move-result p2

    #@a
    const/4 p3, 0x0

    #@b
    :goto_b
    if-ge p3, p2, :cond_36

    #@d
    .line 909
    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@f
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object p4

    #@13
    check-cast p4, Landroid/view/View;

    #@15
    .line 910
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    #@18
    move-result p5

    #@19
    const/16 v0, 0x8

    #@1b
    if-ne p5, v0, :cond_1e

    #@1d
    goto :goto_33

    #@1e
    .line 915
    :cond_1e
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object p5

    #@22
    check-cast p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@24
    .line 916
    invoke-virtual {p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@27
    move-result-object p5

    #@28
    if-eqz p5, :cond_30

    #@2a
    .line 918
    invoke-virtual {p5, p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    #@2d
    move-result p5

    #@2e
    if-nez p5, :cond_33

    #@30
    .line 919
    :cond_30
    invoke-virtual {p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    #@33
    :cond_33
    :goto_33
    add-int/lit8 p3, p3, 0x1

    #@35
    goto :goto_b

    #@36
    :cond_36
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 889
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 890
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_24

    #@c
    .line 894
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    #@e
    if-eqz v1, :cond_16

    #@10
    .line 895
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    #@12
    invoke-direct {p0, p1, v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    #@15
    goto :goto_23

    #@16
    .line 896
    :cond_16
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    #@18
    if-ltz v1, :cond_20

    #@1a
    .line 897
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    #@1c
    invoke-direct {p0, p1, v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    #@1f
    goto :goto_23

    #@20
    .line 899
    :cond_20
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    #@23
    :goto_23
    return-void

    #@24
    .line 891
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    #@26
    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    #@28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw p1
.end method

.method protected onMeasure(II)V
    .registers 33

    #@0
    move-object/from16 v7, p0

    #@2
    .line 767
    invoke-direct/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    #@5
    .line 768
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ensurePreDrawListener()V

    #@8
    .line 770
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@b
    move-result v8

    #@c
    .line 771
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@f
    move-result v0

    #@10
    .line 772
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@13
    move-result v9

    #@14
    .line 773
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@17
    move-result v1

    #@18
    .line 774
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@1b
    move-result v10

    #@1c
    const/4 v2, 0x1

    #@1d
    if-ne v10, v2, :cond_21

    #@1f
    move v12, v2

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 v12, 0x0

    #@22
    .line 776
    :goto_22
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@25
    move-result v13

    #@26
    .line 777
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@29
    move-result v14

    #@2a
    .line 778
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@2d
    move-result v15

    #@2e
    .line 779
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@31
    move-result v16

    #@32
    add-int v17, v8, v9

    #@34
    add-int v18, v0, v1

    #@36
    .line 783
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    #@39
    move-result v0

    #@3a
    .line 784
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    #@3d
    move-result v1

    #@3e
    .line 787
    iget-object v3, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@40
    if-eqz v3, :cond_4b

    #@42
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_4b

    #@48
    move/from16 v19, v2

    #@4a
    goto :goto_4d

    #@4b
    :cond_4b
    const/16 v19, 0x0

    #@4d
    .line 789
    :goto_4d
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@4f
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@52
    move-result v6

    #@53
    move v5, v0

    #@54
    move v4, v1

    #@55
    const/4 v2, 0x0

    #@56
    const/4 v3, 0x0

    #@57
    :goto_57
    if-ge v3, v6, :cond_171

    #@59
    .line 791
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    #@5b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    move-object/from16 v20, v0

    #@61
    check-cast v20, Landroid/view/View;

    #@63
    .line 792
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    #@66
    move-result v0

    #@67
    const/16 v1, 0x8

    #@69
    if-ne v0, v1, :cond_73

    #@6b
    move/from16 v22, v3

    #@6d
    move/from16 v29, v6

    #@6f
    move/from16 v28, v8

    #@71
    goto/16 :goto_169

    #@73
    .line 797
    :cond_73
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@76
    move-result-object v0

    #@77
    move-object v1, v0

    #@78
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@7a
    .line 800
    iget v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    #@7c
    if-ltz v0, :cond_bc

    #@7e
    if-eqz v13, :cond_bc

    #@80
    .line 801
    iget v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    #@82
    invoke-direct {v7, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    #@85
    move-result v0

    #@86
    .line 802
    iget v11, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    #@88
    .line 803
    invoke-static {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    #@8b
    move-result v11

    #@8c
    .line 802
    invoke-static {v11, v10}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@8f
    move-result v11

    #@90
    and-int/lit8 v11, v11, 0x7

    #@92
    move/from16 v22, v2

    #@94
    const/4 v2, 0x3

    #@95
    if-ne v11, v2, :cond_99

    #@97
    if-eqz v12, :cond_9e

    #@99
    :cond_99
    const/4 v2, 0x5

    #@9a
    if-ne v11, v2, :cond_aa

    #@9c
    if-eqz v12, :cond_aa

    #@9e
    :cond_9e
    sub-int v2, v14, v9

    #@a0
    sub-int/2addr v2, v0

    #@a1
    const/4 v0, 0x0

    #@a2
    .line 807
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@a5
    move-result v2

    #@a6
    move v11, v0

    #@a7
    move/from16 v21, v2

    #@a9
    goto :goto_c1

    #@aa
    :cond_aa
    if-ne v11, v2, :cond_ae

    #@ac
    if-eqz v12, :cond_b3

    #@ae
    :cond_ae
    const/4 v2, 0x3

    #@af
    if-ne v11, v2, :cond_be

    #@b1
    if-eqz v12, :cond_be

    #@b3
    :cond_b3
    sub-int/2addr v0, v8

    #@b4
    const/4 v11, 0x0

    #@b5
    .line 810
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@b8
    move-result v0

    #@b9
    move/from16 v21, v0

    #@bb
    goto :goto_c1

    #@bc
    :cond_bc
    move/from16 v22, v2

    #@be
    :cond_be
    const/4 v11, 0x0

    #@bf
    move/from16 v21, v11

    #@c1
    :goto_c1
    if-eqz v19, :cond_f3

    #@c3
    .line 816
    invoke-static/range {v20 .. v20}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@c6
    move-result v0

    #@c7
    if-nez v0, :cond_f3

    #@c9
    .line 819
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@cb
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@ce
    move-result v0

    #@cf
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@d1
    .line 820
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@d4
    move-result v2

    #@d5
    add-int/2addr v0, v2

    #@d6
    .line 821
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@d8
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@db
    move-result v2

    #@dc
    iget-object v11, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@de
    .line 822
    invoke-virtual {v11}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@e1
    move-result v11

    #@e2
    add-int/2addr v2, v11

    #@e3
    sub-int v0, v14, v0

    #@e5
    .line 824
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@e8
    move-result v0

    #@e9
    sub-int v2, v16, v2

    #@eb
    .line 826
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ee
    move-result v2

    #@ef
    move v11, v0

    #@f0
    move/from16 v23, v2

    #@f2
    goto :goto_f7

    #@f3
    :cond_f3
    move/from16 v11, p1

    #@f5
    move/from16 v23, p2

    #@f7
    .line 830
    :goto_f7
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@fa
    move-result-object v0

    #@fb
    if-eqz v0, :cond_11f

    #@fd
    const/16 v24, 0x0

    #@ff
    move-object v2, v1

    #@100
    move-object/from16 v1, p0

    #@102
    move-object/from16 v26, v2

    #@104
    move/from16 v25, v22

    #@106
    move-object/from16 v2, v20

    #@108
    move/from16 v22, v3

    #@10a
    move v3, v11

    #@10b
    move/from16 v27, v4

    #@10d
    move/from16 v4, v21

    #@10f
    move/from16 v28, v8

    #@111
    move v8, v5

    #@112
    move/from16 v5, v23

    #@114
    move/from16 v29, v6

    #@116
    move/from16 v6, v24

    #@118
    .line 831
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    #@11b
    move-result v0

    #@11c
    if-nez v0, :cond_139

    #@11e
    goto :goto_12c

    #@11f
    :cond_11f
    move-object/from16 v26, v1

    #@121
    move/from16 v27, v4

    #@123
    move/from16 v29, v6

    #@125
    move/from16 v28, v8

    #@127
    move/from16 v25, v22

    #@129
    move/from16 v22, v3

    #@12b
    move v8, v5

    #@12c
    :goto_12c
    const/4 v5, 0x0

    #@12d
    move-object/from16 v0, p0

    #@12f
    move-object/from16 v1, v20

    #@131
    move v2, v11

    #@132
    move/from16 v3, v21

    #@134
    move/from16 v4, v23

    #@136
    .line 833
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    #@139
    .line 837
    :cond_139
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    #@13c
    move-result v0

    #@13d
    add-int v0, v17, v0

    #@13f
    move-object/from16 v1, v26

    #@141
    iget v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@143
    add-int/2addr v0, v2

    #@144
    iget v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@146
    add-int/2addr v0, v2

    #@147
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@14a
    move-result v0

    #@14b
    .line 840
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    #@14e
    move-result v2

    #@14f
    add-int v2, v18, v2

    #@151
    iget v3, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    #@153
    add-int/2addr v2, v3

    #@154
    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@156
    add-int/2addr v2, v1

    #@157
    move/from16 v1, v27

    #@159
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@15c
    move-result v1

    #@15d
    .line 842
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    #@160
    move-result v2

    #@161
    move/from16 v11, v25

    #@163
    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    #@166
    move-result v2

    #@167
    move v5, v0

    #@168
    move v4, v1

    #@169
    :goto_169
    add-int/lit8 v3, v22, 0x1

    #@16b
    move/from16 v8, v28

    #@16d
    move/from16 v6, v29

    #@16f
    goto/16 :goto_57

    #@171
    :cond_171
    move v11, v2

    #@172
    move v1, v4

    #@173
    move v8, v5

    #@174
    const/high16 v0, -0x1000000

    #@176
    and-int/2addr v0, v11

    #@177
    move/from16 v2, p1

    #@179
    .line 845
    invoke-static {v8, v2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    #@17c
    move-result v0

    #@17d
    shl-int/lit8 v2, v11, 0x10

    #@17f
    move/from16 v3, p2

    #@181
    .line 847
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    #@184
    move-result v1

    #@185
    .line 849
    invoke-virtual {v7, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    #@188
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .registers 6

    #@0
    .line 760
    invoke-virtual/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@3
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 16

    #@0
    .line 1964
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    move v3, v2

    #@7
    :goto_7
    if-ge v2, v0, :cond_36

    #@9
    .line 1966
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v6

    #@d
    .line 1967
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@10
    move-result v4

    #@11
    const/16 v5, 0x8

    #@13
    if-ne v4, v5, :cond_16

    #@15
    goto :goto_33

    #@16
    .line 1972
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@1c
    .line 1973
    invoke-virtual {v4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    #@1f
    move-result v5

    #@20
    if-nez v5, :cond_23

    #@22
    goto :goto_33

    #@23
    .line 1977
    :cond_23
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@26
    move-result-object v4

    #@27
    if-eqz v4, :cond_33

    #@29
    move-object v5, p0

    #@2a
    move-object v7, p1

    #@2b
    move v8, p2

    #@2c
    move v9, p3

    #@2d
    move v10, p4

    #@2e
    .line 1979
    invoke-virtual/range {v4 .. v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    #@31
    move-result v4

    #@32
    or-int/2addr v3, v4

    #@33
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_7

    #@36
    :cond_36
    if-eqz v3, :cond_3c

    #@38
    const/4 p1, 0x1

    #@39
    .line 1984
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    #@3c
    :cond_3c
    return v3
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 14

    #@0
    .line 1994
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    move v3, v2

    #@7
    :goto_7
    if-ge v2, v0, :cond_35

    #@9
    .line 1996
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v6

    #@d
    .line 1997
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@10
    move-result v4

    #@11
    const/16 v5, 0x8

    #@13
    if-ne v4, v5, :cond_16

    #@15
    goto :goto_32

    #@16
    .line 2002
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@1c
    .line 2003
    invoke-virtual {v4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    #@1f
    move-result v5

    #@20
    if-nez v5, :cond_23

    #@22
    goto :goto_32

    #@23
    .line 2007
    :cond_23
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@26
    move-result-object v4

    #@27
    if-eqz v4, :cond_32

    #@29
    move-object v5, p0

    #@2a
    move-object v7, p1

    #@2b
    move v8, p2

    #@2c
    move v9, p3

    #@2d
    .line 2009
    invoke-virtual/range {v4 .. v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    #@30
    move-result v4

    #@31
    or-int/2addr v3, v4

    #@32
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_7

    #@35
    :cond_35
    return v3
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    .line 1913
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    #@9
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 22

    #@0
    move-object/from16 v8, p0

    #@2
    .line 1923
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@5
    move-result v9

    #@6
    const/4 v10, 0x0

    #@7
    move v0, v10

    #@8
    move v11, v0

    #@9
    move v12, v11

    #@a
    move v13, v12

    #@b
    :goto_b
    const/4 v14, 0x1

    #@c
    if-ge v11, v9, :cond_6e

    #@e
    .line 1925
    invoke-virtual {v8, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    .line 1926
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v1

    #@16
    const/16 v3, 0x8

    #@18
    if-ne v1, v3, :cond_1d

    #@1a
    move/from16 v15, p5

    #@1c
    goto :goto_6b

    #@1d
    .line 1931
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@23
    move/from16 v15, p5

    #@25
    .line 1932
    invoke-virtual {v1, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_2c

    #@2b
    goto :goto_6b

    #@2c
    .line 1936
    :cond_2c
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@2f
    move-result-object v1

    #@30
    if-eqz v1, :cond_6b

    #@32
    .line 1938
    iget-object v6, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@34
    aput v10, v6, v10

    #@36
    .line 1939
    aput v10, v6, v14

    #@38
    move-object v0, v1

    #@39
    move-object/from16 v1, p0

    #@3b
    move-object/from16 v3, p1

    #@3d
    move/from16 v4, p2

    #@3f
    move/from16 v5, p3

    #@41
    move/from16 v7, p5

    #@43
    .line 1940
    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    #@46
    .line 1942
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@48
    if-lez p2, :cond_51

    #@4a
    aget v0, v0, v10

    #@4c
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    #@4f
    move-result v0

    #@50
    goto :goto_57

    #@51
    :cond_51
    aget v0, v0, v10

    #@53
    .line 1943
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    #@56
    move-result v0

    #@57
    :goto_57
    move v12, v0

    #@58
    .line 1944
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@5a
    if-lez p3, :cond_63

    #@5c
    aget v0, v0, v14

    #@5e
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    #@61
    move-result v0

    #@62
    goto :goto_69

    #@63
    :cond_63
    aget v0, v0, v14

    #@65
    .line 1945
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    #@68
    move-result v0

    #@69
    :goto_69
    move v13, v0

    #@6a
    move v0, v14

    #@6b
    :cond_6b
    :goto_6b
    add-int/lit8 v11, v11, 0x1

    #@6d
    goto :goto_b

    #@6e
    .line 1951
    :cond_6e
    aput v12, p4, v10

    #@70
    .line 1952
    aput v13, p4, v14

    #@72
    if-eqz v0, :cond_77

    #@74
    .line 1955
    invoke-virtual {v8, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    #@77
    :cond_77
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13

    #@0
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    .line 1852
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    #@a
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15

    #@0
    const/4 v6, 0x0

    #@1
    .line 1859
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move v5, p5

    #@9
    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    #@c
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 25

    #@0
    move-object/from16 v10, p0

    #@2
    .line 1868
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@5
    move-result v11

    #@6
    const/4 v12, 0x0

    #@7
    move v0, v12

    #@8
    move v13, v0

    #@9
    move v14, v13

    #@a
    move v15, v14

    #@b
    :goto_b
    const/4 v9, 0x1

    #@c
    if-ge v13, v11, :cond_78

    #@e
    .line 1874
    invoke-virtual {v10, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    .line 1875
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v1

    #@16
    const/16 v3, 0x8

    #@18
    if-ne v1, v3, :cond_1b

    #@1a
    goto :goto_75

    #@1b
    .line 1880
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@21
    move/from16 v8, p6

    #@23
    .line 1881
    invoke-virtual {v1, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2a

    #@29
    goto :goto_75

    #@2a
    .line 1885
    :cond_2a
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_75

    #@30
    .line 1888
    iget-object v7, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@32
    aput v12, v7, v12

    #@34
    .line 1889
    aput v12, v7, v9

    #@36
    move-object v0, v1

    #@37
    move-object/from16 v1, p0

    #@39
    move-object/from16 v3, p1

    #@3b
    move/from16 v4, p2

    #@3d
    move/from16 v5, p3

    #@3f
    move/from16 v6, p4

    #@41
    move-object/from16 v16, v7

    #@43
    move/from16 v7, p5

    #@45
    move/from16 v8, p6

    #@47
    move-object/from16 v9, v16

    #@49
    .line 1891
    invoke-virtual/range {v0 .. v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    #@4c
    .line 1894
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@4e
    if-lez p4, :cond_57

    #@50
    aget v0, v0, v12

    #@52
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    #@55
    move-result v0

    #@56
    goto :goto_5d

    #@57
    :cond_57
    aget v0, v0, v12

    #@59
    .line 1895
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result v0

    #@5d
    :goto_5d
    move v14, v0

    #@5e
    if-lez p5, :cond_6a

    #@60
    .line 1896
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@62
    const/4 v1, 0x1

    #@63
    aget v0, v0, v1

    #@65
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    #@68
    move-result v0

    #@69
    goto :goto_73

    #@6a
    :cond_6a
    const/4 v1, 0x1

    #@6b
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    #@6d
    aget v0, v0, v1

    #@6f
    .line 1897
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    #@72
    move-result v0

    #@73
    :goto_73
    move v15, v0

    #@74
    move v0, v1

    #@75
    :cond_75
    :goto_75
    add-int/lit8 v13, v13, 0x1

    #@77
    goto :goto_b

    #@78
    :cond_78
    move v1, v9

    #@79
    .line 1903
    aget v2, p7, v12

    #@7b
    add-int/2addr v2, v14

    #@7c
    aput v2, p7, v12

    #@7e
    .line 1904
    aget v2, p7, v1

    #@80
    add-int/2addr v2, v15

    #@81
    aput v2, p7, v1

    #@83
    if-eqz v0, :cond_88

    #@85
    .line 1907
    invoke-virtual {v10, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    #@88
    :cond_88
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1796
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    #@4
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 14

    #@0
    .line 1802
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    #@5
    .line 1803
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    #@7
    .line 1805
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_c
    if-ge v1, v0, :cond_30

    #@e
    .line 1807
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v4

    #@12
    .line 1808
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@18
    .line 1809
    invoke-virtual {v2, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_1f

    #@1e
    goto :goto_2d

    #@1f
    .line 1813
    :cond_1f
    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@22
    move-result-object v2

    #@23
    if-eqz v2, :cond_2d

    #@25
    move-object v3, p0

    #@26
    move-object v5, p1

    #@27
    move-object v6, p2

    #@28
    move v7, p3

    #@29
    move v8, p4

    #@2a
    .line 1815
    invoke-virtual/range {v2 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    #@2d
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_c

    #@30
    :cond_30
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8

    #@0
    .line 3241
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 3242
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 3246
    :cond_8
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    #@a
    .line 3247
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 3249
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    #@13
    .line 3251
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@16
    move-result v0

    #@17
    const/4 v1, 0x0

    #@18
    :goto_18
    if-ge v1, v0, :cond_3d

    #@1a
    .line 3252
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v2

    #@1e
    .line 3253
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@21
    move-result v3

    #@22
    .line 3254
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@25
    move-result-object v4

    #@26
    .line 3255
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@29
    move-result-object v4

    #@2a
    const/4 v5, -0x1

    #@2b
    if-eq v3, v5, :cond_3a

    #@2d
    if-eqz v4, :cond_3a

    #@2f
    .line 3258
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/os/Parcelable;

    #@35
    if-eqz v3, :cond_3a

    #@37
    .line 3260
    invoke-virtual {v4, p0, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    #@3a
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_18

    #@3d
    :cond_3d
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    #@0
    .line 3269
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 3271
    new-instance v1, Landroid/util/SparseArray;

    #@b
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@e
    .line 3272
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@11
    move-result v2

    #@12
    const/4 v3, 0x0

    #@13
    :goto_13
    if-ge v3, v2, :cond_38

    #@15
    .line 3273
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v4

    #@19
    .line 3274
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@1c
    move-result v5

    #@1d
    .line 3275
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v6

    #@21
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@23
    .line 3276
    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@26
    move-result-object v6

    #@27
    const/4 v7, -0x1

    #@28
    if-eq v5, v7, :cond_35

    #@2a
    if-eqz v6, :cond_35

    #@2c
    .line 3280
    invoke-virtual {v6, p0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    #@2f
    move-result-object v4

    #@30
    if-eqz v4, :cond_35

    #@32
    .line 3282
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@35
    :cond_35
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_13

    #@38
    .line 3286
    :cond_38
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    #@3a
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1765
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 19

    #@0
    move/from16 v7, p4

    #@2
    .line 1773
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@5
    move-result v8

    #@6
    const/4 v9, 0x0

    #@7
    move v10, v9

    #@8
    move v11, v10

    #@9
    :goto_9
    if-ge v10, v8, :cond_3d

    #@b
    move-object v12, p0

    #@c
    .line 1775
    invoke-virtual {p0, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    .line 1776
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@13
    move-result v0

    #@14
    const/16 v1, 0x8

    #@16
    if-ne v0, v1, :cond_19

    #@18
    goto :goto_3a

    #@19
    .line 1780
    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v0

    #@1d
    move-object v13, v0

    #@1e
    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@20
    .line 1781
    invoke-virtual {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@23
    move-result-object v0

    #@24
    if-eqz v0, :cond_37

    #@26
    move-object v1, p0

    #@27
    move-object v3, p1

    #@28
    move-object/from16 v4, p2

    #@2a
    move/from16 v5, p3

    #@2c
    move/from16 v6, p4

    #@2e
    .line 1783
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    #@31
    move-result v0

    #@32
    or-int/2addr v11, v0

    #@33
    .line 1786
    invoke-virtual {v13, v7, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    #@36
    goto :goto_3a

    #@37
    .line 1788
    :cond_37
    invoke-virtual {v13, v7, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    #@3a
    :goto_3a
    add-int/lit8 v10, v10, 0x1

    #@3c
    goto :goto_9

    #@3d
    :cond_3d
    move-object v12, p0

    #@3e
    return v11
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1823
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    #@4
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 8

    #@0
    .line 1829
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    #@5
    .line 1831
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_2f

    #@c
    .line 1833
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    .line 1834
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@16
    .line 1835
    invoke-virtual {v3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1d

    #@1c
    goto :goto_2c

    #@1d
    .line 1839
    :cond_1d
    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@20
    move-result-object v4

    #@21
    if-eqz v4, :cond_26

    #@23
    .line 1841
    invoke-virtual {v4, p0, v2, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    #@26
    .line 1843
    :cond_26
    invoke-virtual {v3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    #@29
    .line 1844
    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    #@2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_a

    #@2f
    :cond_2f
    const/4 p1, 0x0

    #@30
    .line 1846
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    #@32
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v2

    #@8
    .line 557
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    #@a
    const/4 v4, 0x1

    #@b
    const/4 v5, 0x0

    #@c
    if-nez v3, :cond_15

    #@e
    invoke-direct {v0, v1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2b

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v3, v5

    #@16
    .line 560
    :goto_16
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    #@18
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@1e
    .line 561
    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@21
    move-result-object v6

    #@22
    if-eqz v6, :cond_2b

    #@24
    .line 563
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    #@26
    invoke-virtual {v6, v0, v7, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@29
    move-result v6

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v6, v5

    #@2c
    .line 568
    :goto_2c
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    #@2e
    const/4 v8, 0x0

    #@2f
    if-nez v7, :cond_37

    #@31
    .line 569
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@34
    move-result v1

    #@35
    or-int/2addr v6, v1

    #@36
    goto :goto_4a

    #@37
    :cond_37
    if-eqz v3, :cond_4a

    #@39
    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3c
    move-result-wide v11

    #@3d
    const/4 v13, 0x3

    #@3e
    const/4 v14, 0x0

    #@3f
    const/4 v15, 0x0

    #@40
    const/16 v16, 0x0

    #@42
    move-wide v9, v11

    #@43
    .line 573
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@46
    move-result-object v8

    #@47
    .line 576
    invoke-super {v0, v8}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@4a
    :cond_4a
    :goto_4a
    if-eqz v8, :cond_4f

    #@4c
    .line 580
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@4f
    :cond_4f
    if-eq v2, v4, :cond_54

    #@51
    const/4 v1, 0x3

    #@52
    if-ne v2, v1, :cond_57

    #@54
    .line 584
    :cond_54
    invoke-direct {v0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    #@57
    :cond_57
    return v6
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 954
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    #@9
    return-void
.end method

.method removePreDrawListener()V
    .registers 3

    #@0
    .line 1634
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 1635
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 1636
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@b
    move-result-object v0

    #@c
    .line 1637
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    .line 1640
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    #@14
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    #@0
    .line 3293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    .line 3294
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_14

    #@c
    .line 3297
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    return p1

    #@14
    .line 3301
    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    #@17
    move-result p1

    #@18
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    #@0
    .line 592
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    #@3
    if-eqz p1, :cond_10

    #@5
    .line 593
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    #@7
    if-nez p1, :cond_10

    #@9
    const/4 p1, 0x0

    #@a
    .line 594
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    #@d
    const/4 p1, 0x1

    #@e
    .line 595
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    #@10
    :cond_10
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .registers 2

    #@0
    .line 938
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    #@3
    .line 939
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    #@6
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    #@0
    .line 259
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@2
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 302
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_43

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 304
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    :cond_a
    if-eqz p1, :cond_10

    #@c
    .line 306
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    :cond_10
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_40

    #@14
    .line 308
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@17
    move-result p1

    #@18
    if-eqz p1, :cond_23

    #@1a
    .line 309
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@23
    .line 311
    :cond_23
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@25
    .line 312
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@28
    move-result v0

    #@29
    .line 311
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@2c
    .line 313
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@2e
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getVisibility()I

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
    .line 314
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@40
    .line 316
    :cond_40
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@43
    :cond_43
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    #@0
    .line 380
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@5
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 369
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    #@0
    .line 354
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

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
    .line 357
    :goto_9
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v1, :cond_18

    #@d
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    #@10
    move-result v1

    #@11
    if-eq v1, p1, :cond_18

    #@13
    .line 358
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@18
    :cond_18
    return-void
.end method

.method final setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    #@0
    .line 384
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@2
    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2d

    #@8
    .line 385
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@a
    const/4 v0, 0x1

    #@b
    const/4 v1, 0x0

    #@c
    if-eqz p1, :cond_16

    #@e
    .line 386
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@11
    move-result v2

    #@12
    if-lez v2, :cond_16

    #@14
    move v2, v0

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v2, v1

    #@17
    :goto_17
    iput-boolean v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    #@19
    if-nez v2, :cond_22

    #@1b
    .line 387
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v2

    #@1f
    if-nez v2, :cond_22

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v0, v1

    #@23
    :goto_23
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    #@26
    .line 390
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    #@29
    move-result-object p1

    #@2a
    .line 391
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestLayout()V

    #@2d
    :cond_2d
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    .line 349
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_d

    #@6
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@8
    if-ne p1, v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p1, 0x1

    #@e
    :goto_e
    return p1
.end method
