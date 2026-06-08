.class Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 2352
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    #@0
    .line 2424
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 2425
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    #@5
    .line 2426
    const-class v0, Landroid/widget/ScrollView;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@e
    .line 2427
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@11
    move-result v0

    #@12
    if-lez v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    .line 2428
    :goto_17
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@1a
    .line 2429
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@1d
    move-result v0

    #@1e
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    #@21
    .line 2430
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@24
    move-result v0

    #@25
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    #@28
    .line 2431
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@2b
    move-result v0

    #@2c
    invoke-static {p2, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    #@2f
    .line 2432
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@32
    move-result p1

    #@33
    invoke-static {p2, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    #@36
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    #@0
    .line 2399
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 2400
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    #@5
    .line 2401
    const-class v0, Landroid/widget/ScrollView;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    #@e
    .line 2402
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_3e

    #@14
    .line 2403
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@17
    move-result v0

    #@18
    if-lez v0, :cond_3e

    #@1a
    const/4 v1, 0x1

    #@1b
    .line 2405
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    #@1e
    .line 2406
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@21
    move-result v1

    #@22
    if-lez v1, :cond_2e

    #@24
    .line 2407
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@26
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@29
    .line 2409
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@2b
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@2e
    .line 2412
    :cond_2e
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@31
    move-result p1

    #@32
    if-ge p1, v0, :cond_3e

    #@34
    .line 2413
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@36
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@39
    .line 2415
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@3b
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@3e
    :cond_3e
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    #@0
    .line 2355
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@3
    move-result p3

    #@4
    const/4 v0, 0x1

    #@5
    if-eqz p3, :cond_8

    #@7
    return v0

    #@8
    .line 2358
    :cond_8
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    #@a
    .line 2359
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    #@d
    move-result p3

    #@e
    const/4 v1, 0x0

    #@f
    if-nez p3, :cond_12

    #@11
    return v1

    #@12
    .line 2362
    :cond_12
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@15
    move-result p3

    #@16
    .line 2363
    new-instance v2, Landroid/graphics/Rect;

    #@18
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@1b
    .line 2366
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getMatrix()Landroid/graphics/Matrix;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_2f

    #@25
    invoke-virtual {p1, v2}, Landroidx/core/widget/NestedScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2f

    #@2b
    .line 2367
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@2e
    move-result p3

    #@2f
    :cond_2f
    const/16 v2, 0x1000

    #@31
    if-eq p2, v2, :cond_60

    #@33
    const/16 v2, 0x2000

    #@35
    if-eq p2, v2, :cond_42

    #@37
    const v2, 0x1020038

    #@3a
    if-eq p2, v2, :cond_42

    #@3c
    const v2, 0x102003a

    #@3f
    if-eq p2, v2, :cond_60

    #@41
    return v1

    #@42
    .line 2384
    :cond_42
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@45
    move-result p2

    #@46
    sub-int/2addr p3, p2

    #@47
    .line 2385
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@4a
    move-result p2

    #@4b
    sub-int/2addr p3, p2

    #@4c
    .line 2386
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@4f
    move-result p2

    #@50
    sub-int/2addr p2, p3

    #@51
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    #@54
    move-result p2

    #@55
    .line 2387
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@58
    move-result p3

    #@59
    if-eq p2, p3, :cond_5f

    #@5b
    .line 2388
    invoke-virtual {p1, v1, p2, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIZ)V

    #@5e
    return v0

    #@5f
    :cond_5f
    return v1

    #@60
    .line 2372
    :cond_60
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@63
    move-result p2

    #@64
    sub-int/2addr p3, p2

    #@65
    .line 2373
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@68
    move-result p2

    #@69
    sub-int/2addr p3, p2

    #@6a
    .line 2374
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@6d
    move-result p2

    #@6e
    add-int/2addr p2, p3

    #@6f
    .line 2375
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@72
    move-result p3

    #@73
    .line 2374
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    #@76
    move-result p2

    #@77
    .line 2376
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@7a
    move-result p3

    #@7b
    if-eq p2, p3, :cond_81

    #@7d
    .line 2377
    invoke-virtual {p1, v1, p2, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIZ)V

    #@80
    return v0

    #@81
    :cond_81
    return v1
.end method
