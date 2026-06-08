.class public final Lcom/google/gson/JsonArray;
.super Lcom/google/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/JsonElement;",
        "Ljava/lang/Iterable<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 39
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@a
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 43
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@a
    return-void
.end method


# virtual methods
.method public add(Lcom/google/gson/JsonElement;)V
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    .line 106
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@4
    .line 108
    :cond_4
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .registers 4

    #@0
    .line 69
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    if-nez p1, :cond_7

    #@4
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@6
    goto :goto_d

    #@7
    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    #@9
    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    #@c
    move-object p1, v1

    #@d
    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public add(Ljava/lang/Character;)V
    .registers 4

    #@0
    .line 78
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    if-nez p1, :cond_7

    #@4
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@6
    goto :goto_d

    #@7
    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    #@9
    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    #@c
    move-object p1, v1

    #@d
    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4

    #@0
    .line 87
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    if-nez p1, :cond_7

    #@4
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@6
    goto :goto_d

    #@7
    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    #@9
    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    #@c
    move-object p1, v1

    #@d
    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 96
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    if-nez p1, :cond_7

    #@4
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@6
    goto :goto_d

    #@7
    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    #@9
    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    #@c
    move-object p1, v1

    #@d
    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public addAll(Lcom/google/gson/JsonArray;)V
    .registers 3

    #@0
    .line 117
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    iget-object p1, p1, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@7
    return-void
.end method

.method public contains(Lcom/google/gson/JsonElement;)Z
    .registers 3

    #@0
    .line 163
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public deepCopy()Lcom/google/gson/JsonArray;
    .registers 4

    #@0
    .line 53
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2e

    #@8
    .line 54
    new-instance v0, Lcom/google/gson/JsonArray;

    #@a
    iget-object v1, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@c
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    invoke-direct {v0, v1}, Lcom/google/gson/JsonArray;-><init>(I)V

    #@13
    .line 55
    iget-object v1, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_2d

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Lcom/google/gson/JsonElement;

    #@25
    .line 56
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->deepCopy()Lcom/google/gson/JsonElement;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    return-object v0

    #@2e
    .line 60
    :cond_2e
    new-instance v0, Lcom/google/gson/JsonArray;

    #@30
    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    #@33
    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    #@0
    .line 33
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->deepCopy()Lcom/google/gson/JsonArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p1, p0, :cond_15

    #@2
    .line 377
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    #@4
    if-eqz v0, :cond_13

    #@6
    check-cast p1, Lcom/google/gson/JsonArray;

    #@8
    iget-object p1, p1, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@a
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_13

    #@12
    goto :goto_15

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    goto :goto_16

    #@15
    :cond_15
    :goto_15
    const/4 p1, 0x1

    #@16
    :goto_16
    return p1
.end method

.method public get(I)Lcom/google/gson/JsonElement;
    .registers 3

    #@0
    .line 194
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Lcom/google/gson/JsonElement;

    #@8
    return-object p1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    #@0
    .line 256
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 257
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 259
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    #@0
    .line 273
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 274
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 276
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsBoolean()Z
    .registers 3

    #@0
    .line 369
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 370
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 372
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsByte()B
    .registers 3

    #@0
    .line 329
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 330
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsByte()B

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 332
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsCharacter()C
    .registers 3

    #@0
    .line 337
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 338
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsCharacter()C

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 340
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsDouble()D
    .registers 3

    #@0
    .line 239
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 240
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    #@15
    move-result-wide v0

    #@16
    return-wide v0

    #@17
    .line 242
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsFloat()F
    .registers 3

    #@0
    .line 289
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 290
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 292
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsInt()I
    .registers 3

    #@0
    .line 321
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 322
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 324
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsLong()J
    .registers 3

    #@0
    .line 305
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 306
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    #@15
    move-result-wide v0

    #@16
    return-wide v0

    #@17
    .line 308
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    #@0
    .line 207
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 208
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 210
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsShort()S
    .registers 3

    #@0
    .line 353
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 354
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsShort()S

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 356
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3

    #@0
    .line 223
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_17

    #@9
    .line 224
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/gson/JsonElement;

    #@12
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 226
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 382
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    #@0
    .line 182
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(I)Lcom/google/gson/JsonElement;
    .registers 3

    #@0
    .line 153
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Lcom/google/gson/JsonElement;

    #@8
    return-object p1
.end method

.method public remove(Lcom/google/gson/JsonElement;)Z
    .registers 3

    #@0
    .line 140
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public set(ILcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .registers 4

    #@0
    .line 129
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Lcom/google/gson/JsonElement;

    #@8
    return-object p1
.end method

.method public size()I
    .registers 2

    #@0
    .line 172
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
