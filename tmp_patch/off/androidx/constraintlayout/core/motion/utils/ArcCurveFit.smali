.class public Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

.field private mExtrapolate:Z

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .registers 28

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    .line 259
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    #@7
    const/4 v2, 0x1

    #@8
    .line 37
    iput-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    #@a
    .line 260
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    #@c
    .line 261
    array-length v3, v1

    #@d
    sub-int/2addr v3, v2

    #@e
    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@10
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@12
    const/4 v3, 0x0

    #@13
    move v5, v2

    #@14
    move v6, v5

    #@15
    move v4, v3

    #@16
    .line 264
    :goto_16
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@18
    array-length v8, v7

    #@19
    if-ge v4, v8, :cond_4f

    #@1b
    .line 265
    aget v8, p1, v4

    #@1d
    const/4 v9, 0x3

    #@1e
    if-eqz v8, :cond_2f

    #@20
    if-eq v8, v2, :cond_2c

    #@22
    const/4 v10, 0x2

    #@23
    if-eq v8, v10, :cond_2a

    #@25
    if-eq v8, v9, :cond_28

    #@27
    goto :goto_30

    #@28
    :cond_28
    if-ne v5, v2, :cond_2c

    #@2a
    :cond_2a
    move v5, v10

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v5, v2

    #@2d
    :goto_2d
    move v6, v5

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move v6, v9

    #@30
    .line 279
    :goto_30
    new-instance v22, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@32
    aget-wide v10, v1, v4

    #@34
    add-int/lit8 v23, v4, 0x1

    #@36
    aget-wide v12, v1, v23

    #@38
    aget-object v8, p3, v4

    #@3a
    aget-wide v14, v8, v3

    #@3c
    aget-wide v16, v8, v2

    #@3e
    aget-object v8, p3, v23

    #@40
    aget-wide v18, v8, v3

    #@42
    aget-wide v20, v8, v2

    #@44
    move-object/from16 v8, v22

    #@46
    move v9, v6

    #@47
    invoke-direct/range {v8 .. v21}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    #@4a
    aput-object v22, v7, v4

    #@4c
    move/from16 v4, v23

    #@4e
    goto :goto_16

    #@4f
    :cond_4f
    return-void
.end method


