.class Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/CurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constant"
.end annotation


# instance fields
.field mTime:D

.field mValue:[D


# direct methods
.method constructor <init>(D[D)V
    .registers 4

    #@0
    .line 65
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    #@3
    .line 66
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

    #@5
    .line 67
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    #@7
    return-void
.end method


# virtual methods
.method public getPos(DI)D
    .registers 4

    #@0
    .line 84
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    #@2
    aget-wide p2, p1, p3

    #@4
    return-wide p2
.end method

.method public getPos(D[D)V
    .registers 5

    #@0
    .line 72
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    #@2
    const/4 p2, 0x0

    #@3
    array-length v0, p1

    #@4
    invoke-static {p1, p2, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@7
    return-void
.end method

.method public getPos(D[F)V
    .registers 6

    #@0
    const/4 p1, 0x0

    #@1
    .line 77
    :goto_1
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    #@3
    array-length v0, p2

    #@4
    if-ge p1, v0, :cond_e

    #@6
    .line 78
    aget-wide v0, p2, p1

    #@8
    double-to-float p2, v0

    #@9
    aput p2, p3, p1

    #@b
    add-int/lit8 p1, p1, 0x1

    #@d
    goto :goto_1

    #@e
    :cond_e
    return-void
.end method

.method public getSlope(DI)D
    .registers 4

    #@0
    const-wide/16 p1, 0x0

    #@2
    return-wide p1
.end method

.method public getSlope(D[D)V
    .registers 6

    #@0
    const/4 p1, 0x0

    #@1
    .line 89
    :goto_1
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    #@3
    array-length p2, p2

    #@4
    if-ge p1, p2, :cond_d

    #@6
    const-wide/16 v0, 0x0

    #@8
    .line 90
    aput-wide v0, p3, p1

    #@a
    add-int/lit8 p1, p1, 0x1

    #@c
    goto :goto_1

    #@d
    :cond_d
    return-void
.end method

.method public getTimePoints()[D
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [D

    #@3
    const/4 v1, 0x0

    #@4
    .line 101
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

    #@6
    aput-wide v2, v0, v1

    #@8
    return-object v0
.end method
