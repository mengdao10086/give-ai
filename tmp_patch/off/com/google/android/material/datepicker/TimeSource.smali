.class Lcom/google/android/material/datepicker/TimeSource;
.super Ljava/lang/Object;
.source "TimeSource.java"


# static fields
.field private static final SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;


# instance fields
.field private final fixedTimeMs:Ljava/lang/Long;

.field private final fixedTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 25
    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, v1}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    #@6
    sput-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    #@8
    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .registers 3

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    #@5
    .line 33
    iput-object p2, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    #@7
    return-void
.end method

.method static fixed(J)Lcom/google/android/material/datepicker/TimeSource;
    .registers 3

    #@0
    .line 75
    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    #@2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object p0

    #@6
    const/4 p1, 0x0

    #@7
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    #@a
    return-object v0
.end method

.method static fixed(JLjava/util/TimeZone;)Lcom/google/android/material/datepicker/TimeSource;
    .registers 4

    #@0
    .line 60
    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    #@2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object p0

    #@6
    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    #@9
    return-object v0
.end method

.method static system()Lcom/google/android/material/datepicker/TimeSource;
    .registers 1

    #@0
    .line 43
    sget-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    #@2
    return-object v0
.end method


# virtual methods
.method now()Ljava/util/Calendar;
    .registers 2

    #@0
    .line 80
    iget-object v0, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/TimeSource;->now(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method now(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 4

    #@0
    if-nez p1, :cond_7

    #@2
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@5
    move-result-object p1

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@a
    move-result-object p1

    #@b
    .line 91
    :goto_b
    iget-object v0, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v0

    #@13
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@16
    :cond_16
    return-object p1
.end method
