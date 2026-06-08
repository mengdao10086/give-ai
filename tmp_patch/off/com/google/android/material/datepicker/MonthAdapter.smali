.class Lcom/google/android/material/datepicker/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# static fields
.field private static final MAXIMUM_GRID_CELLS:I

.field static final MAXIMUM_WEEKS:I

.field private static final NO_DAY_NUMBER:I = -0x1


# instance fields
.field final calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field final dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field final dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

.field final month:Lcom/google/android/material/datepicker/Month;

.field private previouslySelectedDates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 47
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    #@8
    move-result v0

    #@9
    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    #@b
    .line 51
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x5

    #@10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    #@13
    move-result v0

    #@14
    .line 52
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x7

    #@19
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    #@1c
    move-result v1

    #@1d
    add-int/2addr v0, v1

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    #@22
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/Month;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/DayViewDecorator;",
            ")V"
        }
    .end annotation

    #@0
    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@5
    .line 76
    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@7
    .line 77
    iput-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@9
    .line 78
    iput-object p4, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@b
    .line 79
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    #@11
    return-void
.end method

.method private getDayContentDescription(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10

    #@0
    .line 243
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isToday(J)Z

    #@3
    move-result v3

    #@4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isStartOfRange(J)Z

    #@7
    move-result v4

    #@8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isEndOfRange(J)Z

    #@b
    move-result v5

    #@c
    move-object v0, p1

    #@d
    move-wide v1, p2

    #@e
    .line 242
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/datepicker/DateStrings;->getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    return-object p1
.end method

.method private initializeStyles(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 280
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 281
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    #@6
    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@b
    :cond_b
    return-void
.end method

.method private isSelected(J)Z
    .registers 8

    #@0
    .line 271
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@2
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_28

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/Long;

    #@16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide v1

    #@1a
    .line 272
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    #@1d
    move-result-wide v3

    #@1e
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    #@21
    move-result-wide v1

    #@22
    cmp-long v1, v3, v1

    #@24
    if-nez v1, :cond_a

    #@26
    const/4 p1, 0x1

    #@27
    return p1

    #@28
    :cond_28
    const/4 p1, 0x0

    #@29
    return p1
.end method

.method private isToday(J)Z
    .registers 5

    #@0
    .line 247
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@7
    move-result-wide v0

    #@8
    cmp-long p1, v0, p1

    #@a
    if-nez p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method private updateSelectedState(Landroid/widget/TextView;JI)V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-wide/from16 v2, p2

    #@6
    if-nez v1, :cond_9

    #@8
    return-void

    #@9
    .line 188
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v9

    #@d
    .line 189
    invoke-direct {v0, v9, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->getDayContentDescription(Landroid/content/Context;J)Ljava/lang/String;

    #@10
    move-result-object v10

    #@11
    .line 190
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@14
    .line 193
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@16
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v4, v2, v3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    #@1d
    move-result v11

    #@1e
    if-eqz v11, :cond_44

    #@20
    const/4 v4, 0x1

    #@21
    .line 196
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    #@24
    .line 197
    invoke-direct {v0, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->isSelected(J)Z

    #@27
    move-result v4

    #@28
    .line 198
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    #@2b
    if-eqz v4, :cond_34

    #@2d
    .line 200
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@2f
    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@31
    :goto_31
    move-object v12, v2

    #@32
    move v13, v4

    #@33
    goto :goto_4e

    #@34
    .line 201
    :cond_34
    invoke-direct {v0, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->isToday(J)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_3f

    #@3a
    .line 202
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@3c
    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@3e
    goto :goto_31

    #@3f
    .line 204
    :cond_3f
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@41
    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@43
    goto :goto_31

    #@44
    :cond_44
    const/4 v2, 0x0

    #@45
    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    #@48
    .line 208
    iget-object v3, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@4a
    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@4c
    move v13, v2

    #@4d
    move-object v12, v3

    #@4e
    .line 211
    :goto_4e
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@50
    if-eqz v2, :cond_a0

    #@52
    const/4 v2, -0x1

    #@53
    move/from16 v14, p4

    #@55
    if-eq v14, v2, :cond_a0

    #@57
    .line 212
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@59
    iget v15, v2, Lcom/google/android/material/datepicker/Month;->year:I

    #@5b
    .line 213
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@5d
    iget v8, v2, Lcom/google/android/material/datepicker/Month;->month:I

    #@5f
    .line 215
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@61
    move-object v3, v9

    #@62
    move v4, v15

    #@63
    move v5, v8

    #@64
    move/from16 v6, p4

    #@66
    move v7, v11

    #@67
    move/from16 v16, v8

    #@69
    move v8, v13

    #@6a
    .line 216
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/datepicker/DayViewDecorator;->getBackgroundColor(Landroid/content/Context;IIIZZ)Landroid/content/res/ColorStateList;

    #@6d
    move-result-object v2

    #@6e
    .line 217
    invoke-virtual {v12, v1, v2}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    #@71
    .line 219
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@73
    move/from16 v5, v16

    #@75
    .line 220
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableLeft(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    #@78
    move-result-object v12

    #@79
    .line 222
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@7b
    .line 223
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableTop(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    #@7e
    move-result-object v8

    #@7f
    .line 224
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@81
    move-object v14, v8

    #@82
    move v8, v13

    #@83
    .line 225
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableRight(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    #@86
    move-result-object v8

    #@87
    .line 227
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@89
    move-object/from16 v17, v10

    #@8b
    move-object v10, v8

    #@8c
    move v8, v13

    #@8d
    .line 228
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableBottom(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    #@90
    move-result-object v2

    #@91
    .line 230
    invoke-virtual {v1, v12, v14, v10, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@94
    .line 232
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@96
    move-object/from16 v9, v17

    #@98
    .line 233
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/datepicker/DayViewDecorator;->getContentDescription(Landroid/content/Context;IIIZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@9b
    move-result-object v2

    #@9c
    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@9f
    goto :goto_a3

    #@a0
    .line 237
    :cond_a0
    invoke-virtual {v12, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;)V

    #@a3
    :goto_a3
    return-void
.end method

.method private updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .registers 7

    #@0
    .line 171
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_28

    #@c
    .line 173
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@e
    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/datepicker/Month;->getDayOfMonth(J)I

    #@11
    move-result v0

    #@12
    .line 177
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    #@19
    move-result v1

    #@1a
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    #@1d
    move-result v2

    #@1e
    sub-int/2addr v1, v2

    #@1f
    .line 176
    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Landroid/widget/TextView;

    #@25
    .line 174
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    #@28
    :cond_28
    return-void
.end method


# virtual methods
.method dayToPosition(I)I
    .registers 3

    #@0
    add-int/lit8 p1, p1, -0x1

    #@2
    .line 321
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@5
    move-result v0

    #@6
    add-int/2addr v0, p1

    #@7
    return v0
.end method

.method firstPositionInMonth()I
    .registers 3

    #@0
    .line 293
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@2
    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@4
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getFirstDayOfWeek()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getCount()I
    .registers 2

    #@0
    .line 119
    sget v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    #@2
    return v0
.end method

.method public getItem(I)Ljava/lang/Long;
    .registers 4

    #@0
    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@3
    move-result v0

    #@4
    if-lt p1, v0, :cond_1c

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    #@9
    move-result v0

    #@a
    if-le p1, v0, :cond_d

    #@c
    goto :goto_1c

    #@d
    .line 102
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@f
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->positionToDay(I)I

    #@12
    move-result p1

    #@13
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    #@16
    move-result-wide v0

    #@17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object p1

    #@1b
    return-object p1

    #@1c
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    #@1d
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    #@0
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    .line 107
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@2
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    #@4
    div-int/2addr p1, v0

    #@5
    int-to-long v0, p1

    #@6
    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    #@0
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .registers 9

    #@0
    .line 125
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->initializeStyles(Landroid/content/Context;)V

    #@7
    .line 126
    move-object v0, p2

    #@8
    check-cast v0, Landroid/widget/TextView;

    #@a
    const/4 v1, 0x0

    #@b
    if-nez p2, :cond_1e

    #@d
    .line 128
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@10
    move-result-object p2

    #@11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@14
    move-result-object p2

    #@15
    .line 129
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_day:I

    #@17
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1a
    move-result-object p2

    #@1b
    move-object v0, p2

    #@1c
    check-cast v0, Landroid/widget/TextView;

    #@1e
    .line 131
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@21
    move-result p2

    #@22
    sub-int p2, p1, p2

    #@24
    if-ltz p2, :cond_56

    #@26
    .line 133
    iget-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@28
    iget p3, p3, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    #@2a
    if-lt p2, p3, :cond_2d

    #@2c
    goto :goto_56

    #@2d
    :cond_2d
    const/4 p3, 0x1

    #@2e
    add-int/2addr p2, p3

    #@2f
    .line 139
    iget-object v2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@31
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@34
    .line 140
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@3b
    move-result-object v2

    #@3c
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3e
    new-array v3, p3, [Ljava/lang/Object;

    #@40
    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v4

    #@44
    aput-object v4, v3, v1

    #@46
    const-string v4, "%d"

    #@48
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4f
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@52
    .line 143
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    #@55
    goto :goto_5f

    #@56
    :cond_56
    :goto_56
    const/16 p2, 0x8

    #@58
    .line 134
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    #@5b
    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@5e
    const/4 p2, -0x1

    #@5f
    .line 146
    :goto_5f
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    #@62
    move-result-object p1

    #@63
    if-nez p1, :cond_66

    #@65
    return-object v0

    #@66
    .line 150
    :cond_66
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@69
    move-result-wide v1

    #@6a
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    #@6d
    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method isEndOfRange(J)Z
    .registers 6

    #@0
    .line 262
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@2
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_28

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/core/util/Pair;

    #@16
    .line 263
    iget-object v2, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@18
    if-eqz v2, :cond_a

    #@1a
    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@1c
    check-cast v1, Ljava/lang/Long;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@21
    move-result-wide v1

    #@22
    cmp-long v1, v1, p1

    #@24
    if-nez v1, :cond_a

    #@26
    const/4 p1, 0x1

    #@27
    return p1

    #@28
    :cond_28
    const/4 p1, 0x0

    #@29
    return p1
.end method

.method isFirstInRow(I)Z
    .registers 3

    #@0
    .line 334
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@2
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    #@4
    rem-int/2addr p1, v0

    #@5
    if-nez p1, :cond_9

    #@7
    const/4 p1, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return p1
.end method

.method isLastInRow(I)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    add-int/2addr p1, v0

    #@2
    .line 342
    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@4
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    #@6
    rem-int/2addr p1, v1

    #@7
    if-nez p1, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method isStartOfRange(J)Z
    .registers 6

    #@0
    .line 252
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@2
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_28

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/core/util/Pair;

    #@16
    .line 253
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@18
    if-eqz v2, :cond_a

    #@1a
    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@1c
    check-cast v1, Ljava/lang/Long;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@21
    move-result-wide v1

    #@22
    cmp-long v1, v1, p1

    #@24
    if-nez v1, :cond_a

    #@26
    const/4 p1, 0x1

    #@27
    return p1

    #@28
    :cond_28
    const/4 p1, 0x0

    #@29
    return p1
.end method

.method lastPositionInMonth()I
    .registers 3

    #@0
    .line 304
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    #@6
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    #@8
    add-int/2addr v0, v1

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    return v0
.end method

.method positionToDay(I)I
    .registers 3

    #@0
    .line 315
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@3
    move-result v0

    #@4
    sub-int/2addr p1, v0

    #@5
    add-int/lit8 p1, p1, 0x1

    #@7
    return p1
.end method

.method public updateSelectedStates(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .registers 5

    #@0
    .line 156
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1a

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/Long;

    #@12
    .line 157
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v1

    #@16
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    #@19
    goto :goto_6

    #@1a
    .line 161
    :cond_1a
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@1c
    if-eqz v0, :cond_42

    #@1e
    .line 162
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v0

    #@26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3a

    #@2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Ljava/lang/Long;

    #@32
    .line 163
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@35
    move-result-wide v1

    #@36
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    #@39
    goto :goto_26

    #@3a
    .line 166
    :cond_3a
    iget-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@3c
    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    #@3f
    move-result-object p1

    #@40
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    #@42
    :cond_42
    return-void
.end method

.method withinMonth(I)Z
    .registers 3

    #@0
    .line 326
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@3
    move-result v0

    #@4
    if-lt p1, v0, :cond_e

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    #@9
    move-result v0

    #@a
    if-gt p1, v0, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method
