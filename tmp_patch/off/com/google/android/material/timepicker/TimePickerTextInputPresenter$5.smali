.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;
.super Lcom/google/android/material/timepicker/ClickActionDelegate;
.source "TimePickerTextInputPresenter.java"


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

.field final synthetic val$time:Lcom/google/android/material/timepicker/TimeModel;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V
    .registers 5

    #@0
    .line 152
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@2
    iput-object p4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;->val$time:Lcom/google/android/material/timepicker/TimeModel;

    #@4
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@7
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    #@0
    .line 156
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/ClickActionDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 158
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
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;->val$time:Lcom/google/android/material/timepicker/TimeModel;

    #@e
    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@10
    .line 159
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v2, v1, v3

    #@17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    .line 157
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1e
    return-void
.end method
