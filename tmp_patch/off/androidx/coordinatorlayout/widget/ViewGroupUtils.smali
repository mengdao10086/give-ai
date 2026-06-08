.class public Landroidx/coordinatorlayout/widget/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static final sMatrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRectF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    #@7
    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    #@9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@c
    sput-object v0, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    #@e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@c
    .line 78
    invoke-static {p0, p1, p2}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    #@f
    return-void
.end method

.method private static offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5

    #@0
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 83
    instance-of v1, v0, Landroid/view/View;

    #@6
    if-eqz v1, :cond_1e

    #@8
    if-eq v0, p0, :cond_1e

    #@a
    .line 84
    check-cast v0, Landroid/view/View;

    #@c
    .line 85
    invoke-static {p0, v0, p2}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    #@f
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    #@12
    move-result p0

    #@13
    neg-int p0, p0

    #@14
    int-to-float p0, p0

    #@15
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    #@18
    move-result v0

    #@19
    neg-int v0, v0

    #@1a
    int-to-float v0, v0

    #@1b
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@1e
    .line 89
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@21
    move-result p0

    #@22
    int-to-float p0, p0

    #@23
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@26
    move-result v0

    #@27
    int-to-float v0, v0

    #@28
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@2b
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@2e
    move-result-object p0

    #@2f
    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    #@32
    move-result p0

    #@33
    if-nez p0, :cond_3c

    #@35
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@38
    move-result-object p0

    #@39
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@3c
    :cond_3c
    return-void
.end method

.method static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 48
    sget-object v0, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/graphics/Matrix;

    #@8
    if-nez v1, :cond_13

    #@a
    .line 50
    new-instance v1, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@f
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@12
    goto :goto_16

    #@13
    .line 53
    :cond_13
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    #@16
    .line 56
    :goto_16
    invoke-static {p0, p1, v1}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    #@19
    .line 58
    sget-object p0, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    #@1b
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    check-cast p1, Landroid/graphics/RectF;

    #@21
    if-nez p1, :cond_2b

    #@23
    .line 60
    new-instance p1, Landroid/graphics/RectF;

    #@25
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@28
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@2b
    .line 63
    :cond_2b
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@2e
    .line 64
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@31
    .line 65
    iget p0, p1, Landroid/graphics/RectF;->left:F

    #@33
    const/high16 v0, 0x3f000000    # 0.5f

    #@35
    add-float/2addr p0, v0

    #@36
    float-to-int p0, p0

    #@37
    iget v1, p1, Landroid/graphics/RectF;->top:F

    #@39
    add-float/2addr v1, v0

    #@3a
    float-to-int v1, v1

    #@3b
    iget v2, p1, Landroid/graphics/RectF;->right:F

    #@3d
    add-float/2addr v2, v0

    #@3e
    float-to-int v2, v2

    #@3f
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    #@41
    add-float/2addr p1, v0

    #@42
    float-to-int p1, p1

    #@43
    invoke-virtual {p2, p0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@46
    return-void
.end method
