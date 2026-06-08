.class Lcom/google/android/material/timepicker/ClockFaceView$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ClockFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .registers 2

    #@0
    .line 156
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@2
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 10

    #@0
    .line 160
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 161
    sget v0, Lcom/google/android/material/R$id;->material_value_index:I

    #@5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Integer;

    #@b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v3

    #@f
    if-lez v3, :cond_22

    #@11
    .line 163
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@13
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->access$200(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;

    #@16
    move-result-object v0

    #@17
    add-int/lit8 v1, v3, -0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/view/View;

    #@1f
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    #@22
    :cond_22
    const/4 v1, 0x0

    #@23
    const/4 v2, 0x1

    #@24
    const/4 v4, 0x1

    #@25
    const/4 v5, 0x0

    #@26
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    #@29
    move-result v6

    #@2a
    .line 167
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@2d
    move-result-object p1

    #@2e
    .line 166
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@31
    const/4 p1, 0x1

    #@32
    .line 175
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    #@35
    .line 176
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@37
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@3a
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 14

    #@0
    const/16 v0, 0x10

    #@2
    if-ne p2, v0, :cond_4b

    #@4
    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide p2

    #@8
    .line 183
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@a
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@11
    .line 184
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@13
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/google/android/material/timepicker/ClockFaceView;->access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@1a
    move-result p1

    #@1b
    int-to-float p1, p1

    #@1c
    .line 185
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@1e
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    #@25
    move-result v0

    #@26
    int-to-float v0, v0

    #@27
    .line 186
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@29
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;
    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    #@2c
    move-result-object v9

    #@2d
    const/4 v5, 0x0

    #@2e
    const/4 v8, 0x0

    #@2f
    move-wide v1, p2

    #@30
    move-wide v3, p2

    #@31
    move v6, p1

    #@32
    move v7, v0

    #@33
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v9, v1}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3a
    .line 187
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@3c
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;
    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    #@3f
    move-result-object v9

    #@40
    const/4 v5, 0x1

    #@41
    move-wide v1, p2

    #@42
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {v9, p1}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@49
    const/4 p1, 0x1

    #@4a
    return p1

    #@4b
    .line 190
    :cond_4b
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@4e
    move-result p1

    #@4f
    return p1
.end method
