.class public Landroidx/databinding/adapters/DatePickerBindingAdapter;
.super Ljava/lang/Object;
.source "DatePickerBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setListeners(Landroid/widget/DatePicker;IIILandroid/widget/DatePicker$OnDateChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 10

    #@0
    if-nez p1, :cond_6

    #@2
    .line 44
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    #@5
    move-result p1

    #@6
    :cond_6
    if-nez p3, :cond_c

    #@8
    .line 47
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    #@b
    move-result p3

    #@c
    :cond_c
    if-nez p5, :cond_16

    #@e
    if-nez p6, :cond_16

    #@10
    if-nez p7, :cond_16

    #@12
    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@15
    goto :goto_31

    #@16
    .line 52
    :cond_16
    sget v0, Landroidx/databinding/library/baseAdapters/R$id;->onDateChanged:I

    #@18
    invoke-static {p0, v0}, Landroidx/databinding/adapters/ListenerUtil;->getListener(Landroid/view/View;I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;

    #@1e
    if-nez v0, :cond_2b

    #@20
    .line 54
    new-instance v0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-direct {v0, v1}, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;-><init>(Landroidx/databinding/adapters/DatePickerBindingAdapter$1;)V

    #@26
    .line 55
    sget v1, Landroidx/databinding/library/baseAdapters/R$id;->onDateChanged:I

    #@28
    invoke-static {p0, v0, v1}, Landroidx/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    #@2b
    .line 57
    :cond_2b
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->setListeners(Landroid/widget/DatePicker$OnDateChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V

    #@2e
    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@31
    :goto_31
    return-void
.end method
