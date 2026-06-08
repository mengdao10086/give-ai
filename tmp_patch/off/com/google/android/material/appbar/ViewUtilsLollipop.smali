.class Lcom/google/android/material/appbar/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "ViewUtilsLollipop.java"


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x1010448

    #@7
    aput v2, v0, v1

    #@9
    .line 36
    sput-object v0, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    #@b
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .registers 2

    #@0
    .line 39
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@5
    return-void
.end method

.method static setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V
    .registers 13

    #@0
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    sget v1, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    #@6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@9
    move-result v0

    #@a
    .line 64
    new-instance v1, Landroid/animation/StateListAnimator;

    #@c
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    #@f
    const/4 v2, 0x3

    #@10
    new-array v2, v2, [I

    #@12
    const/4 v3, 0x0

    #@13
    const v4, 0x101009e

    #@16
    aput v4, v2, v3

    #@18
    .line 67
    sget v5, Lcom/google/android/material/R$attr;->state_liftable:I

    #@1a
    const/4 v6, 0x1

    #@1b
    aput v5, v2, v6

    #@1d
    sget v5, Lcom/google/android/material/R$attr;->state_lifted:I

    #@1f
    neg-int v5, v5

    #@20
    const/4 v7, 0x2

    #@21
    aput v5, v2, v7

    #@23
    new-array v5, v6, [F

    #@25
    const/4 v7, 0x0

    #@26
    aput v7, v5, v3

    #@28
    const-string v8, "elevation"

    #@2a
    .line 69
    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@2d
    move-result-object v5

    #@2e
    int-to-long v9, v0

    #@2f
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@32
    move-result-object v0

    #@33
    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@36
    new-array v0, v6, [I

    #@38
    aput v4, v0, v3

    #@3a
    new-array v2, v6, [F

    #@3c
    aput p1, v2, v3

    #@3e
    .line 74
    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@41
    move-result-object p1

    #@42
    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@45
    move-result-object p1

    #@46
    .line 72
    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@49
    new-array p1, v3, [I

    #@4b
    new-array v0, v6, [F

    #@4d
    aput v7, v0, v3

    #@4f
    .line 77
    invoke-static {p0, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@52
    move-result-object v0

    #@53
    const-wide/16 v2, 0x0

    #@55
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@5c
    .line 79
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    #@5f
    return-void
.end method

.method static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 12

    #@0
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v6

    #@4
    .line 45
    sget-object v2, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    #@6
    const/4 v7, 0x0

    #@7
    new-array v5, v7, [I

    #@9
    move-object v0, v6

    #@a
    move-object v1, p1

    #@b
    move v3, p2

    #@c
    move v4, p3

    #@d
    .line 46
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object p1

    #@11
    .line 49
    :try_start_11
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@14
    move-result p2

    #@15
    if-eqz p2, :cond_22

    #@17
    .line 51
    invoke-virtual {p1, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1a
    move-result p2

    #@1b
    invoke-static {v6, p2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    #@1e
    move-result-object p2

    #@1f
    .line 52
    invoke-virtual {p0, p2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_26

    #@22
    .line 55
    :cond_22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@25
    return-void

    #@26
    :catchall_26
    move-exception p0

    #@27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 56
    throw p0
.end method
