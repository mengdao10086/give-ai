.class final Lcom/google/gson/internal/bind/TypeAdapters$22;
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
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 502
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
    .line 502
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$22;->read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URI;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URI;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 505
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@6
    const/4 v2, 0x0

    #@7
    if-ne v0, v1, :cond_d

    #@9
    .line 506
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@c
    return-object v2

    #@d
    .line 510
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    const-string v0, "null"

    #@13
    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1a

    #@19
    goto :goto_1f

    #@1a
    :cond_1a
    new-instance v2, Ljava/net/URI;

    #@1c
    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_1f} :catch_20

    #@1f
    :goto_1f
    return-object v2

    #@20
    :catch_20
    move-exception p1

    #@21
    .line 513
    new-instance v0, Lcom/google/gson/JsonIOException;

    #@23
    invoke-direct {v0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 502
    check-cast p2, Ljava/net/URI;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$22;->write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URI;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URI;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p2, :cond_4

    #@2
    const/4 p2, 0x0

    #@3
    goto :goto_8

    #@4
    .line 518
    :cond_4
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    :goto_8
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@b
    return-void
.end method
