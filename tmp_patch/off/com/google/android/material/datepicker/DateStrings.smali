.class Lcom/google/android/material/datepicker/DateStrings;
.super Ljava/lang/Object;
.source "DateStrings.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 152
    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Landroidx/core/util/Pair;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method static getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Landroidx/core/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/text/SimpleDateFormat;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_a

    #@3
    if-nez p1, :cond_a

    #@5
    .line 174
    invoke-static {v0, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@8
    move-result-object p0

    #@9
    return-object p0

    #@a
    :cond_a
    if-nez p0, :cond_19

    #@c
    .line 176
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@f
    move-result-wide p0

    #@10
    invoke-static {p0, p1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    invoke-static {v0, p0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@17
    move-result-object p0

    #@18
    return-object p0

    #@19
    :cond_19
    if-nez p1, :cond_28

    #@1b
    .line 178
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@1e
    move-result-wide p0

    #@1f
    invoke-static {p0, p1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    #@22
    move-result-object p0

    #@23
    invoke-static {p0, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@26
    move-result-object p0

    #@27
    return-object p0

    #@28
    .line 181
    :cond_28
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@2b
    move-result-object v0

    #@2c
    .line 182
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@2f
    move-result-object v1

    #@30
    .line 183
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@33
    move-result-wide v2

    #@34
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@37
    .line 184
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@3a
    move-result-object v2

    #@3b
    .line 185
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@3e
    move-result-wide v3

    #@3f
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@42
    if-eqz p2, :cond_63

    #@44
    .line 188
    new-instance v0, Ljava/util/Date;

    #@46
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@49
    move-result-wide v1

    #@4a
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    #@4d
    .line 189
    new-instance p0, Ljava/util/Date;

    #@4f
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@52
    move-result-wide v1

    #@53
    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    #@56
    .line 191
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@5d
    move-result-object p0

    #@5e
    .line 190
    invoke-static {p1, p0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@61
    move-result-object p0

    #@62
    return-object p0

    #@63
    :cond_63
    const/4 p2, 0x1

    #@64
    .line 192
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    #@67
    move-result v3

    #@68
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    #@6b
    move-result v2

    #@6c
    if-ne v3, v2, :cond_b2

    #@6e
    .line 193
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    #@71
    move-result v1

    #@72
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    #@75
    move-result p2

    #@76
    if-ne v1, p2, :cond_95

    #@78
    .line 195
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@7b
    move-result-wide v0

    #@7c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7f
    move-result-object p0

    #@80
    invoke-static {v0, v1, p0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@83
    move-result-object p0

    #@84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@87
    move-result-wide p1

    #@88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8b
    move-result-object v0

    #@8c
    invoke-static {p1, p2, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@8f
    move-result-object p1

    #@90
    .line 194
    invoke-static {p0, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@93
    move-result-object p0

    #@94
    return-object p0

    #@95
    .line 198
    :cond_95
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@98
    move-result-wide v0

    #@99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@9c
    move-result-object p0

    #@9d
    invoke-static {v0, v1, p0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@a0
    move-result-object p0

    #@a1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@a4
    move-result-wide p1

    #@a5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@a8
    move-result-object v0

    #@a9
    invoke-static {p1, p2, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@ac
    move-result-object p1

    #@ad
    .line 197
    invoke-static {p0, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@b0
    move-result-object p0

    #@b1
    return-object p0

    #@b2
    .line 202
    :cond_b2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@b5
    move-result-wide v0

    #@b6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@b9
    move-result-object p0

    #@ba
    invoke-static {v0, v1, p0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@bd
    move-result-object p0

    #@be
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@c1
    move-result-wide p1

    #@c2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c5
    move-result-object v0

    #@c6
    invoke-static {p1, p2, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@c9
    move-result-object p1

    #@ca
    .line 201
    invoke-static {p0, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@cd
    move-result-object p0

    #@ce
    return-object p0
.end method

.method static getDateString(J)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 120
    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method static getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p2, :cond_c

    #@2
    .line 136
    new-instance v0, Ljava/util/Date;

    #@4
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@7
    .line 137
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 138
    :cond_c
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->isDateWithinCurrentYear(J)Z

    #@f
    move-result p2

    #@10
    if-eqz p2, :cond_17

    #@12
    .line 139
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(J)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    return-object p0

    #@17
    .line 141
    :cond_17
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method

.method static getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;
    .registers 8

    #@0
    .line 221
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    const/4 p2, 0x0

    #@5
    const/4 v0, 0x1

    #@6
    if-eqz p3, :cond_16

    #@8
    .line 223
    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_today_description:I

    #@a
    .line 225
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@d
    move-result-object p3

    #@e
    new-array v1, v0, [Ljava/lang/Object;

    #@10
    aput-object p1, v1, p2

    #@12
    .line 224
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    :cond_16
    if-eqz p4, :cond_27

    #@18
    .line 228
    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_start_date_description:I

    #@1a
    .line 229
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    new-array p3, v0, [Ljava/lang/Object;

    #@20
    aput-object p1, p3, p2

    #@22
    .line 228
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    return-object p0

    #@27
    :cond_27
    if-eqz p5, :cond_38

    #@29
    .line 231
    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_end_date_description:I

    #@2b
    .line 232
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object p0

    #@2f
    new-array p3, v0, [Ljava/lang/Object;

    #@31
    aput-object p1, p3, p2

    #@33
    .line 231
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object p0

    #@37
    return-object p0

    #@38
    :cond_38
    return-object p1
.end method

.method static getMonthDay(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method static getMonthDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 4

    #@0
    .line 79
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object p2

    #@4
    new-instance v0, Ljava/util/Date;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@9
    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method static getMonthDayOfWeekDay(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method static getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 4

    #@0
    .line 90
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object p2

    #@4
    new-instance v0, Ljava/util/Date;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@9
    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method static getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 113
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->isDateWithinCurrentYear(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 114
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(J)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 116
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(J)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method static getYearContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    #@0
    .line 245
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@8
    move-result v0

    #@9
    const/4 v2, 0x0

    #@a
    if-ne v0, p1, :cond_1f

    #@c
    .line 246
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_current_year_description:I

    #@e
    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object p1

    #@18
    aput-object p1, v0, v2

    #@1a
    .line 246
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    return-object p0

    #@1f
    .line 249
    :cond_1f
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_year_description:I

    #@21
    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@24
    move-result-object p0

    #@25
    new-array v0, v1, [Ljava/lang/Object;

    #@27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object p1

    #@2b
    aput-object p1, v0, v2

    #@2d
    .line 249
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object p0

    #@31
    return-object p0
.end method

.method static getYearMonth(J)Ljava/lang/String;
    .registers 4

    #@0
    const/16 v0, 0x2024

    #@2
    const/4 v1, 0x0

    #@3
    .line 39
    invoke-static {v1, p0, p1, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method static getYearMonthDay(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method static getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 4

    #@0
    .line 58
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getYearAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object p2

    #@4
    new-instance v0, Ljava/util/Date;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@9
    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method static getYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .registers 3

    #@0
    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method static getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 4

    #@0
    .line 101
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getYearAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object p2

    #@4
    new-instance v0, Ljava/util/Date;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@9
    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method private static isDateWithinCurrentYear(J)Z
    .registers 4

    #@0
    .line 145
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 146
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@7
    move-result-object v1

    #@8
    .line 147
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@b
    const/4 p0, 0x1

    #@c
    .line 148
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    #@f
    move-result p1

    #@10
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    #@13
    move-result v0

    #@14
    if-ne p1, v0, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 p0, 0x0

    #@18
    :goto_18
    return p0
.end method
