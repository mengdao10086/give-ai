.class Landroidx/core/view/WindowCompat$Api16Impl;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .registers 3

    #@0
    .line 151
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@7
    move-result v0

    #@8
    if-eqz p1, :cond_d

    #@a
    and-int/lit16 p1, v0, -0x701

    #@c
    goto :goto_f

    #@d
    :cond_d
    or-int/lit16 p1, v0, 0x700

    #@f
    .line 153
    :goto_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@12
    return-void
.end method
