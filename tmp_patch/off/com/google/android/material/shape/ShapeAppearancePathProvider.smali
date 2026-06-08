.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;
    }
.end annotation


# instance fields
.field private final boundsPath:Landroid/graphics/Path;

.field private final cornerPath:Landroid/graphics/Path;

.field private final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field private final cornerTransforms:[Landroid/graphics/Matrix;

.field private edgeIntersectionCheckEnabled:Z

.field private final edgePath:Landroid/graphics/Path;

.field private final edgeTransforms:[Landroid/graphics/Matrix;

.field private final overlappedEdgePath:Landroid/graphics/Path;

.field private final pointF:Landroid/graphics/PointF;

.field private final scratch:[F

.field private final scratch2:[F

.field private final shapePath:Lcom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .registers 5

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x4

    #@4
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    #@6
    .line 55
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@8
    new-array v1, v0, [Landroid/graphics/Matrix;

    #@a
    .line 56
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@c
    new-array v1, v0, [Landroid/graphics/Matrix;

    #@e
    .line 57
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@10
    .line 60
    new-instance v1, Landroid/graphics/PointF;

    #@12
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    #@15
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    #@17
    .line 61
    new-instance v1, Landroid/graphics/Path;

    #@19
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@1c
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    #@1e
    .line 62
    new-instance v1, Landroid/graphics/Path;

    #@20
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@23
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    #@25
    .line 63
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    #@27
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    #@2a
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@2c
    const/4 v1, 0x2

    #@2d
    new-array v2, v1, [F

    #@2f
    .line 64
    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@31
    new-array v1, v1, [F

    #@33
    .line 65
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    #@35
    .line 66
    new-instance v1, Landroid/graphics/Path;

    #@37
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@3a
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    #@3c
    .line 67
    new-instance v1, Landroid/graphics/Path;

    #@3e
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@41
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    #@43
    const/4 v1, 0x1

    #@44
    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    #@46
    const/4 v1, 0x0

    #@47
    :goto_47
    if-ge v1, v0, :cond_67

    #@49
    .line 73
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@4b
    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    #@4d
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    #@50
    aput-object v3, v2, v1

    #@52
    .line 74
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@54
    new-instance v3, Landroid/graphics/Matrix;

    #@56
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@59
    aput-object v3, v2, v1

    #@5b
    .line 75
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@5d
    new-instance v3, Landroid/graphics/Matrix;

    #@5f
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@62
    aput-object v3, v2, v1

    #@64
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_47

    #@67
    :cond_67
    return-void
.end method

.method private angleOfEdge(I)F
    .registers 2

    #@0
    add-int/lit8 p1, p1, 0x1

    #@2
    .line 325
    rem-int/lit8 p1, p1, 0x4

    #@4
    mul-int/lit8 p1, p1, 0x5a

    #@6
    int-to-float p1, p1

    #@7
    return p1
.end method

.method private appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 7

    #@0
    .line 170
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@2
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@4
    aget-object v1, v1, p2

    #@6
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v0, v2

    #@d
    .line 171
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@f
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@11
    aget-object v1, v1, p2

    #@13
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    #@16
    move-result v1

    #@17
    const/4 v3, 0x1

    #@18
    aput v1, v0, v3

    #@1a
    .line 172
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@1c
    aget-object v0, v0, p2

    #@1e
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@23
    if-nez p2, :cond_31

    #@25
    .line 174
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    #@27
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@29
    aget v2, v1, v2

    #@2b
    aget v1, v1, v3

    #@2d
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@30
    goto :goto_3c

    #@31
    .line 176
    :cond_31
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    #@33
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@35
    aget v2, v1, v2

    #@37
    aget v1, v1, v3

    #@39
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    #@3c
    .line 178
    :goto_3c
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@3e
    aget-object v0, v0, p2

    #@40
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@42
    aget-object v1, v1, p2

    #@44
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    #@46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@49
    .line 179
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    #@4b
    if-eqz v0, :cond_5a

    #@4d
    .line 180
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    #@4f
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@51
    aget-object v0, v0, p2

    #@53
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@55
    aget-object v1, v1, p2

    #@57
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onCornerPathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    #@5a
    :cond_5a
    return-void
.end method

.method private appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 11

    #@0
    add-int/lit8 v0, p2, 0x1

    #@2
    .line 185
    rem-int/lit8 v0, v0, 0x4

    #@4
    .line 186
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@6
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@8
    aget-object v2, v2, p2

    #@a
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    #@d
    move-result v2

    #@e
    const/4 v3, 0x0

    #@f
    aput v2, v1, v3

    #@11
    .line 187
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@13
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@15
    aget-object v2, v2, p2

    #@17
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    #@1a
    move-result v2

    #@1b
    const/4 v4, 0x1

    #@1c
    aput v2, v1, v4

    #@1e
    .line 188
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@20
    aget-object v1, v1, p2

    #@22
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@24
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@27
    .line 190
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    #@29
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@2b
    aget-object v2, v2, v0

    #@2d
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    #@30
    move-result v2

    #@31
    aput v2, v1, v3

    #@33
    .line 191
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    #@35
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@37
    aget-object v2, v2, v0

    #@39
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    #@3c
    move-result v2

    #@3d
    aput v2, v1, v4

    #@3f
    .line 192
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@41
    aget-object v1, v1, v0

    #@43
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    #@45
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@48
    .line 194
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@4a
    aget v2, v1, v3

    #@4c
    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    #@4e
    aget v6, v5, v3

    #@50
    sub-float/2addr v2, v6

    #@51
    float-to-double v6, v2

    #@52
    aget v1, v1, v4

    #@54
    aget v2, v5, v4

    #@56
    sub-float/2addr v1, v2

    #@57
    float-to-double v1, v1

    #@58
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    #@5b
    move-result-wide v1

    #@5c
    double-to-float v1, v1

    #@5d
    const v2, 0x3a83126f    # 0.001f

    #@60
    sub-float/2addr v1, v2

    #@61
    const/4 v2, 0x0

    #@62
    .line 196
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    #@65
    move-result v1

    #@66
    .line 197
    iget-object v5, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    #@68
    invoke-direct {p0, v5, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeCenterForIndex(Landroid/graphics/RectF;I)F

    #@6b
    move-result v5

    #@6c
    .line 198
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@6e
    invoke-virtual {v6, v2, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    #@71
    .line 199
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@73
    invoke-direct {p0, p2, v2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;

    #@76
    move-result-object v2

    #@77
    .line 200
    iget v6, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    #@79
    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@7b
    invoke-virtual {v2, v1, v5, v6, v7}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    #@7e
    .line 201
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    #@80
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    #@83
    .line 202
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@85
    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@87
    aget-object v5, v5, p2

    #@89
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    #@8b
    invoke-virtual {v1, v5, v6}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@8e
    .line 204
    iget-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    #@90
    if-eqz v1, :cond_e5

    #@92
    .line 206
    invoke-virtual {v2}, Lcom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    #@95
    move-result v1

    #@96
    if-nez v1, :cond_a8

    #@98
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    #@9a
    .line 207
    invoke-direct {p0, v1, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    #@9d
    move-result v1

    #@9e
    if-nez v1, :cond_a8

    #@a0
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    #@a2
    .line 208
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_e5

    #@a8
    .line 212
    :cond_a8
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    #@aa
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    #@ac
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    #@ae
    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    #@b1
    .line 216
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@b3
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@b5
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    #@b8
    move-result v1

    #@b9
    aput v1, v0, v3

    #@bb
    .line 217
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@bd
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@bf
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    #@c2
    move-result v1

    #@c3
    aput v1, v0, v4

    #@c5
    .line 218
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@c7
    aget-object v0, v0, p2

    #@c9
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@cb
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@ce
    .line 219
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    #@d0
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@d2
    aget v2, v1, v3

    #@d4
    aget v1, v1, v4

    #@d6
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@d9
    .line 222
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@db
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@dd
    aget-object v1, v1, p2

    #@df
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    #@e1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@e4
    goto :goto_f0

    #@e5
    .line 224
    :cond_e5
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@e7
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@e9
    aget-object v1, v1, p2

    #@eb
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    #@ed
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@f0
    .line 227
    :goto_f0
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    #@f2
    if-eqz v0, :cond_ff

    #@f4
    .line 228
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    #@f6
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    #@f8
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@fa
    aget-object v1, v1, p2

    #@fc
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onEdgePathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    #@ff
    :cond_ff
    return-void
.end method

.method private getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_21

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_19

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p1, v0, :cond_11

    #@9
    .line 319
    iget p1, p2, Landroid/graphics/RectF;->right:F

    #@b
    iget p2, p2, Landroid/graphics/RectF;->top:F

    #@d
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    #@10
    goto :goto_28

    #@11
    .line 315
    :cond_11
    iget p1, p2, Landroid/graphics/RectF;->left:F

    #@13
    iget p2, p2, Landroid/graphics/RectF;->top:F

    #@15
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    #@18
    goto :goto_28

    #@19
    .line 312
    :cond_19
    iget p1, p2, Landroid/graphics/RectF;->left:F

    #@1b
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    #@1d
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    #@20
    goto :goto_28

    #@21
    .line 309
    :cond_21
    iget p1, p2, Landroid/graphics/RectF;->right:F

    #@23
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    #@25
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    #@28
    :goto_28
    return-void
.end method

.method private getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_18

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_13

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p1, v0, :cond_e

    #@9
    .line 287
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@c
    move-result-object p1

    #@d
    return-object p1

    #@e
    .line 284
    :cond_e
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 282
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@16
    move-result-object p1

    #@17
    return-object p1

    #@18
    .line 280
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@1b
    move-result-object p1

    #@1c
    return-object p1
.end method

.method private getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_18

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_13

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p1, v0, :cond_e

    #@9
    .line 272
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@c
    move-result-object p1

    #@d
    return-object p1

    #@e
    .line 269
    :cond_e
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 267
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@16
    move-result-object p1

    #@17
    return-object p1

    #@18
    .line 265
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@1b
    move-result-object p1

    #@1c
    return-object p1
.end method

.method private getEdgeCenterForIndex(Landroid/graphics/RectF;I)F
    .registers 7

    #@0
    .line 247
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@2
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@4
    aget-object v1, v1, p2

    #@6
    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->endX:F

    #@8
    const/4 v2, 0x0

    #@9
    aput v1, v0, v2

    #@b
    .line 248
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@d
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@f
    aget-object v1, v1, p2

    #@11
    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->endY:F

    #@13
    const/4 v3, 0x1

    #@14
    aput v1, v0, v3

    #@16
    .line 249
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@18
    aget-object v0, v0, p2

    #@1a
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@1f
    if-eq p2, v3, :cond_32

    #@21
    const/4 v0, 0x3

    #@22
    if-eq p2, v0, :cond_32

    #@24
    .line 257
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    #@27
    move-result p1

    #@28
    iget-object p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@2a
    aget p2, p2, v3

    #@2c
    sub-float/2addr p1, p2

    #@2d
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@30
    move-result p1

    #@31
    return p1

    #@32
    .line 253
    :cond_32
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    #@35
    move-result p1

    #@36
    iget-object p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@38
    aget p2, p2, v2

    #@3a
    sub-float/2addr p1, p2

    #@3b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@3e
    move-result p1

    #@3f
    return p1
.end method

.method private getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_18

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_13

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p1, v0, :cond_e

    #@9
    .line 302
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    #@c
    move-result-object p1

    #@d
    return-object p1

    #@e
    .line 299
    :cond_e
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 297
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    #@16
    move-result-object p1

    #@17
    return-object p1

    #@18
    .line 295
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    #@1b
    move-result-object p1

    #@1c
    return-object p1
.end method

.method public static getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;
    .registers 1

    #@0
    .line 83
    sget-object v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->INSTANCE:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@2
    return-object v0
.end method

.method private pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .registers 6

    #@0
    .line 234
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    #@5
    .line 235
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@7
    aget-object v0, v0, p2

    #@9
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@b
    aget-object p2, v1, p2

    #@d
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    #@f
    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@12
    .line 237
    new-instance p2, Landroid/graphics/RectF;

    #@14
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    #@17
    const/4 v0, 0x1

    #@18
    .line 238
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@1b
    .line 239
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    #@1d
    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@20
    .line 240
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    #@22
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    #@24
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    #@27
    .line 241
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@2a
    .line 243
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    #@2d
    move-result p1

    #@2e
    if-eqz p1, :cond_44

    #@30
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    #@33
    move-result p1

    #@34
    const/high16 v1, 0x3f800000    # 1.0f

    #@36
    cmpl-float p1, p1, v1

    #@38
    if-lez p1, :cond_43

    #@3a
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@3d
    move-result p1

    #@3e
    cmpl-float p1, p1, v1

    #@40
    if-lez p1, :cond_43

    #@42
    goto :goto_44

    #@43
    :cond_43
    const/4 v0, 0x0

    #@44
    :cond_44
    :goto_44
    return v0
.end method

.method private setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 10

    #@0
    .line 148
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;

    #@5
    move-result-object v6

    #@6
    .line 149
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;

    #@b
    move-result-object v1

    #@c
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@e
    aget-object v2, v0, p2

    #@10
    const/high16 v3, 0x42b40000    # 90.0f

    #@12
    iget v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    #@14
    iget-object v5, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    #@16
    .line 150
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/google/android/material/shape/ShapePath;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)V

    #@19
    .line 152
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    #@1c
    move-result v0

    #@1d
    .line 153
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@1f
    aget-object v1, v1, p2

    #@21
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    #@24
    .line 154
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    #@26
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    #@28
    invoke-direct {p0, p2, p1, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    #@2b
    .line 155
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@2d
    aget-object p1, p1, p2

    #@2f
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    #@31
    iget v1, v1, Landroid/graphics/PointF;->x:F

    #@33
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    #@35
    iget v2, v2, Landroid/graphics/PointF;->y:F

    #@37
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@3a
    .line 156
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@3c
    aget-object p1, p1, p2

    #@3e
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    #@41
    return-void
.end method

.method private setEdgePathAndTransform(I)V
    .registers 7

    #@0
    .line 160
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@2
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@4
    aget-object v1, v1, p1

    #@6
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v0, v2

    #@d
    .line 161
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@f
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    #@11
    aget-object v1, v1, p1

    #@13
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    #@16
    move-result v1

    #@17
    const/4 v3, 0x1

    #@18
    aput v1, v0, v3

    #@1a
    .line 162
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    #@1c
    aget-object v0, v0, p1

    #@1e
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@23
    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    #@26
    move-result v0

    #@27
    .line 164
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@29
    aget-object v1, v1, p1

    #@2b
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    #@2e
    .line 165
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@30
    aget-object v1, v1, p1

    #@32
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    #@34
    aget v2, v4, v2

    #@36
    aget v3, v4, v3

    #@38
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@3b
    .line 166
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    #@3d
    aget-object p1, v1, p1

    #@3f
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    #@42
    return-void
.end method


# virtual methods
.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 11

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    #@9
    return-void
.end method

.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .registers 14

    #@0
    .line 118
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    #@3
    .line 119
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    #@5
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@8
    .line 120
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    #@a
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@d
    .line 121
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    #@f
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@11
    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    #@14
    .line 122
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    #@16
    move-object v2, v0

    #@17
    move-object v3, p1

    #@18
    move v4, p2

    #@19
    move-object v5, p3

    #@1a
    move-object v6, p4

    #@1b
    move-object v7, p5

    #@1c
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    #@1f
    const/4 p1, 0x0

    #@20
    move p2, p1

    #@21
    :goto_21
    const/4 p3, 0x4

    #@22
    if-ge p2, p3, :cond_2d

    #@24
    .line 129
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    #@27
    .line 130
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgePathAndTransform(I)V

    #@2a
    add-int/lit8 p2, p2, 0x1

    #@2c
    goto :goto_21

    #@2d
    :cond_2d
    :goto_2d
    if-ge p1, p3, :cond_38

    #@2f
    .line 134
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    #@32
    .line 135
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    #@35
    add-int/lit8 p1, p1, 0x1

    #@37
    goto :goto_2d

    #@38
    .line 138
    :cond_38
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    #@3b
    .line 139
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    #@3d
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    #@40
    .line 142
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    #@42
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    #@45
    move-result p1

    #@46
    if-nez p1, :cond_4f

    #@48
    .line 143
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    #@4a
    sget-object p2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    #@4c
    invoke-virtual {p5, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    #@4f
    :cond_4f
    return-void
.end method

.method setEdgeIntersectionCheckEnable(Z)V
    .registers 2

    #@0
    .line 329
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    #@2
    return-void
.end method
