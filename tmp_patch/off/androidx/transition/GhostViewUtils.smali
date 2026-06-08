.class Landroidx/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;
    .registers 5

    #@0
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-ne v0, v1, :cond_b

    #@6
    .line 34
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewPlatform;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 36
    :cond_b
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewPort;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewPort;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method static removeGhost(Landroid/view/View;)V
    .registers 3

    #@0
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-ne v0, v1, :cond_a

    #@6
    .line 43
    invoke-static {p0}, Landroidx/transition/GhostViewPlatform;->removeGhost(Landroid/view/View;)V

    #@9
    goto :goto_d

    #@a
    .line 45
    :cond_a
    invoke-static {p0}, Landroidx/transition/GhostViewPort;->removeGhost(Landroid/view/View;)V

    #@d
    :goto_d
    return-void
.end method
