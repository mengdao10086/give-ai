.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimePickerView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerControls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;,
        Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;,
        Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
    }
.end annotation


# static fields
.field static final GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.view.View"


# instance fields
.field private final clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

.field private final clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

.field private final hourView:Lcom/google/android/material/chip/Chip;

.field private final minuteView:Lcom/google/android/material/chip/Chip;

.field private onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

.field private onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

.field private onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

.field private final selectionListener:Landroid/view/View$OnClickListener;

.field private final toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 79
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$1;

    #@5
    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$1;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    #@8
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    #@a
    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@d
    move-result-object p1

    #@e
    sget p2, Lcom/google/android/material/R$layout;->material_timepicker:I

    #@10
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@13
    .line 104
    sget p1, Lcom/google/android/material/R$id;->material_clock_face:I

    #@15
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object p1

    #@19
    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    #@1b
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    #@1d
    .line 105
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    #@1f
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@25
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@27
    .line 107
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;

    #@29
    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    #@2c
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    #@2f
    .line 118
    sget p1, Lcom/google/android/material/R$id;->material_minute_tv:I

    #@31
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    #@34
    move-result-object p1

    #@35
    check-cast p1, Lcom/google/android/material/chip/Chip;

    #@37
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@39
    .line 119
    sget p1, Lcom/google/android/material/R$id;->material_hour_tv:I

    #@3b
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    #@3e
    move-result-object p1

    #@3f
    check-cast p1, Lcom/google/android/material/chip/Chip;

    #@41
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@43
    .line 120
    sget p1, Lcom/google/android/material/R$id;->material_clock_hand:I

    #@45
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object p1

    #@49
    check-cast p1, Lcom/google/android/material/timepicker/ClockHandView;

    #@4b
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@4d
    .line 122
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V

    #@50
    .line 124
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->setUpDisplay()V

    #@53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
    .registers 1

    #@0
    .line 56
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;
    .registers 1

    #@0
    .line 56
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    #@2
    return-object p0
.end method

.method private setUpDisplay()V
    .registers 4

    #@0
    .line 169
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@2
    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    #@4
    const/16 v2, 0xc

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    #@d
    .line 170
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@f
    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    #@11
    const/16 v2, 0xa

    #@13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    #@1a
    .line 172
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@1c
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    #@1e
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@21
    .line 173
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@23
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    #@25
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@28
    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@2a
    const-string v1, "android.view.View"

    #@2c
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    #@2f
    .line 176
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@31
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    #@34
    return-void
.end method

.method private setupDoubleTap()V
    .registers 4

    #@0
    .line 129
    new-instance v0, Landroid/view/GestureDetector;

    #@2
    .line 131
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$2;

    #@8
    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/TimePickerView$2;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    #@b
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@e
    .line 144
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$3;

    #@10
    invoke-direct {v1, p0, v0}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V

    #@13
    .line 156
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@15
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@18
    .line 157
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@1a
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@1d
    return-void
.end method

.method private updateSelection(Lcom/google/android/material/chip/Chip;Z)V
    .registers 3

    #@0
    .line 222
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    #@3
    if-eqz p2, :cond_7

    #@5
    const/4 p2, 0x2

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p2, 0x0

    #@8
    .line 223
    :goto_8
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    #@b
    return-void
.end method


# virtual methods
.method public addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .registers 3

    #@0
    .line 231
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    #@5
    return-void
.end method

.method getCurrentLevel()I
    .registers 2

    #@0
    .line 265
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getCurrentLevel()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-timepicker-TimePickerView(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .registers 4

    #@0
    if-nez p3, :cond_3

    #@2
    return-void

    #@3
    .line 112
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    #@5
    if-eqz p1, :cond_13

    #@7
    .line 113
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    #@9
    if-ne p2, p1, :cond_d

    #@b
    const/4 p1, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    .line 114
    :goto_e
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    #@10
    invoke-interface {p2, p1}, Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;->onPeriodChange(I)V

    #@13
    :cond_13
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    #@0
    .line 257
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    if-ne p1, p0, :cond_e

    #@5
    if-nez p2, :cond_e

    #@7
    .line 259
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@9
    const/16 p2, 0x8

    #@b
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->sendAccessibilityEvent(I)V

    #@e
    :cond_e
    return-void
.end method

.method public setActiveSelection(I)V
    .registers 6

    #@0
    .line 217
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@2
    const/16 v1, 0xc

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    if-ne p1, v1, :cond_a

    #@8
    move v1, v2

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v1, v3

    #@b
    :goto_b
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->updateSelection(Lcom/google/android/material/chip/Chip;Z)V

    #@e
    .line 218
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@10
    const/16 v1, 0xa

    #@12
    if-ne p1, v1, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v2, v3

    #@16
    :goto_16
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/timepicker/TimePickerView;->updateSelection(Lcom/google/android/material/chip/Chip;Z)V

    #@19
    return-void
.end method

.method public setAnimateOnTouchUp(Z)V
    .registers 3

    #@0
    .line 194
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setAnimateOnTouchUp(Z)V

    #@5
    return-void
.end method

.method setCurrentLevel(I)V
    .registers 3

    #@0
    .line 269
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockFaceView;->setCurrentLevel(I)V

    #@5
    return-void
.end method

.method public setHandRotation(F)V
    .registers 3

    #@0
    .line 186
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    #@5
    return-void
.end method

.method public setHandRotation(FZ)V
    .registers 4

    #@0
    .line 190
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    #@5
    return-void
.end method

.method public setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3

    #@0
    .line 165
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@2
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@5
    return-void
.end method

.method public setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3

    #@0
    .line 161
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@2
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@5
    return-void
.end method

.method public setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V
    .registers 3

    #@0
    .line 235
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    #@5
    return-void
.end method

.method setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V
    .registers 2

    #@0
    .line 248
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    #@2
    return-void
.end method

.method setOnPeriodChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V
    .registers 2

    #@0
    .line 239
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    #@2
    return-void
.end method

.method setOnSelectionChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V
    .registers 2

    #@0
    .line 244
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    #@2
    return-void
.end method

.method public setValues([Ljava/lang/String;I)V
    .registers 4

    #@0
    .line 181
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->setValues([Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public showToggle()V
    .registers 3

    #@0
    .line 252
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    #@6
    return-void
.end method

.method public updateTime(III)V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_6

    #@3
    .line 201
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    #@5
    goto :goto_8

    #@6
    .line 202
    :cond_6
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    #@8
    .line 203
    :goto_8
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@a
    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    #@d
    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@14
    move-result-object p1

    #@15
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@17
    new-array v1, v0, [Ljava/lang/Object;

    #@19
    .line 205
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object p3

    #@1d
    const/4 v2, 0x0

    #@1e
    aput-object p3, v1, v2

    #@20
    const-string p3, "%02d"

    #@22
    invoke-static {p1, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    new-array v0, v0, [Ljava/lang/Object;

    #@28
    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object p2

    #@2c
    aput-object p2, v0, v2

    #@2e
    invoke-static {p1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    .line 207
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@34
    invoke-virtual {p2}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    #@37
    move-result-object p2

    #@38
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@3b
    move-result p2

    #@3c
    if-nez p2, :cond_43

    #@3e
    .line 208
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    #@40
    invoke-virtual {p2, v1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    #@43
    .line 210
    :cond_43
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@45
    invoke-virtual {p2}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    #@48
    move-result-object p2

    #@49
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@4c
    move-result p2

    #@4d
    if-nez p2, :cond_54

    #@4f
    .line 211
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    #@51
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    #@54
    :cond_54
    return-void
.end method
