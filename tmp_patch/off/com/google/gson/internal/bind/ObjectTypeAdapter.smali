.class public final Lcom/google/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 38
    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    #@2
    invoke-direct {v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    #@7
    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;)V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    #@5
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    .line 56
    sget-object v1, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@6
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@9
    move-result v0

    #@a
    aget v0, v1, v0

    #@c
    packed-switch v0, :pswitch_data_6a

    #@f
    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    #@11
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@14
    throw p1

    #@15
    .line 85
    :pswitch_15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@18
    const/4 p1, 0x0

    #@19
    return-object p1

    #@1a
    .line 82
    :pswitch_1a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    #@1d
    move-result p1

    #@1e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@21
    move-result-object p1

    #@22
    return-object p1

    #@23
    .line 79
    :pswitch_23
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    #@26
    move-result-wide v0

    #@27
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2a
    move-result-object p1

    #@2b
    return-object p1

    #@2c
    .line 76
    :pswitch_2c
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    return-object p1

    #@31
    .line 67
    :pswitch_31
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    #@33
    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    #@36
    .line 68
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    #@39
    .line 69
    :goto_39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_4b

    #@3f
    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    goto :goto_39

    #@4b
    .line 72
    :cond_4b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    #@4e
    return-object v0

    #@4f
    .line 58
    :pswitch_4f
    new-instance v0, Ljava/util/ArrayList;

    #@51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@54
    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    #@57
    .line 60
    :goto_57
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_65

    #@5d
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    #@60
    move-result-object v1

    #@61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@64
    goto :goto_57

    #@65
    .line 63
    :cond_65
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    #@68
    return-object v0

    #@69
    nop

    #@6a
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_31
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p2, :cond_6

    #@2
    .line 96
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    return-void

    #@6
    .line 100
    :cond_6
    iget-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    #@8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    #@f
    move-result-object v0

    #@10
    .line 101
    instance-of v1, v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    #@12
    if-eqz v1, :cond_1b

    #@14
    .line 102
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    #@17
    .line 103
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    #@1a
    return-void

    #@1b
    .line 107
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    #@1e
    return-void
.end method
