.class public Landroidx/constraintlayout/core/motion/utils/Schlick;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "Schlick.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field eps:D

.field mS:D

.field mT:D


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 7

    #@0
    .line 29
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->str:Ljava/lang/String;

    #@5
    const/16 v0, 0x28

    #@7
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x2c

    #@d
    .line 34
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@10
    move-result v2

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    .line 35
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
    iput-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    .line 36
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    #@26
    move-result v0

    #@27
    .line 37
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2e
    move-result-object p1

    #@2f
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@32
    move-result-wide v0

    #@33
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    #@35
    return-void
.end method

.method private dfunc(D)D
    .registers 15

    #@0
    .line 48
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    #@2
    cmpg-double v2, p1, v0

    #@4
    if-gez v2, :cond_15

    #@6
    .line 49
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    #@8
    mul-double v4, v2, v0

    #@a
    mul-double/2addr v4, v0

    #@b
    sub-double v6, v0, p1

    #@d
    mul-double/2addr v6, v2

    #@e
    add-double/2addr v6, p1

    #@f
    sub-double/2addr v0, p1

    #@10
    mul-double/2addr v2, v0

    #@11
    add-double/2addr v2, p1

    #@12
    mul-double/2addr v6, v2

    #@13
    div-double/2addr v4, v6

    #@14
    return-wide v4

    #@15
    .line 51
    :cond_15
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    #@17
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@19
    sub-double v6, v0, v4

    #@1b
    mul-double/2addr v6, v2

    #@1c
    sub-double v8, v0, v4

    #@1e
    mul-double/2addr v6, v8

    #@1f
    neg-double v8, v2

    #@20
    sub-double v10, v0, p1

    #@22
    mul-double/2addr v8, v10

    #@23
    sub-double/2addr v8, p1

    #@24
    add-double/2addr v8, v4

    #@25
    neg-double v2, v2

    #@26
    sub-double/2addr v0, p1

    #@27
    mul-double/2addr v2, v0

    #@28
    sub-double/2addr v2, p1

    #@29
    add-double/2addr v2, v4

    #@2a
    mul-double/2addr v8, v2

    #@2b
    div-double/2addr v6, v8

    #@2c
    return-wide v6
.end method

.method private func(D)D
    .registers 11

    #@0
    .line 41
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    #@2
    cmpg-double v2, p1, v0

    #@4
    if-gez v2, :cond_f

    #@6
    mul-double v2, v0, p1

    #@8
    .line 42
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    #@a
    sub-double/2addr v0, p1

    #@b
    mul-double/2addr v4, v0

    #@c
    add-double/2addr p1, v4

    #@d
    div-double/2addr v2, p1

    #@e
    return-wide v2

    #@f
    :cond_f
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@11
    sub-double v4, v2, v0

    #@13
    sub-double v6, p1, v2

    #@15
    mul-double/2addr v4, v6

    #@16
    sub-double/2addr v2, p1

    #@17
    .line 44
    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    #@19
    sub-double/2addr v0, p1

    #@1a
    mul-double/2addr v6, v0

    #@1b
    sub-double/2addr v2, v6

    #@1c
    div-double/2addr v4, v2

    #@1d
    return-wide v4
.end method


# virtual methods
.method public get(D)D
    .registers 3

    #@0
    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Schlick;->func(D)D

    #@3
    move-result-wide p1

    #@4
    return-wide p1
.end method

.method public getDiff(D)D
    .registers 3

    #@0
    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Schlick;->dfunc(D)D

    #@3
    move-result-wide p1

    #@4
    return-wide p1
.end method
