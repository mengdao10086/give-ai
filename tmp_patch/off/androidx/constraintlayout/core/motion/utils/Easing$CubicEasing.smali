.class Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CubicEasing"
.end annotation


# static fields
.field private static d_error:D = 1.0E-4

.field private static error:D = 0.01


# instance fields
.field x1:D

.field x2:D

.field y1:D

.field y2:D


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>(DDDD)V
    .registers 9

    #@0
    .line 111
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    #@3
    .line 112
    invoke-virtual/range {p0 .. p8}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->setup(DDDD)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 7

    #@0
    .line 97
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->str:Ljava/lang/String;

    #@5
    const/16 v0, 0x28

    #@7
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x2c

    #@d
    .line 101
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@10
    move-result v2

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    .line 102
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1e
    move-result-wide v3

    #@1f
    iput-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    .line 103
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    #@26
    move-result v0

    #@27
    .line 104
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@32
    move-result-wide v2

    #@33
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    #@35
    add-int/lit8 v0, v0, 0x1

    #@37
    .line 105
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@3a
    move-result v1

    #@3b
    .line 106
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@46
    move-result-wide v2

    #@47
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    const/16 v0, 0x29

    #@4d
    .line 107
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@50
    move-result v0

    #@51
    .line 108
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object p1

    #@55
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@58
    move-result-object p1

    #@59
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@5c
    move-result-wide v0

    #@5d
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    #@5f
    return-void
.end method

.method private getDiffX(D)D
    .registers 15

    #@0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@2
    sub-double v2, v0, p1

    #@4
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    #@6
    mul-double v6, v2, v4

    #@8
    mul-double/2addr v6, v2

    #@9
    .line 142
    iget-wide v8, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    #@b
    mul-double/2addr v6, v8

    #@c
    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    #@e
    mul-double/2addr v2, v10

    #@f
    mul-double/2addr v2, p1

    #@10
    iget-wide v10, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    #@12
    sub-double v8, v10, v8

    #@14
    mul-double/2addr v2, v8

    #@15
    add-double/2addr v6, v2

    #@16
    mul-double/2addr v4, p1

    #@17
    mul-double/2addr v4, p1

    #@18
    sub-double/2addr v0, v10

    #@19
    mul-double/2addr v4, v0

    #@1a
    add-double/2addr v6, v4

    #@1b
    return-wide v6
.end method

.method private getDiffY(D)D
    .registers 15

    #@0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@2
    sub-double v2, v0, p1

    #@4
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    #@6
    mul-double v6, v2, v4

    #@8
    mul-double/2addr v6, v2

    #@9
    .line 147
    iget-wide v8, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    #@b
    mul-double/2addr v6, v8

    #@c
    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    #@e
    mul-double/2addr v2, v10

    #@f
    mul-double/2addr v2, p1

    #@10
    iget-wide v10, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    #@12
    sub-double v8, v10, v8

    #@14
    mul-double/2addr v2, v8

    #@15
    add-double/2addr v6, v2

    #@16
    mul-double/2addr v4, p1

    #@17
    mul-double/2addr v4, p1

    #@18
    sub-double/2addr v0, v10

    #@19
    mul-double/2addr v4, v0

    #@1a
    add-double/2addr v6, v4

    #@1b
    return-wide v6
.end method

.method private getX(D)D
    .registers 9

    #@0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@2
    sub-double/2addr v0, p1

    #@3
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    #@5
    mul-double/2addr v2, v0

    #@6
    mul-double/2addr v0, v2

    #@7
    mul-double/2addr v0, p1

    #@8
    mul-double/2addr v2, p1

    #@9
    mul-double/2addr v2, p1

    #@a
    mul-double v4, p1, p1

    #@c
    mul-double/2addr v4, p1

    #@d
    .line 128
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    #@f
    mul-double/2addr p1, v0

    #@10
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    #@12
    mul-double/2addr v0, v2

    #@13
    add-double/2addr p1, v0

    #@14
    add-double/2addr p1, v4

    #@15
    return-wide p1
.end method

