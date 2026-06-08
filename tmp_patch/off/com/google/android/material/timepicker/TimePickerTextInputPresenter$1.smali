.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "TimePickerTextInputPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V
    .registers 2

    #@0
    .line 58
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@2
    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    #@0
    .line 62
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 63
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@8
    # getter for: Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    #@b
    move-result-object p1

    #@c
    const/4 v0, 0x0

    #@d
    invoke-virtual {p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    #@10
    return-void

    #@11
    .line 66
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@18
    move-result p1

    #@19
    .line 67
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@1b
    # getter for: Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_22} :catch_22

    #@22
    :catch_22
    return-void
.end method
