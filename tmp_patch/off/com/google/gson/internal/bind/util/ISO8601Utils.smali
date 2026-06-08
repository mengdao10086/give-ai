.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "UTC"

    #@2
    .line 30
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4

    #@0
    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-ge p1, v0, :cond_e

    #@6
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result p0

    #@a
    if-ne p0, p2, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 45
    sget-object v1, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    #@3
    invoke-static {p0, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3

    #@0
    .line 56
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 9

    #@0
    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@4
    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 69
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@a
    const/4 p0, 0x4

    #@b
    if-eqz p1, :cond_f

    #@d
    move v1, p0

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v1, 0x0

    #@10
    :goto_10
    const/16 v2, 0x13

    #@12
    add-int/2addr v2, v1

    #@13
    .line 74
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    #@16
    move-result v1

    #@17
    const/4 v3, 0x1

    #@18
    if-nez v1, :cond_1c

    #@1a
    move v1, v3

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v1, 0x6

    #@1d
    :goto_1d
    add-int/2addr v2, v1

    #@1e
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@23
    .line 77
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@26
    move-result v2

    #@27
    invoke-static {v1, v2, p0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@2a
    const/16 p0, 0x2d

    #@2c
    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    const/4 v2, 0x2

    #@30
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@33
    move-result v4

    #@34
    add-int/2addr v4, v3

    #@35
    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@38
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    const/4 v3, 0x5

    #@3c
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@3f
    move-result v3

    #@40
    invoke-static {v1, v3, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@43
    const/16 v3, 0x54

    #@45
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    const/16 v3, 0xb

    #@4a
    .line 83
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@4d
    move-result v3

    #@4e
    invoke-static {v1, v3, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@51
    const/16 v3, 0x3a

    #@53
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    const/16 v4, 0xc

    #@58
    .line 85
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@5b
    move-result v4

    #@5c
    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@5f
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    const/16 v4, 0xd

    #@64
    .line 87
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@67
    move-result v4

    #@68
    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@6b
    if-eqz p1, :cond_7c

    #@6d
    const/16 p1, 0x2e

    #@6f
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    const/16 p1, 0xe

    #@74
    .line 90
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    #@77
    move-result p1

    #@78
    const/4 v4, 0x3

    #@79
    invoke-static {v1, p1, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@7c
    .line 93
    :cond_7c
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@7f
    move-result-wide v4

    #@80
    invoke-virtual {p2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    #@83
    move-result p1

    #@84
    if-eqz p1, :cond_a9

    #@86
    const p2, 0xea60

    #@89
    .line 95
    div-int p2, p1, p2

    #@8b
    div-int/lit8 v0, p2, 0x3c

    #@8d
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@90
    move-result v0

    #@91
    .line 96
    rem-int/lit8 p2, p2, 0x3c

    #@93
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@96
    move-result p2

    #@97
    if-gez p1, :cond_9a

    #@99
    goto :goto_9c

    #@9a
    :cond_9a
    const/16 p0, 0x2b

    #@9c
    .line 97
    :goto_9c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9f
    .line 98
    invoke-static {v1, v0, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@a2
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a5
    .line 100
    invoke-static {v1, p2, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    #@a8
    goto :goto_ae

    #@a9
    :cond_a9
    const/16 p0, 0x5a

    #@ab
    .line 102
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ae
    .line 105
    :goto_ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object p0

    #@b2
    return-object p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 4

    #@0
    .line 345
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-ge p1, v0, :cond_17

    #@6
    .line 346
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    const/16 v1, 0x30

    #@c
    if-lt v0, v1, :cond_16

    #@e
    const/16 v1, 0x39

    #@10
    if-le v0, v1, :cond_13

    #@12
    goto :goto_16

    #@13
    :cond_13
    add-int/lit8 p1, p1, 0x1

    #@15
    goto :goto_0

    #@16
    :cond_16
    :goto_16
    return p1

    #@17
    .line 349
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1a
    move-result p0

    #@1b
    return p0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 4

    #@0
    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    sub-int/2addr p2, v0

    #@9
    :goto_9
    if-lez p2, :cond_13

    #@b
    const/16 v0, 0x30

    #@d
    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    add-int/lit8 p2, p2, -0x1

    #@12
    goto :goto_9

    #@13
    .line 338
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    move-object/from16 v1, p0

    #@2
    move-object/from16 v2, p1

    #@4
    const-string v0, "Mismatching time zone indicator: "

    #@6
    const-string v3, "GMT"

    #@8
    const-string v4, "Invalid time zone indicator \'"

    #@a
    .line 126
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v5

    #@e
    add-int/lit8 v6, v5, 0x4

    #@10
    .line 129
    invoke-static {v1, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    #@13
    move-result v5

    #@14
    const/16 v7, 0x2d

    #@16
    .line 130
    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_1e

    #@1c
    add-int/lit8 v6, v6, 0x1

    #@1e
    :cond_1e
    add-int/lit8 v8, v6, 0x2

    #@20
    .line 135
    invoke-static {v1, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    #@23
    move-result v6

    #@24
    .line 136
    invoke-static {v1, v8, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    #@27
    move-result v9

    #@28
    if-eqz v9, :cond_2c

    #@2a
    add-int/lit8 v8, v8, 0x1

    #@2c
    :cond_2c
    add-int/lit8 v9, v8, 0x2

    #@2e
    .line 141
    invoke-static {v1, v8, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    #@31
    move-result v8

    #@32
    const/16 v10, 0x54

    #@34
    .line 149
    invoke-static {v1, v9, v10}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    #@37
    move-result v10

    #@38
    const/4 v11, 0x1

    #@39
    if-nez v10, :cond_4f

    #@3b
    .line 151
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@3e
    move-result v12

    #@3f
    if-gt v12, v9, :cond_4f

    #@41
    .line 152
    new-instance v0, Ljava/util/GregorianCalendar;

    #@43
    sub-int/2addr v6, v11

    #@44
    invoke-direct {v0, v5, v6, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    #@47
    .line 154
    invoke-virtual {v2, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    #@4a
    .line 155
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@4d
    move-result-object v0

    #@4e
    return-object v0

    #@4f
    :cond_4f
    const/16 v12, 0x2b

    #@51
    const/16 v13, 0x5a

    #@53
    if-eqz v10, :cond_ca

    #@55
    add-int/lit8 v9, v9, 0x1

    #@57
    add-int/lit8 v10, v9, 0x2

    #@59
    .line 161
    invoke-static {v1, v9, v10}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    #@5c
    move-result v9

    #@5d
    const/16 v14, 0x3a

    #@5f
    .line 162
    invoke-static {v1, v10, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    #@62
    move-result v16

    #@63
    if-eqz v16, :cond_67

    #@65
    add-int/lit8 v10, v10, 0x1

    #@67
    :cond_67
    add-int/lit8 v15, v10, 0x2

    #@69
    .line 166
    invoke-static {v1, v10, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    #@6c
    move-result v10

    #@6d
    .line 167
    invoke-static {v1, v15, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    #@70
    move-result v14

    #@71
    if-eqz v14, :cond_75

    #@73
    add-int/lit8 v15, v15, 0x1

    #@75
    .line 171
    :cond_75
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@78
    move-result v14

    #@79
    if-le v14, v15, :cond_c7

    #@7b
    .line 172
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    #@7e
    move-result v14

    #@7f
    if-eq v14, v13, :cond_c7

    #@81
    if-eq v14, v12, :cond_c7

    #@83
    if-eq v14, v7, :cond_c7

    #@85
    add-int/lit8 v14, v15, 0x2

    #@87
    .line 174
    invoke-static {v1, v15, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    #@8a
    move-result v15

    #@8b
    const/16 v7, 0x3b

    #@8d
    if-le v15, v7, :cond_95

    #@8f
    const/16 v7, 0x3f

    #@91
    if-ge v15, v7, :cond_95

    #@93
    const/16 v15, 0x3b

    #@95
    :cond_95
    const/16 v7, 0x2e

    #@97
    .line 177
    invoke-static {v1, v14, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    #@9a
    move-result v7

    #@9b
    if-eqz v7, :cond_c3

    #@9d
    add-int/lit8 v14, v14, 0x1

    #@9f
    add-int/lit8 v7, v14, 0x1

    #@a1
    .line 179
    invoke-static {v1, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    #@a4
    move-result v7

    #@a5
    add-int/lit8 v12, v14, 0x3

    #@a7
    .line 180
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    #@aa
    move-result v12

    #@ab
    .line 181
    invoke-static {v1, v14, v12}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    #@ae
    move-result v17

    #@af
    sub-int/2addr v12, v14

    #@b0
    if-eq v12, v11, :cond_b9

    #@b2
    const/4 v14, 0x2

    #@b3
    if-eq v12, v14, :cond_b6

    #@b5
    goto :goto_bb

    #@b6
    :cond_b6
    mul-int/lit8 v17, v17, 0xa

    #@b8
    goto :goto_bb

    #@b9
    :cond_b9
    mul-int/lit8 v17, v17, 0x64

    #@bb
    :goto_bb
    move/from16 v12, v17

    #@bd
    move/from16 v18, v9

    #@bf
    move v9, v7

    #@c0
    move/from16 v7, v18

    #@c2
    goto :goto_ce

    #@c3
    :cond_c3
    move v7, v9

    #@c4
    move v9, v14

    #@c5
    const/4 v12, 0x0

    #@c6
    goto :goto_ce

    #@c7
    :cond_c7
    move v7, v9

    #@c8
    move v9, v15

    #@c9
    goto :goto_cc

    #@ca
    :cond_ca
    const/4 v7, 0x0

    #@cb
    const/4 v10, 0x0

    #@cc
    :goto_cc
    const/4 v12, 0x0

    #@cd
    const/4 v15, 0x0

    #@ce
    .line 200
    :goto_ce
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@d1
    move-result v14

    #@d2
    if-le v14, v9, :cond_1b8

    #@d4
    .line 205
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    #@d7
    move-result v14

    #@d8
    const/4 v11, 0x5

    #@d9
    if-ne v14, v13, :cond_e1

    #@db
    .line 208
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    #@dd
    const/4 v3, 0x1

    #@de
    add-int/2addr v9, v3

    #@df
    goto/16 :goto_186

    #@e1
    :cond_e1
    const/16 v13, 0x2b

    #@e3
    if-eq v14, v13, :cond_103

    #@e5
    const/16 v13, 0x2d

    #@e7
    if-ne v14, v13, :cond_ea

    #@e9
    goto :goto_103

    #@ea
    .line 245
    :cond_ea
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@ec
    new-instance v3, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f1
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v3

    #@f5
    const-string v4, "\'"

    #@f7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v3

    #@fb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v3

    #@ff
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@102
    throw v0

    #@103
    .line 211
    :cond_103
    :goto_103
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@106
    move-result-object v4

    #@107
    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@10a
    move-result v13

    #@10b
    if-lt v13, v11, :cond_10e

    #@10d
    goto :goto_121

    #@10e
    :cond_10e
    new-instance v13, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v4

    #@117
    const-string v13, "00"

    #@119
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v4

    #@11d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v4

    #@121
    .line 216
    :goto_121
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@124
    move-result v13

    #@125
    add-int/2addr v9, v13

    #@126
    const-string v13, "+0000"

    #@128
    .line 218
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12b
    move-result v13

    #@12c
    if-nez v13, :cond_184

    #@12e
    const-string v13, "+00:00"

    #@130
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v13

    #@134
    if-eqz v13, :cond_137

    #@136
    goto :goto_184

    #@137
    .line 225
    :cond_137
    new-instance v13, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v3

    #@140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v3

    #@144
    .line 228
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@147
    move-result-object v4

    #@148
    .line 230
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@14b
    move-result-object v13

    #@14c
    .line 231
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14f
    move-result v14

    #@150
    if-nez v14, :cond_182

    #@152
    const-string v14, ":"

    #@154
    const-string v11, ""

    #@156
    .line 237
    invoke-virtual {v13, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@159
    move-result-object v11

    #@15a
    .line 238
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15d
    move-result v11

    #@15e
    if-eqz v11, :cond_161

    #@160
    goto :goto_182

    #@161
    .line 239
    :cond_161
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@163
    new-instance v6, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@168
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v0

    #@16c
    const-string v3, " given, resolves to "

    #@16e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v0

    #@172
    .line 240
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@175
    move-result-object v3

    #@176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v0

    #@17a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v0

    #@17e
    invoke-direct {v5, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@181
    throw v5

    #@182
    :cond_182
    :goto_182
    move-object v0, v4

    #@183
    goto :goto_186

    #@184
    .line 219
    :cond_184
    :goto_184
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    #@186
    .line 248
    :goto_186
    new-instance v3, Ljava/util/GregorianCalendar;

    #@188
    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@18b
    const/4 v0, 0x0

    #@18c
    .line 249
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setLenient(Z)V

    #@18f
    const/4 v0, 0x1

    #@190
    .line 250
    invoke-virtual {v3, v0, v5}, Ljava/util/Calendar;->set(II)V

    #@193
    sub-int/2addr v6, v0

    #@194
    const/4 v0, 0x2

    #@195
    .line 251
    invoke-virtual {v3, v0, v6}, Ljava/util/Calendar;->set(II)V

    #@198
    const/4 v0, 0x5

    #@199
    .line 252
    invoke-virtual {v3, v0, v8}, Ljava/util/Calendar;->set(II)V

    #@19c
    const/16 v0, 0xb

    #@19e
    .line 253
    invoke-virtual {v3, v0, v7}, Ljava/util/Calendar;->set(II)V

    #@1a1
    const/16 v0, 0xc

    #@1a3
    .line 254
    invoke-virtual {v3, v0, v10}, Ljava/util/Calendar;->set(II)V

    #@1a6
    const/16 v0, 0xd

    #@1a8
    .line 255
    invoke-virtual {v3, v0, v15}, Ljava/util/Calendar;->set(II)V

    #@1ab
    const/16 v0, 0xe

    #@1ad
    .line 256
    invoke-virtual {v3, v0, v12}, Ljava/util/Calendar;->set(II)V

    #@1b0
    .line 258
    invoke-virtual {v2, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1b3
    .line 259
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1b6
    move-result-object v0

    #@1b7
    return-object v0

    #@1b8
    .line 201
    :cond_1b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1ba
    const-string v3, "No time zone indicator"

    #@1bc
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1bf
    throw v0
    :try_end_1c0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_1c0} :catch_1c4
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_1c0} :catch_1c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1c0} :catch_1c0

    #@1c0
    :catch_1c0
    move-exception v0

    #@1c1
    goto :goto_1c5

    #@1c2
    :catch_1c2
    move-exception v0

    #@1c3
    goto :goto_1c5

    #@1c4
    :catch_1c4
    move-exception v0

    #@1c5
    :goto_1c5
    if-nez v1, :cond_1c9

    #@1c7
    const/4 v1, 0x0

    #@1c8
    goto :goto_1de

    #@1c9
    .line 269
    :cond_1c9
    new-instance v3, Ljava/lang/StringBuilder;

    #@1cb
    const-string v4, "\""

    #@1cd
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v1

    #@1d4
    const/16 v3, 0x22

    #@1d6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v1

    #@1da
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v1

    #@1de
    .line 270
    :goto_1de
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@1e1
    move-result-object v3

    #@1e2
    if-eqz v3, :cond_1ea

    #@1e4
    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@1e7
    move-result v4

    #@1e8
    if-eqz v4, :cond_207

    #@1ea
    .line 272
    :cond_1ea
    new-instance v3, Ljava/lang/StringBuilder;

    #@1ec
    const-string v4, "("

    #@1ee
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1f4
    move-result-object v4

    #@1f5
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f8
    move-result-object v4

    #@1f9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v3

    #@1fd
    const-string v4, ")"

    #@1ff
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v3

    #@203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@206
    move-result-object v3

    #@207
    .line 274
    :cond_207
    new-instance v4, Ljava/text/ParseException;

    #@209
    new-instance v5, Ljava/lang/StringBuilder;

    #@20b
    const-string v6, "Failed to parse date ["

    #@20d
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@210
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v1

    #@214
    const-string v5, "]: "

    #@216
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v1

    #@21a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v1

    #@21e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@221
    move-result-object v1

    #@222
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    #@225
    move-result v2

    #@226
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@229
    .line 275
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@22c
    .line 276
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    if-ltz p1, :cond_63

    #@2
    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-gt p2, v0, :cond_63

    #@8
    if-gt p1, p2, :cond_63

    #@a
    const-string v0, "Invalid number: "

    #@c
    const/16 v1, 0xa

    #@e
    if-ge p1, p2, :cond_35

    #@10
    add-int/lit8 v2, p1, 0x1

    #@12
    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v3

    #@16
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    #@19
    move-result v3

    #@1a
    if-ltz v3, :cond_1e

    #@1c
    neg-int v3, v3

    #@1d
    goto :goto_37

    #@1e
    .line 311
    :cond_1e
    new-instance v1, Ljava/lang/NumberFormatException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object p0

    #@29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p0

    #@2d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p0

    #@31
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    :cond_35
    const/4 v3, 0x0

    #@36
    move v2, p1

    #@37
    :goto_37
    if-ge v2, p2, :cond_61

    #@39
    add-int/lit8 v4, v2, 0x1

    #@3b
    .line 316
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v2

    #@3f
    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    #@42
    move-result v2

    #@43
    if-ltz v2, :cond_4a

    #@45
    mul-int/lit8 v3, v3, 0xa

    #@47
    sub-int/2addr v3, v2

    #@48
    move v2, v4

    #@49
    goto :goto_37

    #@4a
    .line 318
    :cond_4a
    new-instance v1, Ljava/lang/NumberFormatException;

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@51
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object p0

    #@55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object p0

    #@59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object p0

    #@5d
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@60
    throw v1

    #@61
    :cond_61
    neg-int p0, v3

    #@62
    return p0

    #@63
    .line 302
    :cond_63
    new-instance p1, Ljava/lang/NumberFormatException;

    #@65
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@68
    throw p1
.end method
