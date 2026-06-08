.class Landroidx/transition/PathProperty;
.super Landroid/util/Property;
.source "PathProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property<",
        "TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentFraction:F

.field private final mPathLength:F

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mPointF:Landroid/graphics/PointF;

.field private final mPosition:[F

.field private final mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/Property;Landroid/graphics/Path;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    #@0
    .line 45
    const-class v0, Ljava/lang/Float;

    #@2
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@9
    const/4 v0, 0x2

    #@a
    new-array v0, v0, [F

    #@c
    .line 40
    iput-object v0, p0, Landroidx/transition/PathProperty;->mPosition:[F

    #@e
    .line 41
    new-instance v0, Landroid/graphics/PointF;

    #@10
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@13
    iput-object v0, p0, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    #@15
    .line 46
    iput-object p1, p0, Landroidx/transition/PathProperty;->mProperty:Landroid/util/Property;

    #@17
    .line 47
    new-instance p1, Landroid/graphics/PathMeasure;

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-direct {p1, p2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@1d
    iput-object p1, p0, Landroidx/transition/PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@1f
    .line 48
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    #@22
    move-result p1

    #@23
    iput p1, p0, Landroidx/transition/PathProperty;->mPathLength:F

    #@25
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    #@0
    .line 53
    iget p1, p0, Landroidx/transition/PathProperty;->mCurrentFraction:F

    #@2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 35
    invoke-virtual {p0, p1}, Landroidx/transition/PathProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Float;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    #@0
    .line 58
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroidx/transition/PathProperty;->mCurrentFraction:F

    #@6
    .line 59
    iget-object v0, p0, Landroidx/transition/PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@8
    iget v1, p0, Landroidx/transition/PathProperty;->mPathLength:F

    #@a
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@d
    move-result p2

    #@e
    mul-float/2addr v1, p2

    #@f
    iget-object p2, p0, Landroidx/transition/PathProperty;->mPosition:[F

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@15
    .line 60
    iget-object p2, p0, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    #@17
    iget-object v0, p0, Landroidx/transition/PathProperty;->mPosition:[F

    #@19
    const/4 v1, 0x0

    #@1a
    aget v0, v0, v1

    #@1c
    iput v0, p2, Landroid/graphics/PointF;->x:F

    #@1e
    .line 61
    iget-object p2, p0, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    #@20
    iget-object v0, p0, Landroidx/transition/PathProperty;->mPosition:[F

    #@22
    const/4 v1, 0x1

    #@23
    aget v0, v0, v1

    #@25
    iput v0, p2, Landroid/graphics/PointF;->y:F

    #@27
    .line 62
    iget-object p2, p0, Landroidx/transition/PathProperty;->mProperty:Landroid/util/Property;

    #@29
    iget-object v0, p0, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    #@2b
    invoke-virtual {p2, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2e
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 35
    check-cast p2, Ljava/lang/Float;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/transition/PathProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    #@5
    return-void
.end method
