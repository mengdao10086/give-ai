.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;
.super Ljava/lang/Object;
.source "TimePickerTextInputPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
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
    .line 116
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    .line 119
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@2
    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    #@4
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Ljava/lang/Integer;

    #@a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result p1

    #@e
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->onSelectionChanged(I)V

    #@11
    return-void
.end method
