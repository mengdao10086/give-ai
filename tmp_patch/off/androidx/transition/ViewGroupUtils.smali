.class Landroidx/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method; = null

.field private static sGetChildDrawingOrderMethodFetched:Z = false

.field private static sTryHiddenSuppressLayout:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getChildDrawingOrder(Landroid/view/ViewGroup;I)I
    .registers 9

    #@0
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(I)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 86
    :cond_b
    sget-boolean v0, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethodFetched:Z

    #@d
    const/4 v1, 0x0

    #@e
    const/4 v2, 0x2

    #@f
    const/4 v3, 0x1

    #@10
    if-nez v0, :cond_2b

    #@12
    .line 88
    :try_start_12
    const-class v0, Landroid/view/ViewGroup;

    #@14
    const-string v4, "getChildDrawingOrder"

    #@16
    new-array v5, v2, [Ljava/lang/Class;

    #@18
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1a
    aput-object v6, v5, v1

    #@1c
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1e
    aput-object v6, v5, v3

    #@20
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@26
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_29} :catch_29

    #@29
    .line 94
    :catch_29
    sput-boolean v3, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethodFetched:Z

    #@2b
    .line 96
    :cond_2b
    sget-object v0, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@2d
    if-eqz v0, :cond_4c

    #@2f
    :try_start_2f
    new-array v2, v2, [Ljava/lang/Object;

    #@31
    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@34
    move-result v4

    #@35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v4

    #@39
    aput-object v4, v2, v1

    #@3b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v1

    #@3f
    aput-object v1, v2, v3

    #@41
    .line 98
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object p0

    #@45
    check-cast p0, Ljava/lang/Integer;

    #@47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@4a
    move-result p0
    :try_end_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_4b} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_4b} :catch_4c

    #@4b
    return p0

    #@4c
    :catch_4c
    :cond_4c
    return p1
.end method

.method static getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;
    .registers 2

    #@0
    .line 47
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    #@2
    invoke-direct {v0, p0}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    #@5
    return-object v0
.end method

.method private static hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 3

    #@0
    .line 68
    sget-boolean v0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 72
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    #@7
    goto :goto_b

    #@8
    :catch_8
    const/4 p0, 0x0

    #@9
    .line 74
    sput-boolean p0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    #@b
    :cond_b
    :goto_b
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 4

    #@0
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@9
    goto :goto_d

    #@a
    .line 59
    :cond_a
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils;->hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V

    #@d
    :goto_d
    return-void
.end method
