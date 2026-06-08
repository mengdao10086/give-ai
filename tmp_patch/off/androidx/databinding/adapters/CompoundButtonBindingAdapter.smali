.class public Landroidx/databinding/adapters/CompoundButtonBindingAdapter;
.super Ljava/lang/Object;
.source "CompoundButtonBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setChecked(Landroid/widget/CompoundButton;Z)V
    .registers 3

    #@0
    .line 43
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_9

    #@6
    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@9
    :cond_9
    return-void
.end method

.method public static setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@5
    goto :goto_e

    #@6
    .line 55
    :cond_6
    new-instance v0, Landroidx/databinding/adapters/CompoundButtonBindingAdapter$1;

    #@8
    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter$1;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@e
    :goto_e
    return-void
.end method
