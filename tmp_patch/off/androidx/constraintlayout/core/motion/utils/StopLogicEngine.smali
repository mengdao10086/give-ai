.class public Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;
.super Ljava/lang/Object;
.source "StopLogicEngine.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# static fields
.field private static final EPSILON:F = 1.0E-5f


# instance fields
.field private mBackwards:Z

.field private mDone:Z

.field private mLastPosition:F

.field private mNumberOfStages:I

.field private mStage1Duration:F

.field private mStage1EndPosition:F

.field private mStage1Velocity:F

.field private mStage2Duration:F

.field private mStage2EndPosition:F

.field private mStage2Velocity:F

.field private mStage3Duration:F

.field private mStage3EndPosition:F

.field private mStage3Velocity:F

.field private mStartPosition:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 33
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    #@6
    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    #@8
    return-void
.end method

.method private calcY(F)F
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 111
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    #@3
    .line 112
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@5
    cmpg-float v1, p1, v0

    #@7
    const/high16 v2, 0x40000000    # 2.0f

    #@9
    if-gtz v1, :cond_18

    #@b
    .line 113
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@d
    mul-float v3, v1, p1

    #@f
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@11
    sub-float/2addr v4, v1

    #@12
    mul-float/2addr v4, p1

    #@13
    mul-float/2addr v4, p1

    #@14
    mul-float/2addr v0, v2

    #@15
    div-float/2addr v4, v0

    #@16
    add-float/2addr v3, v4

    #@17
    return v3

    #@18
    .line 115
    :cond_18
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@1a
    const/4 v3, 0x1

    #@1b
    if-ne v1, v3, :cond_20

    #@1d
    .line 116
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@1f
    return p1

    #@20
    :cond_20
    sub-float/2addr p1, v0

    #@21
    .line 119
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@23
    cmpg-float v4, p1, v0

    #@25
    if-gez v4, :cond_37

    #@27
    .line 121
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@29
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@2b
    mul-float v4, v3, p1

    #@2d
    add-float/2addr v1, v4

    #@2e
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@30
    sub-float/2addr v4, v3

    #@31
    mul-float/2addr v4, p1

    #@32
    mul-float/2addr v4, p1

    #@33
    mul-float/2addr v0, v2

    #@34
    div-float/2addr v4, v0

    #@35
    add-float/2addr v1, v4

    #@36
    return v1

    #@37
    :cond_37
    const/4 v4, 0x2

    #@38
    if-ne v1, v4, :cond_3d

    #@3a
    .line 124
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@3c
    return p1

    #@3d
    :cond_3d
    sub-float/2addr p1, v0

    #@3e
    .line 127
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    #@40
    cmpg-float v1, p1, v0

    #@42
    if-gtz v1, :cond_51

    #@44
    .line 129
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@46
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@48
    mul-float v4, v3, p1

    #@4a
    add-float/2addr v1, v4

    #@4b
    mul-float/2addr v3, p1

    #@4c
    mul-float/2addr v3, p1

    #@4d
    mul-float/2addr v0, v2

    #@4e
    div-float/2addr v3, v0

    #@4f
    sub-float/2addr v1, v3

    #@50
    return v1

    #@51
    .line 131
    :cond_51
    iput-boolean v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    #@53
    .line 132
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    #@55
    return p1
.end method

