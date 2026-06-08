.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 659
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    #@7
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    #@0
    .line 692
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    #@3
    .line 693
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setLeft(F)V

    #@6
    .line 694
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setTop(F)V

    #@9
    .line 695
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setRight(F)V

    #@c
    .line 696
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setBottom(F)V

    #@f
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    #@0
    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    #@0
    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    #@0
    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    #@0
    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .registers 2

    #@0
    .line 658
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setStartAngle(F)V

    #@3
    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .registers 2

    #@0
    .line 658
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setSweepAngle(F)V

    #@3
    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    #@0
    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    #@0
    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private getBottom()F
    .registers 2

    #@0
    .line 722
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    #@2
    return v0
.end method

.method private getLeft()F
    .registers 2

    #@0
    .line 710
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    #@2
    return v0
.end method

.method private getRight()F
    .registers 2

    #@0
    .line 718
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    #@2
    return v0
.end method

.method private getStartAngle()F
    .registers 2

    #@0
    .line 742
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    #@2
    return v0
.end method

.method private getSweepAngle()F
    .registers 2

    #@0
    .line 746
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    #@2
    return v0
.end method

.method private getTop()F
    .registers 2

    #@0
    .line 714
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    #@2
    return v0
.end method

.method private setBottom(F)V
    .registers 2

    #@0
    .line 738
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    #@2
    return-void
.end method

.method private setLeft(F)V
    .registers 2

    #@0
    .line 726
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    #@2
    return-void
.end method

.method private setRight(F)V
    .registers 2

    #@0
    .line 734
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    #@2
    return-void
.end method

.method private setStartAngle(F)V
    .registers 2

    #@0
    .line 750
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    #@2
    return-void
.end method

.method private setSweepAngle(F)V
    .registers 2

    #@0
    .line 754
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    #@2
    return-void
.end method

.method private setTop(F)V
    .registers 2

    #@0
    .line 730
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    #@2
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 8

    #@0
    .line 701
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->matrix:Landroid/graphics/Matrix;

    #@2
    .line 702
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@5
    .line 703
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@8
    .line 704
    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    #@a
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    #@d
    move-result v1

    #@e
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    #@11
    move-result v2

    #@12
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    #@15
    move-result v3

    #@16
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    #@19
    move-result v4

    #@1a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@1d
    .line 705
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    #@20
    move-result v1

    #@21
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    #@24
    move-result v2

    #@25
    const/4 v3, 0x0

    #@26
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@29
    .line 706
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@2c
    return-void
.end method
