.class public Landroidx/constraintlayout/core/motion/utils/FloatRect;
.super Ljava/lang/Object;
.source "FloatRect.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final centerX()F
    .registers 3

    #@0
    .line 24
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    #@4
    add-float/2addr v0, v1

    #@5
    const/high16 v1, 0x3f000000    # 0.5f

    #@7
    mul-float/2addr v0, v1

    #@8
    return v0
.end method

.method public final centerY()F
    .registers 3

    #@0
    .line 27
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    #@4
    add-float/2addr v0, v1

    #@5
    const/high16 v1, 0x3f000000    # 0.5f

    #@7
    mul-float/2addr v0, v1

    #@8
    return v0
.end method
