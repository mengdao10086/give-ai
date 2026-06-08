.class final Lcom/google/gson/Gson$5;
.super Lcom/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/Gson;->atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lcom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/google/gson/TypeAdapter;)V
    .registers 2

    #@0
    .line 400
    iput-object p1, p0, Lcom/google/gson/Gson$5;->val$longAdapter:Lcom/google/gson/TypeAdapter;

    #@2
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@5
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
    .line 400
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson$5;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 409
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 410
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    #@8
    .line 411
    :goto_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_22

    #@e
    .line 412
    iget-object v1, p0, Lcom/google/gson/Gson$5;->val$longAdapter:Lcom/google/gson/TypeAdapter;

    #@10
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/Number;

    #@16
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    #@19
    move-result-wide v1

    #@1a
    .line 413
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_8

    #@22
    .line 415
    :cond_22
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    #@25
    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@28
    move-result p1

    #@29
    .line 417
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    #@2b
    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    #@2e
    const/4 v2, 0x0

    #@2f
    :goto_2f
    if-ge v2, p1, :cond_41

    #@31
    .line 419
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/lang/Long;

    #@37
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@3a
    move-result-wide v3

    #@3b
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    #@3e
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_2f

    #@41
    :cond_41
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
    .line 400
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson$5;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 402
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    #@3
    .line 403
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_8
    if-ge v1, v0, :cond_1a

    #@a
    .line 404
    iget-object v2, p0, Lcom/google/gson/Gson$5;->val$longAdapter:Lcom/google/gson/TypeAdapter;

    #@c
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    #@f
    move-result-wide v3

    #@10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, p1, v3}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_8

    #@1a
    .line 406
    :cond_1a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    #@1d
    return-void
.end method
