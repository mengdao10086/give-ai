.class Landroidx/core/view/ViewCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 4797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static callCompatInsetAnimationCallback(Landroid/view/WindowInsets;Landroid/view/View;)V
    .registers 3

    #@0
    .line 4886
    sget v0, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    #@2
    .line 4887
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 4890
    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@d
    :cond_d
    return-void
.end method

.method static computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    #@0
    .line 4811
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 4814
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    #@9
    move-result-object p1

    #@a
    .line 4813
    invoke-static {p1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    .line 4816
    :cond_f
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@12
    return-object p1
.end method

.method static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 4

    #@0
    .line 4897
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 3

    #@0
    .line 4903
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 5

    #@0
    .line 5006
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 6

    #@0
    .line 4999
    invoke-virtual/range {p0 .. p5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 1

    #@0
    .line 4958
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    #@0
    .line 4963
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getElevation(Landroid/view/View;)F
    .registers 1

    #@0
    .line 4943
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 1

    #@0
    .line 4805
    invoke-static {p0}, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 1

    #@0
    .line 4948
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getTranslationZ(Landroid/view/View;)F
    .registers 1

    #@0
    .line 4928
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getZ(Landroid/view/View;)F
    .registers 1

    #@0
    .line 4908
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 4993
    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static isImportantForAccessibility(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 4938
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 4978
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 4953
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 4968
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@3
    return-void
.end method

.method static setElevation(Landroid/view/View;F)V
    .registers 2

    #@0
    .line 4918
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    #@3
    return-void
.end method

.method static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 4973
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    #@3
    return-void
.end method

.method static setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 4

    #@0
    .line 4826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-ge v0, v1, :cond_b

    #@6
    .line 4827
    sget v0, Landroidx/core/R$id;->tag_on_apply_window_listener:I

    #@8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@b
    :cond_b
    if-nez p1, :cond_19

    #@d
    .line 4833
    sget p1, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    #@f
    .line 4834
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    #@15
    .line 4836
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@18
    return-void

    #@19
    .line 4840
    :cond_19
    new-instance v0, Landroidx/core/view/ViewCompat$Api21Impl$1;

    #@1b
    invoke-direct {v0, p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl$1;-><init>(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@1e
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@21
    return-void
.end method

.method static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    #@0
    .line 4933
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static setTranslationZ(Landroid/view/View;F)V
    .registers 2

    #@0
    .line 4923
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    #@3
    return-void
.end method

.method static setZ(Landroid/view/View;F)V
    .registers 2

    #@0
    .line 4913
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    #@3
    return-void
.end method

.method static startNestedScroll(Landroid/view/View;I)Z
    .registers 2

    #@0
    .line 4983
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static stopNestedScroll(Landroid/view/View;)V
    .registers 1

    #@0
    .line 4988
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    #@3
    return-void
.end method
