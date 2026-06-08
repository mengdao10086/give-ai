.class public Lcom/google/android/material/internal/EdgeToEdgeUtils;
.super Ljava/lang/Object;
.source "EdgeToEdgeUtils.java"


# static fields
.field private static final EDGE_TO_EDGE_BAR_ALPHA:I = 0x80


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static applyEdgeToEdge(Landroid/view/Window;Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 56
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    #@4
    return-void
.end method

.method public static applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-eqz p2, :cond_d

    #@4
    .line 83
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    move v2, v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    move v2, v1

    #@e
    :goto_e
    if-eqz p3, :cond_16

    #@10
    .line 85
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_17

    #@16
    :cond_16
    move v0, v1

    #@17
    :cond_17
    if-nez v2, :cond_1b

    #@19
    if-eqz v0, :cond_34

    #@1b
    .line 88
    :cond_1b
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    const v3, 0x1010031

    #@22
    const/high16 v4, -0x1000000

    #@24
    invoke-static {v1, v3, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@27
    move-result v1

    #@28
    if-eqz v2, :cond_2e

    #@2a
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object p2

    #@2e
    :cond_2e
    if-eqz v0, :cond_34

    #@30
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object p3

    #@34
    :cond_34
    xor-int/lit8 v0, p1, 0x1

    #@36
    .line 97
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    #@39
    .line 99
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->getStatusBarColor(Landroid/content/Context;Z)I

    #@40
    move-result v0

    #@41
    .line 100
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    #@44
    move-result-object v1

    #@45
    invoke-static {v1, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->getNavigationBarColor(Landroid/content/Context;Z)I

    #@48
    move-result p1

    #@49
    .line 102
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    #@4c
    .line 103
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    #@4f
    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result p2

    #@53
    invoke-static {p2}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    #@56
    move-result p2

    #@57
    invoke-static {v0, p2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->isUsingLightSystemBar(IZ)Z

    #@5a
    move-result p2

    #@5b
    .line 105
    invoke-static {p0, p2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    #@5e
    .line 111
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result p2

    #@62
    invoke-static {p2}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    #@65
    move-result p2

    #@66
    .line 110
    invoke-static {p1, p2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->isUsingLightSystemBar(IZ)Z

    #@69
    move-result p1

    #@6a
    .line 108
    invoke-static {p0, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightNavigationBar(Landroid/view/Window;Z)V

    #@6d
    return-void
.end method

.method private static getNavigationBarColor(Landroid/content/Context;Z)I
    .registers 6

    #@0
    const/high16 v0, -0x1000000

    #@2
    const v1, 0x1010452

    #@5
    if-eqz p1, :cond_18

    #@7
    .line 159
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v3, 0x1b

    #@b
    if-ge v2, v3, :cond_18

    #@d
    .line 161
    invoke-static {p0, v1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@10
    move-result p0

    #@11
    const/16 p1, 0x80

    #@13
    .line 162
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@16
    move-result p0

    #@17
    return p0

    #@18
    :cond_18
    if-eqz p1, :cond_1c

    #@1a
    const/4 p0, 0x0

    #@1b
    return p0

    #@1c
    .line 167
    :cond_1c
    invoke-static {p0, v1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@1f
    move-result p0

    #@20
    return p0
.end method

.method private static getStatusBarColor(Landroid/content/Context;Z)I
    .registers 3

    #@0
    if-eqz p1, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    :cond_4
    const p1, 0x1010451

    #@7
    const/high16 v0, -0x1000000

    #@9
    .line 152
    invoke-static {p0, p1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@c
    move-result p0

    #@d
    return p0
.end method

.method private static isUsingLightSystemBar(IZ)Z
    .registers 3

    #@0
    .line 171
    invoke-static {p0}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_d

    #@6
    if-nez p0, :cond_b

    #@8
    if-eqz p1, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p0, 0x1

    #@e
    :goto_e
    return p0
.end method

.method public static setLightNavigationBar(Landroid/view/Window;Z)V
    .registers 3

    #@0
    .line 136
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    #@7
    move-result-object p0

    #@8
    .line 137
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    #@b
    return-void
.end method

.method public static setLightStatusBar(Landroid/view/Window;Z)V
    .registers 3

    #@0
    .line 123
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    #@7
    move-result-object p0

    #@8
    .line 124
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    #@b
    return-void
.end method
