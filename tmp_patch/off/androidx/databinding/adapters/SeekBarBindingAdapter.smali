.class public Landroidx/databinding/adapters/SeekBarBindingAdapter;
.super Ljava/lang/Object;
.source "SeekBarBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;,
        Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;,
        Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;)V
    .registers 6

    #@0
    if-nez p1, :cond_d

    #@2
    if-nez p2, :cond_d

    #@4
    if-nez p3, :cond_d

    #@6
    if-nez p4, :cond_d

    #@8
    const/4 p1, 0x0

    #@9
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@c
    goto :goto_15

    #@d
    .line 50
    :cond_d
    new-instance v0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;

    #@f
    invoke-direct {v0, p3, p4, p1, p2}, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;-><init>(Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V

    #@12
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@15
    :goto_15
    return-void
.end method

.method public static setProgress(Landroid/widget/SeekBar;I)V
    .registers 3

    #@0
    .line 37
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    #@3
    move-result v0

    #@4
    if-eq p1, v0, :cond_9

    #@6
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    #@9
    :cond_9
    return-void
.end method
