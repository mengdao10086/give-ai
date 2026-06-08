.class public Landroidx/appcompat/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    .line 44
    :try_start_0
    const-class v0, Landroid/view/View;

    #@2
    const-string v1, "computeFitSystemWindows"

    #@4
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [Ljava/lang/Class;

    #@7
    const-class v3, Landroid/graphics/Rect;

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    const-class v3, Landroid/graphics/Rect;

    #@e
    const/4 v4, 0x1

    #@f
    aput-object v3, v2, v4

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    #@17
    .line 46
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_2a

    #@1d
    .line 47
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    #@1f
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_22} :catch_23

    #@22
    goto :goto_2a

    #@23
    :catch_23
    const-string v0, "ViewUtils"

    #@25
    const-string v1, "Could not find method computeFitSystemWindows. Oh well."

    #@27
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    :cond_2a
    :goto_2a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 66
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_19

    #@4
    const/4 v1, 0x2

    #@5
    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object p1, v1, v2

    #@a
    const/4 p1, 0x1

    #@b
    aput-object p2, v1, p1

    #@d
    .line 68
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    #@10
    goto :goto_19

    #@11
    :catch_11
    move-exception p0

    #@12
    const-string p1, "ViewUtils"

    #@14
    const-string p2, "Could not invoke computeFitSystemWindows"

    #@16
    .line 70
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    :cond_19
    :goto_19
    return-void
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 58
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    const/4 v0, 0x1

    #@5
    if-ne p0, v0, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .registers 7

    #@0
    const-string v0, "Could not invoke makeOptionalFitsSystemWindows"

    #@2
    const-string v1, "ViewUtils"

    #@4
    .line 84
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    const-string v3, "makeOptionalFitsSystemWindows"

    #@a
    const/4 v4, 0x0

    #@b
    new-array v5, v4, [Ljava/lang/Class;

    #@d
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@10
    move-result-object v2

    #@11
    .line 85
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1b

    #@17
    const/4 v3, 0x1

    #@18
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@1b
    :cond_1b
    new-array v3, v4, [Ljava/lang/Object;

    #@1d
    .line 88
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_20} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_20} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_20} :catch_21

    #@20
    goto :goto_30

    #@21
    :catch_21
    move-exception p0

    #@22
    .line 94
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_30

    #@26
    :catch_26
    move-exception p0

    #@27
    .line 92
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_30

    #@2b
    :catch_2b
    const-string p0, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    #@2d
    .line 90
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    :goto_30
    return-void
.end method
