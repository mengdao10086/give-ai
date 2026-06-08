.class public Lcom/google/android/material/datepicker/DateValidatorPointBackward;
.super Ljava/lang/Object;
.source "DateValidatorPointBackward.java"

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/DateValidatorPointBackward;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final point:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 58
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/DateValidatorPointBackward$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-wide p1, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    #@5
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/material/datepicker/DateValidatorPointBackward$1;)V
    .registers 4

    #@0
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;-><init>(J)V

    #@3
    return-void
.end method

.method public static before(J)Lcom/google/android/material/datepicker/DateValidatorPointBackward;
    .registers 3

    #@0
    .line 45
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;-><init>(J)V

    #@5
    return-object v0
.end method

.method public static now()Lcom/google/android/material/datepicker/DateValidatorPointBackward;
    .registers 2

    #@0
    .line 54
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->before(J)Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 93
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 97
    :cond_a
    check-cast p1, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    #@c
    .line 98
    iget-wide v3, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    #@e
    iget-wide v5, p1, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    #@10
    cmp-long p1, v3, v5

    #@12
    if-nez p1, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v0, v2

    #@16
    :goto_16
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 103
    iget-wide v1, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    #@5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public isValid(J)Z
    .registers 5

    #@0
    .line 75
    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    #@2
    cmp-long p1, p1, v0

    #@4
    if-gtz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    #@0
    .line 85
    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    return-void
.end method
