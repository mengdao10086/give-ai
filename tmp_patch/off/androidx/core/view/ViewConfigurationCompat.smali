.class public final Landroidx/core/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewConfigurationCompat$Api28Impl;,
        Landroidx/core/view/ViewConfigurationCompat$Api26Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewConfigCompat"

.field private static sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 5

    #@0
    .line 110
    sget-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_1a

    #@4
    const/4 v1, 0x0

    #@5
    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 112
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    check-cast p0, Ljava/lang/Integer;

    #@d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    #@11
    int-to-float p0, p0

    #@12
    return p0

    #@13
    :catch_13
    const-string p0, "ViewConfigCompat"

    #@15
    const-string v0, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    #@17
    .line 114
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 118
    :cond_1a
    new-instance p0, Landroid/util/TypedValue;

    #@1c
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    #@1f
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@22
    move-result-object v0

    #@23
    const v1, 0x101004d

    #@26
    const/4 v2, 0x1

    #@27
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3a

    #@2d
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object p1

    #@31
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@34
    move-result-object p1

    #@35
    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@38
    move-result p0

    #@39
    return p0

    #@3a
    :cond_3a
    const/4 p0, 0x0

    #@3b
    return p0
.end method

.method public static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 2

    #@0
    .line 85
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getScaledHoverSlop(Landroid/view/ViewConfiguration;)I
    .registers 3

    #@0
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 133
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api28Impl;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 135
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@e
    move-result p0

    #@f
    div-int/lit8 p0, p0, 0x2

    #@11
    return p0
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 60
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 2

    #@0
    .line 102
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 71
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .registers 4

    #@0
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 147
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api28Impl;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 149
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object p0

    #@f
    const-string p1, "bool"

    #@11
    const-string v0, "android"

    #@13
    const-string v1, "config_showMenuShortcutsWhenKeyboardPresent"

    #@15
    .line 150
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_23

    #@1b
    .line 152
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1e
    move-result p0

    #@1f
    if-eqz p0, :cond_23

    #@21
    const/4 p0, 0x1

    #@22
    goto :goto_24

    #@23
    :cond_23
    const/4 p0, 0x0

    #@24
    :goto_24
    return p0
.end method