.method private setup(FFFFF)V
    .registers 14

    #@0
    const/4 v0, 0x0

    #@1
    .line 164
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    #@3
    const/4 v0, 0x0

    #@4
    cmpl-float v1, p1, v0

    #@6
    if-nez v1, :cond_b

    #@8
    const p1, 0x38d1b717    # 1.0E-4f

    #@b
    .line 168
    :cond_b
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@d
    div-float v1, p1, p3

    #@f
    mul-float v2, v1, p1

    #@11
    const/high16 v3, 0x40000000    # 2.0f

    #@13
    div-float/2addr v2, v3

    #@14
    cmpg-float v4, p1, v0

    #@16
    const/4 v5, 0x3

    #@17
    const/4 v6, 0x2

    #@18
    if-gez v4, :cond_73

    #@1a
    neg-float p5, p1

    #@1b
    div-float/2addr p5, p3

    #@1c
    mul-float/2addr p5, p1

    #@1d
    div-float/2addr p5, v3

    #@1e
    sub-float p5, p2, p5

    #@20
    mul-float/2addr p5, p3

    #@21
    float-to-double v1, p5

    #@22
    .line 176
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    #@25
    move-result-wide v1

    #@26
    double-to-float p5, v1

    #@27
    cmpg-float v1, p5, p4

    #@29
    if-gez v1, :cond_4a

    #@2b
    const-string p4, "backward accelerate, decelerate"

    #@2d
    .line 178
    iput-object p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    #@2f
    .line 179
    iput v6, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@31
    .line 180
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@33
    .line 181
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@35
    .line 182
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@37
    sub-float p4, p5, p1

    #@39
    div-float/2addr p4, p3

    #@3a
    .line 183
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@3c
    div-float p3, p5, p3

    #@3e
    .line 184
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@40
    add-float/2addr p1, p5

    #@41
    mul-float/2addr p1, p4

    #@42
    div-float/2addr p1, v3

    #@43
    .line 185
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@45
    .line 186
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@47
    .line 187
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    #@49
    return-void

    #@4a
    :cond_4a
    const-string p5, "backward accelerate cruse decelerate"

    #@4c
    .line 190
    iput-object p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    #@4e
    .line 191
    iput v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@50
    .line 192
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@52
    .line 193
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@54
    .line 194
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@56
    sub-float p5, p4, p1

    #@58
    div-float/2addr p5, p3

    #@59
    .line 196
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@5b
    div-float p3, p4, p3

    #@5d
    .line 197
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    #@5f
    add-float/2addr p1, p4

    #@60
    mul-float/2addr p1, p5

    #@61
    div-float/2addr p1, v3

    #@62
    mul-float/2addr p3, p4

    #@63
    div-float/2addr p3, v3

    #@64
    sub-float p5, p2, p1

    #@66
    sub-float/2addr p5, p3

    #@67
    div-float/2addr p5, p4

    #@68
    .line 200
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@6a
    .line 201
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@6c
    sub-float p1, p2, p3

    #@6e
    .line 202
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@70
    .line 203
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    #@72
    return-void

    #@73
    :cond_73
    cmpl-float v4, v2, p2

    #@75
    if-ltz v4, :cond_89

    #@77
    const-string p3, "hard stop"

    #@79
    .line 209
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    #@7b
    mul-float/2addr v3, p2

    #@7c
    div-float/2addr v3, p1

    #@7d
    const/4 p3, 0x1

    #@7e
    .line 211
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@80
    .line 212
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@82
    .line 213
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@84
    .line 214
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@86
    .line 215
    iput v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@88
    return-void

    #@89
    :cond_89
    sub-float v2, p2, v2

    #@8b
    div-float v4, v2, p1

    #@8d
    add-float v7, v4, v1

    #@8f
    cmpg-float p5, v7, p5

    #@91
    if-gez p5, :cond_a8

    #@93
    const-string p3, "cruse decelerate"

    #@95
    .line 222
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    #@97
    .line 223
    iput v6, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@99
    .line 224
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@9b
    .line 225
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@9d
    .line 226
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@9f
    .line 227
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@a1
    .line 228
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@a3
    .line 229
    iput v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@a5
    .line 230
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@a7
    return-void

    #@a8
    :cond_a8
    mul-float p5, p3, p2

    #@aa
    mul-float v1, p1, p1

    #@ac
    div-float/2addr v1, v3

    #@ad
    add-float/2addr p5, v1

    #@ae
    float-to-double v1, p5

    #@af
    .line 234
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    #@b2
    move-result-wide v1

    #@b3
    double-to-float p5, v1

    #@b4
    sub-float v1, p5, p1

    #@b6
    div-float/2addr v1, p3

    #@b7
    .line 235
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@b9
    div-float v2, p5, p3

    #@bb
    .line 236
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@bd
    cmpg-float v4, p5, p4

    #@bf
    if-gez v4, :cond_d9

    #@c1
    const-string p3, "accelerate decelerate"

    #@c3
    .line 238
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    #@c5
    .line 239
    iput v6, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@c7
    .line 240
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@c9
    .line 241
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@cb
    .line 242
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@cd
    .line 243
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@cf
    .line 244
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@d1
    add-float/2addr p1, p5

    #@d2
    mul-float/2addr p1, v1

    #@d3
    div-float/2addr p1, v3

    #@d4
    .line 245
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@d6
    .line 246
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@d8
    return-void

    #@d9
    :cond_d9
    const-string p5, "accelerate cruse decelerate"

    #@db
    .line 250
    iput-object p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    #@dd
    .line 252
    iput v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@df
    .line 253
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@e1
    .line 254
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@e3
    .line 255
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@e5
    sub-float p5, p4, p1

    #@e7
    div-float/2addr p5, p3

    #@e8
    .line 257
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@ea
    div-float p3, p4, p3

    #@ec
    .line 258
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    #@ee
    add-float/2addr p1, p4

    #@ef
    mul-float/2addr p1, p5

    #@f0
    div-float/2addr p1, v3

    #@f1
    mul-float/2addr p3, p4

    #@f2
    div-float/2addr p3, v3

    #@f3
    sub-float p5, p2, p1

    #@f5
    sub-float/2addr p5, p3

    #@f6
    div-float/2addr p5, p4

    #@f7
    .line 262
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@f9
    .line 263
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@fb
    sub-float p1, p2, p3

    #@fd
    .line 264
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@ff
    .line 265
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    #@101
    return-void
