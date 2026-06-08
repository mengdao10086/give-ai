.class Lcom/google/android/material/datepicker/MaterialDatePicker$5;
.super Lcom/google/android/material/datepicker/OnSelectionChangedListener;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .registers 2

    #@0
    .line 456
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@2
    invoke-direct {p0}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onIncompleteSelectionChanged()V
    .registers 3

    #@0
    .line 465
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@2
    # getter for: Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    #@a
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    #@0
    .line 459
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@2
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderText()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateHeader(Ljava/lang/String;)V

    #@9
    .line 460
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@b
    # getter for: Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;

    #@e
    move-result-object p1

    #@f
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@11
    # invokes: Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$100(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/datepicker/DateSelector;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    #@18
    move-result v0

    #@19
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    #@1c
    return-void
.end method
