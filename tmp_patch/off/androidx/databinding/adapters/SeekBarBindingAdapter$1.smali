.class Landroidx/databinding/adapters/SeekBarBindingAdapter$1;
.super Ljava/lang/Object;
.source "SeekBarBindingAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/SeekBarBindingAdapter;->setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChanged:Landroidx/databinding/InverseBindingListener;

.field final synthetic val$progressChanged:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

.field final synthetic val$start:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

.field final synthetic val$stop:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V
    .registers 5

    #@0
    .line 50
    iput-object p1, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$progressChanged:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@2
    iput-object p2, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$attrChanged:Landroidx/databinding/InverseBindingListener;

    #@4
    iput-object p3, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$start:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

    #@6
    iput-object p4, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$stop:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    #@0
    .line 53
    iget-object v0, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$progressChanged:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 54
    invoke-interface {v0, p1, p2, p3}, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    #@7
    .line 56
    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$attrChanged:Landroidx/databinding/InverseBindingListener;

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 57
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    #@e
    :cond_e
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$start:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 64
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    #@7
    :cond_7
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    #@0
    .line 70
    iget-object v0, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$stop:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 71
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    #@7
    :cond_7
    return-void
.end method
