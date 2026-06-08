.class public final Lcom/google/gson/internal/LazilyParsedNumber;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@5
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .line 77
    new-instance v0, Ljava/math/BigDecimal;

    #@2
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 90
    :cond_4
    instance-of v1, p1, Lcom/google/gson/internal/LazilyParsedNumber;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_1a

    #@9
    .line 91
    check-cast p1, Lcom/google/gson/internal/LazilyParsedNumber;

    #@b
    .line 92
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@d
    iget-object p1, p1, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@f
    if-eq v1, p1, :cond_19

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v0, v2

    #@19
    :cond_19
    :goto_19
    return v0

    #@1a
    :cond_1a
    return v2
.end method

.method public floatValue()F
    .registers 2

    #@0
    .line 58
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 82
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intValue()I
    .registers 3

    #@0
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5
    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return v0

    #@7
    .line 40
    :catch_7
    :try_start_7
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@c
    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d} :catch_f

    #@d
    long-to-int v0, v0

    #@e
    return v0

    #@f
    .line 42
    :catch_f
    new-instance v0, Ljava/math/BigDecimal;

    #@11
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@13
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public longValue()J
    .registers 3

    #@0
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return-wide v0

    #@7
    .line 52
    :catch_7
    new-instance v0, Ljava/math/BigDecimal;

    #@9
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@b
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    #@11
    move-result-wide v0

    #@12
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method
