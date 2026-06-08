.class final Landroidx/transition/Slide$5;
.super Landroidx/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 129
    invoke-direct {p0, v0}, Landroidx/transition/Slide$CalculateSlideHorizontal;-><init>(Landroidx/transition/Slide$1;)V

    #@4
    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .registers 5

    #@0
    .line 132
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    :goto_9
    if-eqz v1, :cond_16

    #@b
    .line 136
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@e
    move-result p2

    #@f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@12
    move-result p1

    #@13
    int-to-float p1, p1

    #@14
    sub-float/2addr p2, p1

    #@15
    goto :goto_20

    #@16
    .line 138
    :cond_16
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@19
    move-result p2

    #@1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@1d
    move-result p1

    #@1e
    int-to-float p1, p1

    #@1f
    add-float/2addr p2, p1

    #@20
    :goto_20
    return p2
.end method
