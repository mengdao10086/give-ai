.class public final Lcom/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    #@0
    const-string v0, " to Json"

    #@2
    const-string v1, "Failed parsing JSON source: "

    #@4
    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    #@7
    move-result v2

    #@8
    const/4 v3, 0x1

    #@9
    .line 82
    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    #@c
    .line 84
    :try_start_c
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    #@f
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/StackOverflowError; {:try_start_c .. :try_end_10} :catch_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_10} :catch_16
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    #@10
    .line 90
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    #@13
    return-object v0

    #@14
    :catchall_14
    move-exception v0

    #@15
    goto :goto_46

    #@16
    :catch_16
    move-exception v3

    #@17
    .line 88
    :try_start_17
    new-instance v4, Lcom/google/gson/JsonParseException;

    #@19
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-direct {v4, v0, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v4

    #@2e
    :catch_2e
    move-exception v3

    #@2f
    .line 86
    new-instance v4, Lcom/google/gson/JsonParseException;

    #@31
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-direct {v4, v0, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    throw v4
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_14

    #@46
    .line 90
    :goto_46
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    #@49
    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    #@0
    .line 58
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    #@2
    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    #@5
    .line 59
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    #@8
    move-result-object p1

    #@9
    .line 60
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_20

    #@f
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@12
    move-result-object v0

    #@13
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    #@15
    if-ne v0, v1, :cond_18

    #@17
    goto :goto_20

    #@18
    .line 61
    :cond_18
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    #@1a
    const-string v0, "Did not consume the entire document."

    #@1c
    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    #@1f
    throw p1
    :try_end_20
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_20} :catch_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_28
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_21

    #@20
    :cond_20
    :goto_20
    return-object p1

    #@21
    :catch_21
    move-exception p1

    #@22
    .line 69
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    #@24
    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v0

    #@28
    :catch_28
    move-exception p1

    #@29
    .line 67
    new-instance v0, Lcom/google/gson/JsonIOException;

    #@2b
    invoke-direct {v0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v0

    #@2f
    :catch_2f
    move-exception p1

    #@30
    .line 65
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    #@32
    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v0
.end method

.method public parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    #@0
    .line 45
    new-instance v0, Ljava/io/StringReader;

    #@2
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method
