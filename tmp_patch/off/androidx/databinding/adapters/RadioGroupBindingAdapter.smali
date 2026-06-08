.class public Landroidx/databinding/adapters/RadioGroupBindingAdapter;
.super Ljava/lang/Object;
.source "RadioGroupBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setCheckedButton(Landroid/widget/RadioGroup;I)V
    .registers 3

    #@0
    .line 36
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    #@3
    move-result v0

    #@4
    if-eq p1, v0, :cond_9

    #@6
    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    #@9
    :cond_9
    return-void
.end method

.method public static setListeners(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    #@5
    goto :goto_e

    #@6
    .line 48
    :cond_6
    new-instance v0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;

    #@8
    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;-><init>(Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    #@e
    :goto_e
    return-void
.end method
