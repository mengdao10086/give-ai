.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntFloatFloatSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static partition([I[F[FII)I
    .registers 8

    #@0
    .line 274
    aget v0, p0, p4

    #@2
    move v1, p3

    #@3
    :goto_3
    if-ge p3, p4, :cond_11

    #@5
    .line 277
    aget v2, p0, p3

    #@7
    if-gt v2, v0, :cond_e

    #@9
    .line 278
    invoke-static {p0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    :cond_e
    add-int/lit8 p3, p3, 0x1

    #@10
    goto :goto_3

    #@11
    .line 282
    :cond_11
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    #@14
    return v1
.end method

.method static sort([I[F[FII)V
    .registers 11

    #@0
    .line 256
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, 0xa

    #@3
    new-array v0, v0, [I

    #@5
    const/4 v1, 0x0

    #@6
    .line 258
    aput p4, v0, v1

    #@8
    const/4 p4, 0x1

    #@9
    .line 259
    aput p3, v0, p4

    #@b
    const/4 p3, 0x2

    #@c
    :cond_c
    :goto_c
    if-lez p3, :cond_30

    #@e
    add-int/lit8 p3, p3, -0x1

    #@10
    .line 261
    aget v1, v0, p3

    #@12
    add-int/lit8 p3, p3, -0x1

    #@14
    .line 262
    aget v2, v0, p3

    #@16
    if-ge v1, v2, :cond_c

    #@18
    .line 264
    invoke-static {p0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->partition([I[F[FII)I

    #@1b
    move-result v3

    #@1c
    add-int/lit8 v4, p3, 0x1

    #@1e
    add-int/lit8 v5, v3, -0x1

    #@20
    .line 265
    aput v5, v0, p3

    #@22
    add-int/lit8 p3, v4, 0x1

    #@24
    .line 266
    aput v1, v0, v4

    #@26
    add-int/lit8 v1, p3, 0x1

    #@28
    .line 267
    aput v2, v0, p3

    #@2a
    add-int/lit8 p3, v1, 0x1

    #@2c
    add-int/2addr v3, p4

    #@2d
    .line 268
    aput v3, v0, v1

    #@2f
    goto :goto_c

    #@30
    :cond_30
    return-void
.end method

.method private static swap([I[F[FII)V
    .registers 7

    #@0
    .line 287
    aget v0, p0, p3

    #@2
    .line 288
    aget v1, p0, p4

    #@4
    aput v1, p0, p3

    #@6
    .line 289
    aput v0, p0, p4

    #@8
    .line 290
    aget p0, p1, p3

    #@a
    .line 291
    aget v0, p1, p4

    #@c
    aput v0, p1, p3

    #@e
    .line 292
    aput p0, p1, p4

    #@10
    .line 293
    aget p0, p2, p3

    #@12
    .line 294
    aget p1, p2, p4

    #@14
    aput p1, p2, p3

    #@16
    .line 295
    aput p0, p2, p4

    #@18
    return-void
.end method
