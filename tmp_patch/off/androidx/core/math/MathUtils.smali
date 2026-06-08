.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addExact(II)I
    .registers 3

    #@0
    add-int v0, p0, p1

    #@2
    xor-int/2addr p0, v0

    #@3
    xor-int/2addr p1, v0

    #@4
    and-int/2addr p0, p1

    #@5
    if-ltz p0, :cond_8

    #@7
    return v0

    #@8
    .line 34
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    #@a
    const-string p1, "integer overflow"

    #@c
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@f
    throw p0
.end method

.method public static addExact(JJ)J
    .registers 6

    #@0
    add-long v0, p0, p2

    #@2
    xor-long/2addr p0, v0

    #@3
    xor-long/2addr p2, v0

    #@4
    and-long/2addr p0, p2

    #@5
    const-wide/16 p2, 0x0

    #@7
    cmp-long p0, p0, p2

    #@9
    if-ltz p0, :cond_c

    #@b
    return-wide v0

    #@c
    .line 47
    :cond_c
    new-instance p0, Ljava/lang/ArithmeticException;

    #@e
    const-string p1, "long overflow"

    #@10
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@13
    throw p0
.end method

.method public static clamp(DDD)D
    .registers 7

    #@0
    cmpg-double v0, p0, p2

    #@2
    if-gez v0, :cond_5

    #@4
    return-wide p2

    #@5
    :cond_5
    cmpl-double p2, p0, p4

    #@7
    if-lez p2, :cond_a

    #@9
    return-wide p4

    #@a
    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4

    #@0
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_5

    #@4
    return p1

    #@5
    :cond_5
    cmpl-float p1, p0, p2

    #@7
    if-lez p1, :cond_a

    #@9
    return p2

    #@a
    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3

    #@0
    if-ge p0, p1, :cond_3

    #@2
    return p1

    #@3
    :cond_3
    if-le p0, p2, :cond_6

    #@5
    return p2

    #@6
    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7

    #@0
    cmp-long v0, p0, p2

    #@2
    if-gez v0, :cond_5

    #@4
    return-wide p2

    #@5
    :cond_5
    cmp-long p2, p0, p4

    #@7
    if-lez p2, :cond_a

    #@9
    return-wide p4

    #@a
    :cond_a
    return-wide p0
.end method

.method public static decrementExact(I)I
    .registers 2

    #@0
    const/high16 v0, -0x80000000

    #@2
    if-eq p0, v0, :cond_7

    #@4
    add-int/lit8 p0, p0, -0x1

    #@6
    return p0

    #@7
    .line 142
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    #@9
    const-string v0, "integer overflow"

    #@b
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw p0
.end method

.method public static decrementExact(J)J
    .registers 4

    #@0
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    cmp-long v0, p0, v0

    #@4
    if-eqz v0, :cond_a

    #@6
    const-wide/16 v0, 0x1

    #@8
    sub-long/2addr p0, v0

    #@9
    return-wide p0

    #@a
    .line 154
    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    #@c
    const-string p1, "long overflow"

    #@e
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@11
    throw p0
.end method

.method public static incrementExact(I)I
    .registers 2

    #@0
    const v0, 0x7fffffff

    #@3
    if-eq p0, v0, :cond_8

    #@5
    add-int/lit8 p0, p0, 0x1

    #@7
    return p0

    #@8
    .line 118
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    #@a
    const-string v0, "integer overflow"

    #@c
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@f
    throw p0
.end method

.method public static incrementExact(J)J
    .registers 4

    #@0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    cmp-long v0, p0, v0

    #@7
    if-eqz v0, :cond_d

    #@9
    const-wide/16 v0, 0x1

    #@b
    add-long/2addr p0, v0

    #@c
    return-wide p0

    #@d
    .line 130
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    #@f
    const-string p1, "long overflow"

    #@11
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@14
    throw p0
.end method

