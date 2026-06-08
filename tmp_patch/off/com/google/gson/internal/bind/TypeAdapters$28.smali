.class final Lcom/google/gson/internal/bind/TypeAdapters$28;
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
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 661
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
    .line 661
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 664
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
    .line 665
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@c
    return-object v2

    #@d
    .line 668
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    .line 669
    new-instance v0, Ljava/util/StringTokenizer;

    #@13
    const-string v1, "_"

    #@15
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 673
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    #@1b
    move-result p1

    #@1c
    if-eqz p1, :cond_23

    #@1e
    .line 674
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    goto :goto_24

    #@23
    :cond_23
    move-object p1, v2

    #@24
    .line 676
    :goto_24
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2f

    #@2a
    .line 677
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move-object v1, v2

    #@30
    .line 679
    :goto_30
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3a

    #@36
    .line 680
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    :cond_3a
    if-nez v1, :cond_44

    #@3c
    if-nez v2, :cond_44

    #@3e
    .line 683
    new-instance v0, Ljava/util/Locale;

    #@40
    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@43
    return-object v0

    #@44
    :cond_44
    if-nez v2, :cond_4c

    #@46
    .line 685
    new-instance v0, Ljava/util/Locale;

    #@48
    invoke-direct {v0, p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    return-object v0

    #@4c
    .line 687
    :cond_4c
    new-instance v0, Ljava/util/Locale;

    #@4e
    invoke-direct {v0, p1, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@51
    return-object v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 661
    check-cast p2, Ljava/util/Locale;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$28;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V
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
    .line 692
    :cond_4
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    :goto_8
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@b
    return-void
.end method
