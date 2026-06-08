.class public final Lcom/google/gson/internal/bind/JsonTreeWriter;
.super Lcom/google/gson/stream/JsonWriter;
.source "JsonTreeWriter.java"


# static fields
.field private static final SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;

.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;


# instance fields
.field private pendingName:Ljava/lang/String;

.field private product:Lcom/google/gson/JsonElement;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 34
    new-instance v0, Lcom/google/gson/internal/bind/JsonTreeWriter$1;

    #@2
    invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonTreeWriter$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    #@7
    .line 46
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@9
    const-string v1, "closed"

    #@b
    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    #@e
    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 58
    sget-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    #@5
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@c
    .line 55
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@e
    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;

    #@10
    return-void
.end method

.method private peek()Lcom/google/gson/JsonElement;
    .registers 3

    #@0
    .line 72
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/gson/JsonElement;

    #@e
    return-object v0
.end method

.method private put(Lcom/google/gson/JsonElement;)V
    .registers 4

    #@0
    .line 76
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1f

    #@4
    .line 77
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_10

    #@a
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->getSerializeNulls()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1b

    #@10
    .line 78
    :cond_10
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/gson/JsonObject;

    #@16
    .line 79
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    .line 81
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    #@1e
    goto :goto_37

    #@1f
    .line 82
    :cond_1f
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2a

    #@27
    .line 83
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;

    #@29
    goto :goto_37

    #@2a
    .line 85
    :cond_2a
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    #@2d
    move-result-object v0

    #@2e
    .line 86
    instance-of v1, v0, Lcom/google/gson/JsonArray;

    #@30
    if-eqz v1, :cond_38

    #@32
    .line 87
    check-cast v0, Lcom/google/gson/JsonArray;

    #@34
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    #@37
    :goto_37
    return-void

    #@38
    .line 89
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    #@3a
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@3d
    throw p1
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 95
    new-instance v0, Lcom/google/gson/JsonArray;

    #@2
    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    #@5
    .line 96
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@8
    .line 97
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 114
    new-instance v0, Lcom/google/gson/JsonObject;

    #@2
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    #@5
    .line 115
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@8
    .line 116
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 203
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 206
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@a
    sget-object v1, Lcom/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f
    return-void

    #@10
    .line 204
    :cond_10
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string v1, "Incomplete document"

    #@14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 102
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_26

    #@8
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    #@a
    if-nez v0, :cond_26

    #@c
    .line 105
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    #@f
    move-result-object v0

    #@10
    .line 106
    instance-of v0, v0, Lcom/google/gson/JsonArray;

    #@12
    if-eqz v0, :cond_20

    #@14
    .line 107
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@16
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1f
    return-object p0

    #@20
    .line 110
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@25
    throw v0

    #@26
    .line 103
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@2b
    throw v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 121
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_26

    #@8
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    #@a
    if-nez v0, :cond_26

    #@c
    .line 124
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    #@f
    move-result-object v0

    #@10
    .line 125
    instance-of v0, v0, Lcom/google/gson/JsonObject;

    #@12
    if-eqz v0, :cond_20

    #@14
    .line 126
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@16
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1f
    return-object p0

    #@20
    .line 129
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@25
    throw v0

    #@26
    .line 122
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@2b
    throw v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    return-void
.end method

.method public get()Lcom/google/gson/JsonElement;
    .registers 4

    #@0
    .line 65
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 68
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;

    #@a
    return-object v0

    #@b
    .line 66
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "Expected one JSON element but was "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 133
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1d

    #@8
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1d

    #@c
    .line 136
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    #@f
    move-result-object v0

    #@10
    .line 137
    instance-of v0, v0, Lcom/google/gson/JsonObject;

    #@12
    if-eqz v0, :cond_17

    #@14
    .line 138
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    #@16
    return-object p0

    #@17
    .line 141
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@1c
    throw p1

    #@1d
    .line 134
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1f
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@22
    throw p1
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 153
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@5
    return-object p0
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 171
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_28

    #@6
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_13

    #@c
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_13

    #@12
    goto :goto_28

    #@13
    .line 172
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    const-string v2, "JSON forbids NaN and infinities: "

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 174
    :cond_28
    :goto_28
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@2a
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    #@31
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@34
    return-object p0
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 179
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    #@9
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@c
    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 164
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    .line 166
    :cond_7
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@9
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    #@c
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@f
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 185
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    .line 188
    :cond_7
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_33

    #@d
    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@10
    move-result-wide v0

    #@11
    .line 190
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1e

    #@17
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1e

    #@1d
    goto :goto_33

    #@1e
    .line 191
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    const-string v2, "JSON forbids NaN and infinities: "

    #@24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p1

    #@2b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p1

    #@2f
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 195
    :cond_33
    :goto_33
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@35
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    #@38
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@3b
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 146
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    .line 148
    :cond_7
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@9
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    #@c
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@f
    return-object p0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 158
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    #@9
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    #@c
    return-object p0
.end method
