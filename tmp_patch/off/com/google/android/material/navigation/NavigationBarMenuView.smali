.class public abstract Lcom/google/android/material/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "NavigationBarMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final ITEM_POOL_SIZE:I = 0x5

.field private static final NO_PADDING:I = -0x1


# instance fields
.field private final badgeDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

.field private itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

.field private itemActiveIndicatorEnabled:Z

.field private itemActiveIndicatorHeight:I

.field private itemActiveIndicatorMarginHorizontal:I

.field private itemActiveIndicatorResizeable:Z

.field private itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private itemActiveIndicatorWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private itemPaddingBottom:I

.field private itemPaddingTop:I

.field private final itemPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/navigation/NavigationBarItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onTouchListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroidx/transition/TransitionSet;


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
    .line 69
    sput-object v1, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    #@b
    new-array v0, v0, [I

    #@d
    const v1, -0x101009e

    #@10
    aput v1, v0, v3

    #@12
    .line 70
    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    #@14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    #@0
    .line 111
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    .line 74
    new-instance p1, Landroidx/core/util/Pools$SynchronizedPool;

    #@5
    const/4 v0, 0x5

    #@6
    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    #@9
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    #@b
    .line 77
    new-instance p1, Landroid/util/SparseArray;

    #@d
    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    #@10
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    #@12
    const/4 p1, 0x0

    #@13
    .line 83
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@15
    .line 84
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@17
    .line 95
    new-instance v1, Landroid/util/SparseArray;

    #@19
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    #@1c
    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@1e
    const/4 v0, -0x1

    #@1f
    .line 97
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    #@21
    .line 98
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    #@23
    .line 104
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    #@25
    const v0, 0x1010038

    #@28
    .line 113
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    #@2e
    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isInEditMode()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_38

    #@34
    const/4 p1, 0x0

    #@35
    .line 116
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    #@37
    goto :goto_71

    #@38
    .line 118
    :cond_38
    new-instance v0, Landroidx/transition/AutoTransition;

    #@3a
    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    #@3d
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    #@3f
    .line 119
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    #@42
    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    #@45
    move-result-object p1

    #@46
    sget v1, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    #@48
    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getResources()Landroid/content/res/Resources;

    #@4b
    move-result-object v2

    #@4c
    sget v3, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    #@4e
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@51
    move-result v2

    #@52
    .line 121
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@55
    move-result p1

    #@56
    int-to-long v1, p1

    #@57
    .line 120
    invoke-virtual {v0, v1, v2}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    #@5a
    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    #@5d
    move-result-object p1

    #@5e
    sget v1, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    #@60
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@62
    .line 126
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@65
    move-result-object p1

    #@66
    .line 125
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    #@69
    .line 130
    new-instance p1, Lcom/google/android/material/internal/TextScale;

    #@6b
    invoke-direct {p1}, Lcom/google/android/material/internal/TextScale;-><init>()V

    #@6e
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@71
    .line 133
    :goto_71
    new-instance p1, Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    #@73
    invoke-direct {p1, p0}, Lcom/google/android/material/navigation/NavigationBarMenuView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;)V

    #@76
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    #@78
    const/4 p1, 0x1

    #@79
    .line 145
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@7c
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationBarMenuView;)Lcom/google/android/material/navigation/NavigationBarPresenter;
    .registers 1

    #@0
    .line 65
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationBarMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    #@0
    .line 65
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object p0
.end method

.method private createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 531
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    if-eqz v0, :cond_15

    #@4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 532
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@c
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@f
    .line 534
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    #@11
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@14
    return-object v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return-object v0
.end method

.method private getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;
    .registers 2

    #@0
    .line 787
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    #@2
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/navigation/NavigationBarItemView;

    #@8
    if-nez v0, :cond_12

    #@a
    .line 789
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;

    #@11
    move-result-object v0

    #@12
    :cond_12
    return-object v0
.end method

.method private isValidId(I)Z
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_5

    #@3
    const/4 p1, 0x1

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 p1, 0x0

    #@6
    :goto_6
    return p1
.end method

