.class final Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 1594
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1596
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 1597
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    #@6
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    #@9
    return-void

    #@a
    .line 1600
    :cond_a
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@c
    if-nez v0, :cond_12

    #@e
    .line 1602
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@11
    move-result v0

    #@12
    :cond_12
    const/16 v1, 0xd

    #@14
    if-ne v0, v1, :cond_1b

    #@16
    const/16 v0, 0x9

    #@18
    .line 1605
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@1a
    goto :goto_2c

    #@1b
    :cond_1b
    const/16 v1, 0xc

    #@1d
    if-ne v0, v1, :cond_24

    #@1f
    const/16 v0, 0x8

    #@21
    .line 1607
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@23
    goto :goto_2c

    #@24
    :cond_24
    const/16 v1, 0xe

    #@26
    if-ne v0, v1, :cond_2d

    #@28
    const/16 v0, 0xa

    #@2a
    .line 1609
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2c
    :goto_2c
    return-void

    #@2d
    .line 1611
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    const-string v2, "Expected a name but was "

    #@33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    .line 1612
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object p1

    #@4a
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0
.end method
