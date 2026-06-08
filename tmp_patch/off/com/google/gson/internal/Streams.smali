.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@8
    throw v0
.end method

.method public static parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    #@0
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_24
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_3} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_f

    #@3
    const/4 v0, 0x0

    #@4
    .line 48
    :try_start_4
    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    #@6
    invoke-virtual {v1, p0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Lcom/google/gson/JsonElement;
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_4 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_f

    #@c
    return-object p0

    #@d
    :catch_d
    move-exception p0

    #@e
    goto :goto_26

    #@f
    :catch_f
    move-exception p0

    #@10
    .line 64
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    #@12
    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@15
    throw v0

    #@16
    :catch_16
    move-exception p0

    #@17
    .line 62
    new-instance v0, Lcom/google/gson/JsonIOException;

    #@19
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v0

    #@1d
    :catch_1d
    move-exception p0

    #@1e
    .line 60
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    #@20
    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v0

    #@24
    :catch_24
    move-exception p0

    #@25
    const/4 v0, 0x1

    #@26
    :goto_26
    if-eqz v0, :cond_2b

    #@28
    .line 55
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@2a
    return-object p0

    #@2b
    .line 58
    :cond_2b
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    #@2d
    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw v0
.end method

.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 72
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    #@2
    invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2

    #@0
    .line 76
    instance-of v0, p0, Ljava/io/Writer;

    #@2
    if-eqz v0, :cond_7

    #@4
    check-cast p0, Ljava/io/Writer;

    #@6
    goto :goto_d

    #@7
    :cond_7
    new-instance v0, Lcom/google/gson/internal/Streams$AppendableWriter;

    #@9
    invoke-direct {v0, p0}, Lcom/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    #@c
    move-object p0, v0

    #@d
    :goto_d
    return-object p0
.end method
