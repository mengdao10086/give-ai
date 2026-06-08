.class public Landroidx/core/graphics/TypefaceCompatApi28Impl;
.super Landroidx/core/graphics/TypefaceCompatApi26Impl;
.source "TypefaceCompatApi28Impl.java"


# static fields
.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 6

    #@0
    .line 51
    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi28Impl;->mFontFamily:Ljava/lang/Class;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    const/4 v2, 0x0

    #@8
    .line 52
    invoke-static {v0, v2, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@b
    .line 53
    iget-object p1, p0, Landroidx/core/graphics/TypefaceCompatApi28Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    #@d
    const/4 v3, 0x4

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    aput-object v0, v3, v2

    #@12
    const-string v0, "sans-serif"

    #@14
    aput-object v0, v3, v1

    #@16
    const/4 v0, -0x1

    #@17
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v3, v2

    #@1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v0

    #@22
    const/4 v1, 0x3

    #@23
    aput-object v0, v3, v1

    #@25
    const/4 v0, 0x0

    #@26
    .line 53
    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object p1

    #@2a
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2c} :catch_2d

    #@2c
    return-object p1

    #@2d
    :catch_2d
    move-exception p1

    #@2e
    goto :goto_30

    #@2f
    :catch_2f
    move-exception p1

    #@30
    .line 56
    :goto_30
    new-instance v0, Ljava/lang/RuntimeException;

    #@32
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v0
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 5

    #@0
    .line 74
    invoke-static {p2, p3, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 63
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    .line 64
    const-class v1, Landroid/graphics/Typeface;

    #@7
    const/4 v2, 0x4

    #@8
    new-array v2, v2, [Ljava/lang/Class;

    #@a
    const/4 v3, 0x0

    #@b
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object p1

    #@f
    aput-object p1, v2, v3

    #@11
    const-class p1, Ljava/lang/String;

    #@13
    aput-object p1, v2, v0

    #@15
    const/4 p1, 0x2

    #@16
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    aput-object v3, v2, p1

    #@1a
    const/4 p1, 0x3

    #@1b
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    aput-object v3, v2, p1

    #@1f
    const-string p1, "createFromFamiliesWithDefault"

    #@21
    .line 64
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@24
    move-result-object p1

    #@25
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@28
    return-object p1
.end method
