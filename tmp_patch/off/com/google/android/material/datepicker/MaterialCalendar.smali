.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;,
        Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/PickerFragment<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final CURRENT_MONTH_KEY:Ljava/lang/String; = "CURRENT_MONTH_KEY"

.field private static final DAY_VIEW_DECORATOR_KEY:Ljava/lang/String; = "DAY_VIEW_DECORATOR_KEY"

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

.field static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;

.field static final NAVIGATION_PREV_TAG:Ljava/lang/Object;

.field static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

.field private static final SMOOTH_SCROLL_MAX:I = 0x3

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field private calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field private current:Lcom/google/android/material/datepicker/Month;

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private dayFrame:Landroid/view/View;

.field private dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

.field private monthNext:Landroid/view/View;

.field private monthPrev:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeResId:I

.field private yearFrame:Landroid/view/View;

.field private yearSelector:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    #@2
    .line 76
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    #@4
    const-string v0, "NAVIGATION_PREV_TAG"

    #@6
    .line 78
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    #@8
    const-string v0, "NAVIGATION_NEXT_TAG"

    #@a
    .line 80
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    #@c
    const-string v0, "SELECTOR_TOGGLE_TAG"

    #@e
    .line 82
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 61
    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@2
    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    #@2
    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .registers 2

    #@0
    .line 61
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object p1
.end method

.method private addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .registers 6

    #@0
    .line 405
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    #@8
    .line 406
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    #@a
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    #@d
    .line 407
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$6;

    #@f
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$6;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    #@12
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@15
    .line 422
    sget v1, Lcom/google/android/material/R$id;->month_navigation_previous:I

    #@17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    #@1d
    .line 423
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    #@1f
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@22
    .line 424
    sget v1, Lcom/google/android/material/R$id;->month_navigation_next:I

    #@24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    #@2a
    .line 425
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    #@2c
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@2f
    .line 427
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    #@31
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@34
    move-result-object v1

    #@35
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    #@37
    .line 428
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    #@39
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object p1

    #@3d
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    #@3f
    .line 429
    sget-object p1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@41
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    #@44
    .line 430
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@46
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    #@4d
    .line 431
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4f
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$7;

    #@51
    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar$7;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/button/MaterialButton;)V

    #@54
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    #@57
    .line 458
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendar$8;

    #@59
    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    #@5c
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5f
    .line 466
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    #@61
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$9;

    #@63
    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$9;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    #@66
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@69
    .line 476
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    #@6b
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    #@6d
    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    #@70
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@73
    return-void
.end method

.method private createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .registers 2

    #@0
    .line 267
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$5;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    #@5
    return-object v0
.end method

.method static getDayHeight(Landroid/content/Context;)I
    .registers 2

    #@0
    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    #@6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9
    move-result p0

    #@a
    return p0
.end method

.method private static getDialogPickerHeight(Landroid/content/Context;)I
    .registers 6

    #@0
    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    .line 500
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    #@6
    .line 501
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9
    move-result v0

    #@a
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    #@c
    .line 502
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    #@13
    .line 503
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    .line 504
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    #@1a
    .line 505
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1d
    move-result v1

    #@1e
    .line 506
    sget v2, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    #@20
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    #@22
    .line 508
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@25
    move-result v3

    #@26
    mul-int/2addr v2, v3

    #@27
    sget v3, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    #@29
    add-int/lit8 v3, v3, -0x1

    #@2b
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    #@2d
    .line 510
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@30
    move-result v4

    #@31
    mul-int/2addr v3, v4

    #@32
    add-int/2addr v2, v3

    #@33
    .line 511
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    #@35
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@38
    move-result p0

    #@39
    add-int/2addr v0, v1

    #@3a
    add-int/2addr v0, v2

    #@3b
    add-int/2addr v0, p0

    #@3c
    return v0
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 103
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/DayViewDecorator;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 112
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    #@5
    .line 113
    new-instance v1, Landroid/os/Bundle;

    #@7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@a
    const-string v2, "THEME_RES_ID_KEY"

    #@c
    .line 114
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f
    const-string p1, "GRID_SELECTOR_KEY"

    #@11
    .line 115
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@14
    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    #@16
    .line 116
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@19
    const-string p0, "DAY_VIEW_DECORATOR_KEY"

    #@1b
    .line 117
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1e
    const-string p0, "CURRENT_MONTH_KEY"

    #@20
    .line 118
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@27
    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setArguments(Landroid/os/Bundle;)V

    #@2a
    return-object v0
.end method

