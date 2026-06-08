.class synthetic Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/ObjectTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$gson$stream$JsonToken:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 56
    invoke-static {}, Lcom/google/gson/stream/JsonToken;->values()[Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@9
    :try_start_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@b
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x1

    #@10
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    #@12
    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@14
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@16
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@19
    move-result v1

    #@1a
    const/4 v2, 0x2

    #@1b
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    #@1d
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@1f
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@21
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@24
    move-result v1

    #@25
    const/4 v2, 0x3

    #@26
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    #@28
    :catch_28
    :try_start_28
    sget-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@2a
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@2c
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/4 v2, 0x4

    #@31
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    #@33
    :catch_33
    :try_start_33
    sget-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@35
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    #@37
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@3a
    move-result v1

    #@3b
    const/4 v2, 0x5

    #@3c
    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    #@3e
    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    #@40
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@42
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    #@45
    move-result v1

    #@46
    const/4 v2, 0x6

    #@47
    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    #@49
    :catch_49
    return-void
.end method
