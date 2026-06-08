.class Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ReflectionHolder"
.end annotation


# static fields
.field private static sContentInsets:Ljava/lang/reflect/Field;

.field private static sReflectionSucceeded:Z

.field private static sStableInsets:Ljava/lang/reflect/Field;

.field private static sViewAttachInfoField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 2133
    :try_start_0
    const-class v0, Landroid/view/View;

    #@2
    const-string v1, "mAttachInfo"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    #@a
    const/4 v1, 0x1

    #@b
    .line 2134
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@e
    const-string v0, "android.view.View$AttachInfo"

    #@10
    .line 2135
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    const-string v2, "mStableInsets"

    #@16
    .line 2136
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@19
    move-result-object v2

    #@1a
    sput-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    #@1c
    .line 2137
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@1f
    const-string v2, "mContentInsets"

    #@21
    .line 2138
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    #@27
    .line 2139
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@2a
    .line 2140
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2c} :catch_2d

    #@2c
    goto :goto_46

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    const-string v2, "Failed to get visible insets from AttachInfo "

    #@32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    const-string v2, "WindowInsetsCompat"

    #@43
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    :goto_46
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    #@0
    .line 2150
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_69

    #@5
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_69

    #@c
    .line 2154
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    .line 2156
    :try_start_10
    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_69

    #@18
    .line 2158
    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/graphics/Rect;

    #@20
    .line 2159
    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/graphics/Rect;

    #@28
    if-eqz v2, :cond_69

    #@2a
    if-eqz v0, :cond_69

    #@2c
    .line 2161
    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    #@2e
    invoke-direct {v3}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    #@31
    .line 2162
    invoke-static {v2}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v3, v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@38
    move-result-object v2

    #@39
    .line 2163
    invoke-static {v0}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v2, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@40
    move-result-object v0

    #@41
    .line 2164
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    #@44
    move-result-object v0

    #@45
    .line 2168
    invoke-virtual {v0, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    #@48
    .line 2169
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@4b
    move-result-object p0

    #@4c
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_4f} :catch_50

    #@4f
    return-object v0

    #@50
    :catch_50
    move-exception p0

    #@51
    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    const-string v2, "Failed to get insets from AttachInfo. "

    #@55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@58
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    const-string v2, "WindowInsetsCompat"

    #@66
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    :cond_69
    :goto_69
    return-object v1
.end method
