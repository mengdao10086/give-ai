.class final Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/google/gson/TypeAdapter;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/TypeAdapter<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/TypeAdapter<",
            "TV;>;",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .line 152
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    #@2
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@5
    .line 153
    new-instance p1, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    #@7
    invoke-direct {p1, p2, p4, p3}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    #@a
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@c
    .line 155
    new-instance p1, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    #@e
    invoke-direct {p1, p2, p6, p5}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    #@11
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@13
    .line 157
    iput-object p7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    #@15
    return-void
.end method

.method private keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .registers 3

    #@0
    .line 246
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_39

    #@6
    .line 247
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    #@9
    move-result-object p1

    #@a
    .line 248
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_19

    #@10
    .line 249
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@13
    move-result-object p1

    #@14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    return-object p1

    #@19
    .line 250
    :cond_19
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_28

    #@1f
    .line 251
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    #@22
    move-result p1

    #@23
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    return-object p1

    #@28
    .line 252
    :cond_28
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_33

    #@2e
    .line 253
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    return-object p1

    #@33
    .line 255
    :cond_33
    new-instance p1, Ljava/lang/AssertionError;

    #@35
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    #@38
    throw p1

    #@39
    .line 257
    :cond_39
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    #@3c
    move-result p1

    #@3d
    if-eqz p1, :cond_42

    #@3f
    const-string p1, "null"

    #@41
    return-object p1

    #@42
    .line 260
    :cond_42
    new-instance p1, Ljava/lang/AssertionError;

    #@44
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    #@47
    throw p1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 145
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 161
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 162
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@6
    if-ne v0, v1, :cond_d

    #@8
    .line 163
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@b
    const/4 p1, 0x0

    #@c
    return-object p1

    #@d
    .line 167
    :cond_d
    iget-object v1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    #@f
    invoke-interface {v1}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/util/Map;

    #@15
    .line 169
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@17
    const-string v3, "duplicate key: "

    #@19
    if-ne v0, v2, :cond_54

    #@1b
    .line 170
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    #@1e
    .line 171
    :goto_1e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_50

    #@24
    .line 172
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    #@27
    .line 173
    iget-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@29
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    .line 174
    iget-object v2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@2f
    invoke-virtual {v2, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    .line 175
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    if-nez v2, :cond_3d

    #@39
    .line 179
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    #@3c
    goto :goto_1e

    #@3d
    .line 177
    :cond_3d
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    #@4f
    throw p1

    #@50
    .line 181
    :cond_50
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    #@53
    goto :goto_8b

    #@54
    .line 183
    :cond_54
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    #@57
    .line 184
    :goto_57
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_88

    #@5d
    .line 185
    sget-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    #@5f
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V

    #@62
    .line 186
    iget-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@64
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    .line 187
    iget-object v2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@6a
    invoke-virtual {v2, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    .line 188
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    if-nez v2, :cond_75

    #@74
    goto :goto_57

    #@75
    .line 190
    :cond_75
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    #@77
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    #@87
    throw p1

    #@88
    .line 193
    :cond_88
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    #@8b
    :goto_8b
    return-object v1
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 145
    check-cast p2, Ljava/util/Map;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p2, :cond_6

    #@2
    .line 200
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    return-void

    #@6
    .line 204
    :cond_6
    iget-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    #@8
    iget-boolean v0, v0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    #@a
    if-nez v0, :cond_3c

    #@c
    .line 205
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    #@f
    .line 206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@12
    move-result-object p2

    #@13
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object p2

    #@17
    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_38

    #@1d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/Map$Entry;

    #@23
    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@2e
    .line 208
    iget-object v1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    #@37
    goto :goto_17

    #@38
    .line 210
    :cond_38
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    #@3b
    return-void

    #@3c
    .line 215
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@41
    move-result v1

    #@42
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@45
    .line 217
    new-instance v1, Ljava/util/ArrayList;

    #@47
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@4a
    move-result v2

    #@4b
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@4e
    .line 218
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@51
    move-result-object p2

    #@52
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object p2

    #@56
    const/4 v2, 0x0

    #@57
    move v3, v2

    #@58
    :goto_58
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_8a

    #@5e
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v4

    #@62
    check-cast v4, Ljava/util/Map$Entry;

    #@64
    .line 219
    iget-object v5, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@66
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v5, v6}, Lcom/google/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    #@6d
    move-result-object v5

    #@6e
    .line 220
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    .line 221
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@74
    move-result-object v4

    #@75
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@78
    .line 222
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    #@7b
    move-result v4

    #@7c
    if-nez v4, :cond_87

    #@7e
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    #@81
    move-result v4

    #@82
    if-eqz v4, :cond_85

    #@84
    goto :goto_87

    #@85
    :cond_85
    move v4, v2

    #@86
    goto :goto_88

    #@87
    :cond_87
    :goto_87
    const/4 v4, 0x1

    #@88
    :goto_88
    or-int/2addr v3, v4

    #@89
    goto :goto_58

    #@8a
    :cond_8a
    if-eqz v3, :cond_b4

    #@8c
    .line 226
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    #@8f
    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@92
    move-result p2

    #@93
    :goto_93
    if-ge v2, p2, :cond_b0

    #@95
    .line 228
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    #@98
    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9b
    move-result-object v3

    #@9c
    check-cast v3, Lcom/google/gson/JsonElement;

    #@9e
    invoke-static {v3, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    #@a1
    .line 230
    iget-object v3, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@a3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v3, p1, v4}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    #@aa
    .line 231
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    #@ad
    add-int/lit8 v2, v2, 0x1

    #@af
    goto :goto_93

    #@b0
    .line 233
    :cond_b0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    #@b3
    goto :goto_d9

    #@b4
    .line 235
    :cond_b4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    #@b7
    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@ba
    move-result p2

    #@bb
    :goto_bb
    if-ge v2, p2, :cond_d6

    #@bd
    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c0
    move-result-object v3

    #@c1
    check-cast v3, Lcom/google/gson/JsonElement;

    #@c3
    .line 238
    invoke-direct {p0, v3}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    #@c6
    move-result-object v3

    #@c7
    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@ca
    .line 239
    iget-object v3, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;

    #@cc
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {v3, p1, v4}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    #@d3
    add-int/lit8 v2, v2, 0x1

    #@d5
    goto :goto_bb

    #@d6
    .line 241
    :cond_d6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    #@d9
    :goto_d9
    return-void
.end method
