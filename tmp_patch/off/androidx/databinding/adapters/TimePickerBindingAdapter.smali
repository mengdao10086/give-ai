.class public Landroidx/databinding/adapters/TimePickerBindingAdapter;
.super Ljava/lang/Object;
.source "TimePickerBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getHour(Landroid/widget/TimePicker;)I
    .registers 1

    #@0
    .line 64
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getHour()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMinute(Landroid/widget/TimePicker;)I
    .registers 1

    #@0
    .line 79
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getMinute()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static setHour(Landroid/widget/TimePicker;I)V
    .registers 3

    #@0
    .line 37
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getHour()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_9

    #@6
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->setHour(I)V

    #@9
    :cond_9
    return-void
.end method

.method public static setListeners(Landroid/widget/TimePicker;Landroid/widget/TimePicker$OnTimeChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 5

    #@0
    if-nez p2, :cond_8

    #@2
    if-nez p3, :cond_8

    #@4
    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    #@7
    goto :goto_10

    #@8
    .line 98
    :cond_8
    new-instance v0, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;

    #@a
    invoke-direct {v0, p1, p2, p3}, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;-><init>(Landroid/widget/TimePicker$OnTimeChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V

    #@d
    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    #@10
    :goto_10
    return-void
.end method

.method public static setMinute(Landroid/widget/TimePicker;I)V
    .registers 3

    #@0
    .line 51
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getMinute()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_9

    #@6
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->setMinute(I)V

    #@9
    :cond_9
    return-void
.end method