.method private postSmoothRecyclerViewScroll(I)V
    .registers 4

    #@0
    .line 489
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$11;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar$11;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    #@7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    #@a
    return-void
.end method

.method private setUpForAccessibility()V
    .registers 3

    #@0
    .line 253
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$4;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$4;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    #@7
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@a
    return-void
.end method


# virtual methods
.method public addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    #@0
    .line 522
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;
    .registers 2

    #@0
    .line 325
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@2
    return-object v0
.end method

.method getCalendarStyle()Lcom/google/android/material/datepicker/CalendarStyle;
    .registers 2

    #@0
    .line 359
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@2
    return-object v0
.end method

.method getCurrentMonth()Lcom/google/android/material/datepicker/Month;
    .registers 2

    #@0
    .line 319
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@2
    return-object v0
.end method

.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    #@0
    .line 355
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@2
    return-object v0
.end method

.method getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .registers 2

    #@0
    .line 517
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    #@8
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 135
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    if-nez p1, :cond_9

    #@5
    .line 136
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getArguments()Landroid/os/Bundle;

    #@8
    move-result-object p1

    #@9
    :cond_9
    const-string v0, "THEME_RES_ID_KEY"

    #@b
    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    #@11
    const-string v0, "GRID_SELECTOR_KEY"

    #@13
    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    #@19
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@1b
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    #@1d
    .line 139
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    #@23
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@25
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    #@27
    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/google/android/material/datepicker/DayViewDecorator;

    #@2d
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@2f
    const-string v0, "CURRENT_MONTH_KEY"

    #@31
    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@34
    move-result-object p1

    #@35
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    #@37
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    #@0
    .line 150
    new-instance v6, Landroid/view/ContextThemeWrapper;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    #@8
    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@b
    .line 151
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    #@d
    invoke-direct {v0, v6}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    #@10
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@12
    .line 152
    invoke-virtual {p1, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@15
    move-result-object v0

    #@16
    .line 154
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@18
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    #@1b
    move-result-object v1

    #@1c
    .line 158
    invoke-static {v6}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    #@1f
    move-result v2

    #@20
    const/4 v7, 0x1

    #@21
    const/4 v8, 0x0

    #@22
    if-eqz v2, :cond_28

    #@24
    .line 159
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    #@26
    move v5, v7

    #@27
    goto :goto_2b

    #@28
    .line 162
    :cond_28
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    #@2a
    move v5, v8

    #@2b
    .line 166
    :goto_2b
    invoke-virtual {v0, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@2e
    move-result-object v9

    #@2f
    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->requireContext()Landroid/content/Context;

    #@32
    move-result-object v0

    #@33
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDialogPickerHeight(Landroid/content/Context;)I

    #@36
    move-result v0

    #@37
    invoke-virtual {v9, v0}, Landroid/view/View;->setMinimumHeight(I)V

    #@3a
    .line 168
    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    #@3c
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/widget/GridView;

    #@42
    .line 169
    new-instance v2, Lcom/google/android/material/datepicker/MaterialCalendar$1;

    #@44
    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    #@47
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@4a
    .line 180
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@4c
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getFirstDayOfWeek()I

    #@4f
    move-result v2

    #@50
    .line 182
    new-instance v3, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;

    #@52
    if-lez v2, :cond_58

    #@54
    invoke-direct {v3, v2}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>(I)V

    #@57
    goto :goto_5b

    #@58
    :cond_58
    invoke-direct {v3}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>()V

    #@5b
    .line 181
    :goto_5b
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@5e
    .line 183
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    #@60
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    #@63
    .line 184
    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setEnabled(Z)V

    #@66
    .line 186
    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    #@68
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    #@6e
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@70
    .line 188
    new-instance v10, Lcom/google/android/material/datepicker/MaterialCalendar$2;

    #@72
    .line 189
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getContext()Landroid/content/Context;

    #@75
    move-result-object v2

    #@76
    const/4 v4, 0x0

    #@77
    move-object v0, v10

    #@78
    move-object v1, p0

    #@79
    move v3, v5

    #@7a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/MaterialCalendar$2;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Landroid/content/Context;IZI)V

    #@7d
    .line 201
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7f
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    #@82
    .line 202
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@84
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    #@86
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    #@89
    .line 204
    new-instance v10, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    #@8b
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@8d
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@8f
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@91
    new-instance v5, Lcom/google/android/material/datepicker/MaterialCalendar$3;

    #@93
    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$3;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    #@96
    move-object v0, v10

    #@97
    move-object v1, v6

    #@98
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V

    #@9b
    .line 227
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@9d
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@a0
    .line 230
    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    #@a3
    move-result-object v0

    #@a4
    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    #@a6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@a9
    move-result v0

    #@aa
    .line 231
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    #@ac
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@af
    move-result-object v1

    #@b0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    #@b2
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    #@b4
    if-eqz v1, :cond_d6

    #@b6
    .line 233
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    #@b9
    .line 234
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    #@bb
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    #@bd
    invoke-direct {v2, v6, v0, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    #@c0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    #@c3
    .line 236
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    #@c5
    new-instance v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    #@c7
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/YearGridAdapter;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    #@ca
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@cd
    .line 237
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    #@cf
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@d6
    .line 240
    :cond_d6
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    #@d8
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@db
    move-result-object v0

    #@dc
    if-eqz v0, :cond_e1

    #@de
    .line 241
    invoke-direct {p0, v9, v10}, Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    #@e1
    .line 244
    :cond_e1
    invoke-static {v6}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    #@e4
    move-result v0

    #@e5
    if-nez v0, :cond_f1

    #@e7
    .line 245
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    #@e9
    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    #@ec
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@ee
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    #@f1
    .line 247
    :cond_f1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@f3
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@f5
    invoke-virtual {v10, v1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    #@f8
    move-result v1

    #@f9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@fc
    .line 248
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setUpForAccessibility()V

    #@ff
    return-object v9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 125
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    const-string v0, "THEME_RES_ID_KEY"

    #@5
    .line 126
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    const-string v0, "GRID_SELECTOR_KEY"

    #@c
    .line 127
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@11
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    #@13
    .line 128
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@18
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    #@1a
    .line 129
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1f
    const-string v0, "CURRENT_MONTH_KEY"

    #@21
    .line 130
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@26
    return-void
.end method

.method setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V
    .registers 8

    #@0
    .line 335
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    #@8
    .line 336
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    #@b
    move-result v1

    #@c
    .line 337
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@e
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    #@11
    move-result v0

    #@12
    sub-int v0, v1, v0

    #@14
    .line 338
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@17
    move-result v2

    #@18
    const/4 v3, 0x3

    #@19
    const/4 v4, 0x1

    #@1a
    const/4 v5, 0x0

    #@1b
    if-le v2, v3, :cond_1f

    #@1d
    move v2, v4

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v2, v5

    #@20
    :goto_20
    if-lez v0, :cond_23

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v4, v5

    #@24
    .line 340
    :goto_24
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@26
    if-eqz v2, :cond_35

    #@28
    if-eqz v4, :cond_35

    #@2a
    .line 342
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2c
    add-int/lit8 v0, v1, -0x3

    #@2e
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@31
    .line 343
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    #@34
    goto :goto_45

    #@35
    :cond_35
    if-eqz v2, :cond_42

    #@37
    .line 345
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@39
    add-int/lit8 v0, v1, 0x3

    #@3b
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@3e
    .line 346
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    #@41
    goto :goto_45

    #@42
    .line 348
    :cond_42
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    #@45
    :goto_45
    return-void
.end method

.method setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .registers 6

    #@0
    .line 374
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@2
    .line 375
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@4
    const/16 v1, 0x8

    #@6
    const/4 v2, 0x0

    #@7
    if-ne p1, v0, :cond_37

    #@9
    .line 376
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    #@b
    .line 377
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    move-result-object p1

    #@f
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    #@11
    .line 379
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/material/datepicker/YearGridAdapter;

    #@17
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@19
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->year:I

    #@1b
    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    #@1e
    move-result v0

    #@1f
    .line 378
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    #@22
    .line 380
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    #@24
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@27
    .line 381
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    #@29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@2c
    .line 382
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    #@2e
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@31
    .line 383
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    #@33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@36
    goto :goto_54

    #@37
    .line 384
    :cond_37
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@39
    if-ne p1, v0, :cond_54

    #@3b
    .line 385
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    #@3d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@40
    .line 386
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    #@42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@45
    .line 387
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    #@47
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@4a
    .line 388
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    #@4c
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@4f
    .line 391
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    #@51
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    #@54
    :cond_54
    :goto_54
    return-void
.end method

.method toggleVisibleSelector()V
    .registers 3

    #@0
    .line 396
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@2
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@4
    if-ne v0, v1, :cond_c

    #@6
    .line 397
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    #@b
    goto :goto_17

    #@c
    .line 398
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@e
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@10
    if-ne v0, v1, :cond_17

    #@12
    .line 399
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    #@14
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    #@17
    :cond_17
    :goto_17
    return-void
.end method
