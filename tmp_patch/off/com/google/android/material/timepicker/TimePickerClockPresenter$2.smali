.class Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;
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
    .line 190
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;->this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@2
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@5
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    #@0
    .line 194
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/ClickActionDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object p1

    #@7
    sget v0, Lcom/google/android/material/R$string;->material_minute_suffix:I

    #@9
    const/4 v1, 0x1

    #@a
    new-array v1, v1, [Ljava/lang/Object;

    #@c
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;->this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@e
    .line 197
    # getter for: Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {v2}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerClockPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    #@11
    move-result-object v2

    #@12
    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@14
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    const/4 v3, 0x0

    #@19
    aput-object v2, v1, v3

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    .line 195
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    #@22
    return-void
.end method
