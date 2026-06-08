.class public Lcom/google/android/material/slider/Slider;
.super Lcom/google/android/material/slider/BaseSlider;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/Slider$OnSliderTouchListener;,
        Lcom/google/android/material/slider/Slider$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/slider/BaseSlider<",
        "Lcom/google/android/material/slider/Slider;",
        "Lcom/google/android/material/slider/Slider$OnChangeListener;",
        "Lcom/google/android/material/slider/Slider$OnSliderTouchListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 63
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 67
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p3, 0x1

    #@4
    new-array p3, p3, [I

    #@6
    const v0, 0x1010024

    #@9
    const/4 v1, 0x0

    #@a
    aput v0, p3, v1

    #@c
    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object p1

    #@10
    .line 73
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@13
    move-result p2

    #@14
    if-eqz p2, :cond_1e

    #@16
    const/4 p2, 0x0

    #@17
    .line 74
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1a
    move-result p2

    #@1b
    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    #@1e
    .line 76
    :cond_1e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@21
    return-void
.end method


# virtual methods
.method public bridge synthetic addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    #@3
    return-void
.end method

.method public bridge synthetic addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    #@3
    return-void
.end method

.method public bridge synthetic clearOnChangeListeners()V
    .registers 1

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnChangeListeners()V

    #@3
    return-void
.end method

.method public bridge synthetic clearOnSliderTouchListeners()V
    .registers 1

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnSliderTouchListeners()V

    #@3
    return-void
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveThumbIndex()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getFocusedThumbIndex()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getHaloRadius()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloRadius()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getHaloTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLabelBehavior()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getLabelBehavior()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getStepSize()F
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getStepSize()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbElevation()F
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbElevation()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbRadius()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeColor()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getThumbStrokeWidth()F
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeWidth()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTickActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTickTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackActiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackHeight()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackInactiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackSidePadding()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackSidePadding()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackWidth()I
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getValue()F
    .registers 3

    #@0
    .line 86
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValues()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Float;

    #@b
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public bridge synthetic getValueFrom()F
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getValueTo()F
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic hasLabelFormatter()Z
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isTickVisible()Z
    .registers 2

    #@0
    .line 42
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->isTickVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method protected pickActiveThumb()Z
    .registers 4

    #@0
    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v0, v1, :cond_9

    #@8
    return v2

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 131
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setActiveThumbIndex(I)V

    #@d
    return v2
.end method

.method public bridge synthetic removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    #@3
    return-void
.end method

.method public bridge synthetic removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    #@3
    return-void
.end method

.method public setCustomThumbDrawable(I)V
    .registers 2

    #@0
    .line 114
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(I)V

    #@3
    return-void
.end method

.method public setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 122
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V

    #@3
    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeColorResource(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColorResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeWidth(F)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeWidthResource(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidthResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickVisible(Z)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickVisible(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public setValue(F)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Float;

    #@3
    const/4 v1, 0x0

    #@4
    .line 106
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object p1

    #@8
    aput-object p1, v0, v1

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setValues([Ljava/lang/Float;)V

    #@d
    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .registers 2

    #@0
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    #@3
    return-void
.end method
