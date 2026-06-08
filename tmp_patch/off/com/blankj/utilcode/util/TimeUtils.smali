.class public final Lcom/blankj/utilcode/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final CHINESE_ZODIAC:[Ljava/lang/String;

.field private static final SDF_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ZODIAC:[Ljava/lang/String;

.field private static final ZODIAC_FLAGS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    #@0
    .line 31
    new-instance v0, Lcom/blankj/utilcode/util/TimeUtils$1;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/TimeUtils$1;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->SDF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    #@7
    const-string v1, "\u7334"

    #@9
    const-string v2, "\u9e21"

    #@b
    const-string v3, "\u72d7"

    #@d
    const-string v4, "\u732a"

    #@f
    const-string v5, "\u9f20"

    #@11
    const-string v6, "\u725b"

    #@13
    const-string v7, "\u864e"

    #@15
    const-string v8, "\u5154"

    #@17
    const-string v9, "\u9f99"

    #@19
    const-string v10, "\u86c7"

    #@1b
    const-string v11, "\u9a6c"

    #@1d
    const-string v12, "\u7f8a"

    #@1f
    .line 1484
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    #@25
    const/16 v0, 0xc

    #@27
    new-array v0, v0, [I

    #@29
    .line 1541
    fill-array-data v0, :array_4e

    #@2c
    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC_FLAGS:[I

    #@2e
    const-string v1, "\u6c34\u74f6\u5ea7"

    #@30
    const-string v2, "\u53cc\u9c7c\u5ea7"

    #@32
    const-string v3, "\u767d\u7f8a\u5ea7"

    #@34
    const-string v4, "\u91d1\u725b\u5ea7"

    #@36
    const-string v5, "\u53cc\u5b50\u5ea7"

    #@38
    const-string v6, "\u5de8\u87f9\u5ea7"

    #@3a
    const-string v7, "\u72ee\u5b50\u5ea7"

    #@3c
    const-string v8, "\u5904\u5973\u5ea7"

    #@3e
    const-string v9, "\u5929\u79e4\u5ea7"

    #@40
    const-string v10, "\u5929\u874e\u5ea7"

    #@42
    const-string v11, "\u5c04\u624b\u5ea7"

    #@44
    const-string v12, "\u6469\u7faf\u5ea7"

    #@46
    .line 1542
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC:[Ljava/lang/String;

    #@4c
    return-void

    #@4d
    nop

    #@4e
    :array_4e
    .array-data 4
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x18
        0x17
        0x16
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static date2Millis(Ljava/util/Date;)J
    .registers 3

    #@0
    .line 221
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static date2String(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    #@0
    .line 189
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 200
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static date2String(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 2

    #@0
    .line 211
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getChineseWeek(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 1236
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getChineseWeek(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1205
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getChineseWeek(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1216
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getChineseWeek(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    #@0
    .line 1226
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string v1, "E"

    #@4
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    #@6
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@9
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getChineseZodiac(I)Ljava/lang/String;
    .registers 2

    #@0
    .line 1538
    sget-object v0, Lcom/blankj/utilcode/util/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    #@2
    rem-int/lit8 p0, p0, 0xc

    #@4
    aget-object p0, v0, p0

    #@6
    return-object p0
.end method

.method public static getChineseZodiac(J)Ljava/lang/String;
    .registers 2

    #@0
    .line 1528
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getChineseZodiac(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1495
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getChineseZodiac(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1506
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    #@0
    .line 1516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 1517
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    .line 1518
    sget-object p0, Lcom/blankj/utilcode/util/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@d
    move-result v0

    #@e
    rem-int/lit8 v0, v0, 0xc

    #@10
    aget-object p0, p0, v0

    #@12
    return-object p0
.end method

.method public static getDate(JJI)Ljava/util/Date;
    .registers 5

    #@0
    .line 954
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@3
    move-result-wide p2

    #@4
    add-long/2addr p0, p2

    #@5
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getDate(Ljava/lang/String;JI)Ljava/util/Date;
    .registers 5

    #@0
    .line 976
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getDate(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/util/Date;
    .registers 5

    #@0
    .line 999
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@3
    move-result-wide p0

    #@4
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@7
    move-result-wide p2

    #@8
    add-long/2addr p0, p2

    #@9
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getDate(Ljava/util/Date;JI)Ljava/util/Date;
    .registers 6

    #@0
    .line 1020
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@7
    move-result-wide p0

    #@8
    add-long/2addr v0, p0

    #@9
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getDateByNow(JI)Ljava/util/Date;
    .registers 5

    #@0
    .line 1096
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowMills()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getDate(JJI)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static getDefaultFormat()Ljava/text/SimpleDateFormat;
    .registers 1

    #@0
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    #@2
    .line 40
    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getFitTimeSpan(JJI)Ljava/lang/String;
    .registers 5

    #@0
    sub-long/2addr p0, p2

    #@1
    .line 409
    invoke-static {p0, p1, p4}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    #@0
    .line 341
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@7
    move-result-wide v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@b
    move-result-object p0

    #@c
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@f
    move-result-wide p0

    #@10
    sub-long/2addr v0, p0

    #@11
    .line 342
    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    return-object p0
.end method

.method public static getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;
    .registers 6

    #@0
    .line 366
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@7
    move-result-wide p0

    #@8
    sub-long/2addr v0, p0

    #@9
    .line 367
    invoke-static {v0, v1, p3}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getFitTimeSpan(Ljava/util/Date;Ljava/util/Date;I)Ljava/lang/String;
    .registers 5

    #@0
    .line 387
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    #@7
    move-result-wide p0

    #@8
    sub-long/2addr v0, p0

    #@9
    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getFitTimeSpanByNow(JI)Ljava/lang/String;
    .registers 5

    #@0
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(JJI)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFitTimeSpanByNow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    #@0
    .line 543
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@7
    move-result-object v1

    #@8
    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getFitTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;
    .registers 4

    #@0
    .line 565
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString(Ljava/text/DateFormat;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFitTimeSpanByNow(Ljava/util/Date;I)Ljava/lang/String;
    .registers 3

    #@0
    .line 584
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowDate()Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(Ljava/util/Date;Ljava/util/Date;I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(J)Ljava/lang/String;
    .registers 11

    #@0
    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    sub-long/2addr v0, p0

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, v0, v2

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x1

    #@b
    if-gez v2, :cond_1c

    #@d
    new-array v0, v4, [Ljava/lang/Object;

    #@f
    .line 686
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object p0

    #@13
    aput-object p0, v0, v3

    #@15
    const-string p0, "%tc"

    #@17
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    return-object p0

    #@1c
    :cond_1c
    const-wide/16 v5, 0x3e8

    #@1e
    cmp-long v2, v0, v5

    #@20
    if-gez v2, :cond_25

    #@22
    const-string p0, "\u521a\u521a"

    #@24
    return-object p0

    #@25
    :cond_25
    const-wide/32 v7, 0xea60

    #@28
    cmp-long v2, v0, v7

    #@2a
    if-gez v2, :cond_40

    #@2c
    .line 690
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2f
    move-result-object p0

    #@30
    new-array p1, v4, [Ljava/lang/Object;

    #@32
    div-long/2addr v0, v5

    #@33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v0

    #@37
    aput-object v0, p1, v3

    #@39
    const-string v0, "%d\u79d2\u524d"

    #@3b
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object p0

    #@3f
    return-object p0

    #@40
    :cond_40
    const-wide/32 v5, 0x36ee80

    #@43
    cmp-long v2, v0, v5

    #@45
    if-gez v2, :cond_5b

    #@47
    .line 692
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@4a
    move-result-object p0

    #@4b
    new-array p1, v4, [Ljava/lang/Object;

    #@4d
    div-long/2addr v0, v7

    #@4e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@51
    move-result-object v0

    #@52
    aput-object v0, p1, v3

    #@54
    const-string v0, "%d\u5206\u949f\u524d"

    #@56
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object p0

    #@5a
    return-object p0

    #@5b
    .line 695
    :cond_5b
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getWeeOfToday()J

    #@5e
    move-result-wide v0

    #@5f
    cmp-long v2, p0, v0

    #@61
    if-ltz v2, :cond_72

    #@63
    new-array v0, v4, [Ljava/lang/Object;

    #@65
    .line 697
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@68
    move-result-object p0

    #@69
    aput-object p0, v0, v3

    #@6b
    const-string p0, "\u4eca\u5929%tR"

    #@6d
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@70
    move-result-object p0

    #@71
    return-object p0

    #@72
    :cond_72
    const-wide/32 v5, 0x5265c00

    #@75
    sub-long/2addr v0, v5

    #@76
    cmp-long v0, p0, v0

    #@78
    if-ltz v0, :cond_89

    #@7a
    new-array v0, v4, [Ljava/lang/Object;

    #@7c
    .line 699
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7f
    move-result-object p0

    #@80
    aput-object p0, v0, v3

    #@82
    const-string p0, "\u6628\u5929%tR"

    #@84
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@87
    move-result-object p0

    #@88
    return-object p0

    #@89
    :cond_89
    new-array v0, v4, [Ljava/lang/Object;

    #@8b
    .line 701
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8e
    move-result-object p0

    #@8f
    aput-object p0, v0, v3

    #@91
    const-string p0, "%tF"

    #@93
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@96
    move-result-object p0

    #@97
    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 623
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getFriendlyTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 2

    #@0
    .line 644
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@3
    move-result-wide p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getFriendlyTimeSpanByNow(J)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    #@0
    .line 663
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->getFriendlyTimeSpanByNow(J)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getMillis(JJI)J
    .registers 5

    #@0
    .line 732
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@3
    move-result-wide p2

    #@4
    add-long/2addr p0, p2

    #@5
    return-wide p0
.end method

.method public static getMillis(Ljava/lang/String;JI)J
    .registers 5

    #@0
    .line 754
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getMillis(Ljava/lang/String;Ljava/text/DateFormat;JI)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static getMillis(Ljava/lang/String;Ljava/text/DateFormat;JI)J
    .registers 5

    #@0
    .line 777
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@3
    move-result-wide p0

    #@4
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@7
    move-result-wide p2

    #@8
    add-long/2addr p0, p2

    #@9
    return-wide p0
.end method

.method public static getMillis(Ljava/util/Date;JI)J
    .registers 6

    #@0
    .line 798
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@7
    move-result-wide p0

    #@8
    add-long/2addr v0, p0

    #@9
    return-wide v0
.end method

.method public static getMillisByNow(JI)J
    .registers 5

    #@0
    .line 1038
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowMills()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getMillis(JJI)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static getNowDate()Ljava/util/Date;
    .registers 1

    #@0
    .line 447
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    return-object v0
.end method

.method public static getNowMills()J
    .registers 2

    #@0
    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static getNowString()Ljava/lang/String;
    .registers 3

    #@0
    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@7
    move-result-object v2

    #@8
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getNowString(Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 3

    #@0
    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1, p0}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 3

    #@0
    .line 58
    sget-object v0, Lcom/blankj/utilcode/util/TimeUtils;->SDF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Map;

    #@8
    .line 60
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/text/SimpleDateFormat;

    #@e
    if-nez v1, :cond_18

    #@10
    .line 62
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@12
    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@15
    .line 63
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    :cond_18
    return-object v1
.end method

.method public static getString(JJI)Ljava/lang/String;
    .registers 11

    #@0
    .line 820
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v2

    #@4
    move-wide v0, p0

    #@5
    move-wide v3, p2

    #@6
    move v5, p4

    #@7
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/TimeUtils;->getString(JLjava/text/DateFormat;JI)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static getString(JLjava/text/DateFormat;JI)Ljava/lang/String;
    .registers 6

    #@0
    .line 843
    invoke-static {p3, p4, p5}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@3
    move-result-wide p3

    #@4
    add-long/2addr p0, p3

    #@5
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getString(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 5

    #@0
    .line 865
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getString(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/lang/String;
    .registers 7

    #@0
    .line 888
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@7
    move-result-wide p2

    #@8
    add-long/2addr v0, p2

    #@9
    invoke-static {v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getString(Ljava/util/Date;JI)Ljava/lang/String;
    .registers 5

    #@0
    .line 910
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getString(Ljava/util/Date;Ljava/text/DateFormat;JI)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getString(Ljava/util/Date;Ljava/text/DateFormat;JI)Ljava/lang/String;
    .registers 7

    #@0
    .line 933
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    #@7
    move-result-wide p2

    #@8
    add-long/2addr v0, p2

    #@9
    invoke-static {v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getStringByNow(JI)Ljava/lang/String;
    .registers 4

    #@0
    .line 1057
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getStringByNow(JLjava/text/DateFormat;I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getStringByNow(JLjava/text/DateFormat;I)Ljava/lang/String;
    .registers 10

    #@0
    .line 1078
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowMills()J

    #@3
    move-result-wide v0

    #@4
    move-object v2, p2

    #@5
    move-wide v3, p0

    #@6
    move v5, p3

    #@7
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/TimeUtils;->getString(JLjava/text/DateFormat;JI)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static getTimeSpan(JJI)J
    .registers 5

    #@0
    sub-long/2addr p0, p2

    #@1
    .line 318
    invoke-static {p0, p1, p4}, Lcom/blankj/utilcode/util/TimeUtils;->millis2TimeSpan(JI)J

    #@4
    move-result-wide p0

    #@5
    return-wide p0
.end method

.method public static getTimeSpan(Ljava/lang/String;Ljava/lang/String;I)J
    .registers 4

    #@0
    .line 253
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J
    .registers 6

    #@0
    .line 276
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@7
    move-result-wide p0

    #@8
    sub-long/2addr v0, p0

    #@9
    invoke-static {v0, v1, p3}, Lcom/blankj/utilcode/util/TimeUtils;->millis2TimeSpan(JI)J

    #@c
    move-result-wide p0

    #@d
    return-wide p0
.end method

.method public static getTimeSpan(Ljava/util/Date;Ljava/util/Date;I)J
    .registers 5

    #@0
    .line 297
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    #@7
    move-result-wide p0

    #@8
    sub-long/2addr v0, p0

    #@9
    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2TimeSpan(JI)J

    #@c
    move-result-wide p0

    #@d
    return-wide p0
.end method

.method public static getTimeSpanByNow(JI)J
    .registers 5

    #@0
    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(JJI)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static getTimeSpanByNow(Ljava/lang/String;I)J
    .registers 4

    #@0
    .line 466
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@7
    move-result-object v1

    #@8
    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    #@b
    move-result-wide p0

    #@c
    return-wide p0
.end method

.method public static getTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;I)J
    .registers 4

    #@0
    .line 487
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString(Ljava/text/DateFormat;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static getTimeSpanByNow(Ljava/util/Date;I)J
    .registers 3

    #@0
    .line 505
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/util/Date;Ljava/util/Date;I)J

    #@8
    move-result-wide p0

    #@9
    return-wide p0
.end method

.method public static getUSWeek(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 1278
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getUSWeek(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1247
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getUSWeek(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1258
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getUSWeek(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    #@0
    .line 1268
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string v1, "EEEE"

    #@4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@6
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@9
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getValueByCalendarField(I)I
    .registers 2

    #@0
    .line 1400
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 1401
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static getValueByCalendarField(JI)I
    .registers 4

    #@0
    .line 1479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 1480
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 1481
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    #@a
    move-result p0

    #@b
    return p0
.end method

.method public static getValueByCalendarField(Ljava/lang/String;I)I
    .registers 3

    #@0
    .line 1420
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/util/Date;I)I

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static getValueByCalendarField(Ljava/lang/String;Ljava/text/DateFormat;I)I
    .registers 3

    #@0
    .line 1441
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/util/Date;I)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static getValueByCalendarField(Ljava/util/Date;I)I
    .registers 3

    #@0
    .line 1459
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 1460
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    .line 1461
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    #@a
    move-result p0

    #@b
    return p0
.end method

.method private static getWeeOfToday()J
    .registers 3

    #@0
    .line 706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xb

    #@6
    const/4 v2, 0x0

    #@7
    .line 707
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@a
    const/16 v1, 0xd

    #@c
    .line 708
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@f
    const/16 v1, 0xc

    #@11
    .line 709
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@14
    const/16 v1, 0xe

    #@16
    .line 710
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@19
    .line 711
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1c
    move-result-wide v0

    #@1d
    return-wide v0
.end method

.method public static getZodiac(II)Ljava/lang/String;
    .registers 5

    #@0
    .line 1601
    sget-object v0, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC:[Ljava/lang/String;

    #@2
    sget-object v1, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC_FLAGS:[I

    #@4
    add-int/lit8 v2, p0, -0x1

    #@6
    aget v1, v1, v2

    #@8
    if-lt p1, v1, :cond_b

    #@a
    goto :goto_f

    #@b
    :cond_b
    add-int/lit8 p0, p0, 0xa

    #@d
    .line 1603
    rem-int/lit8 v2, p0, 0xc

    #@f
    :goto_f
    aget-object p0, v0, v2

    #@11
    return-object p0
.end method

.method public static getZodiac(J)Ljava/lang/String;
    .registers 2

    #@0
    .line 1590
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getZodiac(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1555
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getZodiac(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1566
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getZodiac(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    #@0
    .line 1576
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 1577
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    const/4 p0, 0x2

    #@8
    .line 1578
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    #@b
    move-result p0

    #@c
    add-int/lit8 p0, p0, 0x1

    #@e
    const/4 v1, 0x5

    #@f
    .line 1579
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@12
    move-result v0

    #@13
    .line 1580
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(II)Ljava/lang/String;

    #@16
    move-result-object p0

    #@17
    return-object p0
.end method

.method public static isAm()Z
    .registers 2

    #@0
    .line 1287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x9

    #@6
    .line 1288
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public static isAm(J)Z
    .registers 3

    #@0
    const/16 v0, 0x9

    #@2
    .line 1331
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(JI)I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method public static isAm(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 1299
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x9

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/lang/String;Ljava/text/DateFormat;I)I

    #@9
    move-result p0

    #@a
    if-nez p0, :cond_e

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

.method public static isAm(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .registers 3

    #@0
    const/16 v0, 0x9

    #@2
    .line 1311
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/lang/String;Ljava/text/DateFormat;I)I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method public static isAm(Ljava/util/Date;)Z
    .registers 2

    #@0
    const/16 v0, 0x9

    #@2
    .line 1321
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/util/Date;I)I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method public static isLeapYear(I)Z
    .registers 2

    #@0
    .line 1194
    rem-int/lit8 v0, p0, 0x4

    #@2
    if-nez v0, :cond_8

    #@4
    rem-int/lit8 v0, p0, 0x64

    #@6
    if-nez v0, :cond_c

    #@8
    :cond_8
    rem-int/lit16 p0, p0, 0x190

    #@a
    if-nez p0, :cond_e

    #@c
    :cond_c
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

.method public static isLeapYear(J)Z
    .registers 2

    #@0
    .line 1184
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isLeapYear(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 1150
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static isLeapYear(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .registers 2

    #@0
    .line 1161
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isLeapYear(Ljava/util/Date;)Z
    .registers 2

    #@0
    .line 1171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 1172
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    const/4 p0, 0x1

    #@8
    .line 1173
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    #@b
    move-result p0

    #@c
    .line 1174
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(I)Z

    #@f
    move-result p0

    #@10
    return p0
.end method

.method public static isPm()Z
    .registers 1

    #@0
    .line 1340
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->isAm()Z

    #@3
    move-result v0

    #@4
    xor-int/lit8 v0, v0, 0x1

    #@6
    return v0
.end method

.method public static isPm(J)Z
    .registers 2

    #@0
    .line 1383
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(J)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isPm(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 1351
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(Ljava/lang/String;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isPm(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .registers 2

    #@0
    .line 1363
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(Ljava/lang/String;Ljava/text/DateFormat;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isPm(Ljava/util/Date;)Z
    .registers 1

    #@0
    .line 1373
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(Ljava/util/Date;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isToday(J)Z
    .registers 6

    #@0
    .line 1138
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getWeeOfToday()J

    #@3
    move-result-wide v0

    #@4
    cmp-long v2, p0, v0

    #@6
    if-ltz v2, :cond_12

    #@8
    const-wide/32 v2, 0x5265c00

    #@b
    add-long/2addr v0, v2

    #@c
    cmp-long p0, p0, v0

    #@e
    if-gez p0, :cond_12

    #@10
    const/4 p0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    :goto_13
    return p0
.end method

.method public static isToday(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 1107
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->isToday(J)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static isToday(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .registers 2

    #@0
    .line 1118
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@3
    move-result-wide p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->isToday(J)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .registers 3

    #@0
    .line 1128
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->isToday(J)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isUsingNetworkProvidedTime()Z
    .registers 3

    #@0
    .line 49
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "auto_time"

    #@a
    const/4 v2, 0x0

    #@b
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x1

    #@10
    if-ne v0, v1, :cond_13

    #@12
    move v2, v1

    #@13
    :cond_13
    return v2
.end method

.method public static millis2Date(J)Ljava/util/Date;
    .registers 3

    #@0
    .line 231
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@5
    return-object v0
.end method

.method static millis2FitTimeSpan(JI)Ljava/lang/String;
    .registers 12

    #@0
    if-gtz p2, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x5

    #@5
    .line 1616
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@8
    move-result p2

    #@9
    const-string v1, "\u79d2"

    #@b
    const-string v2, "\u6beb\u79d2"

    #@d
    const-string v3, "\u5929"

    #@f
    const-string v4, "\u5c0f\u65f6"

    #@11
    const-string v5, "\u5206\u949f"

    #@13
    .line 1617
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    const-wide/16 v2, 0x0

    #@19
    cmp-long v2, p0, v2

    #@1b
    if-nez v2, :cond_31

    #@1d
    .line 1618
    new-instance p0, Ljava/lang/StringBuilder;

    #@1f
    const-string p1, "0"

    #@21
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    add-int/lit8 p2, p2, -0x1

    #@26
    aget-object p1, v1, p2

    #@28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p0

    #@2c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p0

    #@30
    return-object p0

    #@31
    .line 1619
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    if-gez v2, :cond_3e

    #@38
    const-string v2, "-"

    #@3a
    .line 1621
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    neg-long p0, p0

    #@3e
    :cond_3e
    new-array v0, v0, [I

    #@40
    .line 1624
    fill-array-data v0, :array_64

    #@43
    const/4 v2, 0x0

    #@44
    :goto_44
    if-ge v2, p2, :cond_5f

    #@46
    .line 1626
    aget v4, v0, v2

    #@48
    int-to-long v5, v4

    #@49
    cmp-long v5, p0, v5

    #@4b
    if-ltz v5, :cond_5c

    #@4d
    int-to-long v5, v4

    #@4e
    .line 1627
    div-long v5, p0, v5

    #@50
    int-to-long v7, v4

    #@51
    mul-long/2addr v7, v5

    #@52
    sub-long/2addr p0, v7

    #@53
    .line 1629
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    aget-object v5, v1, v2

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_44

    #@5f
    .line 1632
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object p0

    #@63
    return-object p0

    #@64
    :array_64
    .array-data 4
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method public static millis2String(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 80
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static millis2String(JLjava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 91
    invoke-static {p2}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    #@3
    move-result-object p2

    #@4
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static millis2String(JLjava/text/DateFormat;)Ljava/lang/String;
    .registers 4

    #@0
    .line 102
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@5
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method private static millis2TimeSpan(JI)J
    .registers 5

    #@0
    int-to-long v0, p2

    #@1
    .line 1611
    div-long/2addr p0, v0

    #@2
    return-wide p0
.end method

.method public static string2Date(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    #@0
    .line 151
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    #@0
    .line 162
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .registers 2

    #@0
    .line 174
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@3
    move-result-object p0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object p0

    #@5
    :catch_5
    move-exception p0

    #@6
    .line 176
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    #@9
    const/4 p0, 0x0

    #@a
    return-object p0
.end method

.method public static string2Millis(Ljava/lang/String;)J
    .registers 3

    #@0
    .line 113
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static string2Millis(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2

    #@0
    .line 124
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J
    .registers 2

    #@0
    .line 136
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide p0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return-wide p0

    #@9
    :catch_9
    move-exception p0

    #@a
    .line 138
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    #@d
    const-wide/16 p0, -0x1

    #@f
    return-wide p0
.end method

.method private static timeSpan2Millis(JI)J
    .registers 5

    #@0
    int-to-long v0, p2

    #@1
    mul-long/2addr p0, v0

    #@2
    return-wide p0
.end method
