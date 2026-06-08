.class Lcom/google/android/material/datepicker/YearGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "YearGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@5
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/YearGridAdapter;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .registers 1

    #@0
    .line 31
    iget-object p0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2
    return-object p0
.end method

.method private createYearClickListener(I)Landroid/view/View$OnClickListener;
    .registers 3

    #@0
    .line 80
    new-instance v0, Lcom/google/android/material/datepicker/YearGridAdapter$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/YearGridAdapter$1;-><init>(Lcom/google/android/material/datepicker/YearGridAdapter;I)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    #@0
    .line 94
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getYearSpan()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getPositionForYear(I)I
    .registers 3

    #@0
    .line 98
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    #@9
    move-result-object v0

    #@a
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    #@c
    sub-int/2addr p1, v0

    #@d
    return p1
.end method

.method getYearForPosition(I)I
    .registers 3

    #@0
    .line 102
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    #@9
    move-result-object v0

    #@a
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    #@c
    add-int/2addr v0, p1

    #@d
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    #@0
    .line 31
    check-cast p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/YearGridAdapter;->onBindViewHolder(Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;I)V

    #@5
    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;I)V
    .registers 10

    #@0
    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/YearGridAdapter;->getYearForPosition(I)I

    #@3
    move-result p2

    #@4
    .line 62
    iget-object v0, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    #@6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    new-array v3, v2, [Ljava/lang/Object;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    aput-object v5, v3, v4

    #@14
    const-string v4, "%d"

    #@16
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1d
    .line 63
    iget-object v0, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    #@1f
    iget-object v1, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    #@21
    .line 64
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getYearContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@2c
    .line 65
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2e
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarStyle()Lcom/google/android/material/datepicker/CalendarStyle;

    #@31
    move-result-object v0

    #@32
    .line 66
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@35
    move-result-object v1

    #@36
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@39
    move-result v3

    #@3a
    if-ne v3, p2, :cond_3f

    #@3c
    iget-object v3, v0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@3e
    goto :goto_41

    #@3f
    :cond_3f
    iget-object v3, v0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@41
    .line 68
    :goto_41
    iget-object v4, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@43
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@46
    move-result-object v4

    #@47
    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v4

    #@4f
    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_6b

    #@55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    check-cast v5, Ljava/lang/Long;

    #@5b
    .line 69
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@5e
    move-result-wide v5

    #@5f
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@62
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@65
    move-result v5

    #@66
    if-ne v5, p2, :cond_4f

    #@68
    .line 71
    iget-object v3, v0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@6a
    goto :goto_4f

    #@6b
    .line 74
    :cond_6b
    iget-object v0, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    #@6d
    invoke-virtual {v3, v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;)V

    #@70
    .line 75
    iget-object p1, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    #@72
    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/YearGridAdapter;->createYearClickListener(I)Landroid/view/View$OnClickListener;

    #@75
    move-result-object p2

    #@76
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@79
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    #@0
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/YearGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
    .registers 5

    #@0
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@3
    move-result-object p2

    #@4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object p2

    #@8
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_year:I

    #@a
    const/4 v1, 0x0

    #@b
    .line 55
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Landroid/widget/TextView;

    #@11
    .line 56
    new-instance p2, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    #@13
    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;-><init>(Landroid/widget/TextView;)V

    #@16
    return-object p2
.end method
