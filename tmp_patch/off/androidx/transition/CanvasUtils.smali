.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;
.source "CanvasUtils.java"


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static enableZ(Landroid/graphics/Canvas;Z)V
    .registers 7

    #@0
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_10

    #@6
    if-eqz p1, :cond_c

    #@8
    .line 45
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    #@b
    goto :goto_60

    #@c
    .line 47
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    #@f
    goto :goto_60

    #@10
    .line 49
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@12
    const/16 v1, 0x1c

    #@14
    if-eq v0, v1, :cond_61

    #@16
    .line 53
    sget-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    #@18
    const/4 v1, 0x0

    #@19
    if-nez v0, :cond_3c

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 55
    :try_start_1c
    const-class v2, Landroid/graphics/Canvas;

    #@1e
    const-string v3, "insertReorderBarrier"

    #@20
    new-array v4, v1, [Ljava/lang/Class;

    #@22
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@25
    move-result-object v2

    #@26
    sput-object v2, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    #@28
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@2b
    .line 58
    const-class v2, Landroid/graphics/Canvas;

    #@2d
    const-string v3, "insertInorderBarrier"

    #@2f
    new-array v4, v1, [Ljava/lang/Class;

    #@31
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@34
    move-result-object v2

    #@35
    sput-object v2, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    #@37
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_3a} :catch_3a

    #@3a
    .line 64
    :catch_3a
    sput-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    #@3c
    :cond_3c
    if-eqz p1, :cond_4a

    #@3e
    .line 67
    :try_start_3e
    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    #@40
    if-eqz v0, :cond_4a

    #@42
    new-array v2, v1, [Ljava/lang/Object;

    #@44
    .line 68
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    goto :goto_4a

    #@48
    :catch_48
    move-exception p0

    #@49
    goto :goto_56

    #@4a
    :cond_4a
    :goto_4a
    if-nez p1, :cond_60

    #@4c
    .line 70
    sget-object p1, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    #@4e
    if-eqz p1, :cond_60

    #@50
    new-array v0, v1, [Ljava/lang/Object;

    #@52
    .line 71
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_55} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3e .. :try_end_55} :catch_48

    #@55
    goto :goto_60

    #@56
    .line 76
    :goto_56
    new-instance p1, Ljava/lang/RuntimeException;

    #@58
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@5b
    move-result-object p0

    #@5c
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@5f
    throw p1

    #@60
    :catch_60
    :cond_60
    :goto_60
    return-void

    #@61
    .line 51
    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    #@63
    const-string p1, "This method doesn\'t work on Pie!"

    #@65
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@68
    throw p0
.end method