.method private removeUnusedBadges()V
    .registers 5

    #@0
    .line 890
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    move v2, v1

    #@7
    .line 892
    :goto_7
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@c
    move-result v3

    #@d
    if-ge v2, v3, :cond_23

    #@f
    .line 893
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@11
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_7

    #@23
    .line 896
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@28
    move-result v2

    #@29
    if-ge v1, v2, :cond_43

    #@2b
    .line 897
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@30
    move-result v2

    #@31
    .line 898
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    if-nez v3, :cond_40

    #@3b
    .line 899
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@3d
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    #@40
    :cond_40
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_23

    #@43
    :cond_43
    return-void
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .registers 4

    #@0
    .line 877
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    #@3
    move-result v0

    #@4
    .line 878
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isValidId(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b

    #@a
    return-void

    #@b
    .line 883
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    #@13
    if-eqz v0, :cond_18

    #@15
    .line 885
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    #@18
    :cond_18
    return-void
.end method

.method private validateMenuItemId(I)V
    .registers 4

    #@0
    .line 935
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isValidId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 936
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object p1

    #@12
    const-string v1, " is not a valid view id"

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method


# virtual methods
.method public buildMenuView()V
    .registers 7

    #@0
    .line 681
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeAllViews()V

    #@3
    .line 682
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz v0, :cond_1b

    #@8
    .line 683
    array-length v2, v0

    #@9
    move v3, v1

    #@a
    :goto_a
    if-ge v3, v2, :cond_1b

    #@c
    aget-object v4, v0, v3

    #@e
    if-eqz v4, :cond_18

    #@10
    .line 685
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    #@12
    invoke-interface {v5, v4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@15
    .line 686
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->clear()V

    #@18
    :cond_18
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_a

    #@1b
    .line 691
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1d
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_2b

    #@23
    .line 692
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@25
    .line 693
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@27
    const/4 v0, 0x0

    #@28
    .line 694
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@2a
    return-void

    #@2b
    .line 697
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeUnusedBadges()V

    #@2e
    .line 699
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@30
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@33
    move-result v0

    #@34
    new-array v0, v0, [Lcom/google/android/material/navigation/NavigationBarItemView;

    #@36
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@38
    .line 700
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    #@3a
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@3c
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v2

    #@44
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    #@47
    move-result v0

    #@48
    move v2, v1

    #@49
    .line 701
    :goto_49
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4b
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@4e
    move-result v3

    #@4f
    const/4 v4, 0x1

    #@50
    if-ge v2, v3, :cond_108

    #@52
    .line 702
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    #@54
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    #@57
    .line 703
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@59
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@5c
    move-result-object v3

    #@5d
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    #@60
    .line 704
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    #@62
    invoke-virtual {v3, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    #@65
    .line 705
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;

    #@68
    move-result-object v3

    #@69
    .line 706
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@6b
    aput-object v3, v4, v2

    #@6d
    .line 707
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    #@6f
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    #@72
    .line 708
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    #@74
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    #@77
    .line 710
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    #@79
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@7c
    .line 711
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    #@7e
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    #@81
    .line 712
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    #@83
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    #@86
    .line 713
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    #@88
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@8b
    .line 714
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    #@8d
    const/4 v5, -0x1

    #@8e
    if-eq v4, v5, :cond_93

    #@90
    .line 715
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    #@93
    .line 717
    :cond_93
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    #@95
    if-eq v4, v5, :cond_9a

    #@97
    .line 718
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    #@9a
    .line 720
    :cond_9a
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    #@9c
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    #@9f
    .line 721
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    #@a1
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    #@a4
    .line 722
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    #@a6
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    #@a9
    .line 723
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b0
    .line 724
    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    #@b2
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    #@b5
    .line 725
    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    #@b7
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    #@ba
    .line 726
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    #@bc
    if-eqz v4, :cond_c2

    #@be
    .line 727
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    #@c1
    goto :goto_c7

    #@c2
    .line 729
    :cond_c2
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    #@c4
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    #@c7
    .line 731
    :goto_c7
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    #@c9
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    #@cc
    .line 732
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    #@cf
    .line 733
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    #@d1
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    #@d4
    .line 734
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@d6
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@d9
    move-result-object v4

    #@da
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@dc
    .line 735
    invoke-virtual {v3, v4, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    #@df
    .line 736
    invoke-virtual {v3, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPosition(I)V

    #@e2
    .line 737
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@e5
    move-result v4

    #@e6
    .line 738
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    #@e8
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@eb
    move-result-object v5

    #@ec
    check-cast v5, Landroid/view/View$OnTouchListener;

    #@ee
    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@f1
    .line 739
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    #@f3
    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@f6
    .line 740
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@f8
    if-eqz v5, :cond_fe

    #@fa
    if-ne v4, v5, :cond_fe

    #@fc
    .line 741
    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@fe
    .line 743
    :cond_fe
    invoke-direct {p0, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    #@101
    .line 744
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->addView(Landroid/view/View;)V

    #@104
    add-int/lit8 v2, v2, 0x1

    #@106
    goto/16 :goto_49

    #@108
    .line 746
    :cond_108
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@10a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@10d
    move-result v0

    #@10e
    sub-int/2addr v0, v4

    #@10f
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@111
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@114
    move-result v0

    #@115
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@117
    .line 747
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@119
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@11c
    move-result-object v0

    #@11d
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    #@120
    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 12

    #@0
    .line 656
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 657
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

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
    .line 660
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    #@19
    move-result-object p1

    #@1a
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    #@1c
    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@1f
    move-result-object p1

    #@20
    .line 661
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    #@23
    move-result-object v3

    #@24
    .line 662
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@27
    move-result-object v3

    #@28
    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    #@2a
    .line 663
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_31

    #@30
    return-object v1

    #@31
    .line 666
    :cond_31
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@33
    .line 667
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@36
    move-result v1

    #@37
    .line 668
    new-instance v3, Landroid/content/res/ColorStateList;

    #@39
    const/4 v4, 0x3

    #@3a
    new-array v5, v4, [[I

    #@3c
    sget-object v6, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    #@3e
    const/4 v7, 0x0

    #@3f
    aput-object v6, v5, v7

    #@41
    sget-object v8, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    #@43
    aput-object v8, v5, v2

    #@45
    sget-object v8, Lcom/google/android/material/navigation/NavigationBarMenuView;->EMPTY_STATE_SET:[I

    #@47
    const/4 v9, 0x2

    #@48
    aput-object v8, v5, v9

    #@4a
    new-array v4, v4, [I

    #@4c
    .line 671
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

.method protected abstract createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
.end method

.method public findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;
    .registers 7

    #@0
    .line 906
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    #@3
    .line 907
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@5
    if-eqz v0, :cond_17

    #@7
    .line 908
    array-length v1, v0

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v1, :cond_17

    #@b
    aget-object v3, v0, v2

    #@d
    .line 909
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    #@10
    move-result v4

    #@11
    if-ne v4, p1, :cond_14

    #@13
    return-object v3

    #@14
    :cond_14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_9

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    return-object p1
.end method

.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    #@0
    .line 839
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Lcom/google/android/material/badge/BadgeDrawable;

    #@8
    return-object p1
.end method

.method getBadgeDrawables()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    #@0
    .line 819
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 191
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 503
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .registers 2

    #@0
    .line 360
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    #@2
    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .registers 2

    #@0
    .line 408
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    #@2
    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .registers 2

    #@0
    .line 433
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    #@2
    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 458
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .registers 2

    #@0
    .line 384
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    #@2
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 599
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@2
    if-eqz v0, :cond_f

    #@4
    array-length v1, v0

    #@5
    if-lez v1, :cond_f

    #@7
    const/4 v1, 0x0

    #@8
    .line 602
    aget-object v0, v0, v1

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 604
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    #@11
    return-object v0
.end method

.method public getItemBackgroundRes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 549
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    #@2
    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    #@0
    .line 213
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    #@2
    return v0
.end method

.method public getItemPaddingBottom()I
    .registers 2

    #@0
    .line 339
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    #@2
    return v0
.end method

.method public getItemPaddingTop()I
    .registers 2

    #@0
    .line 318
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    #@2
    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 589
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .registers 2

    #@0
    .line 295
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    #@2
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .registers 2

    #@0
    .line 266
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    #@2
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 237
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    #@0
    .line 631
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    #@2
    return v0
.end method

.method protected getMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 2

    #@0
    .line 927
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 4

    #@0
    .line 850
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    #@3
    .line 851
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    #@b
    if-nez v0, :cond_1a

    #@d
    .line 854
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    #@14
    move-result-object v0

    #@15
    .line 855
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    .line 857
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    #@1d
    move-result-object p1

    #@1e
    if-eqz p1, :cond_23

    #@20
    .line 859
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    #@23
    :cond_23
    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    #@0
    .line 795
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@2
    return v0
.end method

.method protected getSelectedItemPosition()I
    .registers 2

    #@0
    .line 922
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@2
    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    #@0
    .line 150
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-void
.end method

.method protected isItemActiveIndicatorResizeable()Z
    .registers 2

    #@0
    .line 480
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    #@2
    return v0
.end method

.method protected isShifting(II)Z
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    if-ne p1, v0, :cond_9

    #@5
    const/4 p1, 0x3

    #@6
    if-le p2, p1, :cond_c

    #@8
    goto :goto_d

    #@9
    :cond_9
    if-nez p1, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v1, v2

    #@d
    :goto_d
    return v1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    #@0
    .line 160
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 161
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@6
    move-result-object p1

    #@7
    .line 162
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    .line 165
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x0

    #@12
    const/4 v2, 0x1

    #@13
    .line 163
    invoke-static {v2, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    #@16
    move-result-object v0

    #@17
    .line 162
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    #@1a
    return-void
.end method

.method removeBadge(I)V
    .registers 4

    #@0
    .line 865
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    #@3
    .line 866
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    #@b
    .line 867
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_14

    #@11
    .line 869
    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->removeBadge()V

    #@14
    :cond_14
    if-eqz v0, :cond_1b

    #@16
    .line 872
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@1b
    :cond_1b
    return-void
.end method

.method restoreBadgeDrawables(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 823
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_22

    #@8
    .line 824
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@b
    move-result v2

    #@c
    .line 825
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@11
    move-result v3

    #@12
    if-gez v3, :cond_1f

    #@14
    .line 827
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@16
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    #@1c
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_2

    #@22
    .line 830
    :cond_22
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@24
    if-eqz p1, :cond_3d

    #@26
    .line 831
    array-length v1, p1

    #@27
    :goto_27
    if-ge v0, v1, :cond_3d

    #@29
    aget-object v2, p1, v0

    #@2b
    .line 832
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    #@30
    move-result v4

    #@31
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    #@37
    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    #@3a
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_27

    #@3d
    :cond_3d
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 6

    #@0
    .line 176
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    #@2
    .line 177
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 178
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 179
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    #@0
    .line 512
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    #@2
    .line 513
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz p1, :cond_16

    #@6
    .line 514
    array-length v0, p1

    #@7
    const/4 v1, 0x0

    #@8
    :goto_8
    if-ge v1, v0, :cond_16

    #@a
    aget-object v2, p1, v1

    #@c
    .line 515
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .registers 6

    #@0
    .line 369
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    #@2
    .line 370
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 371
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 372
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .registers 6

    #@0
    .line 417
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    #@2
    .line 418
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 419
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 420
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .registers 6

    #@0
    .line 443
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    #@2
    .line 444
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 445
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 446
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method protected setItemActiveIndicatorResizeable(Z)V
    .registers 6

    #@0
    .line 488
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    #@2
    .line 489
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 490
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 491
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 6

    #@0
    .line 468
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    .line 469
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz p1, :cond_16

    #@6
    .line 470
    array-length v0, p1

    #@7
    const/4 v1, 0x0

    #@8
    :goto_8
    if-ge v1, v0, :cond_16

    #@a
    aget-object v2, p1, v1

    #@c
    .line 471
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .registers 6

    #@0
    .line 393
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    #@2
    .line 394
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 395
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 396
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 558
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    #@2
    .line 559
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 560
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 561
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .registers 6

    #@0
    .line 304
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    #@2
    .line 305
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 306
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 307
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 6

    #@0
    .line 202
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    #@2
    .line 203
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 204
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 205
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .registers 8

    #@0
    if-nez p2, :cond_8

    #@2
    .line 641
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@7
    goto :goto_d

    #@8
    .line 643
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@d
    .line 645
    :goto_d
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@f
    if-eqz v0, :cond_27

    #@11
    .line 646
    array-length v1, v0

    #@12
    const/4 v2, 0x0

    #@13
    :goto_13
    if-ge v2, v1, :cond_27

    #@15
    aget-object v3, v0, v2

    #@17
    .line 647
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@1e
    move-result v4

    #@1f
    if-ne v4, p1, :cond_24

    #@21
    .line 648
    invoke-virtual {v3, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@24
    :cond_24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_13

    #@27
    :cond_27
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 6

    #@0
    .line 346
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    #@2
    .line 347
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 348
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 349
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 6

    #@0
    .line 326
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    #@2
    .line 327
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 328
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 329
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    #@0
    .line 574
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    #@2
    .line 575
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 576
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 577
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .registers 7

    #@0
    .line 275
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    #@2
    .line 276
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 277
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_19

    #@a
    aget-object v3, v0, v2

    #@c
    .line 278
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    #@f
    .line 281
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    #@11
    if-eqz v4, :cond_16

    #@13
    .line 282
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@16
    :cond_16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_8

    #@19
    :cond_19
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .registers 7

    #@0
    .line 246
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    #@2
    .line 247
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 248
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_19

    #@a
    aget-object v3, v0, v2

    #@c
    .line 249
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    #@f
    .line 252
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    #@11
    if-eqz v4, :cond_16

    #@13
    .line 253
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@16
    :cond_16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_8

    #@19
    :cond_19
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    #@0
    .line 222
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    #@2
    .line 223
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 224
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, v0, v2

    #@c
    .line 225
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 2

    #@0
    .line 622
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    #@2
    return-void
.end method

.method public setPresenter(Lcom/google/android/material/navigation/NavigationBarPresenter;)V
    .registers 2

    #@0
    .line 676
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    #@2
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .registers 6

    #@0
    .line 806
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_21

    #@9
    .line 808
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@b
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@e
    move-result-object v2

    #@f
    .line 809
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    #@12
    move-result v3

    #@13
    if-ne p1, v3, :cond_1e

    #@15
    .line 810
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@17
    .line 811
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@19
    const/4 p1, 0x1

    #@1a
    .line 812
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    #@1d
    goto :goto_21

    #@1e
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_7

    #@21
    :cond_21
    :goto_21
    return-void
.end method

.method public updateMenuView()V
    .registers 7

    #@0
    .line 751
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    if-eqz v0, :cond_7f

    #@4
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@6
    if-nez v1, :cond_a

    #@8
    goto/16 :goto_7f

    #@a
    .line 755
    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@d
    move-result v0

    #@e
    .line 756
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@10
    array-length v1, v1

    #@11
    if-eq v0, v1, :cond_17

    #@13
    .line 758
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    #@16
    return-void

    #@17
    .line 762
    :cond_17
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@19
    const/4 v2, 0x0

    #@1a
    move v3, v2

    #@1b
    :goto_1b
    if-ge v3, v0, :cond_34

    #@1d
    .line 765
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1f
    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@22
    move-result-object v4

    #@23
    .line 766
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_31

    #@29
    .line 767
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    #@2c
    move-result v4

    #@2d
    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@2f
    .line 768
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    #@31
    :cond_31
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_1b

    #@34
    .line 771
    :cond_34
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    #@36
    if-eq v1, v3, :cond_3f

    #@38
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    #@3a
    if-eqz v1, :cond_3f

    #@3c
    .line 773
    invoke-static {p0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@3f
    .line 776
    :cond_3f
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    #@41
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@43
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@4a
    move-result v3

    #@4b
    invoke-virtual {p0, v1, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    #@4e
    move-result v1

    #@4f
    move v3, v2

    #@50
    :goto_50
    if-ge v3, v0, :cond_7f

    #@52
    .line 778
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    #@54
    const/4 v5, 0x1

    #@55
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    #@58
    .line 779
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@5a
    aget-object v4, v4, v3

    #@5c
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    #@5e
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    #@61
    .line 780
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@63
    aget-object v4, v4, v3

    #@65
    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    #@68
    .line 781
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    #@6a
    aget-object v4, v4, v3

    #@6c
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@6e
    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@71
    move-result-object v5

    #@72
    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@74
    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    #@77
    .line 782
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    #@79
    invoke-virtual {v4, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    #@7c
    add-int/lit8 v3, v3, 0x1

    #@7e
    goto :goto_50

    #@7f
    :cond_7f
    :goto_7f
    return-void
.end method
