.class public final Lkotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "UnsignedUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0001\u001a\"\u0010\u000c\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u001a\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\tH\u0001\u001a\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u0013H\u0001\u001a\"\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0016\u001a\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0013H\u0001\u001a\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0013H\u0000\u001a\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\tH\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "doubleToUInt",
        "Lkotlin/UInt;",
        "v",
        "",
        "(D)I",
        "doubleToULong",
        "Lkotlin/ULong;",
        "(D)J",
        "uintCompare",
        "",
        "v1",
        "v2",
        "uintDivide",
        "uintDivide-J1ME1BU",
        "(II)I",
        "uintRemainder",
        "uintRemainder-J1ME1BU",
        "uintToDouble",
        "ulongCompare",
        "",
        "ulongDivide",
        "ulongDivide-eb3DHEI",
        "(JJ)J",
        "ulongRemainder",
        "ulongRemainder-eb3DHEI",
        "ulongToDouble",
        "ulongToString",
        "",
        "base",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final doubleToUInt(D)I
    .registers 6

    #@0
    .line 66
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    goto :goto_3d

    #@8
    .line 67
    :cond_8
    invoke-static {v1}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    #@b
    move-result-wide v2

    #@c
    cmpg-double v0, p0, v2

    #@e
    if-gtz v0, :cond_11

    #@10
    goto :goto_3d

    #@11
    :cond_11
    const/4 v1, -0x1

    #@12
    .line 68
    invoke-static {v1}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    #@15
    move-result-wide v2

    #@16
    cmpl-double v0, p0, v2

    #@18
    if-ltz v0, :cond_1b

    #@1a
    goto :goto_3d

    #@1b
    :cond_1b
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    #@20
    cmpg-double v0, p0, v0

    #@22
    if-gtz v0, :cond_2a

    #@24
    double-to-int p0, p0

    #@25
    .line 69
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    #@28
    move-result v1

    #@29
    goto :goto_3d

    #@2a
    :cond_2a
    const v0, 0x7fffffff

    #@2d
    int-to-double v1, v0

    #@2e
    sub-double/2addr p0, v1

    #@2f
    double-to-int p0, p0

    #@30
    .line 70
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    #@33
    move-result p0

    #@34
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    #@37
    move-result p1

    #@38
    add-int/2addr p0, p1

    #@39
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    #@3c
    move-result v1

    #@3d
    :goto_3d
    return v1
.end method

.method public static final doubleToULong(D)J
    .registers 7

    #@0
    .line 75
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    const-wide/16 v1, 0x0

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_36

    #@9
    .line 76
    :cond_9
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    #@c
    move-result-wide v3

    #@d
    cmpg-double v0, p0, v3

    #@f
    if-gtz v0, :cond_12

    #@11
    goto :goto_36

    #@12
    :cond_12
    const-wide/16 v1, -0x1

    #@14
    .line 77
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    #@17
    move-result-wide v3

    #@18
    cmpl-double v0, p0, v3

    #@1a
    if-ltz v0, :cond_1d

    #@1c
    goto :goto_36

    #@1d
    :cond_1d
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    #@1f
    cmpg-double v2, p0, v0

    #@21
    if-gez v2, :cond_29

    #@23
    double-to-long p0, p0

    #@24
    .line 78
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@27
    move-result-wide v1

    #@28
    goto :goto_36

    #@29
    :cond_29
    sub-double/2addr p0, v0

    #@2a
    double-to-long p0, p0

    #@2b
    .line 81
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@2e
    move-result-wide p0

    #@2f
    const-wide/high16 v0, -0x8000000000000000L

    #@31
    add-long/2addr p0, v0

    #@32
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@35
    move-result-wide v1

    #@36
    :goto_36
    return-wide v1
.end method

.method public static final uintCompare(II)I
    .registers 3

    #@0
    const/high16 v0, -0x80000000

    #@2
    xor-int/2addr p0, v0

    #@3
    xor-int/2addr p1, v0

    #@4
    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static final uintDivide-J1ME1BU(II)I
    .registers 6

    #@0
    int-to-long v0, p0

    #@1
    const-wide v2, 0xffffffffL

    #@6
    and-long/2addr v0, v2

    #@7
    int-to-long p0, p1

    #@8
    and-long/2addr p0, v2

    #@9
    .line 14
    div-long/2addr v0, p0

    #@a
    long-to-int p0, v0

    #@b
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static final uintRemainder-J1ME1BU(II)I
    .registers 6

    #@0
    int-to-long v0, p0

    #@1
    const-wide v2, 0xffffffffL

    #@6
    and-long/2addr v0, v2

    #@7
    int-to-long p0, p1

    #@8
    and-long/2addr p0, v2

    #@9
    .line 16
    rem-long/2addr v0, p0

    #@a
    long-to-int p0, v0

    #@b
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static final uintToDouble(I)D
    .registers 7

    #@0
    const v0, 0x7fffffff

    #@3
    and-int/2addr v0, p0

    #@4
    int-to-double v0, v0

    #@5
    ushr-int/lit8 p0, p0, 0x1f

    #@7
    shl-int/lit8 p0, p0, 0x1e

    #@9
    int-to-double v2, p0

    #@a
    const/4 p0, 0x2

    #@b
    int-to-double v4, p0

    #@c
    mul-double/2addr v2, v4

    #@d
    add-double/2addr v0, v2

    #@e
    return-wide v0
