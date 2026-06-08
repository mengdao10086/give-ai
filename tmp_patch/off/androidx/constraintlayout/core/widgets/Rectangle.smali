.class public Landroidx/constraintlayout/core/widgets/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public contains(II)Z
    .registers 5

    #@0
    .line 46
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->x:I

    #@2
    if-lt p1, v0, :cond_14

    #@4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->width:I

    #@6
    add-int/2addr v0, v1

    #@7
    if-ge p1, v0, :cond_14

    #@9
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->y:I

    #@b
    if-lt p2, p1, :cond_14

    #@d
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->height:I

    #@f
    add-int/2addr p1, v0

    #@10
    if-ge p2, p1, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    :goto_15
    return p1
.end method

.method public getCenterX()I
    .registers 3

    #@0
    .line 50
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->x:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->width:I

    #@4
    add-int/2addr v0, v1

    #@5
    div-int/lit8 v0, v0, 0x2

    #@7
    return v0
.end method

.method public getCenterY()I
    .registers 3

    #@0
    .line 51
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->y:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->height:I

    #@4
    add-int/2addr v0, v1

    #@5
    div-int/lit8 v0, v0, 0x2

    #@7
    return v0
.end method

.method grow(II)V
    .registers 4

    #@0
    .line 34
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->x:I

    #@2
    sub-int/2addr v0, p1

    #@3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->x:I

    #@5
    .line 35
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->y:I

    #@7
    sub-int/2addr v0, p2

    #@8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->y:I

    #@a
    .line 36
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->width:I

    #@c
    mul-int/lit8 p1, p1, 0x2

    #@e
    add-int/2addr v0, p1

    #@f
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->width:I

    #@11
    .line 37
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->height:I

    #@13
    mul-int/lit8 p2, p2, 0x2

    #@15
    add-int/2addr p1, p2

    #@16
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->height:I

    #@18
    return-void
.end method

.method intersects(Landroidx/constraintlayout/core/widgets/Rectangle;)Z
    .registers 5

    #@0
    .line 41
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->x:I

    #@2
    iget v1, p1, Landroidx/constraintlayout/core/widgets/Rectangle;->x:I

    #@4
    if-lt v0, v1, :cond_18

    #@6
    iget v2, p1, Landroidx/constraintlayout/core/widgets/Rectangle;->width:I

    #@8
    add-int/2addr v1, v2

    #@9
    if-ge v0, v1, :cond_18

    #@b
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->y:I

    #@d
    iget v1, p1, Landroidx/constraintlayout/core/widgets/Rectangle;->y:I

    #@f
    if-lt v0, v1, :cond_18

    #@11
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Rectangle;->height:I

    #@13
    add-int/2addr v1, p1

    #@14
    if-ge v0, v1, :cond_18

    #@16
    const/4 p1, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    :goto_19
    return p1
.end method

.method public setBounds(IIII)V
    .registers 5

    #@0
    .line 28
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->x:I

    #@2
    .line 29
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->y:I

    #@4
    .line 30
    iput p3, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->width:I

    #@6
    .line 31
    iput p4, p0, Landroidx/constraintlayout/core/widgets/Rectangle;->height:I

    #@8
    return-void
.end method
