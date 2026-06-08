.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "JsonPrimitive.java"


# static fields
.field private static final PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [Ljava/lang/Class;

    #@4
    const/4 v1, 0x0

    #@5
    .line 35
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    const-class v2, Ljava/lang/Integer;

    #@30
    aput-object v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    const-class v2, Ljava/lang/Long;

    #@36
    aput-object v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    const-class v2, Ljava/lang/Short;

    #@3c
    aput-object v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    const-class v2, Ljava/lang/Float;

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    const-class v2, Ljava/lang/Double;

    #@48
    aput-object v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    const-class v2, Ljava/lang/Byte;

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0xe

    #@52
    const-class v2, Ljava/lang/Boolean;

    #@54
    aput-object v2, v0, v1

    #@56
    const/16 v1, 0xf

    #@58
    const-class v2, Ljava/lang/Character;

    #@5a
    aput-object v2, v0, v1

    #@5c
    sput-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    #@5e
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    #@0
    .line 46
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .registers 2

    #@0
    .line 74
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    .line 75
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    #@0
    .line 55
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 84
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 64
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    #@6
    return-void
.end method

.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .registers 3

    #@0
    .line 338
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    instance-of v0, p0, Ljava/lang/Number;

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_1e

    #@7
    .line 339
    check-cast p0, Ljava/lang/Number;

    #@9
    .line 340
    instance-of v0, p0, Ljava/math/BigInteger;

    #@b
    if-nez v0, :cond_1d

    #@d
    instance-of v0, p0, Ljava/lang/Long;

    #@f
    if-nez v0, :cond_1d

    #@11
    instance-of v0, p0, Ljava/lang/Integer;

    #@13
    if-nez v0, :cond_1d

    #@15
    instance-of v0, p0, Ljava/lang/Short;

    #@17
    if-nez v0, :cond_1d

    #@19
    instance-of p0, p0, Ljava/lang/Byte;

    #@1b
    if-eqz p0, :cond_1e

    #@1d
    :cond_1d
    const/4 v1, 0x1

    #@1e
    :cond_1e
    return v1
.end method

.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
    .registers 7

    #@0
    .line 278
    instance-of v0, p0, Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 282
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object p0

    #@a
    .line 283
    sget-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    #@c
    array-length v2, v0

    #@d
    const/4 v3, 0x0

    #@e
    move v4, v3

    #@f
    :goto_f
    if-ge v4, v2, :cond_1d

    #@11
    aget-object v5, v0, v4

    #@13
    .line 284
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_1a

    #@19
    return v1

    #@1a
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_f

    #@1d
    :cond_1d
    return v3
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    #@0
    .line 33
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->deepCopy()Lcom/google/gson/JsonPrimitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public deepCopy()Lcom/google/gson/JsonPrimitive;
    .registers 1

    #@0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    const/4 v1, 0x0

    #@5
    if-eqz p1, :cond_78

    #@7
    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_12

    #@11
    goto :goto_78

    #@12
    .line 316
    :cond_12
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    #@14
    .line 317
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@16
    if-nez v2, :cond_1f

    #@18
    .line 318
    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@1a
    if-nez p1, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v0, v1

    #@1e
    :goto_1e
    return v0

    #@1f
    .line 320
    :cond_1f
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_42

    #@25
    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_42

    #@2b
    .line 321
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    #@32
    move-result-wide v2

    #@33
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@3a
    move-result-wide v4

    #@3b
    cmp-long p1, v2, v4

    #@3d
    if-nez p1, :cond_40

    #@3f
    goto :goto_41

    #@40
    :cond_40
    move v0, v1

    #@41
    :goto_41
    return v0

    #@42
    .line 323
    :cond_42
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@44
    instance-of v3, v2, Ljava/lang/Number;

    #@46
    if-eqz v3, :cond_71

    #@48
    iget-object v3, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@4a
    instance-of v3, v3, Ljava/lang/Number;

    #@4c
    if-eqz v3, :cond_71

    #@4e
    .line 324
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    #@55
    move-result-wide v2

    #@56
    .line 327
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@5d
    move-result-wide v4

    #@5e
    cmpl-double p1, v2, v4

    #@60
    if-eqz p1, :cond_70

    #@62
    .line 328
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    #@65
    move-result p1

    #@66
    if-eqz p1, :cond_6f

    #@68
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    #@6b
    move-result p1

    #@6c
    if-eqz p1, :cond_6f

    #@6e
    goto :goto_70

    #@6f
    :cond_6f
    move v0, v1

    #@70
    :cond_70
    :goto_70
    return v0

    #@71
    .line 330
    :cond_71
    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@73
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@76
    move-result p1

    #@77
    return p1

    #@78
    :cond_78
    :goto_78
    return v1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    #@0
    .line 208
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    instance-of v1, v0, Ljava/math/BigDecimal;

    #@4
    if-eqz v1, :cond_9

    #@6
    check-cast v0, Ljava/math/BigDecimal;

    #@8
    goto :goto_14

    #@9
    :cond_9
    new-instance v0, Ljava/math/BigDecimal;

    #@b
    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@14
    :goto_14
    return-object v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    #@0
    .line 219
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    instance-of v1, v0, Ljava/math/BigInteger;

    #@4
    if-eqz v1, :cond_9

    #@6
    check-cast v0, Ljava/math/BigInteger;

    #@8
    goto :goto_14

    #@9
    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    #@b
    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@d
    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@14
    :goto_14
    return-object v0
.end method

.method public getAsBoolean()Z
    .registers 2

    #@0
    .line 136
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 137
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 140
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
    .registers 2

    #@0
    .line 126
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    check-cast v0, Ljava/lang/Boolean;

    #@4
    return-object v0
.end method

.method public getAsByte()B
    .registers 2

    #@0
    .line 269
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    #@d
    move-result v0

    #@e
    goto :goto_17

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    #@16
    move-result v0

    #@17
    :goto_17
    return v0
.end method

.method public getAsCharacter()C
    .registers 3

    #@0
    .line 274
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getAsDouble()D
    .registers 3

    #@0
    .line 197
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@d
    move-result-wide v0

    #@e
    goto :goto_17

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@16
    move-result-wide v0

    #@17
    :goto_17
    return-wide v0
.end method

.method public getAsFloat()F
    .registers 2

    #@0
    .line 231
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    #@d
    move-result v0

    #@e
    goto :goto_17

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@16
    move-result v0

    #@17
    :goto_17
    return v0
.end method

.method public getAsInt()I
    .registers 2

    #@0
    .line 264
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    #@d
    move-result v0

    #@e
    goto :goto_17

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    :goto_17
    return v0
.end method

.method public getAsLong()J
    .registers 3

    #@0
    .line 242
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    #@d
    move-result-wide v0

    #@e
    goto :goto_17

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@16
    move-result-wide v0

    #@17
    :goto_17
    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    #@0
    .line 161
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    instance-of v1, v0, Ljava/lang/String;

    #@4
    if-eqz v1, :cond_10

    #@6
    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    #@8
    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@a
    check-cast v1, Ljava/lang/String;

    #@c
    invoke-direct {v0, v1}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    #@f
    goto :goto_12

    #@10
    :cond_10
    check-cast v0, Ljava/lang/Number;

    #@12
    :goto_12
    return-object v0
.end method

.method public getAsShort()S
    .registers 2

    #@0
    .line 253
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    #@d
    move-result v0

    #@e
    goto :goto_17

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@16
    move-result v0

    #@17
    :goto_17
    return v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    #@0
    .line 180
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 181
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 182
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1e

    #@15
    .line 183
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 185
    :cond_1e
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    .line 293
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_7

    #@4
    const/16 v0, 0x1f

    #@6
    return v0

    #@7
    .line 297
    :cond_7
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    #@a
    move-result v0

    #@b
    const/16 v1, 0x20

    #@d
    if-eqz v0, :cond_1c

    #@f
    .line 298
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    #@16
    move-result-wide v2

    #@17
    :goto_17
    ushr-long v0, v2, v1

    #@19
    xor-long/2addr v0, v2

    #@1a
    long-to-int v0, v0

    #@1b
    return v0

    #@1c
    .line 301
    :cond_1c
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@1e
    instance-of v2, v0, Ljava/lang/Number;

    #@20
    if-eqz v2, :cond_2f

    #@22
    .line 302
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@29
    move-result-wide v2

    #@2a
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@2d
    move-result-wide v2

    #@2e
    goto :goto_17

    #@2f
    .line 305
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public isBoolean()Z
    .registers 2

    #@0
    .line 116
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/lang/Boolean;

    #@4
    return v0
.end method

.method public isNumber()Z
    .registers 2

    #@0
    .line 150
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/lang/Number;

    #@4
    return v0
.end method

.method public isString()Z
    .registers 2

    #@0
    .line 170
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/lang/String;

    #@4
    return v0
.end method

.method setValue(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 98
    instance-of v0, p1, Ljava/lang/Character;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 101
    check-cast p1, Ljava/lang/Character;

    #@6
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    #@9
    move-result p1

    #@a
    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@10
    goto :goto_24

    #@11
    .line 104
    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    #@13
    if-nez v0, :cond_1e

    #@15
    .line 105
    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1c

    #@1b
    goto :goto_1e

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    #@1f
    .line 104
    :goto_1f
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@22
    .line 106
    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    #@24
    :goto_24
    return-void
.end method
