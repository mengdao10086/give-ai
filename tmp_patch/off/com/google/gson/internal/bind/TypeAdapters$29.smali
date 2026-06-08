.class final Lcom/google/gson/internal/bind/TypeAdapters$29;
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
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 698
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 700
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    packed-switch v0, :pswitch_data_7a

    #@f
    .line 732
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw p1

    #@15
    .line 720
    :pswitch_15
    new-instance v0, Lcom/google/gson/JsonObject;

    #@17
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    #@1a
    .line 721
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    #@1d
    .line 722
    :goto_1d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2f

    #@23
    .line 723
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    #@2e
    goto :goto_1d

    #@2f
    .line 725
    :cond_2f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    #@32
    return-object v0

    #@33
    .line 712
    :pswitch_33
    new-instance v0, Lcom/google/gson/JsonArray;

    #@35
    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    #@38
    .line 713
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    #@3b
    .line 714
    :goto_3b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_49

    #@41
    .line 715
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    #@48
    goto :goto_3b

    #@49
    .line 717
    :cond_49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    #@4c
    return-object v0

    #@4d
    .line 709
    :pswitch_4d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@50
    .line 710
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@52
    return-object p1

    #@53
    .line 702
    :pswitch_53
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@58
    move-result-object p1

    #@59
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    #@5c
    return-object v0

    #@5d
    .line 707
    :pswitch_5d
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@5f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    #@62
    move-result p1

    #@63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@66
    move-result-object p1

    #@67
    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    #@6a
    return-object v0

    #@6b
    .line 704
    :pswitch_6b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@6e
    move-result-object p1

    #@6f
    .line 705
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    #@71
    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    #@73
    invoke-direct {v1, p1}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    #@76
    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    #@79
    return-object v0

    #@7a
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_5d
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_15
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 698
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p2, :cond_b1

    #@2
    .line 737
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    goto/16 :goto_b1

    #@a
    .line 739
    :cond_a
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_3b

    #@10
    .line 740
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    #@13
    move-result-object p2

    #@14
    .line 741
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_23

    #@1a
    .line 742
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    #@1d
    move-result-object p2

    #@1e
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    #@21
    goto/16 :goto_b4

    #@23
    .line 743
    :cond_23
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_32

    #@29
    .line 744
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    #@2c
    move-result p2

    #@2d
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    #@30
    goto/16 :goto_b4

    #@32
    .line 746
    :cond_32
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    #@35
    move-result-object p2

    #@36
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@39
    goto/16 :goto_b4

    #@3b
    .line 749
    :cond_3b
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_60

    #@41
    .line 750
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    #@44
    .line 751
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    #@47
    move-result-object p2

    #@48
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object p2

    #@4c
    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_5c

    #@52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/google/gson/JsonElement;

    #@58
    .line 752
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    #@5b
    goto :goto_4c

    #@5c
    .line 754
    :cond_5c
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    #@5f
    goto :goto_b4

    #@60
    .line 756
    :cond_60
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_98

    #@66
    .line 757
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    #@69
    .line 758
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    #@6c
    move-result-object p2

    #@6d
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    #@70
    move-result-object p2

    #@71
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object p2

    #@75
    :goto_75
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_94

    #@7b
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Ljava/util/Map$Entry;

    #@81
    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@84
    move-result-object v1

    #@85
    check-cast v1, Ljava/lang/String;

    #@87
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@8a
    .line 760
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Lcom/google/gson/JsonElement;

    #@90
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    #@93
    goto :goto_75

    #@94
    .line 762
    :cond_94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    #@97
    goto :goto_b4

    #@98
    .line 765
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9a
    new-instance v0, Ljava/lang/StringBuilder;

    #@9c
    const-string v1, "Couldn\'t write "

    #@9e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a4
    move-result-object p2

    #@a5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object p2

    #@a9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object p2

    #@ad
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b0
    throw p1

    #@b1
    .line 738
    :cond_b1
    :goto_b1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@b4
    :goto_b4
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
    .line 698
    check-cast p2, Lcom/google/gson/JsonElement;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    #@5
    return-void
.end method
