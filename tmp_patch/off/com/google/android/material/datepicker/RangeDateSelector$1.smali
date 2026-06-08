.class Lcom/google/android/material/datepicker/RangeDateSelector$1;
.super Lcom/google/android/material/datepicker/DateFormatTextWatcher;
.source "RangeDateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/RangeDateSelector;->onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

.field final synthetic val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

.field final synthetic val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .registers 9

    #@0
    .line 245
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    #@2
    iput-object p6, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    #@4
    iput-object p7, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    #@6
    iput-object p8, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    #@8
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    #@b
    return-void
.end method


# virtual methods
.method onInvalidDate()V
    .registers 5

    #@0
    .line 255
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$002(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    #@6
    .line 256
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    #@8
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    #@a
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    #@c
    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    #@e
    # invokes: Lcom/google/android/material/datepicker/RangeDateSelector;->updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    #@11
    return-void
.end method

.method onValidDate(Ljava/lang/Long;)V
    .registers 5

    #@0
    .line 249
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    #@2
    # setter for: Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$002(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    #@5
    .line 250
    iget-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    #@7
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    #@9
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    #@b
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    #@d
    # invokes: Lcom/google/android/material/datepicker/RangeDateSelector;->updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    #@10
    return-void
.end method