.method public static multiplyExact(II)I
    .registers 6

    #@0
    int-to-long v0, p0

    #@1
    int-to-long p0, p1

    #@2
    mul-long/2addr v0, p0

    #@3
    long-to-int p0, v0

    #@4
    int-to-long v2, p0

    #@5
    cmp-long p1, v2, v0

    #@7
    if-nez p1, :cond_a

    #@9
    return p0

    #@a
    .line 88
    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    #@c
    const-string p1, "integer overflow"

    #@e
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@11
    throw p0
.end method

.method public static multiplyExact(JJ)J
    .registers 10

    #@0
    mul-long v0, p0, p2

    #@2
    .line 99
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    #@5
    move-result-wide v2

    #@6
    .line 100
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    #@9
    move-result-wide v4

    #@a
    or-long/2addr v2, v4

    #@b
    const/16 v4, 0x1f

    #@d
    ushr-long/2addr v2, v4

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v2, v2, v4

    #@12
    if-eqz v2, :cond_33

    #@14
    cmp-long v2, p2, v4

    #@16
    if-eqz v2, :cond_1e

    #@18
    .line 105
    div-long v2, v0, p2

    #@1a
    cmp-long v2, v2, p0

    #@1c
    if-nez v2, :cond_2b

    #@1e
    :cond_1e
    const-wide/high16 v2, -0x8000000000000000L

    #@20
    cmp-long p0, p0, v2

    #@22
    if-nez p0, :cond_33

    #@24
    const-wide/16 p0, -0x1

    #@26
    cmp-long p0, p2, p0

    #@28
    if-eqz p0, :cond_2b

    #@2a
    goto :goto_33

    #@2b
    .line 106
    :cond_2b
    new-instance p0, Ljava/lang/ArithmeticException;

    #@2d
    const-string p1, "long overflow"

    #@2f
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@32
    throw p0

    #@33
    :cond_33
    :goto_33
    return-wide v0
.end method

.method public static negateExact(I)I
    .registers 2

    #@0
    const/high16 v0, -0x80000000

    #@2
    if-eq p0, v0, :cond_6

    #@4
    neg-int p0, p0

    #@5
    return p0

    #@6
    .line 166
    :cond_6
    new-instance p0, Ljava/lang/ArithmeticException;

    #@8
    const-string v0, "integer overflow"

    #@a
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@d
    throw p0
.end method

.method public static negateExact(J)J
    .registers 4

    #@0
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    cmp-long v0, p0, v0

    #@4
    if-eqz v0, :cond_8

    #@6
    neg-long p0, p0

    #@7
    return-wide p0

    #@8
    .line 178
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    #@a
    const-string p1, "long overflow"

    #@c
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@f
    throw p0
.end method

.method public static subtractExact(II)I
    .registers 3

    #@0
    sub-int v0, p0, p1

    #@2
    xor-int/2addr p1, p0

    #@3
    xor-int/2addr p0, v0

    #@4
    and-int/2addr p0, p1

    #@5
    if-ltz p0, :cond_8

    #@7
    return v0

    #@8
    .line 62
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    #@a
    const-string p1, "integer overflow"

    #@c
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@f
    throw p0
.end method

.method public static subtractExact(JJ)J
    .registers 6

    #@0
    sub-long v0, p0, p2

    #@2
    xor-long/2addr p2, p0

    #@3
    xor-long/2addr p0, v0

    #@4
    and-long/2addr p0, p2

    #@5
    const-wide/16 p2, 0x0

    #@7
    cmp-long p0, p0, p2

    #@9
    if-ltz p0, :cond_c

    #@b
    return-wide v0

    #@c
    .line 76
    :cond_c
    new-instance p0, Ljava/lang/ArithmeticException;

    #@e
    const-string p1, "long overflow"

    #@10
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@13
    throw p0
.end method

.method public static toIntExact(J)I
    .registers 5

    #@0
    long-to-int v0, p0

    #@1
    int-to-long v1, v0

    #@2
    cmp-long p0, v1, p0

    #@4
    if-nez p0, :cond_7

    #@6
    return v0

    #@7
    .line 190
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    #@9
    const-string p1, "integer overflow"

    #@b
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw p0
.end method
