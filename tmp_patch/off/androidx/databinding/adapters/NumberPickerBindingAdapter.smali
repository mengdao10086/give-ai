.class public Landroidx/databinding/adapters/NumberPickerBindingAdapter;
.super Ljava/lang/Object;
.source "NumberPickerBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setListeners(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$OnValueChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@5
    goto :goto_e

    #@6
    .line 56
    :cond_6
    new-instance v0, Landroidx/databinding/adapters/NumberPickerBindingAdapter$1;

    #@8
    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/NumberPickerBindingAdapter$1;-><init>(Landroid/widget/NumberPicker$OnValueChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@e
    :goto_e
    return-void
.end method

.method public static setValue(Landroid/widget/NumberPicker;I)V
    .registers 3

    #@0
    .line 44
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_9

    #@6
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    #@9
    :cond_9
    return-void
.end method
