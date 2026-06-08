.class final Lcom/google/gson/DefaultDateTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "DefaultDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIMPLE_NAME:Ljava/lang/String; = "DefaultDateTypeAdapter"


# instance fields
.field private final dateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final dateType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4

    #@0
    .line 87
    const-class v0, Ljava/util/Date;

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    #@5
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 56
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@a
    .line 57
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    #@10
    .line 58
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    const/4 v1, 0x2

    #@13
    invoke-static {v1, v1, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    #@16
    move-result-object p1

    #@17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1d
    move-result-object p1

    #@1e
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@20
    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@23
    move-result p1

    #@24
    if-nez p1, :cond_2d

    #@26
    .line 60
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    #@29
    move-result-object p1

    #@2a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 62
    :cond_2d
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    #@30
    move-result p1

    #@31
    if-eqz p1, :cond_3a

    #@33
    .line 63
    invoke-static {v1, v1}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    #@36
    move-result-object p1

    #@37
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    :cond_3a
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 75
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@a
    .line 76
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    #@10
    .line 77
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    invoke-static {p2, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@15
    move-result-object p1

    #@16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1c
    move-result-object p1

    #@1d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1f
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result p1

    #@23
    if-nez p1, :cond_2c

    #@25
    .line 79
    invoke-static {p2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@28
    move-result-object p1

    #@29
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 81
    :cond_2c
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    #@2f
    move-result p1

    #@30
    if-eqz p1, :cond_39

    #@32
    .line 82
    invoke-static {p2}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUSDateFormat(I)Ljava/text/DateFormat;

    #@35
    move-result-object p1

    #@36
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    :cond_39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 90
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@a
    .line 91
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    #@10
    .line 92
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    invoke-static {p2, p3, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    #@15
    move-result-object p1

    #@16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1c
    move-result-object p1

    #@1d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1f
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result p1

    #@23
    if-nez p1, :cond_2c

    #@25
    .line 94
    invoke-static {p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    #@28
    move-result-object p1

    #@29
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 96
    :cond_2c
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    #@2f
    move-result p1

    #@30
    if-eqz p1, :cond_39

    #@32
    .line 97
    invoke-static {p2, p3}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    #@35
    move-result-object p1

    #@36
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    :cond_39
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .line 67
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@a
    .line 68
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    #@10
    .line 69
    new-instance p1, Ljava/text/SimpleDateFormat;

    #@12
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@14
    invoke-direct {p1, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1d
    move-result-object p1

    #@1e
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@20
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@23
    move-result p1

    #@24
    if-nez p1, :cond_2e

    #@26
    .line 71
    new-instance p1, Ljava/text/SimpleDateFormat;

    #@28
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    :cond_2e
    return-void
.end method

.method private deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    #@0
    .line 142
    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@2
    monitor-enter v0

    #@3
    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    :catch_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1b

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/text/DateFormat;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2e

    #@15
    .line 145
    :try_start_15
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@18
    move-result-object p1
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_9
    .catchall {:try_start_15 .. :try_end_19} :catchall_2e

    #@19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_2e

    #@1a
    return-object p1

    #@1b
    .line 149
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/text/ParsePosition;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@21
    invoke-static {p1, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@24
    move-result-object p1
    :try_end_25
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_25} :catch_27
    .catchall {:try_start_1b .. :try_end_25} :catchall_2e

    #@25
    :try_start_25
    monitor-exit v0

    #@26
    return-object p1

    #@27
    :catch_27
    move-exception v1

    #@28
    .line 151
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    #@2a
    invoke-direct {v2, p1, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2

    #@2e
    :catchall_2e
    move-exception p1

    #@2f
    .line 153
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_2e

    #@30
    throw p1
.end method

.method private static verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    #@0
    .line 102
    const-class v0, Ljava/util/Date;

    #@2
    if-eq p0, v0, :cond_46

    #@4
    const-class v0, Ljava/sql/Date;

    #@6
    if-eq p0, v0, :cond_46

    #@8
    const-class v0, Ljava/sql/Timestamp;

    #@a
    if-ne p0, v0, :cond_d

    #@c
    goto :goto_46

    #@d
    .line 103
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    const-string v2, "Date type must be one of "

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    const-class v2, Ljava/util/Date;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string v2, ", "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-class v2, Ljava/sql/Timestamp;

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string v2, ", or "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-class v2, Ljava/sql/Date;

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string v2, " but was "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p0

    #@3e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p0

    #@42
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    :cond_46
    :goto_46
    return-object p0
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
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/gson/DefaultDateTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 124
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@6
    if-ne v0, v1, :cond_d

    #@8
    .line 125
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    #@b
    const/4 p1, 0x0

    #@c
    return-object p1

    #@d
    .line 128
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    invoke-direct {p0, p1}, Lcom/google/gson/DefaultDateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    #@14
    move-result-object p1

    #@15
    .line 129
    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    #@17
    const-class v1, Ljava/util/Date;

    #@19
    if-ne v0, v1, :cond_1c

    #@1b
    return-object p1

    #@1c
    .line 131
    :cond_1c
    const-class v1, Ljava/sql/Timestamp;

    #@1e
    if-ne v0, v1, :cond_2a

    #@20
    .line 132
    new-instance v0, Ljava/sql/Timestamp;

    #@22
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@25
    move-result-wide v1

    #@26
    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    #@29
    return-object v0

    #@2a
    .line 133
    :cond_2a
    const-class v1, Ljava/sql/Date;

    #@2c
    if-ne v0, v1, :cond_38

    #@2e
    .line 134
    new-instance v0, Ljava/sql/Date;

    #@30
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@33
    move-result-wide v1

    #@34
    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    #@37
    return-object v0

    #@38
    .line 137
    :cond_38
    new-instance p1, Ljava/lang/AssertionError;

    #@3a
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    #@3d
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 158
    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/text/DateFormat;

    #@9
    .line 159
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    #@b
    const/16 v2, 0x29

    #@d
    const-string v3, "DefaultDateTypeAdapter("

    #@f
    if-eqz v1, :cond_29

    #@11
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@18
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0

    #@29
    .line 162
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
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
    .line 44
    check-cast p2, Ljava/util/Date;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/DefaultDateTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V

    #@5
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p2, :cond_6

    #@2
    .line 113
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    return-void

    #@6
    .line 116
    :cond_6
    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@8
    monitor-enter v0

    #@9
    .line 117
    :try_start_9
    iget-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/text/DateFormat;

    #@12
    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@15
    move-result-object p2

    #@16
    .line 118
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@19
    .line 119
    monitor-exit v0

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception p1

    #@1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    #@1d
    throw p1
.end method
