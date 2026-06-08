.class Lcom/google/android/material/sidesheet/SheetDialog$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/sidesheet/SheetDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SheetDialog;)V
    .registers 2

    #@0
    .line 247
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    #@2
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    #@0
    .line 251
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 252
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    #@5
    iget-boolean p1, p1, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@7
    if-eqz p1, :cond_13

    #@9
    const/high16 p1, 0x100000

    #@b
    .line 253
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@e
    const/4 p1, 0x1

    #@f
    .line 254
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    #@12
    goto :goto_17

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    .line 256
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    #@17
    :goto_17
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    #@0
    const/high16 v0, 0x100000

    #@2
    if-ne p2, v0, :cond_11

    #@4
    .line 262
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    #@6
    iget-boolean v0, v0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@8
    if-eqz v0, :cond_11

    #@a
    .line 263
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    #@c
    invoke-virtual {p1}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    #@f
    const/4 p1, 0x1

    #@10
    return p1

    #@11
    .line 266
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@14
    move-result p1

    #@15
    return p1
.end method
