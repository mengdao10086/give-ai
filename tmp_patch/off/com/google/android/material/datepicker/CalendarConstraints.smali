.class public final Lcom/google/android/material/datepicker/CalendarConstraints;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/CalendarConstraints$Builder;,
        Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:Lcom/google/android/material/datepicker/Month;

.field private final firstDayOfWeek:I

.field private final monthSpan:I

.field private openAt:Lcom/google/android/material/datepicker/Month;

.field private final start:Lcom/google/android/material/datepicker/Month;

.field private final validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

.field private final yearSpan:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 189
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/datepicker/CalendarConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;I)V
    .registers 7

    #@0
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "start cannot be null"

    #@5
    .line 68
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@8
    const-string v0, "end cannot be null"

    #@a
    .line 69
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@d
    const-string v0, "validator cannot be null"

    #@f
    .line 70
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@12
    .line 71
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@14
    .line 72
    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@16
    .line 73
    iput-object p4, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@18
    .line 74
    iput p5, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    #@1a
    .line 75
    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@1c
    if-eqz p4, :cond_2d

    #@1e
    .line 76
    invoke-virtual {p1, p4}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    #@21
    move-result p3

    #@22
    if-gtz p3, :cond_25

    #@24
    goto :goto_2d

    #@25
    .line 77
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@27
    const-string p2, "start Month cannot be after current Month"

    #@29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw p1

    #@2d
    :cond_2d
    :goto_2d
    if-eqz p4, :cond_3e

    #@2f
    .line 79
    invoke-virtual {p4, p2}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    #@32
    move-result p3

    #@33
    if-gtz p3, :cond_36

    #@35
    goto :goto_3e

    #@36
    .line 80
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@38
    const-string p2, "current Month cannot be after end Month"

    #@3a
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw p1

    #@3e
    :cond_3e
    :goto_3e
    if-ltz p5, :cond_5d

    #@40
    .line 83
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@43
    move-result-object p3

    #@44
    const/4 p4, 0x7

    #@45
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->getMaximum(I)I

    #@48
    move-result p3

    #@49
    if-gt p5, p3, :cond_5d

    #@4b
    .line 86
    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/Month;->monthsUntil(Lcom/google/android/material/datepicker/Month;)I

    #@4e
    move-result p3

    #@4f
    add-int/lit8 p3, p3, 0x1

    #@51
    iput p3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->monthSpan:I

    #@53
    .line 87
    iget p2, p2, Lcom/google/android/material/datepicker/Month;->year:I

    #@55
    iget p1, p1, Lcom/google/android/material/datepicker/Month;->year:I

    #@57
    sub-int/2addr p2, p1

    #@58
    add-int/lit8 p2, p2, 0x1

    #@5a
    iput p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->yearSpan:I

    #@5c
    return-void

    #@5d
    .line 84
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@5f
    const-string p2, "firstDayOfWeek is not valid"

    #@61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;ILcom/google/android/material/datepicker/CalendarConstraints$1;)V
    .registers 7

    #@0
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;I)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .registers 1

    #@0
    .line 38
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .registers 1

    #@0
    .line 38
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .registers 1

    #@0
    .line 38
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/datepicker/CalendarConstraints;)I
    .registers 1

    #@0
    .line 38
    iget p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    #@2
    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .registers 1

    #@0
    .line 38
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@2
    return-object p0
.end method


# virtual methods
.method clamp(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .registers 3

    #@0
    .line 227
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_b

    #@8
    .line 228
    iget-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@a
    return-object p1

    #@b
    .line 231
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@d
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    #@10
    move-result v0

    #@11
    if-lez v0, :cond_15

    #@13
    .line 232
    iget-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@15
    :cond_15
    return-object p1
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
    .line 169
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/datepicker/CalendarConstraints;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 172
    :cond_a
    check-cast p1, Lcom/google/android/material/datepicker/CalendarConstraints;

    #@c
    .line 173
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@e
    iget-object v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@10
    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_3b

    #@16
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@18
    iget-object v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@1a
    .line 174
    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_3b

    #@20
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@22
    iget-object v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@24
    .line 175
    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3b

    #@2a
    iget v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    #@2c
    iget v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    #@2e
    if-ne v1, v3, :cond_3b

    #@30
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@32
    iget-object p1, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@34
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@37
    move-result p1

    #@38
    if-eqz p1, :cond_3b

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move v0, v2

    #@3c
    :goto_3c
    return v0
.end method

.method public getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .registers 2

    #@0
    .line 98
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@2
    return-object v0
.end method

.method getEnd()Lcom/google/android/material/datepicker/Month;
    .registers 2

    #@0
    .line 110
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object v0
.end method

.method public getEndMs()J
    .registers 3

    #@0
    .line 152
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@2
    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    #@4
    return-wide v0
.end method

.method getFirstDayOfWeek()I
    .registers 2

    #@0
    .line 126
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    #@2
    return v0
.end method

.method getMonthSpan()I
    .registers 2

    #@0
    .line 134
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->monthSpan:I

    #@2
    return v0
.end method

.method getOpenAt()Lcom/google/android/material/datepicker/Month;
    .registers 2

    #@0
    .line 116
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object v0
.end method

.method public getOpenAtMs()Ljava/lang/Long;
    .registers 3

    #@0
    .line 161
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_c

    #@6
    :cond_6
    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0
.end method

.method getStart()Lcom/google/android/material/datepicker/Month;
    .registers 2

    #@0
    .line 104
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object v0
.end method

.method public getStartMs()J
    .registers 3

    #@0
    .line 147
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@2
    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    #@4
    return-wide v0
.end method

.method getYearSpan()I
    .registers 2

    #@0
    .line 142
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->yearSpan:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    .line 182
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@10
    aput-object v2, v0, v1

    #@12
    iget v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/4 v1, 0x4

    #@1c
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@1e
    aput-object v2, v0, v1

    #@20
    .line 183
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    return v0
.end method

.method isWithinBounds(J)Z
    .registers 7

    #@0
    .line 91
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    #@6
    move-result-wide v2

    #@7
    cmp-long v0, v2, p1

    #@9
    if-gtz v0, :cond_18

    #@b
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@d
    iget v2, v0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    #@f
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    #@12
    move-result-wide v2

    #@13
    cmp-long p1, p1, v2

    #@15
    if-gtz p1, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v1, 0x0

    #@19
    :goto_19
    return v1
.end method

.method setOpenAt(Lcom/google/android/material/datepicker/Month;)V
    .registers 2

    #@0
    .line 121
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    .line 216
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 217
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    #@8
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 218
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    #@d
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 219
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@12
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@15
    .line 220
    iget p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    #@17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    return-void
.end method
