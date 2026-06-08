.class final Lcom/google/gson/internal/bind/TypeAdapters$2;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 84
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    return-void
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
    .line 84
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 86
    new-instance v0, Ljava/util/BitSet;

    #@2
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@5
    .line 87
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    #@8
    .line 89
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@b
    move-result-object v1

    #@c
    const/4 v2, 0x0

    #@d
    move v3, v2

    #@e
    .line 90
    :goto_e
    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@10
    if-eq v1, v4, :cond_71

    #@12
    .line 92
    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@14
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@17
    move-result v5

    #@18
    aget v4, v4, v5

    #@1a
    const/4 v5, 0x1

    #@1b
    if-eq v4, v5, :cond_5f

    #@1d
    const/4 v6, 0x2

    #@1e
    if-eq v4, v6, :cond_5a

    #@20
    const/4 v6, 0x3

    #@21
    if-ne v4, v6, :cond_45

    #@23
    .line 100
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 102
    :try_start_27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result v1
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2b} :catch_30

    #@2b
    if-eqz v1, :cond_2e

    #@2d
    goto :goto_65

    #@2e
    :cond_2e
    move v5, v2

    #@2f
    goto :goto_65

    #@30
    .line 104
    :catch_30
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    #@32
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    const-string v2, "Error: Expecting: bitset number value (1, 0), Found: "

    #@36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    #@44
    throw p1

    #@45
    .line 109
    :cond_45
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    #@47
    new-instance v0, Ljava/lang/StringBuilder;

    #@49
    const-string v2, "Invalid bitset value type: "

    #@4b
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    #@59
    throw p1

    #@5a
    .line 97
    :cond_5a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    #@5d
    move-result v5

    #@5e
    goto :goto_65

    #@5f
    .line 94
    :cond_5f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_2e

    #@65
    :goto_65
    if-eqz v5, :cond_6a

    #@67
    .line 112
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    #@6a
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    #@6c
    .line 115
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@6f
    move-result-object v1

    #@70
    goto :goto_e

    #@71
    .line 117
    :cond_71
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    #@74
    return-object v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 84
    check-cast p2, Ljava/util/BitSet;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 122
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    #@3
    .line 123
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_8
    if-ge v1, v0, :cond_15

    #@a
    .line 124
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    #@d
    move-result v2

    #@e
    int-to-long v2, v2

    #@f
    .line 125
    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_8

    #@15
    .line 127
    :cond_15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    #@18
    return-void
.end method
