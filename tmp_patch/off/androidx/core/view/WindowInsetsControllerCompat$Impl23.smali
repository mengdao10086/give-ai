.class Landroidx/core/view/WindowInsetsControllerCompat$Impl23;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl23"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3

    #@0
    .line 554
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Landroid/view/Window;Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public isAppearanceLightStatusBars()Z
    .registers 2

    #@0
    .line 559
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    #@9
    move-result v0

    #@a
    and-int/lit16 v0, v0, 0x2000

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 3

    #@0
    const/16 v0, 0x2000

    #@2
    if-eqz p1, :cond_12

    #@4
    const/high16 p1, 0x4000000

    #@6
    .line 566
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetWindowFlag(I)V

    #@9
    const/high16 p1, -0x80000000

    #@b
    .line 567
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->setWindowFlag(I)V

    #@e
    .line 568
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->setSystemUiFlag(I)V

    #@11
    goto :goto_15

    #@12
    .line 570
    :cond_12
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetSystemUiFlag(I)V

    #@15
    :goto_15
    return-void
.end method
