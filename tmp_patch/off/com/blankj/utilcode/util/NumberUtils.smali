.class public final Lcom/blankj/utilcode/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field private static final DF_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 18
    new-instance v0, Lcom/blankj/utilcode/util/NumberUtils$1;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/NumberUtils$1;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/NumberUtils;->DF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static float2Double(F)D
    .registers 3

    #@0
    .line 196
    new-instance v0, Ljava/math/BigDecimal;

    #@2
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public static format(DI)Ljava/lang/String;
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v5, 0x1

    #@3
    move-wide v0, p0

    #@4
    move v4, p2

    #@5
    .line 116
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/NumberUtils;->format(DZIIZ)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static format(DIIZ)Ljava/lang/String;
    .registers 11

    #@0
    const/4 v2, 0x0

    #@1
    move-wide v0, p0

    #@2
    move v3, p2

    #@3
    move v4, p3

    #@4
    move v5, p4

    #@5
    .line 141
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/NumberUtils;->format(DZIIZ)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static format(DIZ)Ljava/lang/String;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    move-wide v0, p0

    #@3
    move v4, p2

    #@4
    move v5, p3

    #@5
    .line 128
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/NumberUtils;->format(DZIIZ)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static format(DZI)Ljava/lang/String;
    .registers 10

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x1

    #@2
    move-wide v0, p0

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    .line 153
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/NumberUtils;->format(DZIIZ)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static format(DZIIZ)Ljava/lang/String;
    .registers 7

    #@0
    .line 180
    invoke-static {}, Lcom/blankj/utilcode/util/NumberUtils;->getSafeDecimalFormat()Ljava/text/DecimalFormat;

    #@3
    move-result-object v0

    #@4
    .line 181
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    #@7
    if-eqz p5, :cond_c

    #@9
    .line 182
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@b
    goto :goto_e

    #@c
    :cond_c
    sget-object p2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    #@e
    :goto_e
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    #@11
    .line 183
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@14
    .line 184
    invoke-virtual {v0, p4}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@17
    .line 185
    invoke-virtual {v0, p4}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@1a
    .line 186
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    return-object p0
.end method

.method public static format(DZIZ)Ljava/lang/String;
    .registers 11

    #@0
    const/4 v3, 0x1

    #@1
    move-wide v0, p0

    #@2
    move v2, p2

    #@3
    move v4, p3

    #@4
    move v5, p4

    #@5
    .line 166
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/NumberUtils;->format(DZIIZ)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static format(FI)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 41
    invoke-static {p0, v0, v1, p1, v1}, Lcom/blankj/utilcode/util/NumberUtils;->format(FZIIZ)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static format(FIIZ)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 66
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/NumberUtils;->format(FZIIZ)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static format(FIZ)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 53
    invoke-static {p0, v0, v1, p1, p2}, Lcom/blankj/utilcode/util/NumberUtils;->format(FZIIZ)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static format(FZI)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 78
    invoke-static {p0, p1, v0, p2, v0}, Lcom/blankj/utilcode/util/NumberUtils;->format(FZIIZ)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static format(FZIIZ)Ljava/lang/String;
    .registers 11

    #@0
    .line 105
    invoke-static {p0}, Lcom/blankj/utilcode/util/NumberUtils;->float2Double(F)D

    #@3
    move-result-wide v0

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/NumberUtils;->format(DZIIZ)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static format(FZIZ)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 91
    invoke-static {p0, p1, v0, p2, p3}, Lcom/blankj/utilcode/util/NumberUtils;->format(FZIIZ)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getSafeDecimalFormat()Ljava/text/DecimalFormat;
    .registers 1

    #@0
    .line 26
    sget-object v0, Lcom/blankj/utilcode/util/NumberUtils;->DF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/DecimalFormat;

    #@8
    return-object v0
.end method
