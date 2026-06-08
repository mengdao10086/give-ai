.class public final Lcom/google/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    #@5
    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    #@8
    iput-object v0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    #@a
    const/4 p1, 0x1

    #@b
    .line 70
    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    #@e
    .line 71
    new-instance p1, Ljava/lang/Object;

    #@10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object p1, p0, Lcom/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    #@15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 61
    new-instance v0, Ljava/io/StringReader;

    #@2
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Lcom/google/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    #@8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    #@0
    .line 103
    iget-object v0, p0, Lcom/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    #@5
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@8
    move-result-object v1

    #@9
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
    :try_end_b
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_3 .. :try_end_b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_14
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    #@b
    if-eq v1, v2, :cond_f

    #@d
    const/4 v1, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v1, 0x0

    #@10
    :goto_10
    :try_start_10
    monitor-exit v0

    #@11
    return v1

    #@12
    :catchall_12
    move-exception v1

    #@13
    goto :goto_22

    #@14
    :catch_14
    move-exception v1

    #@15
    .line 109
    new-instance v2, Lcom/google/gson/JsonIOException;

    #@17
    invoke-direct {v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2

    #@1b
    :catch_1b
    move-exception v1

    #@1c
    .line 107
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    #@1e
    invoke-direct {v2, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@21
    throw v2

    #@22
    .line 111
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_12

    #@23
    throw v1
.end method

.method public next()Lcom/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    #@0
    const-string v0, "Failed parsing JSON source to Json"

    #@2
    .line 82
    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->hasNext()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_2c

    #@8
    .line 87
    :try_start_8
    iget-object v1, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    #@a
    invoke-static {v1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    #@d
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_e} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_e} :catch_1e
    .catch Lcom/google/gson/JsonParseException; {:try_start_8 .. :try_end_e} :catch_f

    #@e
    return-object v0

    #@f
    :catch_f
    move-exception v0

    #@10
    .line 93
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    #@13
    move-result-object v1

    #@14
    instance-of v1, v1, Ljava/io/EOFException;

    #@16
    if-eqz v1, :cond_1d

    #@18
    new-instance v0, Ljava/util/NoSuchElementException;

    #@1a
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@1d
    :cond_1d
    throw v0

    #@1e
    :catch_1e
    move-exception v1

    #@1f
    .line 91
    new-instance v2, Lcom/google/gson/JsonParseException;

    #@21
    invoke-direct {v2, v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v2

    #@25
    :catch_25
    move-exception v1

    #@26
    .line 89
    new-instance v2, Lcom/google/gson/JsonParseException;

    #@28
    invoke-direct {v2, v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v2

    #@2c
    .line 83
    :cond_2c
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2e
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@31
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->next()Lcom/google/gson/JsonElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .registers 2

    #@0
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
