.class Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field private final slider:Lcom/google/android/material/slider/BaseSlider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;"
        }
    .end annotation
.end field

.field final virtualViewBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;)V"
        }
    .end annotation

    #@0
    .line 2706
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    #@3
    .line 2703
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    #@a
    .line 2707
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@c
    return-void
.end method

.method private startOrEndDescription(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 2771
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 2772
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    if-ne p1, v0, :cond_1b

    #@e
    .line 2773
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@10
    invoke-virtual {p1}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@13
    move-result-object p1

    #@14
    sget v0, Lcom/google/android/material/R$string;->material_slider_range_end:I

    #@16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    return-object p1

    #@1b
    :cond_1b
    if-nez p1, :cond_2a

    #@1d
    .line 2777
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@1f
    invoke-virtual {p1}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@22
    move-result-object p1

    #@23
    sget v0, Lcom/google/android/material/R$string;->material_slider_range_start:I

    #@25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    return-object p1

    #@2a
    :cond_2a
    const-string p1, ""

    #@2c
    return-object p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 2712
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@3
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_22

    #@d
    .line 2713
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@f
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    #@14
    .line 2714
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    #@16
    float-to-int v2, p1

    #@17
    float-to-int v3, p2

    #@18
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1f

    #@1e
    return v0

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_1

    #@22
    :cond_22
    const/4 p1, -0x1

    #@23
    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 2724
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@3
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_17

    #@d
    .line 2725
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    :cond_17
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 8

    #@0
    .line 2786
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    :cond_a
    const/16 v0, 0x1000

    #@c
    const/4 v2, 0x1

    #@d
    const/16 v3, 0x2000

    #@f
    if-eq p2, v0, :cond_3f

    #@11
    if-eq p2, v3, :cond_3f

    #@13
    const v0, 0x102003d

    #@16
    if-eq p2, v0, :cond_19

    #@18
    return v1

    #@19
    :cond_19
    if-eqz p3, :cond_3e

    #@1b
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    #@1d
    .line 2794
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_24

    #@23
    goto :goto_3e

    #@24
    .line 2799
    :cond_24
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@27
    move-result p2

    #@28
    .line 2800
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@2a
    # invokes: Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    #@2d
    move-result p2

    #@2e
    if-eqz p2, :cond_3e

    #@30
    .line 2801
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@32
    # invokes: Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    #@35
    .line 2802
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@37
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@3a
    .line 2803
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->invalidateVirtualView(I)V

    #@3d
    return v2

    #@3e
    :cond_3e
    :goto_3e
    return v1

    #@3f
    .line 2811
    :cond_3f
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@41
    const/16 v0, 0x14

    #@43
    # invokes: Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F
    invoke-static {p3, v0}, Lcom/google/android/material/slider/BaseSlider;->access$700(Lcom/google/android/material/slider/BaseSlider;I)F

    #@46
    move-result p3

    #@47
    if-ne p2, v3, :cond_4a

    #@49
    neg-float p3, p3

    #@4a
    .line 2817
    :cond_4a
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@4c
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@4f
    move-result p2

    #@50
    if-eqz p2, :cond_53

    #@52
    neg-float p3, p3

    #@53
    .line 2821
    :cond_53
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@55
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@58
    move-result-object p2

    #@59
    .line 2824
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object p2

    #@5d
    check-cast p2, Ljava/lang/Float;

    #@5f
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@62
    move-result p2

    #@63
    add-float/2addr p2, p3

    #@64
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@66
    .line 2825
    invoke-virtual {p3}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    #@69
    move-result p3

    #@6a
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@6c
    .line 2826
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    #@6f
    move-result v0

    #@70
    .line 2823
    invoke-static {p2, p3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    #@73
    move-result p2

    #@74
    .line 2827
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@76
    # invokes: Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    #@79
    move-result p2

    #@7a
    if-eqz p2, :cond_8a

    #@7c
    .line 2828
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@7e
    # invokes: Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    #@81
    .line 2829
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@83
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@86
    .line 2830
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->invalidateVirtualView(I)V

    #@89
    return v2

    #@8a
    :cond_8a
    return v1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 10

    #@0
    .line 2733
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@2
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@5
    .line 2735
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    .line 2736
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/Float;

    #@11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@14
    move-result v1

    #@15
    .line 2737
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@17
    invoke-virtual {v2}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    #@1a
    move-result v2

    #@1b
    .line 2738
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@1d
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    #@20
    move-result v3

    #@21
    .line 2740
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@23
    invoke-virtual {v4}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_3b

    #@29
    cmpl-float v4, v1, v2

    #@2b
    if-lez v4, :cond_32

    #@2d
    const/16 v4, 0x2000

    #@2f
    .line 2742
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@32
    :cond_32
    cmpg-float v4, v1, v3

    #@34
    if-gez v4, :cond_3b

    #@36
    const/16 v4, 0x1000

    #@38
    .line 2745
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@3b
    :cond_3b
    const/4 v4, 0x1

    #@3c
    .line 2749
    invoke-static {v4, v2, v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    #@43
    .line 2750
    const-class v2, Landroid/widget/SeekBar;

    #@45
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    #@4c
    .line 2751
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    .line 2753
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@53
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    #@56
    move-result-object v3

    #@57
    if-eqz v3, :cond_68

    #@59
    .line 2754
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@5b
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    const-string v5, ","

    #@65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 2757
    :cond_68
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@6a
    # invokes: Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/google/android/material/slider/BaseSlider;->access$400(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    .line 2758
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@70
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@73
    move-result-object v3

    #@74
    sget v5, Lcom/google/android/material/R$string;->material_slider_value:I

    #@76
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    .line 2759
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7d
    move-result v0

    #@7e
    if-le v0, v4, :cond_84

    #@80
    .line 2760
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->startOrEndDescription(I)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    .line 2762
    :cond_84
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@86
    const/4 v5, 0x2

    #@87
    new-array v5, v5, [Ljava/lang/Object;

    #@89
    const/4 v6, 0x0

    #@8a
    aput-object v3, v5, v6

    #@8c
    aput-object v1, v5, v4

    #@8e
    const-string v1, "%s, %s"

    #@90
    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 2763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    #@9e
    .line 2765
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    #@a0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    #@a2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    #@a5
    .line 2766
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    #@a7
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@aa
    return-void
.end method
