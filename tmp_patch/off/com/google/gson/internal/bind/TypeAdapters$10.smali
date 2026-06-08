.class final Lcom/google/gson/internal/bind/TypeAdapters$10;
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
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 265
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
    .line 265
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$10;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 267
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 268
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    #@8
    .line 269
    :goto_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_21

    #@e
    .line 271
    :try_start_e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    #@11
    move-result v1

    #@12
    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_19} :catch_1a

    #@19
    goto :goto_8

    #@1a
    :catch_1a
    move-exception p1

    #@1b
    .line 274
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    #@1d
    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@20
    throw v0

    #@21
    .line 277
    :cond_21
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    #@24
    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@27
    move-result p1

    #@28
    .line 279
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    #@2a
    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_2e
    if-ge v2, p1, :cond_40

    #@30
    .line 281
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Ljava/lang/Integer;

    #@36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v3

    #@3a
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    #@3d
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_2e

    #@40
    :cond_40
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
    .line 265
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$10;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 286
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    #@3
    .line 287
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_8
    if-ge v1, v0, :cond_15

    #@a
    .line 288
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    #@d
    move-result v2

    #@e
    int-to-long v2, v2

    #@f
    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_8

    #@15
    .line 290
    :cond_15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    #@18
    return-void
.end method
