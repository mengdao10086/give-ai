.class Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;
.super Lcom/google/android/material/timepicker/ClickActionDelegate;
.source "TimePickerClockPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerClockPresenter;Landroid/content/Context;I)V
    .registers 4

    #@0
    .line 177
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@2
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@5
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    #@0
    .line 181
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/ClickActionDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object p1

    #@7
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@9
    .line 185
    # getter for: Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerClockPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimeModel;->getHourContentDescriptionResId()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x1

    #@12
    new-array v1, v1, [Ljava/lang/Object;

    #@14
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@16
    .line 186
    # getter for: Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {v2}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerClockPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    #@1d
    move-result v2

    #@1e
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    const/4 v3, 0x0

    #@23
    aput-object v2, v1, v3

    #@25
    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    .line 182
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    #@2c
    return-void
.end method