# virtual methods
.method public getPos(DI)D
    .registers 10

    #@0
    .line 172
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_b3

    #@5
    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@7
    aget-object v0, v0, v1

    #@9
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@b
    cmpg-double v0, p1, v2

    #@d
    if-gez v0, :cond_77

    #@f
    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@11
    aget-object v0, v0, v1

    #@13
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@15
    .line 175
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@17
    aget-object v0, v0, v1

    #@19
    iget-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@1b
    sub-double/2addr p1, v4

    #@1c
    .line 177
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@1e
    aget-object v0, v0, v1

    #@20
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@22
    if-eqz v0, :cond_4a

    #@24
    if-nez p3, :cond_39

    #@26
    .line 179
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@28
    aget-object p3, p3, v1

    #@2a
    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@2d
    move-result-wide v4

    #@2e
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@30
    aget-object p3, p3, v1

    #@32
    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@35
    move-result-wide v0

    #@36
    :goto_36
    mul-double/2addr p1, v0

    #@37
    add-double/2addr v4, p1

    #@38
    return-wide v4

    #@39
    .line 181
    :cond_39
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@3b
    aget-object p3, p3, v1

    #@3d
    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@40
    move-result-wide v4

    #@41
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@43
    aget-object p3, p3, v1

    #@45
    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@48
    move-result-wide v0

    #@49
    goto :goto_36

    #@4a
    .line 183
    :cond_4a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@4c
    aget-object v0, v0, v1

    #@4e
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@51
    if-nez p3, :cond_66

    #@53
    .line 185
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@55
    aget-object p3, p3, v1

    #@57
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@5a
    move-result-wide v2

    #@5b
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@5d
    aget-object p3, p3, v1

    #@5f
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    #@62
    move-result-wide v0

    #@63
    :goto_63
    mul-double/2addr p1, v0

    #@64
    add-double/2addr v2, p1

    #@65
    return-wide v2

    #@66
    .line 187
    :cond_66
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@68
    aget-object p3, p3, v1

    #@6a
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@6d
    move-result-wide v2

    #@6e
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@70
    aget-object p3, p3, v1

    #@72
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    #@75
    move-result-wide v0

    #@76
    goto :goto_63

    #@77
    .line 190
    :cond_77
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@79
    array-length v2, v0

    #@7a
    add-int/lit8 v2, v2, -0x1

    #@7c
    aget-object v0, v0, v2

    #@7e
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@80
    cmpl-double v0, p1, v2

    #@82
    if-lez v0, :cond_da

    #@84
    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@86
    array-length v1, v0

    #@87
    add-int/lit8 v1, v1, -0x1

    #@89
    aget-object v0, v0, v1

    #@8b
    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@8d
    sub-double/2addr p1, v0

    #@8e
    .line 193
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@90
    array-length v3, v2

    #@91
    add-int/lit8 v3, v3, -0x1

    #@93
    if-nez p3, :cond_a4

    #@95
    .line 195
    aget-object p3, v2, v3

    #@97
    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@9a
    move-result-wide v4

    #@9b
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@9d
    aget-object p3, p3, v3

    #@9f
    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@a2
    move-result-wide v0

    #@a3
    goto :goto_36

    #@a4
    .line 197
    :cond_a4
    aget-object p3, v2, v3

    #@a6
    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@a9
    move-result-wide v4

    #@aa
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@ac
    aget-object p3, p3, v3

    #@ae
    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@b1
    move-result-wide v0

    #@b2
    goto :goto_36

    #@b3
    .line 200
    :cond_b3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@b5
    aget-object v0, v0, v1

    #@b7
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@b9
    cmpg-double v0, p1, v2

    #@bb
    if-gez v0, :cond_c4

    #@bd
    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@bf
    aget-object p1, p1, v1

    #@c1
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@c3
    goto :goto_da

    #@c4
    .line 202
    :cond_c4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@c6
    array-length v2, v0

    #@c7
    add-int/lit8 v2, v2, -0x1

    #@c9
    aget-object v0, v0, v2

    #@cb
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@cd
    cmpl-double v0, p1, v2

    #@cf
    if-lez v0, :cond_da

    #@d1
    .line 203
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@d3
    array-length p2, p1

    #@d4
    add-int/lit8 p2, p2, -0x1

    #@d6
    aget-object p1, p1, p2

    #@d8
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@da
    .line 207
    :cond_da
    :goto_da
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@dc
    array-length v2, v0

    #@dd
    if-ge v1, v2, :cond_121

    #@df
    .line 208
    aget-object v0, v0, v1

    #@e1
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@e3
    cmpg-double v0, p1, v2

    #@e5
    if-gtz v0, :cond_11e

    #@e7
    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@e9
    aget-object v0, v0, v1

    #@eb
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@ed
    if-eqz v0, :cond_103

    #@ef
    if-nez p3, :cond_fa

    #@f1
    .line 212
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@f3
    aget-object p3, p3, v1

    #@f5
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@f8
    move-result-wide p1

    #@f9
    return-wide p1

    #@fa
    .line 214
    :cond_fa
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@fc
    aget-object p3, p3, v1

    #@fe
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@101
    move-result-wide p1

    #@102
    return-wide p1

    #@103
    .line 216
    :cond_103
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@105
    aget-object v0, v0, v1

    #@107
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@10a
    if-nez p3, :cond_115

    #@10c
    .line 219
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@10e
    aget-object p1, p1, v1

    #@110
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@113
    move-result-wide p1

    #@114
    return-wide p1

    #@115
    .line 221
    :cond_115
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@117
    aget-object p1, p1, v1

    #@119
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@11c
    move-result-wide p1

    #@11d
    return-wide p1

    #@11e
    :cond_11e
    add-int/lit8 v1, v1, 0x1

    #@120
    goto :goto_da

    #@121
    :cond_121
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    #@123
    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 14

    #@0
    .line 41
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_f7

    #@6
    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@8
    aget-object v0, v0, v2

    #@a
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@c
    cmpg-double v0, p1, v3

    #@e
    if-gez v0, :cond_7e

    #@10
    .line 43
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@12
    aget-object v0, v0, v2

    #@14
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@16
    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@18
    aget-object v0, v0, v2

    #@1a
    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@1c
    sub-double/2addr p1, v5

    #@1d
    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@1f
    aget-object v0, v0, v2

    #@21
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@23
    if-eqz v0, :cond_4e

    #@25
    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@27
    aget-object v0, v0, v2

    #@29
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@2c
    move-result-wide v5

    #@2d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@2f
    aget-object v0, v0, v2

    #@31
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@34
    move-result-wide v7

    #@35
    mul-double/2addr v7, p1

    #@36
    add-double/2addr v5, v7

    #@37
    aput-wide v5, p3, v2

    #@39
    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@3b
    aget-object v0, v0, v2

    #@3d
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@40
    move-result-wide v5

    #@41
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@43
    aget-object v0, v0, v2

    #@45
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@48
    move-result-wide v2

    #@49
    mul-double/2addr p1, v2

    #@4a
    add-double/2addr v5, p1

    #@4b
    aput-wide v5, p3, v1

    #@4d
    goto :goto_7d

    #@4e
    .line 50
    :cond_4e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@50
    aget-object v0, v0, v2

    #@52
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@55
    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@57
    aget-object v0, v0, v2

    #@59
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@5c
    move-result-wide v3

    #@5d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@5f
    aget-object v0, v0, v2

    #@61
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    #@64
    move-result-wide v5

    #@65
    mul-double/2addr v5, p1

    #@66
    add-double/2addr v3, v5

    #@67
    aput-wide v3, p3, v2

    #@69
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@6b
    aget-object v0, v0, v2

    #@6d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@70
    move-result-wide v3

    #@71
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@73
    aget-object v0, v0, v2

    #@75
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    #@78
    move-result-wide v5

    #@79
    mul-double/2addr p1, v5

    #@7a
    add-double/2addr v3, p1

    #@7b
    aput-wide v3, p3, v1

    #@7d
    :goto_7d
    return-void

    #@7e
    .line 56
    :cond_7e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@80
    array-length v3, v0

    #@81
    sub-int/2addr v3, v1

    #@82
    aget-object v0, v0, v3

    #@84
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@86
    cmpl-double v0, p1, v3

    #@88
    if-lez v0, :cond_11b

    #@8a
    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@8c
    array-length v3, v0

    #@8d
    sub-int/2addr v3, v1

    #@8e
    aget-object v0, v0, v3

    #@90
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@92
    sub-double v5, p1, v3

    #@94
    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@96
    array-length v7, v0

    #@97
    sub-int/2addr v7, v1

    #@98
    .line 60
    aget-object v0, v0, v7

    #@9a
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@9c
    if-eqz v0, :cond_c7

    #@9e
    .line 61
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@a0
    aget-object p1, p1, v7

    #@a2
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@a5
    move-result-wide p1

    #@a6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@a8
    aget-object v0, v0, v7

    #@aa
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@ad
    move-result-wide v8

    #@ae
    mul-double/2addr v8, v5

    #@af
    add-double/2addr p1, v8

    #@b0
    aput-wide p1, p3, v2

    #@b2
    .line 62
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@b4
    aget-object p1, p1, v7

    #@b6
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@b9
    move-result-wide p1

    #@ba
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@bc
    aget-object v0, v0, v7

    #@be
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@c1
    move-result-wide v2

    #@c2
    mul-double/2addr v5, v2

    #@c3
    add-double/2addr p1, v5

    #@c4
    aput-wide p1, p3, v1

    #@c6
    goto :goto_f6

    #@c7
    .line 64
    :cond_c7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@c9
    aget-object v0, v0, v7

    #@cb
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@ce
    .line 65
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@d0
    aget-object p1, p1, v7

    #@d2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@d5
    move-result-wide p1

    #@d6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@d8
    aget-object v0, v0, v7

    #@da
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    #@dd
    move-result-wide v3

    #@de
    mul-double/2addr v3, v5

    #@df
    add-double/2addr p1, v3

    #@e0
    aput-wide p1, p3, v2

    #@e2
    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@e4
    aget-object p1, p1, v7

    #@e6
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@e9
    move-result-wide p1

    #@ea
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@ec
    aget-object v0, v0, v7

    #@ee
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    #@f1
    move-result-wide v2

    #@f2
    mul-double/2addr v5, v2

    #@f3
    add-double/2addr p1, v5

    #@f4
    aput-wide p1, p3, v1

    #@f6
    :goto_f6
    return-void

    #@f7
    .line 71
    :cond_f7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@f9
    aget-object v0, v0, v2

    #@fb
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@fd
    cmpg-double v0, p1, v3

    #@ff
    if-gez v0, :cond_107

    #@101
    .line 72
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@103
    aget-object p1, p1, v2

    #@105
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@107
    .line 74
    :cond_107
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@109
    array-length v3, v0

    #@10a
    sub-int/2addr v3, v1

    #@10b
    aget-object v0, v0, v3

    #@10d
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@10f
    cmpl-double v0, p1, v3

    #@111
    if-lez v0, :cond_11b

    #@113
    .line 75
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@115
    array-length p2, p1

    #@116
    sub-int/2addr p2, v1

    #@117
    aget-object p1, p1, p2

    #@119
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@11b
    :cond_11b
    move v0, v2

    #@11c
    .line 79
    :goto_11c
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@11e
    array-length v4, v3

    #@11f
    if-ge v0, v4, :cond_165

    #@121
    .line 80
    aget-object v3, v3, v0

    #@123
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@125
    cmpg-double v3, p1, v3

    #@127
    if-gtz v3, :cond_162

    #@129
    .line 81
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@12b
    aget-object v3, v3, v0

    #@12d
    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@12f
    if-eqz v3, :cond_146

    #@131
    .line 82
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@133
    aget-object v3, v3, v0

    #@135
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@138
    move-result-wide v3

    #@139
    aput-wide v3, p3, v2

    #@13b
    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@13d
    aget-object v0, v2, v0

    #@13f
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@142
    move-result-wide p1

    #@143
    aput-wide p1, p3, v1

    #@145
    return-void

    #@146
    .line 86
    :cond_146
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@148
    aget-object v3, v3, v0

    #@14a
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@14d
    .line 87
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@14f
    aget-object p1, p1, v0

    #@151
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@154
    move-result-wide p1

    #@155
    aput-wide p1, p3, v2

    #@157
    .line 88
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@159
    aget-object p1, p1, v0

    #@15b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@15e
    move-result-wide p1

    #@15f
    aput-wide p1, p3, v1

    #@161
    return-void

    #@162
    :cond_162
    add-int/lit8 v0, v0, 0x1

    #@164
    goto :goto_11c

    #@165
    :cond_165
    return-void
