.class public abstract Landroidx/constraintlayout/core/motion/utils/CurveFit;
.super Ljava/lang/Object;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;
    }
.end annotation


# static fields
.field public static final CONSTANT:I = 0x2

.field public static final LINEAR:I = 0x1

.field public static final SPLINE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .registers 6

    #@0
    .line 32
    array-length v0, p1

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x2

    #@3
    if-ne v0, v1, :cond_6

    #@5
    move p0, v2

    #@6
    :cond_6
    if-eqz p0, :cond_1b

    #@8
    if-eq p0, v2, :cond_10

    #@a
    .line 41
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;

    #@c
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;-><init>([D[[D)V

    #@f
    return-object p0

    #@10
    .line 39
    :cond_10
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;

    #@12
    const/4 v0, 0x0

    #@13
    aget-wide v1, p1, v0

    #@15
    aget-object p1, p2, v0

    #@17
    invoke-direct {p0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;-><init>(D[D)V

    #@1a
    return-object p0

    #@1b
    .line 37
    :cond_1b
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@1d
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    #@20
    return-object p0
.end method

.method public static getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .registers 4

    #@0
    .line 46
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    #@5
    return-object v0
.end method


# virtual methods
.method public abstract getPos(DI)D
.end method

.method public abstract getPos(D[D)V
.end method

.method public abstract getPos(D[F)V
.end method

.method public abstract getSlope(DI)D
.end method

.method public abstract getSlope(D[D)V
.end method

.method public abstract getTimePoints()[D
.end method
