.class final Lcom/google/gson/internal/bind/TypeAdapters$14;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 345
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 348
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 349
    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@6
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@9
    move-result v2

    #@a
    aget v1, v1, v2

    #@c
    const/4 v2, 0x1

    #@d
    if-eq v1, v2, :cond_2f

    #@f
    const/4 v2, 0x3

    #@10
    if-eq v1, v2, :cond_2f

    #@12
    const/4 v2, 0x4

    #@13
    if-ne v1, v2, :cond_1a

    #@15
    .line 351
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@18
    const/4 p1, 0x0

    #@19
    return-object p1

    #@1a
    .line 357
    :cond_1a
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    const-string v2, "Expecting number, got: "

    #@20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    #@2e
    throw p1

    #@2f
    .line 355
    :cond_2f
    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    #@31
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@34
    move-result-object p1

    #@35
    invoke-direct {v0, p1}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    #@38
    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 345
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$14;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 362
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    #@3
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 345
    check-cast p2, Ljava/lang/Number;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$14;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    #@5
    return-void
.end method
