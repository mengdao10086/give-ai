.class Landroidx/transition/GhostViewPlatform;
.super Ljava/lang/Object;
.source "GhostViewPlatform.java"

# interfaces
.implements Landroidx/transition/GhostView;


# static fields
.field private static final TAG:Ljava/lang/String; = "GhostViewApi21"

.field private static sAddGhostMethod:Ljava/lang/reflect/Method;

.field private static sAddGhostMethodFetched:Z

.field private static sGhostViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sGhostViewClassFetched:Z

.field private static sRemoveGhostMethod:Ljava/lang/reflect/Method;

.field private static sRemoveGhostMethodFetched:Z


# instance fields
.field private final mGhostView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    #@0
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    #@5
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;
    .registers 8

    #@0
    .line 43
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchAddGhostMethod()V

    #@3
    .line 44
    sget-object v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz v0, :cond_2b

    #@8
    .line 46
    :try_start_8
    new-instance v2, Landroidx/transition/GhostViewPlatform;

    #@a
    const/4 v3, 0x3

    #@b
    new-array v3, v3, [Ljava/lang/Object;

    #@d
    const/4 v4, 0x0

    #@e
    aput-object p0, v3, v4

    #@10
    const/4 p0, 0x1

    #@11
    aput-object p1, v3, p0

    #@13
    const/4 p0, 0x2

    #@14
    aput-object p2, v3, p0

    #@16
    .line 47
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object p0

    #@1a
    check-cast p0, Landroid/view/View;

    #@1c
    invoke-direct {v2, p0}, Landroidx/transition/GhostViewPlatform;-><init>(Landroid/view/View;)V
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1f} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1f} :catch_20

    #@1f
    return-object v2

    #@20
    :catch_20
    move-exception p0

    #@21
    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    #@23
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@26
    move-result-object p0

    #@27
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw p1

    #@2b
    :catch_2b
    :cond_2b
    return-object v1
.end method

.method private static fetchAddGhostMethod()V
    .registers 6

    #@0
    .line 99
    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    #@2
    if-nez v0, :cond_31

    #@4
    const/4 v0, 0x1

    #@5
    .line 101
    :try_start_5
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    #@8
    .line 102
    sget-object v1, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    #@a
    const-string v2, "addGhost"

    #@c
    const/4 v3, 0x3

    #@d
    new-array v3, v3, [Ljava/lang/Class;

    #@f
    const-class v4, Landroid/view/View;

    #@11
    const/4 v5, 0x0

    #@12
    aput-object v4, v3, v5

    #@14
    const-class v4, Landroid/view/ViewGroup;

    #@16
    aput-object v4, v3, v0

    #@18
    const-class v4, Landroid/graphics/Matrix;

    #@1a
    const/4 v5, 0x2

    #@1b
    aput-object v4, v3, v5

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@20
    move-result-object v1

    #@21
    sput-object v1, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    #@23
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_26} :catch_27

    #@26
    goto :goto_2f

    #@27
    :catch_27
    move-exception v1

    #@28
    const-string v2, "GhostViewApi21"

    #@2a
    const-string v3, "Failed to retrieve addGhost method"

    #@2c
    .line 106
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 108
    :goto_2f
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    #@31
    :cond_31
    return-void
.end method

.method private static fetchGhostViewClass()V
    .registers 3

    #@0
    .line 88
    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    #@2
    if-nez v0, :cond_18

    #@4
    :try_start_4
    const-string v0, "android.view.GhostView"

    #@6
    .line 90
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_d

    #@c
    goto :goto_15

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "GhostViewApi21"

    #@10
    const-string v2, "Failed to retrieve GhostView class"

    #@12
    .line 92
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    :goto_15
    const/4 v0, 0x1

    #@16
    .line 94
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    #@18
    :cond_18
    return-void
.end method

.method private static fetchRemoveGhostMethod()V
    .registers 6

    #@0
    .line 113
    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    #@2
    if-nez v0, :cond_27

    #@4
    const/4 v0, 0x1

    #@5
    .line 115
    :try_start_5
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    #@8
    .line 116
    sget-object v1, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    #@a
    const-string v2, "removeGhost"

    #@c
    new-array v3, v0, [Ljava/lang/Class;

    #@e
    const-class v4, Landroid/view/View;

    #@10
    const/4 v5, 0x0

    #@11
    aput-object v4, v3, v5

    #@13
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object v1

    #@17
    sput-object v1, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    #@19
    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1c} :catch_1d

    #@1c
    goto :goto_25

    #@1d
    :catch_1d
    move-exception v1

    #@1e
    const-string v2, "GhostViewApi21"

    #@20
    const-string v3, "Failed to retrieve removeGhost method"

    #@22
    .line 119
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 121
    :goto_25
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    #@27
    :cond_27
    return-void
.end method

.method static removeGhost(Landroid/view/View;)V
    .registers 4

    #@0
    .line 58
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchRemoveGhostMethod()V

    #@3
    .line 59
    sget-object v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    #@5
    if-eqz v0, :cond_1d

    #@7
    const/4 v1, 0x1

    #@8
    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object p0, v1, v2

    #@d
    const/4 p0, 0x0

    #@e
    .line 61
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_11} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_11} :catch_12

    #@11
    goto :goto_1d

    #@12
    :catch_12
    move-exception p0

    #@13
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    #@15
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@18
    move-result-object p0

    #@19
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v0

    #@1d
    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    #@0
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    #@0
    .line 79
    iget-object v0, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    #@5
    return-void
.end method
