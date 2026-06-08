.class public Lcom/google/android/material/slider/RangeSlider;
.super Lcom/google/android/material/slider/BaseSlider;
.source "RangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/RangeSlider$RangeSliderState;,
        Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;,
        Lcom/google/android/material/slider/RangeSlider$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/slider/BaseSlider<",
        "Lcom/google/android/material/slider/RangeSlider;",
        "Lcom/google/android/material/slider/RangeSlider$OnChangeListener;",
        "Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;",
        ">;"
    }
.end annotation


# instance fields
.field private minSeparation:F

.field private separationUnit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 63
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 68
    sget-object v2, Lcom/google/android/material/R$styleable;->RangeSlider:[I

    #@5
    sget v4, Lcom/google/android/material/slider/RangeSlider;->DEF_STYLE_RES:I

    #@7
    const/4 v6, 0x0

    #@8
    new-array v5, v6, [I

    #@a
    move-object v0, p1

    #@b
    move-object v1, p2

    #@c
    move v3, p3

    #@d
    .line 69
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object p1

    #@11
    .line 71
    sget p2, Lcom/google/android/material/R$styleable;->RangeSlider_values:I

    #@13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@16
    move-result p2

    #@17
    if-eqz p2, :cond_2e

    #@19
    .line 72
    sget p2, Lcom/google/android/material/R$styleable;->RangeSlider_values:I

    #@1b
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e
    move-result p2

    #@1f
    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object p3

    #@23
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@26
    move-result-object p2

    #@27
    .line 74
    invoke-static {p2}, Lcom/google/android/material/slider/RangeSlider;->convertToFloat(Landroid/content/res/TypedArray;)Ljava/util/List;

    #@2a
    move-result-object p2

    #@2b
    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/RangeSlider;->setValues(Ljava/util/List;)V

    #@2e
    .line 77
    :cond_2e
    sget p2, Lcom/google/android/material/R$styleable;->RangeSlider_minSeparation:I

    #@30
    const/4 p3, 0x0

    #@31
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@34
    move-result p2

    #@35
    iput p2, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    #@37
    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@3a
    return-void
.end method

.method private static convertToFloat(Landroid/content/res/TypedArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    #@0
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 162
    :goto_6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_1c

    #@c
    const/high16 v2, -0x40800000    # -1.0f

    #@e
    .line 163
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    #@3
    return-void
.end method

.method public bridge synthetic addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    #@3
    return-void
.end method

.method public bridge synthetic clearOnChangeListeners()V
    .registers 1

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnChangeListeners()V

    #@3
    return-void
.end method

.method public bridge synthetic clearOnSliderTouchListeners()V
    .registers 1

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnSliderTouchListeners()V

    #@3
    return-void
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveThumbIndex()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getFocusedThumbIndex()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getHaloRadius()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloRadius()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getHaloTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLabelBehavior()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getLabelBehavior()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMinSeparation()F
    .registers 2

    #@0
    .line 176
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    #@2
    return v0
.end method

.method public bridge synthetic getStepSize()F
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getStepSize()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbElevation()F
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbElevation()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbRadius()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeColor()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getThumbStrokeWidth()F
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeWidth()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTickActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTickTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackActiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackHeight()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackInactiveTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackSidePadding()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackSidePadding()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTrackWidth()I
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getValueFrom()F
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getValueTo()F
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    #@0
    .line 125
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic hasLabelFormatter()Z
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isTickVisible()Z
    .registers 2

    #@0
    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->isTickVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 221
    check-cast p1, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    #@2
    .line 222
    invoke-virtual {p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->getSuperState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-super {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@9
    .line 224
    # getter for: Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F
    invoke-static {p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$000(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)F

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    #@f
    .line 225
    # getter for: Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I
    invoke-static {p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$100(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)I

    #@12
    move-result p1

    #@13
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    #@15
    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider;->setSeparationUnit(I)V

    #@18
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 210
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 212
    new-instance v1, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 213
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    #@b
    # setter for: Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F
    invoke-static {v1, v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$002(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;F)F

    #@e
    .line 214
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    #@10
    # setter for: Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I
    invoke-static {v1, v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$102(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;I)I

    #@13
    return-object v1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    #@3
    return-void
.end method

.method public bridge synthetic removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    #@3
    return-void
.end method

.method public setCustomThumbDrawable(I)V
    .registers 2

    #@0
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(I)V

    #@3
    return-void
.end method

.method public setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 141
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([I)V
    .registers 2

    #@0
    .line 149
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawablesForValues([I)V

    #@3
    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 157
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V

    #@3
    return-void
.end method

.method public setMinSeparation(F)V
    .registers 2

    #@0
    .line 188
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    #@2
    const/4 p1, 0x0

    #@3
    .line 189
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    #@5
    .line 190
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider;->setSeparationUnit(I)V

    #@8
    return-void
.end method

.method public setMinSeparationValue(F)V
    .registers 2

    #@0
    .line 202
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    #@2
    const/4 p1, 0x1

    #@3
    .line 203
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    #@5
    .line 204
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider;->setSeparationUnit(I)V

    #@8
    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeColorResource(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColorResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeWidth(F)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbStrokeWidthResource(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidthResource(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTickVisible(Z)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickVisible(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .registers 2

    #@0
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    #@3
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 118
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues(Ljava/util/List;)V

    #@3
    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .registers 2

    #@0
    .line 108
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    #@3
    return-void
.end method