.method private getY(D)D
    .registers 9

    #@0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@2
    sub-double/2addr v0, p1

    #@3
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    #@5
    mul-double/2addr v2, v0

    #@6
    mul-double/2addr v0, v2

    #@7
    mul-double/2addr v0, p1

    #@8
    mul-double/2addr v2, p1

    #@9
    mul-double/2addr v2, p1

    #@a
    mul-double v4, p1, p1

    #@c
    mul-double/2addr v4, p1

    #@d
    .line 137
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    #@f
    mul-double/2addr p1, v0

    #@10
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    #@12
    mul-double/2addr v0, v2

    #@13
    add-double/2addr p1, v0

    #@14
    add-double/2addr p1, v4

    #@15
    return-wide p1
.end method


# virtual methods
.method public get(D)D
    .registers 11

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmpg-double v2, p1, v0

    #@4
    if-gtz v2, :cond_7

    #@6
    return-wide v0

    #@7
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@9
    cmpl-double v2, p1, v0

    #@b
    if-ltz v2, :cond_e

    #@d
    return-wide v0

    #@e
    :cond_e
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@10
    move-wide v2, v0

    #@11
    move-wide v4, v2

    #@12
    .line 188
    :goto_12
    sget-wide v6, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->error:D

    #@14
    cmpl-double v6, v2, v6

    #@16
    if-lez v6, :cond_25

    #@18
    .line 189
    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    #@1b
    move-result-wide v6

    #@1c
    mul-double/2addr v2, v0

    #@1d
    cmpg-double v6, v6, p1

    #@1f
    if-gez v6, :cond_23

    #@21
    add-double/2addr v4, v2

    #@22
    goto :goto_12

    #@23
    :cond_23
    sub-double/2addr v4, v2

    #@24
    goto :goto_12

    #@25
    :cond_25
    sub-double v0, v4, v2

    #@27
    .line 198
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    #@2a
    move-result-wide v6

    #@2b
    add-double/2addr v4, v2

    #@2c
    .line 199
    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    #@2f
    move-result-wide v2

    #@30
    .line 200
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    #@33
    move-result-wide v0

    #@34
    .line 201
    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    #@37
    move-result-wide v4

    #@38
    sub-double/2addr v4, v0

    #@39
    sub-double/2addr p1, v6

    #@3a
    mul-double/2addr v4, p1

    #@3b
    sub-double/2addr v2, v6

    #@3c
    div-double/2addr v4, v2

    #@3d
    add-double/2addr v4, v0

    #@3e
    return-wide v4
.end method

.method public getDiff(D)D
    .registers 11

    #@0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@2
    move-wide v2, v0

    #@3
    move-wide v4, v2

    #@4
    .line 157
    :goto_4
    sget-wide v6, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->d_error:D

    #@6
    cmpl-double v6, v2, v6

    #@8
    if-lez v6, :cond_17

    #@a
    .line 158
    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    #@d
    move-result-wide v6

    #@e
    mul-double/2addr v2, v0

    #@f
    cmpg-double v6, v6, p1

    #@11
    if-gez v6, :cond_15

    #@13
    add-double/2addr v4, v2

    #@14
    goto :goto_4

    #@15
    :cond_15
    sub-double/2addr v4, v2

    #@16
    goto :goto_4

    #@17
    :cond_17
    sub-double p1, v4, v2

    #@19
    .line 167
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    #@1c
    move-result-wide v0

    #@1d
    add-double/2addr v4, v2

    #@1e
    .line 168
    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    #@21
    move-result-wide v2

    #@22
    .line 169
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    #@25
    move-result-wide p1

    #@26
    .line 170
    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    #@29
    move-result-wide v4

    #@2a
    sub-double/2addr v4, p1

    #@2b
    sub-double/2addr v2, v0

    #@2c
    div-double/2addr v4, v2

    #@2d
    return-wide v4
.end method

.method setup(DDDD)V
    .registers 9

    #@0
    .line 116
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    #@2
    .line 117
    iput-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    #@4
    .line 118
    iput-wide p5, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    #@6
    .line 119
    iput-wide p7, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    #@8
    return-void
.end method
