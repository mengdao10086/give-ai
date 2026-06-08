.class Lcom/google/android/material/datepicker/UtcDates;
.super Ljava/lang/Object;
.source "UtcDates.java"


# static fields
.field static final UTC:Ljava/lang/String; = "UTC"

.field static timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/material/datepicker/TimeSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static canonicalYearMonthDay(J)J
    .registers 3

    #@0
    .line 130
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 131
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 132
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@a
    move-result-object p0

    #@b
    .line 133
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@e
    move-result-wide p0

    #@f
    return-wide p0
.end method

.method private static findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    #@0
    :goto_0
    if-ltz p3, :cond_2d

    #@2
    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-ge p3, v0, :cond_2d

    #@8
    .line 268
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v0

    #@10
    const/4 v1, -0x1

    #@11
    if-ne v0, v1, :cond_2d

    #@13
    .line 271
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    const/16 v1, 0x27

    #@19
    if-ne v0, v1, :cond_2b

    #@1b
    :goto_1b
    add-int/2addr p3, p2

    #@1c
    if-ltz p3, :cond_2b

    #@1e
    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v0

    #@22
    if-ge p3, v0, :cond_2b

    #@24
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v0

    #@28
    if-eq v0, v1, :cond_2b

    #@2a
    goto :goto_1b

    #@2b
    :cond_2b
    add-int/2addr p3, p2

    #@2c
    goto :goto_0

    #@2d
    :cond_2d
    return p3
.end method

.method static getAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2

    #@0
    const-string v0, "MMMd"

    #@2
    .line 193
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method static getAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2

    #@0
    const-string v0, "MMMEd"

    #@2
    .line 198
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method private static getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2

    #@0
    .line 139
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object p0

    #@4
    .line 140
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcAndroidTimeZone()Landroid/icu/util/TimeZone;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@b
    return-object p0
.end method

.method static getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 5

    #@0
    .line 113
    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@3
    move-result-object p0

    #@4
    .line 114
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    .line 116
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x2

    #@e
    .line 117
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    #@11
    move-result v2

    #@12
    const/4 v3, 0x5

    #@13
    .line 118
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    #@16
    move-result p0

    #@17
    .line 115
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    #@1a
    return-object v0
.end method

.method static getDefaultTextInputFormat()Ljava/text/SimpleDateFormat;
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@4
    move-result-object v1

    #@5
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@b
    .line 153
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const-string v1, "\\s+"

    #@11
    const-string v2, ""

    #@13
    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 155
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@20
    .line 156
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@27
    const/4 v0, 0x0

    #@28
    .line 157
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    #@2b
    return-object v1
.end method

.method static getDefaultTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 7

    #@0
    .line 162
    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    .line 163
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_text_input_year_abbr:I

    #@6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 164
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_text_input_month_abbr:I

    #@c
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 165
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_text_input_day_abbr:I

    #@12
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    const-string v2, "[^y]"

    #@18
    const-string v3, ""

    #@1a
    .line 169
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@21
    move-result v2

    #@22
    const/4 v3, 0x1

    #@23
    const-string v4, "y"

    #@25
    if-ne v2, v3, :cond_2d

    #@27
    const-string v2, "yyyy"

    #@29
    .line 170
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@2c
    move-result-object p1

    #@2d
    :cond_2d
    const-string v2, "d"

    #@2f
    .line 173
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@32
    move-result-object p0

    #@33
    const-string p1, "M"

    #@35
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@38
    move-result-object p0

    #@39
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@3c
    move-result-object p0

    #@3d
    return-object p0
.end method

.method private static getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    #@0
    .line 145
    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@3
    move-result-object p0

    #@4
    .line 146
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@b
    return-object p0
.end method

.method static getFullFormat()Ljava/text/DateFormat;
    .registers 1

    #@0
    .line 225
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 229
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method static getMediumFormat()Ljava/text/DateFormat;
    .registers 1

    #@0
    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    .line 211
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method static getMediumNoYear()Ljava/text/DateFormat;
    .registers 1

    #@0
    .line 215
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumNoYear(Ljava/util/Locale;)Ljava/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getMediumNoYear(Ljava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    #@0
    .line 219
    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Ljava/text/SimpleDateFormat;

    #@6
    .line 220
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->removeYearFromDateFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@11
    return-object p0
.end method

.method static getSimpleFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 2

    #@0
    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/UtcDates;->getSimpleFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static getSimpleFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .registers 3

    #@0
    .line 181
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@5
    .line 182
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    #@8
    move-result-object p0

    #@9
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@c
    return-object v0
.end method

.method static getTimeSource()Lcom/google/android/material/datepicker/TimeSource;
    .registers 1

    #@0
    .line 47
    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/datepicker/TimeSource;

    #@8
    if-nez v0, :cond_e

    #@a
    .line 48
    invoke-static {}, Lcom/google/android/material/datepicker/TimeSource;->system()Lcom/google/android/material/datepicker/TimeSource;

    #@d
    move-result-object v0

    #@e
    :cond_e
    return-object v0
.end method

.method private static getTimeZone()Ljava/util/TimeZone;
    .registers 1

    #@0
    const-string v0, "UTC"

    #@2
    .line 54
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static getTodayCalendar()Ljava/util/Calendar;
    .registers 3

    #@0
    .line 66
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeSource()Lcom/google/android/material/datepicker/TimeSource;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/TimeSource;->now()Ljava/util/Calendar;

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0xb

    #@a
    const/4 v2, 0x0

    #@b
    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@e
    const/16 v1, 0xc

    #@10
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@13
    const/16 v1, 0xd

    #@15
    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@18
    const/16 v1, 0xe

    #@1a
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@1d
    .line 71
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@24
    return-object v0
.end method

.method private static getUtcAndroidTimeZone()Landroid/icu/util/TimeZone;
    .registers 1

    #@0
    const-string v0, "UTC"

    #@2
    .line 59
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static getUtcCalendar()Ljava/util/Calendar;
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 83
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 4

    #@0
    .line 95
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@7
    move-result-object v0

    #@8
    if-nez p0, :cond_e

    #@a
    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    #@d
    goto :goto_15

    #@e
    .line 99
    :cond_e
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@11
    move-result-wide v1

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@15
    :goto_15
    return-object v0
.end method

.method static getYearAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2

    #@0
    const-string v0, "yMMMd"

    #@2
    .line 188
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method static getYearAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2

    #@0
    const-string v0, "yMMMEd"

    #@2
    .line 203
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method private static removeYearFromDateFormatPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "yY"

    #@3
    const/4 v2, 0x1

    #@4
    .line 236
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    #@7
    move-result v0

    #@8
    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    if-lt v0, v1, :cond_f

    #@e
    return-object p0

    #@f
    :cond_f
    const-string v1, "EMd"

    #@11
    .line 245
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    #@14
    move-result v3

    #@15
    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v4

    #@19
    if-ge v3, v4, :cond_1d

    #@1b
    const-string v1, "EMd,"

    #@1d
    :cond_1d
    const/4 v4, -0x1

    #@1e
    .line 252
    invoke-static {p0, v1, v4, v0}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    #@21
    move-result v0

    #@22
    add-int/2addr v0, v2

    #@23
    .line 255
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    const-string v1, " "

    #@29
    .line 256
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@2c
    move-result-object p0

    #@2d
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@30
    move-result-object p0

    #@31
    return-object p0
.end method

.method static setTimeSource(Lcom/google/android/material/datepicker/TimeSource;)V
    .registers 2

    #@0
    .line 43
    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@5
    return-void
.end method
