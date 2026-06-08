.class public final Lcom/google/android/material/transition/platform/MaterialArcMotion;
.super Landroid/transition/PathMotion;
.source "MaterialArcMotion.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    #@3
    return-void
.end method

.method private static getControlPoint(FFFF)Landroid/graphics/PointF;
    .registers 5

    #@0
    cmpl-float v0, p1, p3

    #@2
    if-lez v0, :cond_a

    #@4
    .line 52
    new-instance p0, Landroid/graphics/PointF;

    #@6
    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    #@9
    return-object p0

    #@a
    .line 54
    :cond_a
    new-instance p1, Landroid/graphics/PointF;

    #@c
    invoke-direct {p1, p0, p3}, Landroid/graphics/PointF;-><init>(FF)V

    #@f
    return-object p1
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 6

    #@0
    .line 42
    new-instance v0, Landroid/graphics/Path;

    #@2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@5
    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    #@8
    .line 45
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialArcMotion;->getControlPoint(FFFF)Landroid/graphics/PointF;

    #@b
    move-result-object p1

    #@c
    .line 46
    iget p2, p1, Landroid/graphics/PointF;->x:F

    #@e
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@10
    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@13
    return-object v0
.end method
