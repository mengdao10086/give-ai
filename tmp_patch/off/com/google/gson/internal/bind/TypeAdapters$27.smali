.class final Lcom/google/gson/internal/bind/TypeAdapters$27;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 593
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
    .line 593
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$27;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 603
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@6
    if-ne v0, v1, :cond_d

    #@8
    .line 604
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@b
    const/4 p1, 0x0

    #@c
    return-object p1

    #@d
    .line 607
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    #@10
    const/4 v0, 0x0

    #@11
    move v2, v0

    #@12
    move v3, v2

    #@13
    move v4, v3

    #@14
    move v5, v4

    #@15
    move v6, v5

    #@16
    move v7, v6

    #@17
    .line 614
    :cond_17
    :goto_17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@1a
    move-result-object v0

    #@1b
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@1d
    if-eq v0, v1, :cond_63

    #@1f
    .line 615
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 616
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    #@26
    move-result v1

    #@27
    const-string v8, "year"

    #@29
    .line 617
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_31

    #@2f
    move v2, v1

    #@30
    goto :goto_17

    #@31
    :cond_31
    const-string v8, "month"

    #@33
    .line 619
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v8

    #@37
    if-eqz v8, :cond_3b

    #@39
    move v3, v1

    #@3a
    goto :goto_17

    #@3b
    :cond_3b
    const-string v8, "dayOfMonth"

    #@3d
    .line 621
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_45

    #@43
    move v4, v1

    #@44
    goto :goto_17

    #@45
    :cond_45
    const-string v8, "hourOfDay"

    #@47
    .line 623
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v8

    #@4b
    if-eqz v8, :cond_4f

    #@4d
    move v5, v1

    #@4e
    goto :goto_17

    #@4f
    :cond_4f
    const-string v8, "minute"

    #@51
    .line 625
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v8

    #@55
    if-eqz v8, :cond_59

    #@57
    move v6, v1

    #@58
    goto :goto_17

    #@59
    :cond_59
    const-string v8, "second"

    #@5b
    .line 627
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_17

    #@61
    move v7, v1

    #@62
    goto :goto_17

    #@63
    .line 631
    :cond_63
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    #@66
    .line 632
    new-instance p1, Ljava/util/GregorianCalendar;

    #@68
    move-object v1, p1

    #@69
    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    #@6c
    return-object p1
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 593
    check-cast p2, Ljava/util/Calendar;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$27;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p2, :cond_6

    #@2
    .line 638
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    return-void

    #@6
    .line 641
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    #@9
    const-string v0, "year"

    #@b
    .line 642
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@e
    const/4 v0, 0x1

    #@f
    .line 643
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    #@12
    move-result v0

    #@13
    int-to-long v0, v0

    #@14
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@17
    const-string v0, "month"

    #@19
    .line 644
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@1c
    const/4 v0, 0x2

    #@1d
    .line 645
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v0

    #@21
    int-to-long v0, v0

    #@22
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@25
    const-string v0, "dayOfMonth"

    #@27
    .line 646
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@2a
    const/4 v0, 0x5

    #@2b
    .line 647
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    #@2e
    move-result v0

    #@2f
    int-to-long v0, v0

    #@30
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@33
    const-string v0, "hourOfDay"

    #@35
    .line 648
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@38
    const/16 v0, 0xb

    #@3a
    .line 649
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    #@3d
    move-result v0

    #@3e
    int-to-long v0, v0

    #@3f
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@42
    const-string v0, "minute"

    #@44
    .line 650
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@47
    const/16 v0, 0xc

    #@49
    .line 651
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    #@4c
    move-result v0

    #@4d
    int-to-long v0, v0

    #@4e
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@51
    const-string v0, "second"

    #@53
    .line 652
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@56
    const/16 v0, 0xd

    #@58
    .line 653
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    #@5b
    move-result p2

    #@5c
    int-to-long v0, p2

    #@5d
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    #@60
    .line 654
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    #@63
    return-void
.end method
