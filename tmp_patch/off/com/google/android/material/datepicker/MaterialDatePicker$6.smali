.class Lcom/google/android/material/datepicker/MaterialDatePicker$6;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->initHeaderToggle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .registers 2

    #@0
    .line 480
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$6;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    #@0
    .line 484
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$6;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@2
    # getter for: Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;

    #@5
    move-result-object p1

    #@6
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$6;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@8
    # invokes: Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$100(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/datepicker/DateSelector;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    #@f
    move-result v0

    #@10
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    #@13
    .line 486
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$6;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@15
    # getter for: Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$400(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/internal/CheckableImageButton;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    #@1c
    .line 487
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$6;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@1e
    # getter for: Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$400(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/internal/CheckableImageButton;

    #@21
    move-result-object v0

    #@22
    # invokes: Lcom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V
    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$500(Lcom/google/android/material/datepicker/MaterialDatePicker;Lcom/google/android/material/internal/CheckableImageButton;)V

    #@25
    .line 488
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$6;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@27
    # invokes: Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$600(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    #@2a
    return-void
.end method
