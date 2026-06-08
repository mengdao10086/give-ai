.class public final Lcom/google/gson/internal/bind/TimeTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "TimeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 41
    new-instance v0, Lcom/google/gson/internal/bind/TimeTypeAdapter$1;

    #@2
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TimeTypeAdapter$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 40
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5
    const-string v1, "hh:mm:ss a"

    #@7
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@a
    iput-object v0, p0, Lcom/google/gson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    #@c
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
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TimeTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Time;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public declared-synchronized read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Time;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    .line 51
    :try_start_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@7
    if-ne v0, v1, :cond_f

    #@9
    .line 52
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    #@c
    .line 53
    monitor-exit p0

    #@d
    const/4 p1, 0x0

    #@e
    return-object p1

    #@f
    .line 56
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/gson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    #@11
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@18
    move-result-object p1

    #@19
    .line 57
    new-instance v0, Ljava/sql/Time;

    #@1b
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@1e
    move-result-wide v1

    #@1f
    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_24
    .catchall {:try_start_f .. :try_end_22} :catchall_2b

    #@22
    monitor-exit p0

    #@23
    return-object v0

    #@24
    :catch_24
    move-exception p1

    #@25
    .line 59
    :try_start_25
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    #@27
    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    #@2b
    :catchall_2b
    move-exception p1

    #@2c
    monitor-exit p0

    #@2d
    throw p1
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 40
    check-cast p2, Ljava/sql/Time;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TimeTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Time;)V

    #@5
    return-void
.end method

.method public declared-synchronized write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Time;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    if-nez p2, :cond_5

    #@3
    const/4 p2, 0x0

    #@4
    goto :goto_b

    #@5
    .line 64
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/gson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    #@7
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@a
    move-result-object p2

    #@b
    :goto_b
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    #@e
    .line 65
    monitor-exit p0

    #@f
    return-void

    #@10
    :catchall_10
    move-exception p1

    #@11
    monitor-exit p0

    #@12
    throw p1
.end method
