.class public Lcom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 578
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 1

    #@0
    .line 578
    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    #@2
    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    #@0
    .line 578
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    #@2
    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 1

    #@0
    .line 578
    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    #@2
    return p0
.end method

.method static synthetic access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    #@0
    .line 578
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    #@2
    return p1
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 5

    #@0
    .line 584
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->matrix:Landroid/graphics/Matrix;

    #@2
    .line 585
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@5
    .line 586
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@8
    .line 587
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    #@a
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    #@c
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    #@f
    .line 588
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@12
    return-void
.end method
