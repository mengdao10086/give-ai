.class Landroidx/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi14.java"


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ViewGroupUtilsApi14"

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 8

    #@0
    .line 109
    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    #@2
    const-string v1, "Failed to access cancel method by reflection"

    #@4
    const/4 v2, 0x0

    #@5
    const-string v3, "ViewGroupUtilsApi14"

    #@7
    if-nez v0, :cond_1f

    #@9
    const/4 v0, 0x1

    #@a
    .line 111
    :try_start_a
    const-class v4, Landroid/animation/LayoutTransition;

    #@c
    const-string v5, "cancel"

    #@e
    new-array v6, v2, [Ljava/lang/Class;

    #@10
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13
    move-result-object v4

    #@14
    sput-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    #@16
    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_19} :catch_1a

    #@19
    goto :goto_1d

    #@1a
    .line 114
    :catch_1a
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 116
    :goto_1d
    sput-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    #@1f
    .line 118
    :cond_1f
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    #@21
    if-eqz v0, :cond_32

    #@23
    :try_start_23
    new-array v2, v2, [Ljava/lang/Object;

    #@25
    .line 120
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_28} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_28} :catch_29

    #@28
    goto :goto_32

    #@29
    :catch_29
    const-string p0, "Failed to invoke cancel method by reflection"

    #@2b
    .line 124
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    goto :goto_32

    #@2f
    .line 122
    :catch_2f
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    :cond_32
    :goto_32
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 7

    #@0
    .line 45
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    if-nez v0, :cond_28

    #@7
    .line 46
    new-instance v0, Landroidx/transition/ViewGroupUtilsApi14$1;

    #@9
    invoke-direct {v0}, Landroidx/transition/ViewGroupUtilsApi14$1;-><init>()V

    #@c
    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@e
    const/4 v4, 0x2

    #@f
    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    #@12
    .line 53
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@14
    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    #@17
    .line 54
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@19
    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    #@1c
    .line 55
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@1e
    const/4 v4, 0x3

    #@1f
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    #@22
    .line 56
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@24
    const/4 v4, 0x4

    #@25
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    #@28
    :cond_28
    if-eqz p1, :cond_48

    #@2a
    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@2d
    move-result-object p1

    #@2e
    if-eqz p1, :cond_42

    #@30
    .line 62
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_39

    #@36
    .line 63
    invoke-static {p1}, Landroidx/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@39
    .line 65
    :cond_39
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@3b
    if-eq p1, v0, :cond_42

    #@3d
    .line 66
    sget v0, Landroidx/transition/R$id;->transition_layout_save:I

    #@3f
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@42
    .line 70
    :cond_42
    sget-object p1, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    #@44
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@47
    goto :goto_96

    #@48
    .line 73
    :cond_48
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@4b
    .line 75
    sget-boolean p1, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    #@4d
    const-string v0, "ViewGroupUtilsApi14"

    #@4f
    if-nez p1, :cond_66

    #@51
    .line 77
    :try_start_51
    const-class p1, Landroid/view/ViewGroup;

    #@53
    const-string v4, "mLayoutSuppressed"

    #@55
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@58
    move-result-object p1

    #@59
    sput-object p1, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    #@5b
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_51 .. :try_end_5e} :catch_5f

    #@5e
    goto :goto_64

    #@5f
    :catch_5f
    const-string p1, "Failed to access mLayoutSuppressed field by reflection"

    #@61
    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 82
    :goto_64
    sput-boolean v1, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    #@66
    .line 85
    :cond_66
    sget-object p1, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    #@68
    if-eqz p1, :cond_7f

    #@6a
    .line 87
    :try_start_6a
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@6d
    move-result p1
    :try_end_6e
    .catch Ljava/lang/IllegalAccessException; {:try_start_6a .. :try_end_6e} :catch_7a

    #@6e
    if-eqz p1, :cond_78

    #@70
    .line 89
    :try_start_70
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    #@72
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_70 .. :try_end_75} :catch_76

    #@75
    goto :goto_78

    #@76
    :catch_76
    move v2, p1

    #@77
    goto :goto_7a

    #@78
    :cond_78
    :goto_78
    move v2, p1

    #@79
    goto :goto_7f

    #@7a
    :catch_7a
    :goto_7a
    const-string p1, "Failed to get mLayoutSuppressed field by reflection"

    #@7c
    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    :cond_7f
    :goto_7f
    if-eqz v2, :cond_84

    #@81
    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@84
    .line 99
    :cond_84
    sget p1, Landroidx/transition/R$id;->transition_layout_save:I

    #@86
    .line 100
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@89
    move-result-object p1

    #@8a
    check-cast p1, Landroid/animation/LayoutTransition;

    #@8c
    if-eqz p1, :cond_96

    #@8e
    .line 102
    sget v0, Landroidx/transition/R$id;->transition_layout_save:I

    #@90
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@93
    .line 103
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@96
    :cond_96
    :goto_96
    return-void
.end method
