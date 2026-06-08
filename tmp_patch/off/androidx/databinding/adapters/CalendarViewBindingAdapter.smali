.class public Landroidx/databinding/adapters/CalendarViewBindingAdapter;
.super Ljava/lang/Object;
.source "CalendarViewBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setDate(Landroid/widget/CalendarView;J)V
    .registers 5

    #@0
    .line 36
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getDate()J

    #@3
    move-result-wide v0

    #@4
    cmp-long v0, v0, p1

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarView;->setDate(J)V

    #@b
    :cond_b
    return-void
.end method

.method public static setListeners(Landroid/widget/CalendarView;Landroid/widget/CalendarView$OnDateChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    #@5
    goto :goto_e

    #@6
    .line 48
    :cond_6
    new-instance v0, Landroidx/databinding/adapters/CalendarViewBindingAdapter$1;

    #@8
    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/CalendarViewBindingAdapter$1;-><init>(Landroid/widget/CalendarView$OnDateChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    #@e
    :goto_e
    return-void
.end method
