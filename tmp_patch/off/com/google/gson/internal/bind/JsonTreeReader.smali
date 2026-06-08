.class public final Lcom/google/gson/internal/bind/JsonTreeReader;
.super Lcom/google/gson/stream/JsonReader;
.source "JsonTreeReader.java"


# static fields
.field private static final SENTINEL_CLOSED:Ljava/lang/Object;

.field private static final UNREADABLE_READER:Ljava/io/Reader;


# instance fields
.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private stack:[Ljava/lang/Object;

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 38
    new-instance v0, Lcom/google/gson/internal/bind/JsonTreeReader$1;

    #@2
    invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonTreeReader$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    #@7
    .line 46
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    #@e
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .registers 4

    #@0
    .line 66
    sget-object v0, Lcom/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    #@5
    const/16 v0, 0x20

    #@7
    new-array v1, v0, [Ljava/lang/Object;

    #@9
    .line 51
    iput-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@b
    const/4 v1, 0x0

    #@c
    .line 52
    iput v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@e
    new-array v1, v0, [Ljava/lang/String;

    #@10
    .line 62
    iput-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    #@12
    new-array v0, v0, [I

    #@14
    .line 63
    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@16
    .line 67
    invoke-direct {p0, p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    #@19
    return-void
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 160
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    if-ne v0, p1, :cond_7

    #@6
    return-void

    #@7
    .line 161
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Expected "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    const-string v1, " but was "

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    .line 162
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
.end method

.method private locationString()Ljava/lang/String;
    .registers 3

    #@0
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, " at path "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->getPath()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private peekStack()Ljava/lang/Object;
    .registers 3

    #@0
    .line 150
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method private popStack()Ljava/lang/Object;
    .registers 5

    #@0
    .line 154
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@8
    aget-object v2, v0, v1

    #@a
    const/4 v3, 0x0

    #@b
    .line 155
    aput-object v3, v0, v1

    #@d
    return-object v2
.end method

.method private push(Ljava/lang/Object;)V
    .registers 8

    #@0
    .line 284
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@2
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@4
    array-length v2, v1

    #@5
    if-ne v0, v2, :cond_2b

    #@7
    mul-int/lit8 v2, v0, 0x2

    #@9
    .line 285
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    mul-int/lit8 v3, v0, 0x2

    #@d
    .line 286
    new-array v3, v3, [I

    #@f
    mul-int/lit8 v4, v0, 0x2

    #@11
    .line 287
    new-array v4, v4, [Ljava/lang/String;

    #@13
    const/4 v5, 0x0

    #@14
    .line 288
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 289
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@19
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@1b
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 290
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    #@20
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@22
    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@25
    .line 291
    iput-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@27
    .line 292
    iput-object v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@29
    .line 293
    iput-object v4, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    #@2b
    .line 295
    :cond_2b
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@2d
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@2f
    add-int/lit8 v2, v1, 0x1

    #@31
    iput v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@33
    aput-object p1, v0, v1

    #@35
    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 71
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 72
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/gson/JsonArray;

    #@b
    .line 73
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    #@12
    .line 74
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@14
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    const/4 v2, 0x0

    #@19
    aput v2, v0, v1

    #@1b
    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 87
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 88
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/gson/JsonObject;

    #@b
    .line 89
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    #@16
    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    .line 252
    sget-object v3, Lcom/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    #@6
    aput-object v3, v1, v2

    #@8
    iput-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@a
    .line 253
    iput v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@c
    return-void
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 78
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 79
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@8
    .line 80
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@b
    .line 81
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@d
    if-lez v0, :cond_19

    #@f
    .line 82
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    aget v2, v1, v0

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    aput v2, v1, v0

    #@19
    :cond_19
    return-void
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 93
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 94
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@8
    .line 95
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@b
    .line 96
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@d
    if-lez v0, :cond_19

    #@f
    .line 97
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    aget v2, v1, v0

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    aput v2, v1, v0

    #@19
    :cond_19
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    #@0
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "$"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    const/4 v1, 0x0

    #@8
    .line 300
    :goto_8
    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@a
    if-ge v1, v2, :cond_4d

    #@c
    .line 301
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@e
    aget-object v3, v2, v1

    #@10
    instance-of v4, v3, Lcom/google/gson/JsonArray;

    #@12
    if-eqz v4, :cond_30

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    .line 302
    aget-object v2, v2, v1

    #@18
    instance-of v2, v2, Ljava/util/Iterator;

    #@1a
    if-eqz v2, :cond_4a

    #@1c
    const/16 v2, 0x5b

    #@1e
    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@24
    aget v3, v3, v1

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const/16 v3, 0x5d

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_4a

    #@30
    .line 305
    :cond_30
    instance-of v3, v3, Lcom/google/gson/JsonObject;

    #@32
    if-eqz v3, :cond_4a

    #@34
    add-int/lit8 v1, v1, 0x1

    #@36
    .line 306
    aget-object v2, v2, v1

    #@38
    instance-of v2, v2, Ljava/util/Iterator;

    #@3a
    if-eqz v2, :cond_4a

    #@3c
    const/16 v2, 0x2e

    #@3e
    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 308
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    #@43
    aget-object v2, v2, v1

    #@45
    if-eqz v2, :cond_4a

    #@47
    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_8

    #@4d
    .line 314
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 102
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 103
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@6
    if-eq v0, v1, :cond_e

    #@8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@a
    if-eq v0, v1, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 190
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 191
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/gson/JsonPrimitive;

    #@b
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    #@e
    move-result v0

    #@f
    .line 192
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@11
    if-lez v1, :cond_1d

    #@13
    .line 193
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    aget v3, v2, v1

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    aput v3, v2, v1

    #@1d
    :cond_1d
    return v0
.end method

.method public nextDouble()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 207
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 208
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@6
    if-eq v0, v1, :cond_36

    #@8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    goto :goto_36

    #@d
    .line 209
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    const-string v3, "Expected "

    #@13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    sget-object v3, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string v3, " but was "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 210
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 212
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lcom/google/gson/JsonPrimitive;

    #@3c
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsDouble()D

    #@3f
    move-result-wide v0

    #@40
    .line 213
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->isLenient()Z

    #@43
    move-result v2

    #@44
    if-nez v2, :cond_68

    #@46
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_53

    #@4c
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_53

    #@52
    goto :goto_68

    #@53
    .line 214
    :cond_53
    new-instance v2, Ljava/lang/NumberFormatException;

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    const-string v4, "JSON forbids NaN and infinities: "

    #@59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5c
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2

    #@68
    .line 216
    :cond_68
    :goto_68
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@6b
    .line 217
    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@6d
    if-lez v2, :cond_79

    #@6f
    .line 218
    iget-object v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@71
    add-int/lit8 v2, v2, -0x1

    #@73
    aget v4, v3, v2

    #@75
    add-int/lit8 v4, v4, 0x1

    #@77
    aput v4, v3, v2

    #@79
    :cond_79
    return-wide v0
.end method

.method public nextInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 238
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 239
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@6
    if-eq v0, v1, :cond_36

    #@8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    goto :goto_36

    #@d
    .line 240
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    const-string v3, "Expected "

    #@13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    sget-object v3, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string v3, " but was "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 241
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 243
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lcom/google/gson/JsonPrimitive;

    #@3c
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    #@3f
    move-result v0

    #@40
    .line 244
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@43
    .line 245
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@45
    if-lez v1, :cond_51

    #@47
    .line 246
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@49
    add-int/lit8 v1, v1, -0x1

    #@4b
    aget v3, v2, v1

    #@4d
    add-int/lit8 v3, v3, 0x1

    #@4f
    aput v3, v2, v1

    #@51
    :cond_51
    return v0
.end method

.method public nextLong()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 224
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 225
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@6
    if-eq v0, v1, :cond_36

    #@8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    goto :goto_36

    #@d
    .line 226
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    const-string v3, "Expected "

    #@13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    sget-object v3, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string v3, " but was "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 227
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 229
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lcom/google/gson/JsonPrimitive;

    #@3c
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    #@3f
    move-result-wide v0

    #@40
    .line 230
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@43
    .line 231
    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@45
    if-lez v2, :cond_51

    #@47
    .line 232
    iget-object v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@49
    add-int/lit8 v2, v2, -0x1

    #@4b
    aget v4, v3, v2

    #@4d
    add-int/lit8 v4, v4, 0x1

    #@4f
    aput v4, v3, v2

    #@51
    :cond_51
    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 167
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 168
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Iterator;

    #@b
    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/Map$Entry;

    #@11
    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 171
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    #@19
    iget v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@1b
    add-int/lit8 v3, v3, -0x1

    #@1d
    aput-object v1, v2, v3

    #@1f
    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    #@26
    return-object v1
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 199
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 200
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@8
    .line 201
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@a
    if-lez v0, :cond_16

    #@c
    .line 202
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    aget v2, v1, v0

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    aput v2, v1, v0

    #@16
    :cond_16
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 177
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 178
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@6
    if-eq v0, v1, :cond_36

    #@8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    goto :goto_36

    #@d
    .line 179
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    const-string v3, "Expected "

    #@13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string v3, " but was "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 180
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 182
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lcom/google/gson/JsonPrimitive;

    #@3c
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 183
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@42
    if-lez v1, :cond_4e

    #@44
    .line 184
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@46
    add-int/lit8 v1, v1, -0x1

    #@48
    aget v3, v2, v1

    #@4a
    add-int/lit8 v3, v3, 0x1

    #@4c
    aput v3, v2, v1

    #@4e
    :cond_4e
    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 107
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@2
    if-nez v0, :cond_7

    #@4
    .line 108
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    #@6
    return-object v0

    #@7
    .line 111
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 112
    instance-of v1, v0, Ljava/util/Iterator;

    #@d
    if-eqz v1, :cond_3a

    #@f
    .line 113
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    #@11
    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@13
    add-int/lit8 v2, v2, -0x2

    #@15
    aget-object v1, v1, v2

    #@17
    instance-of v1, v1, Lcom/google/gson/JsonObject;

    #@19
    .line 114
    check-cast v0, Ljava/util/Iterator;

    #@1b
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_32

    #@21
    if-eqz v1, :cond_26

    #@23
    .line 117
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    #@25
    return-object v0

    #@26
    .line 119
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    #@2d
    .line 120
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    :cond_32
    if-eqz v1, :cond_37

    #@34
    .line 123
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@36
    goto :goto_39

    #@37
    :cond_37
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@39
    :goto_39
    return-object v0

    #@3a
    .line 125
    :cond_3a
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    #@3c
    if-eqz v1, :cond_41

    #@3e
    .line 126
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@40
    return-object v0

    #@41
    .line 127
    :cond_41
    instance-of v1, v0, Lcom/google/gson/JsonArray;

    #@43
    if-eqz v1, :cond_48

    #@45
    .line 128
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@47
    return-object v0

    #@48
    .line 129
    :cond_48
    instance-of v1, v0, Lcom/google/gson/JsonPrimitive;

    #@4a
    if-eqz v1, :cond_6f

    #@4c
    .line 130
    check-cast v0, Lcom/google/gson/JsonPrimitive;

    #@4e
    .line 131
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_57

    #@54
    .line 132
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@56
    return-object v0

    #@57
    .line 133
    :cond_57
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_60

    #@5d
    .line 134
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    #@5f
    return-object v0

    #@60
    .line 135
    :cond_60
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_69

    #@66
    .line 136
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@68
    return-object v0

    #@69
    .line 138
    :cond_69
    new-instance v0, Ljava/lang/AssertionError;

    #@6b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@6e
    throw v0

    #@6f
    .line 140
    :cond_6f
    instance-of v1, v0, Lcom/google/gson/JsonNull;

    #@71
    if-eqz v1, :cond_76

    #@73
    .line 141
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@75
    return-object v0

    #@76
    .line 142
    :cond_76
    sget-object v1, Lcom/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    #@78
    if-ne v0, v1, :cond_82

    #@7a
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7c
    const-string v1, "JsonReader is closed"

    #@7e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@81
    throw v0

    #@82
    .line 145
    :cond_82
    new-instance v0, Ljava/lang/AssertionError;

    #@84
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@87
    throw v0
.end method

.method public promoteNameToValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 276
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    #@5
    .line 277
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Iterator;

    #@b
    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/Map$Entry;

    #@11
    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v1}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    #@18
    .line 280
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    #@1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    invoke-direct {v1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    #@23
    invoke-direct {p0, v1}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    #@26
    return-void
.end method

.method public skipValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 257
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    #@6
    const-string v2, "null"

    #@8
    if-ne v0, v1, :cond_16

    #@a
    .line 258
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->nextName()Ljava/lang/String;

    #@d
    .line 259
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    #@f
    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@11
    add-int/lit8 v1, v1, -0x2

    #@13
    aput-object v2, v0, v1

    #@15
    goto :goto_23

    #@16
    .line 261
    :cond_16
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    #@19
    .line 262
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@1b
    if-lez v0, :cond_23

    #@1d
    .line 263
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    #@1f
    add-int/lit8 v0, v0, -0x1

    #@21
    aput-object v2, v1, v0

    #@23
    .line 266
    :cond_23
    :goto_23
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    #@25
    if-lez v0, :cond_31

    #@27
    .line 267
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    aget v2, v1, v0

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    aput v2, v1, v0

    #@31
    :cond_31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
