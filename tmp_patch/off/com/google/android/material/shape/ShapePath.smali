.class public Lcom/google/android/material/shape/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapePath$PathCubicOperation;,
        Lcom/google/android/material/shape/ShapePath$PathArcOperation;,
        Lcom/google/android/material/shape/ShapePath$PathQuadOperation;,
        Lcom/google/android/material/shape/ShapePath$PathLineOperation;,
        Lcom/google/android/material/shape/ShapePath$PathOperation;,
        Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$LineShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    }
.end annotation


# static fields
.field protected static final ANGLE_LEFT:F = 180.0f

.field private static final ANGLE_UP:F = 270.0f


# instance fields
.field private containsIncompatibleShadowOp:Z

.field public currentShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapePath$PathOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final shadowCompatOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@a
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    #@11
    const/4 v0, 0x0

    #@12
    .line 97
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    #@15
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    #@0
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@a
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    #@11
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    #@14
    return-void
.end method

.method private addConnectingShadowIfNecessary(F)V
    .registers 8

    #@0
    .line 335
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    #@3
    move-result v0

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 339
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    #@c
    move-result v0

    #@d
    sub-float v0, p1, v0

    #@f
    const/high16 v1, 0x43b40000    # 360.0f

    #@11
    add-float/2addr v0, v1

    #@12
    rem-float/2addr v0, v1

    #@13
    const/high16 v1, 0x43340000    # 180.0f

    #@15
    cmpl-float v1, v0, v1

    #@17
    if-lez v1, :cond_1a

    #@19
    return-void

    #@1a
    .line 344
    :cond_1a
    new-instance v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    #@1c
    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    #@1f
    move-result v2

    #@20
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    #@23
    move-result v3

    #@24
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    #@27
    move-result v4

    #@28
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    #@2b
    move-result v5

    #@2c
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    #@2f
    .line 346
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    #@32
    move-result v2

    #@33
    # invokes: Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setStartAngle(F)V
    invoke-static {v1, v2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    #@36
    .line 347
    # invokes: Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setSweepAngle(F)V
    invoke-static {v1, v0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    #@39
    .line 348
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    #@3b
    new-instance v2, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;

    #@3d
    invoke-direct {v2, v1}, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    #@40
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 349
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    #@46
    return-void
.end method

.method private addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V
    .registers 4

    #@0
    .line 317
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    #@3
    .line 318
    iget-object p2, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    #@5
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    .line 319
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    #@b
    return-void
.end method

.method private getCurrentShadowAngle()F
    .registers 2

    #@0
    .line 369
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    #@2
    return v0
.end method

.method private getEndShadowAngle()F
    .registers 2

    #@0
    .line 373
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    #@2
    return v0
.end method

.method private setCurrentShadowAngle(F)V
    .registers 2

    #@0
    .line 393
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    #@2
    return-void
.end method

.method private setEndShadowAngle(F)V
    .registers 2

    #@0
    .line 397
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    #@2
    return-void
.end method

.method private setEndX(F)V
    .registers 2

    #@0
    .line 385
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    #@2
    return-void
.end method

.method private setEndY(F)V
    .registers 2

    #@0
    .line 389
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    #@2
    return-void
.end method

.method private setStartX(F)V
    .registers 2

    #@0
    .line 377
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    #@2
    return-void
.end method

.method private setStartY(F)V
    .registers 2

    #@0
    .line 381
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    #@2
    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .registers 11

    #@0
    .line 253
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    #@5
    .line 254
    # invokes: Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setStartAngle(F)V
    invoke-static {v0, p5}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    #@8
    .line 255
    # invokes: Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setSweepAngle(F)V
    invoke-static {v0, p6}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    #@b
    .line 256
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 258
    new-instance v1, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;

    #@12
    invoke-direct {v1, v0}, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    #@15
    add-float v0, p5, p6

    #@17
    const/4 v2, 0x0

    #@18
    cmpg-float p6, p6, v2

    #@1a
    if-gez p6, :cond_1e

    #@1c
    const/4 p6, 0x1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 p6, 0x0

    #@1f
    :goto_1f
    const/high16 v2, 0x43b40000    # 360.0f

    #@21
    const/high16 v3, 0x43340000    # 180.0f

    #@23
    if-eqz p6, :cond_27

    #@25
    add-float/2addr p5, v3

    #@26
    rem-float/2addr p5, v2

    #@27
    :cond_27
    if-eqz p6, :cond_2c

    #@29
    add-float/2addr v3, v0

    #@2a
    rem-float/2addr v3, v2

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v3, v0

    #@2d
    .line 264
    :goto_2d
    invoke-direct {p0, v1, p5, v3}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    #@30
    add-float p5, p1, p3

    #@32
    const/high16 p6, 0x3f000000    # 0.5f

    #@34
    mul-float/2addr p5, p6

    #@35
    sub-float/2addr p3, p1

    #@36
    const/high16 p1, 0x40000000    # 2.0f

    #@38
    div-float/2addr p3, p1

    #@39
    float-to-double v0, v0

    #@3a
    .line 271
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@3d
    move-result-wide v2

    #@3e
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@41
    move-result-wide v2

    #@42
    double-to-float v2, v2

    #@43
    mul-float/2addr p3, v2

    #@44
    add-float/2addr p5, p3

    #@45
    .line 269
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    #@48
    add-float p3, p2, p4

    #@4a
    mul-float/2addr p3, p6

    #@4b
    sub-float/2addr p4, p2

    #@4c
    div-float/2addr p4, p1

    #@4d
    .line 274
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@50
    move-result-wide p1

    #@51
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    #@54
    move-result-wide p1

    #@55
    double-to-float p1, p1

    #@56
    mul-float/2addr p4, p1

    #@57
    add-float/2addr p3, p4

    #@58
    .line 272
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    #@5b
    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 6

    #@0
    .line 284
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_17

    #@9
    .line 285
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/google/android/material/shape/ShapePath$PathOperation;

    #@11
    .line 286
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_7

    #@17
    :cond_17
    return-void
.end method

.method containsIncompatibleShadowOp()Z
    .registers 2

    #@0
    .line 327
    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    #@2
    return v0
.end method

.method createShadowCompatOperation(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .registers 4

    #@0
    .line 297
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getEndShadowAngle()F

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    #@7
    .line 298
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@c
    .line 299
    new-instance p1, Ljava/util/ArrayList;

    #@e
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    #@10
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@13
    .line 300
    new-instance v1, Lcom/google/android/material/shape/ShapePath$1;

    #@15
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V

    #@18
    return-object v1
.end method

.method public cubicToPoint(FFFFFF)V
    .registers 15

    #@0
    .line 231
    new-instance v7, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;

    #@2
    move-object v0, v7

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move v6, p6

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;-><init>(FFFFFF)V

    #@c
    .line 233
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@e
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    const/4 p1, 0x1

    #@12
    .line 235
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    #@14
    .line 237
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    #@17
    .line 238
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    #@1a
    return-void
.end method

.method getEndX()F
    .registers 2

    #@0
    .line 361
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    #@2
    return v0
.end method

.method getEndY()F
    .registers 2

    #@0
    .line 365
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    #@2
    return v0
.end method

.method getStartX()F
    .registers 2

    #@0
    .line 353
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    #@2
    return v0
.end method

.method getStartY()F
    .registers 2

    #@0
    .line 357
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    #@2
    return v0
.end method

.method public lineTo(FF)V
    .registers 7

    #@0
    .line 132
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    #@5
    .line 133
    # setter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    #@8
    .line 134
    # setter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    #@b
    .line 135
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 138
    new-instance v1, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;

    #@12
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    #@15
    move-result v2

    #@16
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    #@19
    move-result v3

    #@1a
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V

    #@1d
    .line 142
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    #@20
    move-result v0

    #@21
    const/high16 v2, 0x43870000    # 270.0f

    #@23
    add-float/2addr v0, v2

    #@24
    .line 143
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    #@27
    move-result v3

    #@28
    add-float/2addr v3, v2

    #@29
    .line 140
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    #@2c
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    #@2f
    .line 146
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    #@32
    return-void
.end method

.method public lineTo(FFFF)V
    .registers 10

    #@0
    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    #@3
    move-result v0

    #@4
    sub-float v0, p1, v0

    #@6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@9
    move-result v0

    #@a
    const v1, 0x3a83126f    # 0.001f

    #@d
    cmpg-float v0, v0, v1

    #@f
    if-gez v0, :cond_1f

    #@11
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    #@14
    move-result v0

    #@15
    sub-float v0, p2, v0

    #@17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@1a
    move-result v0

    #@1b
    cmpg-float v0, v0, v1

    #@1d
    if-ltz v0, :cond_33

    #@1f
    :cond_1f
    sub-float v0, p1, p3

    #@21
    .line 156
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@24
    move-result v0

    #@25
    cmpg-float v0, v0, v1

    #@27
    if-gez v0, :cond_37

    #@29
    sub-float v0, p2, p4

    #@2b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@2e
    move-result v0

    #@2f
    cmpg-float v0, v0, v1

    #@31
    if-gez v0, :cond_37

    #@33
    .line 157
    :cond_33
    invoke-virtual {p0, p3, p4}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@36
    return-void

    #@37
    .line 160
    :cond_37
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@39
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    #@3c
    .line 161
    # setter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    #@3f
    .line 162
    # setter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    #@42
    .line 163
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@44
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    .line 164
    new-instance v1, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@49
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    #@4c
    .line 165
    # setter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v1, p3}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    #@4f
    .line 166
    # setter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v1, p4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    #@52
    .line 167
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@54
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@57
    .line 170
    new-instance v2, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;

    #@59
    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    #@5c
    move-result v3

    #@5d
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    #@60
    move-result v4

    #@61
    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V

    #@64
    .line 173
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getSweepAngle()F

    #@67
    move-result v0

    #@68
    const/4 v1, 0x0

    #@69
    cmpl-float v0, v0, v1

    #@6b
    if-lez v0, :cond_74

    #@6d
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@70
    .line 176
    invoke-virtual {p0, p3, p4}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@73
    return-void

    #@74
    .line 182
    :cond_74
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    #@77
    move-result p1

    #@78
    const/high16 p2, 0x43870000    # 270.0f

    #@7a
    add-float/2addr p1, p2

    #@7b
    .line 183
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    #@7e
    move-result v0

    #@7f
    add-float/2addr v0, p2

    #@80
    .line 180
    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    #@83
    .line 185
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    #@86
    .line 186
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    #@89
    return-void
.end method

.method public quadToPoint(FFFF)V
    .registers 6

    #@0
    .line 202
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;-><init>()V

    #@5
    .line 203
    # invokes: Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setControlX(F)V
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$200(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    #@8
    .line 204
    # invokes: Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setControlY(F)V
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$300(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    #@b
    .line 205
    # invokes: Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setEndX(F)V
    invoke-static {v0, p3}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$400(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    #@e
    .line 206
    # invokes: Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setEndY(F)V
    invoke-static {v0, p4}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$500(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    #@11
    .line 207
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    const/4 p1, 0x1

    #@17
    .line 209
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    #@19
    .line 211
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    #@1c
    .line 212
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    #@1f
    return-void
.end method

.method public reset(FF)V
    .registers 5

    #@0
    const/high16 v0, 0x43870000    # 270.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 109
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    #@6
    return-void
.end method

.method public reset(FFFF)V
    .registers 5

    #@0
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setStartX(F)V

    #@3
    .line 115
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setStartY(F)V

    #@6
    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    #@9
    .line 117
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    #@c
    .line 118
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    #@f
    add-float/2addr p3, p4

    #@10
    const/high16 p1, 0x43b40000    # 360.0f

    #@12
    rem-float/2addr p3, p1

    #@13
    .line 119
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndShadowAngle(F)V

    #@16
    .line 120
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    #@18
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@1b
    .line 121
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    #@1d
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@20
    const/4 p1, 0x0

    #@21
    .line 122
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    #@23
    return-void
.end method
