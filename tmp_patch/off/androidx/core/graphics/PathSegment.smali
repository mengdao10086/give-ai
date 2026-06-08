.class public final Landroidx/core/graphics/PathSegment;
.super Ljava/lang/Object;
.source "PathSegment.java"


# instance fields
.field private final mEnd:Landroid/graphics/PointF;

.field private final mEndFraction:F

.field private final mStart:Landroid/graphics/PointF;

.field private final mStartFraction:F


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V
    .registers 6

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "start == null"

    #@5
    .line 38
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Landroid/graphics/PointF;

    #@b
    iput-object p1, p0, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    #@d
    .line 39
    iput p2, p0, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    #@f
    const-string p1, "end == null"

    #@11
    .line 40
    invoke-static {p3, p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, Landroid/graphics/PointF;

    #@17
    iput-object p1, p0, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    #@19
    .line 41
    iput p4, p0, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    #@1b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 73
    :cond_4
    instance-of v1, p1, Landroidx/core/graphics/PathSegment;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 74
    :cond_a
    check-cast p1, Landroidx/core/graphics/PathSegment;

    #@c
    .line 75
    iget v1, p0, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    #@e
    iget v3, p1, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    #@10
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_35

    #@16
    iget v1, p0, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    #@18
    iget v3, p1, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    #@1a
    .line 76
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_35

    #@20
    iget-object v1, p0, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    #@22
    iget-object v3, p1, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    #@24
    .line 77
    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_35

    #@2a
    iget-object v1, p0, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    #@2c
    iget-object p1, p1, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    #@2e
    .line 78
    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    #@31
    move-result p1

    #@32
    if-eqz p1, :cond_35

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v0, v2

    #@36
    :goto_36
    return v0
.end method

.method public getEnd()Landroid/graphics/PointF;
    .registers 2

    #@0
    .line 60
    iget-object v0, p0, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    #@2
    return-object v0
.end method

.method public getEndFraction()F
    .registers 2

    #@0
    .line 67
    iget v0, p0, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    #@2
    return v0
.end method

.method public getStart()Landroid/graphics/PointF;
    .registers 2

    #@0
    .line 47
    iget-object v0, p0, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    #@2
    return-object v0
.end method

.method public getStartFraction()F
    .registers 2

    #@0
    .line 54
    iget v0, p0, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 6

    #@0
    .line 83
    iget-object v0, p0, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    #@2
    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    .line 84
    iget v1, p0, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    #@a
    const/4 v2, 0x0

    #@b
    cmpl-float v3, v1, v2

    #@d
    const/4 v4, 0x0

    #@e
    if-eqz v3, :cond_15

    #@10
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@13
    move-result v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v1, v4

    #@16
    :goto_16
    add-int/2addr v0, v1

    #@17
    mul-int/lit8 v0, v0, 0x1f

    #@19
    .line 85
    iget-object v1, p0, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    #@1b
    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    mul-int/lit8 v0, v0, 0x1f

    #@22
    .line 86
    iget v1, p0, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    #@24
    cmpl-float v2, v1, v2

    #@26
    if-eqz v2, :cond_2c

    #@28
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2b
    move-result v4

    #@2c
    :cond_2c
    add-int/2addr v0, v4

    #@2d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "PathSegment{start="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", startFraction="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", end="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, ", endFraction="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p0, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const/16 v1, 0x7d

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method