.end method

.method public static final ulongCompare(JJ)I
    .registers 6

    #@0
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    xor-long/2addr p0, v0

    #@3
    xor-long/2addr p2, v0

    #@4
    .line 11
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static final ulongDivide-eb3DHEI(JJ)J
    .registers 9

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v2, p2, v0

    #@4
    if-gez v2, :cond_18

    #@6
    .line 26
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    #@9
    move-result p0

    #@a
    if-gez p0, :cond_11

    #@c
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    #@f
    move-result-wide p0

    #@10
    goto :goto_17

    #@11
    :cond_11
    const-wide/16 p0, 0x1

    #@13
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@16
    move-result-wide p0

    #@17
    :goto_17
    return-wide p0

    #@18
    :cond_18
    cmp-long v0, p0, v0

    #@1a
    if-ltz v0, :cond_22

    #@1c
    .line 31
    div-long/2addr p0, p2

    #@1d
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@20
    move-result-wide p0

    #@21
    return-wide p0

    #@22
    :cond_22
    const/4 v0, 0x1

    #@23
    ushr-long v1, p0, v0

    #@25
    .line 35
    div-long/2addr v1, p2

    #@26
    shl-long/2addr v1, v0

    #@27
    mul-long v3, v1, p2

    #@29
    sub-long/2addr p0, v3

    #@2a
    .line 37
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@2d
    move-result-wide p0

    #@2e
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    #@31
    move-result-wide p2

    #@32
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    #@35
    move-result p0

    #@36
    if-ltz p0, :cond_39

    #@38
    goto :goto_3a

    #@39
    :cond_39
    const/4 v0, 0x0

    #@3a
    :goto_3a
    int-to-long p0, v0

    #@3b
    add-long/2addr v1, p0

    #@3c
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    #@3f
    move-result-wide p0

    #@40
    return-wide p0
.end method

.method public static final ulongRemainder-eb3DHEI(JJ)J
    .registers 10

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v2, p2, v0

    #@4
    if-gez v2, :cond_13

    #@6
    .line 46
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    #@9
    move-result v0

    #@a
    if-gez v0, :cond_d

    #@c
    goto :goto_12

    #@d
    :cond_d
    sub-long/2addr p0, p2

    #@e
    .line 49
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@11
    move-result-wide p0

    #@12
    :goto_12
    return-wide p0

    #@13
    :cond_13
    cmp-long v2, p0, v0

    #@15
    if-ltz v2, :cond_1d

    #@17
    .line 55
    rem-long/2addr p0, p2

    #@18
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@1b
    move-result-wide p0

    #@1c
    return-wide p0

    #@1d
    :cond_1d
    const/4 v2, 0x1

    #@1e
    ushr-long v3, p0, v2

    #@20
    .line 59
    div-long/2addr v3, p2

    #@21
    shl-long v2, v3, v2

    #@23
    mul-long/2addr v2, p2

    #@24
    sub-long/2addr p0, v2

    #@25
    .line 61
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@28
    move-result-wide v2

    #@29
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    #@2c
    move-result-wide v4

    #@2d
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compareUnsigned(JJ)I

    #@30
    move-result v2

    #@31
    if-ltz v2, :cond_34

    #@33
    goto :goto_35

    #@34
    :cond_34
    move-wide p2, v0

    #@35
    :goto_35
    sub-long/2addr p0, p2

    #@36
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    #@39
    move-result-wide p0

    #@3a
    return-wide p0
.end method

.method public static final ulongToDouble(J)D
    .registers 6

    #@0
    const/16 v0, 0xb

    #@2
    ushr-long v0, p0, v0

    #@4
    long-to-double v0, v0

    #@5
    const/16 v2, 0x800

    #@7
    int-to-double v2, v2

    #@8
    mul-double/2addr v0, v2

    #@9
    const-wide/16 v2, 0x7ff

    #@b
    and-long/2addr p0, v2

    #@c
    long-to-double p0, p0

    #@d
    add-double/2addr v0, p0

    #@e
    return-wide v0
.end method

.method public static final ulongToString(J)Ljava/lang/String;
    .registers 3

    #@0
    const/16 v0, 0xa

    #@2
    .line 92
    invoke-static {p0, p1, v0}, Lkotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static final ulongToString(JI)Ljava/lang/String;
    .registers 11

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    const-string v1, "toString(this, checkRadix(radix))"

    #@6
    if-ltz v0, :cond_14

    #@8
    .line 95
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    #@b
    move-result p2

    #@c
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    return-object p0

    #@14
    :cond_14
    const/4 v0, 0x1

    #@15
    ushr-long v2, p0, v0

    #@17
    int-to-long v4, p2

    #@18
    .line 97
    div-long/2addr v2, v4

    #@19
    shl-long/2addr v2, v0

    #@1a
    mul-long v6, v2, v4

    #@1c
    sub-long/2addr p0, v6

    #@1d
    cmp-long v0, p0, v4

    #@1f
    if-ltz v0, :cond_25

    #@21
    sub-long/2addr p0, v4

    #@22
    const-wide/16 v4, 0x1

    #@24
    add-long/2addr v2, v4

    #@25
    .line 103
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    #@2d
    move-result v4

    #@2e
    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    #@3c
    move-result p2

    #@3d
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object p0

    #@48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object p0

    #@4c
    return-object p0
.end method
