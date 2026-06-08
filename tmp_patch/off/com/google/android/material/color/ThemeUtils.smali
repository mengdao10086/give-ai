.class final Lcom/google/android/material/color/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static applyThemeOverlay(Landroid/content/Context;I)V
    .registers 4

    #@0
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@8
    .line 39
    instance-of v0, p0, Landroid/app/Activity;

    #@a
    if-eqz v0, :cond_17

    #@c
    .line 40
    check-cast p0, Landroid/app/Activity;

    #@e
    invoke-static {p0}, Lcom/google/android/material/color/ThemeUtils;->getWindowDecorViewTheme(Landroid/app/Activity;)Landroid/content/res/Resources$Theme;

    #@11
    move-result-object p0

    #@12
    if-eqz p0, :cond_17

    #@14
    .line 42
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@17
    :cond_17
    return-void
.end method

.method private static getWindowDecorViewTheme(Landroid/app/Activity;)Landroid/content/res/Resources$Theme;
    .registers 1

    #@0
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_17

    #@6
    .line 52
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@9
    move-result-object p0

    #@a
    if-eqz p0, :cond_17

    #@c
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@f
    move-result-object p0

    #@10
    if-eqz p0, :cond_17

    #@12
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@15
    move-result-object p0

    #@16
    return-object p0

    #@17
    :cond_17
    const/4 p0, 0x0

    #@18
    return-object p0
.end method
