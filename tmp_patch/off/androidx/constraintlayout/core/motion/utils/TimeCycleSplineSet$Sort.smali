.class public Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Sort"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    #@0
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static doubleQuickSort([I[[FII)V
    .registers 10

    #@0
    .line 211
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, 0xa

    #@3
    new-array v0, v0, [I

    #@5
    const/4 v1, 0x0

    #@6
    .line 213
    aput p3, v0, v1

    #@8
    const/4 p3, 0x1

    #@9
    .line 214
    aput p2, v0, p3

    #@b
    const/4 p2, 0x2

    #@c
    :cond_c
    :goto_c
    if-lez p2, :cond_30

    #@e
    add-int/lit8 p2, p2, -0x1

    #@10
    .line 216
    aget v1, v0, p2

    #@12
    add-int/lit8 p2, p2, -0x1

    #@14
    .line 217
    aget v2, v0, p2

    #@16
    if-ge v1, v2, :cond_c

    #@18
    .line 219
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->partition([I[[FII)I

    #@1b
    move-result v3

    #@1c
    add-int/lit8 v4, p2, 0x1

    #@1e
    add-int/lit8 v5, v3, -0x1

    #@20
    .line 220
    aput v5, v0, p2

    #@22
    add-int/lit8 p2, v4, 0x1

    #@24
    .line 221
    aput v1, v0, v4

    #@26
    add-int/lit8 v1, p2, 0x1

    #@28
    .line 222
    aput v2, v0, p2

    #@2a
    add-int/lit8 p2, v1, 0x1

    #@2c
    add-int/2addr v3, p3

    #@2d
    .line 223
    aput v3, v0, v1

    #@2f
    goto :goto_c

    #@30
    :cond_30
    return-void
.end method

.method private static partition([I[[FII)I
    .registers 7

    #@0
    .line 229
    aget v0, p0, p3

    #@2
    move v1, p2

    #@3
    :goto_3
    if-ge p2, p3, :cond_11

    #@5
    .line 232
    aget v2, p0, p2

    #@7
    if-gt v2, v0, :cond_e

    #@9
    .line 233
    invoke-static {p0, p1, v1, p2}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    :cond_e
    add-int/lit8 p2, p2, 0x1

    #@10
    goto :goto_3

    #@11
    .line 237
    :cond_11
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    #@14
    return v1
.end method

.method private static swap([I[[FII)V
    .registers 6

    #@0
    .line 242
    aget v0, p0, p2

    #@2
    .line 243
    aget v1, p0, p3

    #@4
    aput v1, p0, p2

    #@6
    .line 244
    aput v0, p0, p3

    #@8
    .line 245
    aget-object p0, p1, p2

    #@a
    .line 246
    aget-object v0, p1, p3

    #@c
    aput-object v0, p1, p2

    #@e
    .line 247
    aput-object p0, p1, p3

    #@10
    return-void
.end method
