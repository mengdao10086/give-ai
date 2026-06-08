.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;
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
    .line 139
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@2
    iput-object p4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;->val$time:Lcom/google/android/material/timepicker/TimeModel;

    #@4
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@7
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    #@0
    .line 143
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/ClickActionDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object p1

    #@7
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;->val$time:Lcom/google/android/material/timepicker/TimeModel;

    #@9
    .line 147
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimeModel;->getHourContentDescriptionResId()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x1

    #@e
    new-array v1, v1, [Ljava/lang/Object;

    #@10
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;->val$time:Lcom/google/android/material/timepicker/TimeModel;

    #@12
    .line 148
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x0

    #@1b
    aput-object v2, v1, v3

    #@1d
    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    .line 144
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    #@24
    return-void
.end method
