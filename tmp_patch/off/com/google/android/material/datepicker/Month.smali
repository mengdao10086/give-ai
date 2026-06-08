.class final Lcom/google/android/material/datepicker/Month;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/datepicker/Month;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/Month;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final daysInMonth:I

.field final daysInWeek:I

.field private final firstOfMonth:Ljava/util/Calendar;

.field private longName:Ljava/lang/String;

.field final month:I

.field final timeInMillis:J

.field final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 203
    new-instance v0, Lcom/google/android/material/datepicker/Month$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/Month$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/datepicker/Month;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .registers 5

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x5

    #@4
    const/4 v1, 0x1

    #@5
    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@8
    .line 61
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@e
    const/4 v2, 0x2

    #@f
    .line 62
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    #@12
    move-result v2

    #@13
    iput v2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    #@15
    .line 63
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    #@18
    move-result v1

    #@19
    iput v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    #@1b
    const/4 v1, 0x7

    #@1c
    .line 64
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    #@22
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    #@28
    .line 66
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2b
    move-result-wide v0

    #@2c
    iput-wide v0, p0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    #@2e
    return-void
.end method

.method static create(II)Lcom/google/android/material/datepicker/Month;
    .registers 4

    #@0
    .line 90
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 91
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    #@8
    const/4 p0, 0x2

    #@9
    .line 92
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    #@c
    .line 93
    new-instance p0, Lcom/google/android/material/datepicker/Month;

    #@e
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    #@11
    return-object p0
.end method

.method static create(J)Lcom/google/android/material/datepicker/Month;
    .registers 3

    #@0
    .line 75
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 76
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 77
    new-instance p0, Lcom/google/android/material/datepicker/Month;

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    #@c
    return-object p0
.end method

.method static current()Lcom/google/android/material/datepicker/Month;
    .registers 2

    #@0
    .line 102
    new-instance v0, Lcom/google/android/material/datepicker/Month;

    #@2
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/material/datepicker/Month;)I
    .registers 3

    #@0
    .line 135
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@2
    iget-object p1, p1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    #@0
    .line 30
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method daysFromStartOfWeekToFirstOfMonth(I)I
    .registers 4

    #@0
    .line 106
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x7

    #@3
    .line 107
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    if-lez p1, :cond_a

    #@9
    goto :goto_10

    #@a
    .line 108
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@c
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@f
    move-result p1

    #@10
    :goto_10
    sub-int/2addr v0, p1

    #@11
    if-gez v0, :cond_16

    #@13
    .line 110
    iget p1, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    #@15
    add-int/2addr v0, p1

    #@16
    :cond_16
    return v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 120
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/datepicker/Month;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 123
    :cond_a
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    #@c
    .line 124
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->month:I

    #@e
    iget v3, p1, Lcom/google/android/material/datepicker/Month;->month:I

    #@10
    if-ne v1, v3, :cond_19

    #@12
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    #@14
    iget p1, p1, Lcom/google/android/material/datepicker/Month;->year:I

    #@16
    if-ne v1, p1, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v0, v2

    #@1a
    :goto_1a
    return v0
.end method

.method getDay(I)J
    .registers 4

    #@0
    .line 169
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@2
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    .line 170
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    #@a
    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@d
    move-result-wide v0

    #@e
    return-wide v0
.end method

.method getDayOfMonth(J)I
    .registers 4

    #@0
    .line 175
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@2
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@5
    move-result-object v0

    #@6
    .line 176
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9
    const/4 p1, 0x5

    #@a
    .line 177
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    #@d
    move-result p1

    #@e
    return p1
.end method

.method getLongName()Ljava/lang/String;
    .registers 3

    #@0
    .line 194
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_10

    #@4
    .line 195
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v0

    #@a
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonth(J)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    #@10
    .line 197
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method getStableId()J
    .registers 3

    #@0
    .line 156
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 129
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->month:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    .line 130
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method monthsLater(I)Lcom/google/android/material/datepicker/Month;
    .registers 4

    #@0
    .line 186
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@2
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    .line 187
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    #@a
    .line 188
    new-instance p1, Lcom/google/android/material/datepicker/Month;

    #@c
    invoke-direct {p1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    #@f
    return-object p1
.end method

.method monthsUntil(Lcom/google/android/material/datepicker/Month;)I
    .registers 4

    #@0
    .line 148
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    #@2
    instance-of v0, v0, Ljava/util/GregorianCalendar;

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 149
    iget v0, p1, Lcom/google/android/material/datepicker/Month;->year:I

    #@8
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    #@a
    sub-int/2addr v0, v1

    #@b
    mul-int/lit8 v0, v0, 0xc

    #@d
    iget p1, p1, Lcom/google/android/material/datepicker/Month;->month:I

    #@f
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->month:I

    #@11
    sub-int/2addr p1, v1

    #@12
    add-int/2addr v0, p1

    #@13
    return v0

    #@14
    .line 151
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string v0, "Only Gregorian calendars are supported."

    #@18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 227
    iget p2, p0, Lcom/google/android/material/datepicker/Month;->year:I

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 228
    iget p2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    #@7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    return-void
.end method