.end method


# virtual methods
.method public config(FFFFFF)V
    .registers 13

    #@0
    const/4 v1, 0x0

    #@1
    .line 137
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    #@3
    .line 138
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    #@5
    cmpl-float v2, p1, p2

    #@7
    if-lez v2, :cond_a

    #@9
    const/4 v1, 0x1

    #@a
    .line 139
    :cond_a
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    #@c
    if-eqz v1, :cond_19

    #@e
    neg-float v1, p3

    #@f
    sub-float v2, p1, p2

    #@11
    move-object v0, p0

    #@12
    move v3, p5

    #@13
    move v4, p6

    #@14
    move v5, p4

    #@15
    .line 141
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    #@18
    goto :goto_23

    #@19
    :cond_19
    sub-float v2, p2, p1

    #@1b
    move-object v0, p0

    #@1c
    move v1, p3

    #@1d
    move v3, p5

    #@1e
    move v4, p6

    #@1f
    move v5, p4

    #@20
    .line 143
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    #@23
    :goto_23
    return-void
.end method

.method public debug(Ljava/lang/String;F)Ljava/lang/String;
    .registers 11

    #@0
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string v1, " ===== "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string v1, "\n"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    #@2e
    if-eqz v2, :cond_33

    #@30
    const-string v2, "backwards"

    #@32
    goto :goto_35

    #@33
    :cond_33
    const-string v2, "forward "

    #@35
    :goto_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string v2, " time = "

    #@3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    const-string v2, "  stages "

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@4b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    const-string v2, " dur "

    #@66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@6c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    const-string v3, " vel "

    #@72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    const-string v4, " pos "

    #@7e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    #@84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    .line 51
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@92
    const/4 v6, 0x1

    #@93
    if-le v5, v6, :cond_c8

    #@95
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@a8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@b2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v0

    #@b6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@bc
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    .line 55
    :cond_c8
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@ca
    const/4 v7, 0x2

    #@cb
    if-le v5, v7, :cond_100

    #@cd
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    #@e0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v0

    #@e4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v0

    #@e8
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@ea
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    #@f4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v0

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    .line 59
    :cond_100
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@102
    cmpg-float v2, p2, v1

    #@104
    if-gtz v2, :cond_11e

    #@106
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object p2

    #@10f
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object p1

    #@113
    const-string p2, "stage 0\n"

    #@115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object p1

    #@119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object p1

    #@11d
    return-object p1

    #@11e
    .line 63
    :cond_11e
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@120
    if-ne v2, v6, :cond_13a

    #@122
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object p2

    #@12b
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object p1

    #@12f
    const-string p2, "end stage 0\n"

    #@131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object p1

    #@135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object p1

    #@139
    return-object p1

    #@13a
    :cond_13a
    sub-float/2addr p2, v1

    #@13b
    .line 68
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@13d
    cmpg-float v3, p2, v1

    #@13f
    if-gez v3, :cond_159

    #@141
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object p2

    #@14a
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object p1

    #@14e
    const-string p2, " stage 1\n"

    #@150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object p1

    #@154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object p1

    #@158
    return-object p1

    #@159
    :cond_159
    if-ne v2, v7, :cond_173

    #@15b
    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object p2

    #@164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object p1

    #@168
    const-string p2, "end stage 1\n"

    #@16a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object p1

    #@16e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object p1

    #@172
    return-object p1

    #@173
    :cond_173
    sub-float/2addr p2, v1

    #@174
    .line 78
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    #@176
    cmpg-float p2, p2, v1

    #@178
    if-gez p2, :cond_192

    #@17a
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object p2

    #@183
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object p1

    #@187
    const-string p2, " stage 2\n"

    #@189
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object p1

    #@18d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object p1

    #@191
    return-object p1

    #@192
    .line 83
    :cond_192
    new-instance p2, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object p2

    #@19b
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object p1

    #@19f
    const-string p2, " end stage 2\n"

    #@1a1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object p1

    #@1a5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object p1

    #@1a9
    return-object p1
