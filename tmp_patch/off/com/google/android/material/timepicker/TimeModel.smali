.class Lcom/google/android/material/timepicker/TimeModel;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/timepicker/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_FORMAT:Ljava/lang/String; = "%d"

.field public static final ZERO_LEADING_NUMBER_FORMAT:Ljava/lang/String; = "%02d"


# instance fields
.field final format:I

.field hour:I

.field private final hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field minute:I

.field private final minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field period:I

.field selection:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 167
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>(I)V

    #@4
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/16 v1, 0xa

    #@3
    .line 59
    invoke-direct {p0, v0, v0, v1, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    #@6
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    #@0
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@5
    .line 64
    iput p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@7
    .line 65
    iput p3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@9
    .line 66
    iput p4, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@b
    .line 67
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    #@e
    move-result p1

    #@f
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@11
    .line 68
    new-instance p1, Lcom/google/android/material/timepicker/MaxInputValidator;

    #@13
    const/16 p2, 0x3b

    #@15
    invoke-direct {p1, p2}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    #@18
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    #@1a
    .line 69
    new-instance p1, Lcom/google/android/material/timepicker/MaxInputValidator;

    #@1c
    const/4 p2, 0x1

    #@1d
    if-ne p4, p2, :cond_22

    #@1f
    const/16 p2, 0x18

    #@21
    goto :goto_24

    #@22
    :cond_22
    const/16 p2, 0xc

    #@24
    :goto_24
    invoke-direct {p1, p2}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    #@27
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    #@29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    #@0
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result p1

    #@10
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    #@13
    return-void
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "%02d"

    #@2
    .line 192
    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@3
    move-result-object p0

    #@4
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@6
    const/4 v0, 0x1

    #@7
    new-array v0, v0, [Ljava/lang/Object;

    #@9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10
    move-result p1

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object p1

    #@15
    const/4 v1, 0x0

    #@16
    aput-object p1, v0, v1

    #@18
    .line 198
    invoke-static {p0, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1c} :catch_1d

    #@1c
    return-object p0

    #@1d
    :catch_1d
    const/4 p0, 0x0

    #@1e
    return-object p0
.end method

.method private static getPeriod(I)I
    .registers 2

    #@0
    const/16 v0, 0xc

    #@2
    if-lt p0, v0, :cond_6

    #@4
    const/4 p0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p0, 0x0

    #@7
    :goto_7
    return p0
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
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 142
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/timepicker/TimeModel;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 146
    :cond_a
    check-cast p1, Lcom/google/android/material/timepicker/TimeModel;

    #@c
    .line 147
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@e
    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@10
    if-ne v1, v3, :cond_25

    #@12
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@14
    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@16
    if-ne v1, v3, :cond_25

    #@18
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@1a
    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@1c
    if-ne v1, v3, :cond_25

    #@1e
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@20
    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@22
    if-ne v1, p1, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v0, v2

    #@26
    :goto_26
    return v0
.end method

.method public getHourContentDescriptionResId()I
    .registers 3

    #@0
    .line 119
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_8

    #@5
    sget v0, Lcom/google/android/material/R$string;->material_hour_24h_suffix:I

    #@7
    goto :goto_a

    #@8
    :cond_8
    sget v0, Lcom/google/android/material/R$string;->material_hour_suffix:I

    #@a
    :goto_a
    return v0
.end method

.method public getHourForDisplay()I
    .registers 5

    #@0
    .line 102
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_a

    #@5
    .line 103
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@7
    rem-int/lit8 v0, v0, 0x18

    #@9
    return v0

    #@a
    .line 106
    :cond_a
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@c
    rem-int/lit8 v2, v0, 0xc

    #@e
    const/16 v3, 0xc

    #@10
    if-nez v2, :cond_13

    #@12
    return v3

    #@13
    .line 110
    :cond_13
    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@15
    if-ne v2, v1, :cond_18

    #@17
    sub-int/2addr v0, v3

    #@18
    :cond_18
    return v0
.end method

.method public getHourInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .registers 2

    #@0
    .line 127
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    #@2
    return-object v0
.end method

.method public getMinuteInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .registers 2

    #@0
    .line 123
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 132
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    .line 133
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    return v0
.end method

.method public setHour(I)V
    .registers 5

    #@0
    .line 89
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_8

    #@5
    .line 90
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@7
    return-void

    #@8
    :cond_8
    const/16 v0, 0xc

    #@a
    .line 94
    rem-int/2addr p1, v0

    #@b
    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@d
    if-ne v2, v1, :cond_10

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    add-int/2addr p1, v0

    #@12
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@14
    return-void
.end method

.method public setHourOfDay(I)V
    .registers 3

    #@0
    .line 78
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@6
    .line 79
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@8
    return-void
.end method

.method public setMinute(I)V
    .registers 2

    #@0
    .line 98
    rem-int/lit8 p1, p1, 0x3c

    #@2
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@4
    return-void
.end method

.method public setPeriod(I)V
    .registers 5

    #@0
    .line 180
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@2
    if-eq p1, v0, :cond_1a

    #@4
    .line 181
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@6
    .line 182
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@8
    const/16 v1, 0xc

    #@a
    if-ge v0, v1, :cond_13

    #@c
    const/4 v2, 0x1

    #@d
    if-ne p1, v2, :cond_13

    #@f
    add-int/2addr v0, v1

    #@10
    .line 183
    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@12
    goto :goto_1a

    #@13
    :cond_13
    if-lt v0, v1, :cond_1a

    #@15
    if-nez p1, :cond_1a

    #@17
    sub-int/2addr v0, v1

    #@18
    .line 185
    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 160
    iget p2, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 161
    iget p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 162
    iget p2, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 163
    iget p2, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    return-void
.end method
