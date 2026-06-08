.class Lcom/google/android/material/timepicker/TimePickerClockPresenter;
.super Ljava/lang/Object;
.source "TimePickerClockPresenter.java"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
.implements Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;
.implements Lcom/google/android/material/timepicker/TimePickerPresenter;


# static fields
.field private static final DEGREES_PER_HOUR:I = 0x1e

.field private static final DEGREES_PER_MINUTE:I = 0x6

.field private static final HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

.field private static final HOUR_CLOCK_VALUES:[Ljava/lang/String;

.field private static final MINUTE_CLOCK_VALUES:[Ljava/lang/String;


# instance fields
.field private broadcasting:Z

.field private hourRotation:F

.field private minuteRotation:F

.field private final time:Lcom/google/android/material/timepicker/TimeModel;

.field private final timePickerView:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    #@0
    const-string v0, "12"

    #@2
    const-string v1, "1"

    #@4
    const-string v2, "2"

    #@6
    const-string v3, "3"

    #@8
    const-string v4, "4"

    #@a
    const-string v5, "5"

    #@c
    const-string v6, "6"

    #@e
    const-string v7, "7"

    #@10
    const-string v8, "8"

    #@12
    const-string v9, "9"

    #@14
    const-string v10, "10"

    #@16
    const-string v11, "11"

    #@18
    .line 50
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    #@1e
    const-string v1, "00"

    #@20
    const-string v2, "1"

    #@22
    const-string v3, "2"

    #@24
    const-string v4, "3"

    #@26
    const-string v5, "4"

    #@28
    const-string v6, "5"

    #@2a
    const-string v7, "6"

    #@2c
    const-string v8, "7"

    #@2e
    const-string v9, "8"

    #@30
    const-string v10, "9"

    #@32
    const-string v11, "10"

    #@34
    const-string v12, "11"

    #@36
    const-string v13, "12"

    #@38
    const-string v14, "13"

    #@3a
    const-string v15, "14"

    #@3c
    const-string v16, "15"

    #@3e
    const-string v17, "16"

    #@40
    const-string v18, "17"

    #@42
    const-string v19, "18"

    #@44
    const-string v20, "19"

    #@46
    const-string v21, "20"

    #@48
    const-string v22, "21"

    #@4a
    const-string v23, "22"

    #@4c
    const-string v24, "23"

    #@4e
    .line 53
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    sput-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

    #@54
    const-string v1, "00"

    #@56
    const-string v2, "5"

    #@58
    const-string v3, "10"

    #@5a
    const-string v4, "15"

    #@5c
    const-string v5, "20"

    #@5e
    const-string v6, "25"

    #@60
    const-string v7, "30"

    #@62
    const-string v8, "35"

    #@64
    const-string v9, "40"

    #@66
    const-string v10, "45"

    #@68
    const-string v11, "50"

    #@6a
    const-string v12, "55"

    #@6c
    .line 58
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    sput-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    #@72
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V
    .registers 4

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 69
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    #@6
    .line 72
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@8
    .line 73
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@a
    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->initialize()V

    #@d
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/TimePickerClockPresenter;)Lcom/google/android/material/timepicker/TimeModel;
    .registers 1

    #@0
    .line 43
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    return-object p0
.end method

.method private getHourClockValues()[Ljava/lang/String;
    .registers 3

    #@0
    .line 110
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_a

    #@7
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

    #@9
    goto :goto_c

    #@a
    :cond_a
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    #@c
    :goto_c
    return-object v0
.end method

.method private getHourRotation()I
    .registers 2

    #@0
    .line 259
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1e

    #@8
    rem-int/lit16 v0, v0, 0x168

    #@a
    return v0
.end method

.method private performHapticFeedback(II)V
    .registers 4

    #@0
    .line 149
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@4
    if-ne v0, p2, :cond_c

    #@6
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@8
    iget p2, p2, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@a
    if-eq p2, p1, :cond_12

    #@c
    .line 151
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@e
    const/4 p2, 0x4

    #@f
    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->performHapticFeedback(I)Z

    #@12
    :cond_12
    return-void
.end method

.method private updateCurrentLevel()V
    .registers 4

    #@0
    .line 204
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@4
    const/16 v1, 0xa

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v0, v1, :cond_18

    #@9
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@b
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@d
    if-ne v0, v2, :cond_18

    #@f
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@11
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@13
    const/16 v1, 0xc

    #@15
    if-lt v0, v1, :cond_18

    #@17
    const/4 v2, 0x2

    #@18
    .line 207
    :cond_18
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@1a
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/TimePickerView;->setCurrentLevel(I)V

    #@1d
    return-void
.end method

.method private updateTime()V
    .registers 5

    #@0
    .line 243
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@2
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@4
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@6
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@8
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    #@b
    move-result v2

    #@c
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@e
    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@10
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->updateTime(III)V

    #@13
    return-void
.end method

.method private updateValues()V
    .registers 3

    #@0
    .line 248
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    #@2
    const-string v1, "%d"

    #@4
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues([Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 249
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    #@9
    const-string v1, "%02d"

    #@b
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues([Ljava/lang/String;Ljava/lang/String;)V

    #@e
    return-void
.end method

.method private updateValues([Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 253
    :goto_1
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_15

    #@4
    .line 254
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@6
    invoke-virtual {v1}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    aget-object v2, p1, v0

    #@c
    invoke-static {v1, v2, p2}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    aput-object v1, p1, v0

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_1

    #@15
    :cond_15
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    #@0
    .line 106
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    #@7
    return-void
.end method

.method public initialize()V
    .registers 2

    #@0
    .line 79
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@4
    if-nez v0, :cond_b

    #@6
    .line 80
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerView;->showToggle()V

    #@b
    .line 83
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@d
    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    #@10
    .line 84
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@12
    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnSelectionChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V

    #@15
    .line 85
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@17
    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnPeriodChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V

    #@1a
    .line 86
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@1c
    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    #@1f
    .line 87
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues()V

    #@22
    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->invalidate()V

    #@25
    return-void
.end method

.method public invalidate()V
    .registers 3

    #@0
    .line 93
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getHourRotation()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    iput v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    #@7
    .line 94
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@9
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@b
    mul-int/lit8 v0, v0, 0x6

    #@d
    int-to-float v0, v0

    #@e
    iput v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    #@10
    .line 95
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@12
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    #@18
    .line 96
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    #@1b
    return-void
.end method

.method public onActionUp(FZ)V
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    .line 212
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    #@3
    .line 213
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@5
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@7
    .line 214
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@9
    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@b
    .line 215
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@d
    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@f
    const/16 v4, 0xa

    #@11
    const/4 v5, 0x0

    #@12
    if-ne v3, v4, :cond_3c

    #@14
    .line 218
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@16
    iget p2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    #@18
    invoke-virtual {p1, p2, v5}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    #@1b
    .line 221
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@1d
    .line 222
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    #@20
    move-result-object p1

    #@21
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    #@23
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    #@26
    move-result-object p1

    #@27
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    #@29
    if-eqz p1, :cond_33

    #@2b
    .line 223
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@2e
    move-result p1

    #@2f
    if-eqz p1, :cond_33

    #@31
    move p1, v0

    #@32
    goto :goto_34

    #@33
    :cond_33
    move p1, v5

    #@34
    :goto_34
    if-nez p1, :cond_5d

    #@36
    const/16 p1, 0xc

    #@38
    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    #@3b
    goto :goto_5d

    #@3c
    .line 228
    :cond_3c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@3f
    move-result p1

    #@40
    if-nez p2, :cond_56

    #@42
    add-int/lit8 p1, p1, 0xf

    #@44
    .line 231
    div-int/lit8 p1, p1, 0x1e

    #@46
    .line 232
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@48
    mul-int/lit8 p1, p1, 0x5

    #@4a
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    #@4d
    .line 233
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@4f
    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@51
    mul-int/lit8 p1, p1, 0x6

    #@53
    int-to-float p1, p1

    #@54
    iput p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    #@56
    .line 235
    :cond_56
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@58
    iget v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    #@5a
    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    #@5d
    .line 237
    :cond_5d
    :goto_5d
    iput-boolean v5, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    #@5f
    .line 238
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    #@62
    .line 239
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->performHapticFeedback(II)V

    #@65
    return-void
.end method

.method public onPeriodChange(I)V
    .registers 3

    #@0
    .line 162
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setPeriod(I)V

    #@5
    return-void
.end method

.method public onRotate(FZ)V
    .registers 7

    #@0
    .line 115
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 119
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@7
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@9
    .line 120
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@b
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@d
    .line 121
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@10
    move-result p1

    #@11
    .line 122
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@13
    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@15
    const/16 v3, 0xc

    #@17
    if-ne v2, v3, :cond_31

    #@19
    .line 124
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@1b
    add-int/lit8 p1, p1, 0x3

    #@1d
    div-int/lit8 p1, p1, 0x6

    #@1f
    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    #@22
    .line 125
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@24
    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@26
    mul-int/lit8 p1, p1, 0x6

    #@28
    int-to-double v2, p1

    #@29
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@2c
    move-result-wide v2

    #@2d
    double-to-float p1, v2

    #@2e
    iput p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    #@30
    goto :goto_55

    #@31
    :cond_31
    add-int/lit8 p1, p1, 0xf

    #@33
    .line 129
    div-int/lit8 p1, p1, 0x1e

    #@35
    .line 130
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@37
    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@39
    const/4 v3, 0x1

    #@3a
    if-ne v2, v3, :cond_49

    #@3c
    .line 131
    rem-int/lit8 p1, p1, 0xc

    #@3e
    .line 132
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@40
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimePickerView;->getCurrentLevel()I

    #@43
    move-result v2

    #@44
    const/4 v3, 0x2

    #@45
    if-ne v2, v3, :cond_49

    #@47
    add-int/lit8 p1, p1, 0xc

    #@49
    .line 137
    :cond_49
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@4b
    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    #@4e
    .line 138
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getHourRotation()I

    #@51
    move-result p1

    #@52
    int-to-float p1, p1

    #@53
    iput p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    #@55
    :goto_55
    if-nez p2, :cond_5d

    #@57
    .line 143
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    #@5a
    .line 144
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->performHapticFeedback(II)V

    #@5d
    :cond_5d
    return-void
.end method

.method public onSelectionChanged(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    #@4
    return-void
.end method

.method setSelection(IZ)V
    .registers 7

    #@0
    const/16 v0, 0xc

    #@2
    if-ne p1, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    .line 168
    :goto_7
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@9
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->setAnimateOnTouchUp(Z)V

    #@c
    .line 169
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@e
    iput p1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@10
    .line 170
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@12
    if-eqz v0, :cond_17

    #@14
    .line 171
    sget-object v2, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    #@16
    goto :goto_1b

    #@17
    :cond_17
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getHourClockValues()[Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    :goto_1b
    if-eqz v0, :cond_20

    #@1d
    .line 172
    sget v3, Lcom/google/android/material/R$string;->material_minute_suffix:I

    #@1f
    goto :goto_26

    #@20
    :cond_20
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@22
    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimeModel;->getHourContentDescriptionResId()I

    #@25
    move-result v3

    #@26
    .line 170
    :goto_26
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->setValues([Ljava/lang/String;I)V

    #@29
    .line 173
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateCurrentLevel()V

    #@2c
    .line 174
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@2e
    if-eqz v0, :cond_33

    #@30
    iget v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    #@32
    goto :goto_35

    #@33
    :cond_33
    iget v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    #@35
    :goto_35
    invoke-virtual {v1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    #@38
    .line 175
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@3a
    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimePickerView;->setActiveSelection(I)V

    #@3d
    .line 176
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@3f
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;

    #@41
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@43
    .line 177
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    #@46
    move-result-object v0

    #@47
    sget v1, Lcom/google/android/material/R$string;->material_hour_selection:I

    #@49
    invoke-direct {p2, p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;-><init>(Lcom/google/android/material/timepicker/TimePickerClockPresenter;Landroid/content/Context;I)V

    #@4c
    .line 176
    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@4f
    .line 189
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@51
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;

    #@53
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@55
    .line 190
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    #@58
    move-result-object v0

    #@59
    sget v1, Lcom/google/android/material/R$string;->material_minute_selection:I

    #@5b
    invoke-direct {p2, p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;-><init>(Lcom/google/android/material/timepicker/TimePickerClockPresenter;Landroid/content/Context;I)V

    #@5e
    .line 189
    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@61
    return-void
.end method

.method public show()V
    .registers 3

    #@0
    .line 101
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    #@6
    return-void
.end method