.end method

.method public getInterpolation(F)F
    .registers 3

    #@0
    .line 148
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->calcY(F)F

    #@3
    move-result v0

    #@4
    .line 149
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

    #@6
    .line 150
    iget-boolean p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    #@8
    if-eqz p1, :cond_e

    #@a
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    #@c
    sub-float/2addr p1, v0

    #@d
    goto :goto_11

    #@e
    :cond_e
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    #@10
    add-float/2addr p1, v0

    #@11
    :goto_11
    return p1
.end method

.method public getVelocity()F
    .registers 2

    #@0
    .line 154
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

    #@6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity(F)F

    #@9
    move-result v0

    #@a
    neg-float v0, v0

    #@b
    goto :goto_12

    #@c
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

    #@e
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity(F)F

    #@11
    move-result v0

    #@12
    :goto_12
    return v0
.end method

.method public getVelocity(F)F
    .registers 5

    #@0
    .line 88
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    #@2
    cmpg-float v1, p1, v0

    #@4
    if-gtz v1, :cond_f

    #@6
    .line 89
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    #@8
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@a
    sub-float/2addr v2, v1

    #@b
    mul-float/2addr v2, p1

    #@c
    div-float/2addr v2, v0

    #@d
    add-float/2addr v1, v2

    #@e
    return v1

    #@f
    .line 91
    :cond_f
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_16

    #@14
    const/4 p1, 0x0

    #@15
    return p1

    #@16
    :cond_16
    sub-float/2addr p1, v0

    #@17
    .line 95
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    #@19
    cmpg-float v2, p1, v0

    #@1b
    if-gez v2, :cond_26

    #@1d
    .line 97
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    #@1f
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@21
    sub-float/2addr v2, v1

    #@22
    mul-float/2addr v2, p1

    #@23
    div-float/2addr v2, v0

    #@24
    add-float/2addr v1, v2

    #@25
    return v1

    #@26
    :cond_26
    const/4 v2, 0x2

    #@27
    if-ne v1, v2, :cond_2c

    #@29
    .line 100
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    #@2b
    return p1

    #@2c
    :cond_2c
    sub-float/2addr p1, v0

    #@2d
    .line 103
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    #@2f
    cmpg-float v1, p1, v0

    #@31
    if-gez v1, :cond_39

    #@33
    .line 105
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    #@35
    mul-float/2addr p1, v1

    #@36
    div-float/2addr p1, v0

    #@37
    sub-float/2addr v1, p1

    #@38
    return v1

    #@39
    .line 107
    :cond_39
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    #@3b
    return p1
.end method

.method public isStopped()Z
    .registers 4

    #@0
    .line 159
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity()F

    #@3
    move-result v0

    #@4
    const v1, 0x3727c5ac    # 1.0E-5f

    #@7
    cmpg-float v0, v0, v1

    #@9
    if-gez v0, :cond_1a

    #@b
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    #@d
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

    #@f
    sub-float/2addr v0, v2

    #@10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@13
    move-result v0

    #@14
    cmpg-float v0, v0, v1

    #@16
    if-gez v0, :cond_1a

    #@18
    const/4 v0, 0x1

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    :goto_1b
    return v0
.end method
