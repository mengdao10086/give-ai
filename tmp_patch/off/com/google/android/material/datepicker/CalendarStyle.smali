.class final Lcom/google/android/material/datepicker/CalendarStyle;
.super Ljava/lang/Object;
.source "CalendarStyle.java"


# instance fields
.field final day:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field final invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field final rangeFill:Landroid/graphics/Paint;

.field final selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field final selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field final todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field final todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field final year:Lcom/google/android/material/datepicker/CalendarItemStyle;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    #@0
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    #@5
    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    #@7
    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 76
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    #@e
    move-result v0

    #@f
    .line 78
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    #@11
    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@14
    move-result-object v0

    #@15
    .line 81
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayStyle:I

    #@17
    const/4 v2, 0x0

    #@18
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1b
    move-result v1

    #@1c
    .line 82
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@22
    .line 84
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayInvalidStyle:I

    #@24
    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@27
    move-result v1

    #@28
    .line 85
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@2e
    .line 88
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_daySelectedStyle:I

    #@30
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@33
    move-result v1

    #@34
    .line 89
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@37
    move-result-object v1

    #@38
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@3a
    .line 92
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayTodayStyle:I

    #@3c
    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3f
    move-result v1

    #@40
    .line 93
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@43
    move-result-object v1

    #@44
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@46
    .line 96
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_rangeFillColor:I

    #@48
    .line 97
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@4b
    move-result-object v1

    #@4c
    .line 100
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearStyle:I

    #@4e
    .line 102
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@51
    move-result v3

    #@52
    .line 101
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@55
    move-result-object v3

    #@56
    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@58
    .line 103
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearSelectedStyle:I

    #@5a
    .line 106
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5d
    move-result v3

    #@5e
    .line 104
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@61
    move-result-object v3

    #@62
    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@64
    .line 107
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearTodayStyle:I

    #@66
    .line 110
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@69
    move-result v2

    #@6a
    .line 108
    invoke-static {p1, v2}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@6d
    move-result-object p1

    #@6e
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@70
    .line 112
    new-instance p1, Landroid/graphics/Paint;

    #@72
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@75
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    #@77
    .line 113
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@7a
    move-result v1

    #@7b
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@7e
    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@81
    return-void
.end method