.end method

.method public getPos(D[F)V
    .registers 14

    #@0
    .line 96
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_eb

    #@6
    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@8
    aget-object v0, v0, v2

    #@a
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@c
    cmpg-double v0, p1, v3

    #@e
    if-gez v0, :cond_82

    #@10
    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@12
    aget-object v0, v0, v2

    #@14
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@16
    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@18
    aget-object v0, v0, v2

    #@1a
    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@1c
    sub-double/2addr p1, v5

    #@1d
    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@1f
    aget-object v0, v0, v2

    #@21
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@23
    if-eqz v0, :cond_50

    #@25
    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@27
    aget-object v0, v0, v2

    #@29
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@2c
    move-result-wide v5

    #@2d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@2f
    aget-object v0, v0, v2

    #@31
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@34
    move-result-wide v7

    #@35
    mul-double/2addr v7, p1

    #@36
    add-double/2addr v5, v7

    #@37
    double-to-float v0, v5

    #@38
    aput v0, p3, v2

    #@3a
    .line 103
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@3c
    aget-object v0, v0, v2

    #@3e
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@41
    move-result-wide v5

    #@42
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@44
    aget-object v0, v0, v2

    #@46
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@49
    move-result-wide v2

    #@4a
    mul-double/2addr p1, v2

    #@4b
    add-double/2addr v5, p1

    #@4c
    double-to-float p1, v5

    #@4d
    aput p1, p3, v1

    #@4f
    goto :goto_81

    #@50
    .line 105
    :cond_50
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@52
    aget-object v0, v0, v2

    #@54
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@57
    .line 106
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@59
    aget-object v0, v0, v2

    #@5b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@5e
    move-result-wide v3

    #@5f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@61
    aget-object v0, v0, v2

    #@63
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    #@66
    move-result-wide v5

    #@67
    mul-double/2addr v5, p1

    #@68
    add-double/2addr v3, v5

    #@69
    double-to-float v0, v3

    #@6a
    aput v0, p3, v2

    #@6c
    .line 107
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@6e
    aget-object v0, v0, v2

    #@70
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@73
    move-result-wide v3

    #@74
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@76
    aget-object v0, v0, v2

    #@78
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    #@7b
    move-result-wide v5

    #@7c
    mul-double/2addr p1, v5

    #@7d
    add-double/2addr v3, p1

    #@7e
    double-to-float p1, v3

    #@7f
    aput p1, p3, v1

    #@81
    :goto_81
    return-void

    #@82
    .line 111
    :cond_82
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@84
    array-length v3, v0

    #@85
    sub-int/2addr v3, v1

    #@86
    aget-object v0, v0, v3

    #@88
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@8a
    cmpl-double v0, p1, v3

    #@8c
    if-lez v0, :cond_110

    #@8e
    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@90
    array-length v3, v0

    #@91
    sub-int/2addr v3, v1

    #@92
    aget-object v0, v0, v3

    #@94
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@96
    sub-double v5, p1, v3

    #@98
    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@9a
    array-length v7, v0

    #@9b
    sub-int/2addr v7, v1

    #@9c
    .line 115
    aget-object v0, v0, v7

    #@9e
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@a0
    if-eqz v0, :cond_cd

    #@a2
    .line 116
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@a4
    aget-object p1, p1, v7

    #@a6
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@a9
    move-result-wide p1

    #@aa
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@ac
    aget-object v0, v0, v7

    #@ae
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@b1
    move-result-wide v8

    #@b2
    mul-double/2addr v8, v5

    #@b3
    add-double/2addr p1, v8

    #@b4
    double-to-float p1, p1

    #@b5
    aput p1, p3, v2

    #@b7
    .line 117
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@b9
    aget-object p1, p1, v7

    #@bb
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@be
    move-result-wide p1

    #@bf
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@c1
    aget-object v0, v0, v7

    #@c3
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@c6
    move-result-wide v2

    #@c7
    mul-double/2addr v5, v2

    #@c8
    add-double/2addr p1, v5

    #@c9
    double-to-float p1, p1

    #@ca
    aput p1, p3, v1

    #@cc
    goto :goto_ea

    #@cd
    .line 119
    :cond_cd
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@cf
    aget-object v0, v0, v7

    #@d1
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@d4
    .line 120
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@d6
    aget-object p1, p1, v7

    #@d8
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@db
    move-result-wide p1

    #@dc
    double-to-float p1, p1

    #@dd
    aput p1, p3, v2

    #@df
    .line 121
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@e1
    aget-object p1, p1, v7

    #@e3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@e6
    move-result-wide p1

    #@e7
    double-to-float p1, p1

    #@e8
    aput p1, p3, v1

    #@ea
    :goto_ea
    return-void

    #@eb
    .line 126
    :cond_eb
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@ed
    aget-object v0, v0, v2

    #@ef
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@f1
    cmpg-double v0, p1, v3

    #@f3
    if-gez v0, :cond_fc

    #@f5
    .line 127
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@f7
    aget-object p1, p1, v2

    #@f9
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@fb
    goto :goto_110

    #@fc
    .line 128
    :cond_fc
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@fe
    array-length v3, v0

    #@ff
    sub-int/2addr v3, v1

    #@100
    aget-object v0, v0, v3

    #@102
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@104
    cmpl-double v0, p1, v3

    #@106
    if-lez v0, :cond_110

    #@108
    .line 129
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@10a
    array-length p2, p1

    #@10b
    sub-int/2addr p2, v1

    #@10c
    aget-object p1, p1, p2

    #@10e
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@110
    :cond_110
    :goto_110
    move v0, v2

    #@111
    .line 132
    :goto_111
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@113
    array-length v4, v3

    #@114
    if-ge v0, v4, :cond_15e

    #@116
    .line 133
    aget-object v3, v3, v0

    #@118
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@11a
    cmpg-double v3, p1, v3

    #@11c
    if-gtz v3, :cond_15b

    #@11e
    .line 134
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@120
    aget-object v3, v3, v0

    #@122
    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@124
    if-eqz v3, :cond_13d

    #@126
    .line 135
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@128
    aget-object v3, v3, v0

    #@12a
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    #@12d
    move-result-wide v3

    #@12e
    double-to-float v3, v3

    #@12f
    aput v3, p3, v2

    #@131
    .line 136
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@133
    aget-object v0, v2, v0

    #@135
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    #@138
    move-result-wide p1

    #@139
    double-to-float p1, p1

    #@13a
    aput p1, p3, v1

    #@13c
    return-void

    #@13d
    .line 139
    :cond_13d
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@13f
    aget-object v3, v3, v0

    #@141
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@144
    .line 140
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@146
    aget-object p1, p1, v0

    #@148
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    #@14b
    move-result-wide p1

    #@14c
    double-to-float p1, p1

    #@14d
    aput p1, p3, v2

    #@14f
    .line 141
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@151
    aget-object p1, p1, v0

    #@153
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    #@156
    move-result-wide p1

    #@157
    double-to-float p1, p1

    #@158
    aput p1, p3, v1

    #@15a
    return-void

    #@15b
    :cond_15b
    add-int/lit8 v0, v0, 0x1

    #@15d
    goto :goto_111

    #@15e
    :cond_15e
    return-void
.end method

.method public getSlope(DI)D
    .registers 8

    #@0
    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@7
    cmpg-double v0, p1, v2

    #@9
    if-gez v0, :cond_11

    #@b
    .line 230
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@d
    aget-object p1, p1, v1

    #@f
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@11
    .line 232
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@13
    array-length v2, v0

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    aget-object v0, v0, v2

    #@18
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@1a
    cmpl-double v0, p1, v2

    #@1c
    if-lez v0, :cond_27

    #@1e
    .line 233
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@20
    array-length p2, p1

    #@21
    add-int/lit8 p2, p2, -0x1

    #@23
    aget-object p1, p1, p2

    #@25
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@27
    .line 236
    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@29
    array-length v2, v0

    #@2a
    if-ge v1, v2, :cond_6e

    #@2c
    .line 237
    aget-object v0, v0, v1

    #@2e
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@30
    cmpg-double v0, p1, v2

    #@32
    if-gtz v0, :cond_6b

    #@34
    .line 238
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@36
    aget-object v0, v0, v1

    #@38
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@3a
    if-eqz v0, :cond_50

    #@3c
    if-nez p3, :cond_47

    #@3e
    .line 240
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@40
    aget-object p3, p3, v1

    #@42
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@45
    move-result-wide p1

    #@46
    return-wide p1

    #@47
    .line 242
    :cond_47
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@49
    aget-object p3, p3, v1

    #@4b
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@4e
    move-result-wide p1

    #@4f
    return-wide p1

    #@50
    .line 244
    :cond_50
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@52
    aget-object v0, v0, v1

    #@54
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@57
    if-nez p3, :cond_62

    #@59
    .line 246
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@5b
    aget-object p1, p1, v1

    #@5d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    #@60
    move-result-wide p1

    #@61
    return-wide p1

    #@62
    .line 248
    :cond_62
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@64
    aget-object p1, p1, v1

    #@66
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    #@69
    move-result-wide p1

    #@6a
    return-wide p1

    #@6b
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_27

    #@6e
    :cond_6e
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    #@70
    return-wide p1
.end method

.method public getSlope(D[D)V
    .registers 9

    #@0
    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@7
    cmpg-double v0, p1, v2

    #@9
    const/4 v2, 0x1

    #@a
    if-gez v0, :cond_13

    #@c
    .line 150
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@e
    aget-object p1, p1, v1

    #@10
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@12
    goto :goto_27

    #@13
    .line 151
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@15
    array-length v3, v0

    #@16
    sub-int/2addr v3, v2

    #@17
    aget-object v0, v0, v3

    #@19
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@1b
    cmpl-double v0, p1, v3

    #@1d
    if-lez v0, :cond_27

    #@1f
    .line 152
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@21
    array-length p2, p1

    #@22
    sub-int/2addr p2, v2

    #@23
    aget-object p1, p1, p2

    #@25
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@27
    :cond_27
    :goto_27
    move v0, v1

    #@28
    .line 155
    :goto_28
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@2a
    array-length v4, v3

    #@2b
    if-ge v0, v4, :cond_71

    #@2d
    .line 156
    aget-object v3, v3, v0

    #@2f
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@31
    cmpg-double v3, p1, v3

    #@33
    if-gtz v3, :cond_6e

    #@35
    .line 157
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@37
    aget-object v3, v3, v0

    #@39
    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@3b
    if-eqz v3, :cond_52

    #@3d
    .line 158
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@3f
    aget-object v3, v3, v0

    #@41
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    #@44
    move-result-wide v3

    #@45
    aput-wide v3, p3, v1

    #@47
    .line 159
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@49
    aget-object v0, v1, v0

    #@4b
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    #@4e
    move-result-wide p1

    #@4f
    aput-wide p1, p3, v2

    #@51
    return-void

    #@52
    .line 162
    :cond_52
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@54
    aget-object v3, v3, v0

    #@56
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    #@59
    .line 163
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@5b
    aget-object p1, p1, v0

    #@5d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    #@60
    move-result-wide p1

    #@61
    aput-wide p1, p3, v1

    #@63
    .line 164
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    #@65
    aget-object p1, p1, v0

    #@67
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    #@6a
    move-result-wide p1

    #@6b
    aput-wide p1, p3, v2

    #@6d
    return-void

    #@6e
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    #@70
    goto :goto_28

    #@71
    :cond_71
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    #@0
    .line 256
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    #@2
    return-object v0
.end method
