.class public Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;
.super Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressChildScrollEffect"
.end annotation


# static fields
.field private static final COMPRESS_DISTANCE_FACTOR:F = 0.3f


# instance fields
.field private final ghostRect:Landroid/graphics/Rect;

.field private final relativeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 2540
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;-><init>()V

    #@3
    .line 2548
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    #@a
    .line 2549
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    #@11
    return-void
.end method

.method private static updateRelativeRect(Landroid/graphics/Rect;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
    .registers 3

    #@0
    .line 2552
    invoke-virtual {p2, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@3
    .line 2554
    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@6
    .line 2555
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@9
    move-result p1

    #@a
    neg-int p1, p1

    #@b
    const/4 p2, 0x0

    #@c
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    #@f
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;F)V
    .registers 6

    #@0
    .line 2561
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    #@2
    invoke-static {v0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->updateRelativeRect(Landroid/graphics/Rect;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V

    #@5
    .line 2562
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    #@7
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@9
    int-to-float p1, p1

    #@a
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@d
    move-result p3

    #@e
    sub-float/2addr p1, p3

    #@f
    const/4 p3, 0x0

    #@10
    cmpg-float v0, p1, p3

    #@12
    if-gtz v0, :cond_4f

    #@14
    .line 2568
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@19
    move-result v0

    #@1a
    int-to-float v0, v0

    #@1b
    div-float v0, p1, v0

    #@1d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@20
    move-result v0

    #@21
    const/high16 v1, 0x3f800000    # 1.0f

    #@23
    invoke-static {v0, p3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    #@26
    move-result p3

    #@27
    neg-float p1, p1

    #@28
    sub-float p3, v1, p3

    #@2a
    mul-float/2addr p3, p3

    #@2b
    sub-float/2addr v1, p3

    #@2c
    .line 2578
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@31
    move-result p3

    #@32
    int-to-float p3, p3

    #@33
    const v0, 0x3e99999a    # 0.3f

    #@36
    mul-float/2addr p3, v0

    #@37
    mul-float/2addr p3, v1

    #@38
    sub-float/2addr p1, p3

    #@39
    .line 2583
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    #@3c
    .line 2588
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {p2, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@41
    .line 2589
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    #@43
    neg-float p1, p1

    #@44
    float-to-int p1, p1

    #@45
    const/4 v0, 0x0

    #@46
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    #@49
    .line 2590
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    #@4b
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4e
    goto :goto_56

    #@4f
    :cond_4f
    const/4 p1, 0x0

    #@50
    .line 2593
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    #@53
    .line 2594
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    #@56
    :goto_56
    return-void
.end method
