.class public Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
.super Ljava/lang/Object;
.source "HyperSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/HyperSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cubic"
.end annotation


# instance fields
.field mA:D

.field mB:D

.field mC:D

.field mD:D


# direct methods
.method public constructor <init>(DDDD)V
    .registers 9

    #@0
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 183
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mA:D

    #@5
    .line 184
    iput-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mB:D

    #@7
    .line 185
    iput-wide p5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mC:D

    #@9
    .line 186
    iput-wide p7, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mD:D

    #@b
    return-void
.end method


# virtual methods
.method public eval(D)D
    .registers 7

    #@0
    .line 190
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mD:D

    #@2
    mul-double/2addr v0, p1

    #@3
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mC:D

    #@5
    add-double/2addr v0, v2

    #@6
    mul-double/2addr v0, p1

    #@7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mB:D

    #@9
    add-double/2addr v0, v2

    #@a
    mul-double/2addr v0, p1

    #@b
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mA:D

    #@d
    add-double/2addr v0, p1

    #@e
    return-wide v0
.end method

.method public vel(D)D
    .registers 9

    #@0
    .line 199
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mD:D

    #@2
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    #@4
    mul-double/2addr v0, v2

    #@5
    mul-double/2addr v0, p1

    #@6
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mC:D

    #@8
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    #@a
    mul-double/2addr v2, v4

    #@b
    add-double/2addr v0, v2

    #@c
    mul-double/2addr v0, p1

    #@d
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->mB:D

    #@f
    add-double/2addr v0, p1

    #@10
    return-wide v0
.end method
