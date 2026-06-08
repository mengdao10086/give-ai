.class Lcom/google/android/material/datepicker/DaysOfWeekAdapter;
.super Landroid/widget/BaseAdapter;
.source "DaysOfWeekAdapter.java"


# static fields
.field private static final CALENDAR_DAY_STYLE:I

.field private static final NARROW_FORMAT:I = 0x4


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final daysInWeek:I

.field private final firstDayOfWeek:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x4

    #@1
    .line 47
    sput v0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 40
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    #@9
    const/4 v1, 0x7

    #@a
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    #@10
    .line 54
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->firstDayOfWeek:I

    #@16
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 40
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    #@9
    const/4 v1, 0x7

    #@a
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    #@10
    .line 58
    iput p1, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->firstDayOfWeek:I

    #@12
    return-void
.end method

.method private positionToDayOfWeek(I)I
    .registers 3

    #@0
    .line 104
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->firstDayOfWeek:I

    #@2
    add-int/2addr p1, v0

    #@3
    .line 105
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    #@5
    if-le p1, v0, :cond_8

    #@7
    sub-int/2addr p1, v0

    #@8
    :cond_8
    return p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    #@0
    .line 78
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    #@2
    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .registers 3

    #@0
    .line 64
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    #@2
    if-lt p1, v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 67
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    #@9
    move-result p1

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    #@0
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->getItem(I)Ljava/lang/Integer;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    #@0
    .line 85
    move-object v0, p2

    #@1
    check-cast v0, Landroid/widget/TextView;

    #@3
    const/4 v1, 0x0

    #@4
    if-nez p2, :cond_17

    #@6
    .line 87
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@9
    move-result-object p2

    #@a
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@d
    move-result-object p2

    #@e
    .line 88
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_day_of_week:I

    #@10
    .line 89
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@13
    move-result-object p2

    #@14
    move-object v0, p2

    #@15
    check-cast v0, Landroid/widget/TextView;

    #@17
    .line 91
    :cond_17
    iget-object p2, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    #@19
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    #@1c
    move-result p1

    #@1d
    const/4 v2, 0x7

    #@1e
    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->set(II)V

    #@21
    .line 92
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@28
    move-result-object p1

    #@29
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2b
    .line 93
    iget-object p2, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    #@2d
    sget v3, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    #@2f
    .line 94
    invoke-virtual {p2, v2, v3, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@36
    .line 97
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@39
    move-result-object p1

    #@3a
    sget p2, Lcom/google/android/material/R$string;->mtrl_picker_day_of_week_column_header:I

    #@3c
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    const/4 p2, 0x1

    #@41
    new-array p2, p2, [Ljava/lang/Object;

    #@43
    iget-object p3, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    #@45
    const/4 v3, 0x2

    #@46
    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {p3, v2, v3, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    #@4d
    move-result-object p3

    #@4e
    aput-object p3, p2, v1

    #@50
    .line 96
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object p1

    #@54
    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@57
    return-object v0
.end method
