.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;
.super Ljava/lang/Object;
.source "TimePickerTextInputPresenter.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lcom/google/android/material/timepicker/TimePickerPresenter;


# instance fields
.field private final controller:Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

.field private final hourEditText:Landroid/widget/EditText;

.field private final hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final hourTextWatcher:Landroid/text/TextWatcher;

.field private final minuteEditText:Landroid/widget/EditText;

.field private final minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final minuteTextWatcher:Landroid/text/TextWatcher;

.field private final time:Lcom/google/android/material/timepicker/TimeModel;

.field private final timePickerView:Landroid/widget/LinearLayout;

.field private toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
    .registers 9

    #@0
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Landroid/text/TextWatcher;

    #@a
    .line 74
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;

    #@c
    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    #@f
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Landroid/text/TextWatcher;

    #@11
    .line 98
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    #@13
    .line 99
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@15
    .line 100
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v0

    #@19
    .line 101
    sget v1, Lcom/google/android/material/R$id;->material_minute_text_input:I

    #@1b
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@21
    iput-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@23
    .line 102
    sget v2, Lcom/google/android/material/R$id;->material_hour_text_input:I

    #@25
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@2b
    iput-object v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@2d
    .line 103
    sget v3, Lcom/google/android/material/R$id;->material_label:I

    #@2f
    invoke-virtual {v1, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/widget/TextView;

    #@35
    .line 104
    sget v4, Lcom/google/android/material/R$id;->material_label:I

    #@37
    invoke-virtual {v2, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Landroid/widget/TextView;

    #@3d
    .line 106
    sget v5, Lcom/google/android/material/R$string;->material_timepicker_minute:I

    #@3f
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@46
    .line 107
    sget v3, Lcom/google/android/material/R$string;->material_timepicker_hour:I

    #@48
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4f
    .line 108
    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    #@51
    const/16 v3, 0xc

    #@53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v1, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    #@5a
    .line 109
    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    #@5c
    const/16 v3, 0xa

    #@5e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    #@65
    .line 111
    iget v0, p2, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@67
    if-nez v0, :cond_6c

    #@69
    .line 112
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->setupPeriodToggle()V

    #@6c
    .line 115
    :cond_6c
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;

    #@6e
    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    #@71
    .line 123
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@74
    .line 124
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@77
    .line 125
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->getHourInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addInputFilter(Landroid/text/InputFilter;)V

    #@7e
    .line 126
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->getMinuteInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addInputFilter(Landroid/text/InputFilter;)V

    #@85
    .line 128
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@8c
    move-result-object v0

    #@8d
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Landroid/widget/EditText;

    #@8f
    .line 129
    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@96
    move-result-object v0

    #@97
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Landroid/widget/EditText;

    #@99
    .line 137
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

    #@9b
    invoke-direct {v0, v2, v1, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V

    #@9e
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->controller:Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

    #@a0
    .line 138
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;

    #@a2
    .line 139
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@a5
    move-result-object v3

    #@a6
    sget v4, Lcom/google/android/material/R$string;->material_hour_selection:I

    #@a8
    invoke-direct {v0, p0, v3, v4, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V

    #@ab
    .line 138
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@ae
    .line 151
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;

    #@b0
    .line 152
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@b3
    move-result-object p1

    #@b4
    sget v2, Lcom/google/android/material/R$string;->material_minute_selection:I

    #@b6
    invoke-direct {v0, p0, p1, v2, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V

    #@b9
    .line 151
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@bc
    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->initialize()V

    #@bf
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;
    .registers 1

    #@0
    .line 53
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    return-object p0
.end method

.method private addTextWatchers()V
    .registers 3

    #@0
    .line 174
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Landroid/widget/EditText;

    #@2
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Landroid/text/TextWatcher;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@7
    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Landroid/widget/EditText;

    #@9
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Landroid/text/TextWatcher;

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@e
    return-void
.end method

.method private removeTextWatchers()V
    .registers 3

    #@0
    .line 179
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Landroid/widget/EditText;

    #@2
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Landroid/text/TextWatcher;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    #@7
    .line 180
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Landroid/widget/EditText;

    #@9
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Landroid/text/TextWatcher;

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    #@e
    return-void
.end method

.method private static setCursorDrawableColor(Landroid/widget/EditText;I)V
    .registers 7

    #@0
    .line 257
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 258
    const-class v1, Landroid/widget/TextView;

    #@6
    const-string v2, "mCursorDrawableRes"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@b
    move-result-object v1

    #@c
    const/4 v2, 0x1

    #@d
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@10
    .line 260
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    .line 261
    const-class v3, Landroid/widget/TextView;

    #@16
    const-string v4, "mEditor"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1b
    move-result-object v3

    #@1c
    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@1f
    .line 263
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object p0

    #@23
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v3

    #@27
    const-string v4, "mCursorDrawable"

    #@29
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2c
    move-result-object v3

    #@2d
    .line 266
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@30
    .line 267
    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@33
    move-result-object v0

    #@34
    .line 268
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@36
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@39
    const/4 p1, 0x2

    #@3a
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    #@3c
    const/4 v1, 0x0

    #@3d
    aput-object v0, p1, v1

    #@3f
    aput-object v0, p1, v2

    #@41
    .line 270
    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_44

    #@44
    :catchall_44
    return-void
.end method

.method private setTime(Lcom/google/android/material/timepicker/TimeModel;)V
    .registers 7

    #@0
    .line 184
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->removeTextWatchers()V

    #@3
    .line 185
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    #@5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@c
    move-result-object v0

    #@d
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@f
    const/4 v1, 0x1

    #@10
    new-array v2, v1, [Ljava/lang/Object;

    #@12
    .line 186
    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x0

    #@19
    aput-object v3, v2, v4

    #@1b
    const-string v3, "%02d"

    #@1d
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    new-array v1, v1, [Ljava/lang/Object;

    #@23
    .line 187
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    #@26
    move-result p1

    #@27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object p1

    #@2b
    aput-object p1, v1, v4

    #@2d
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    .line 188
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@33
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setText(Ljava/lang/CharSequence;)V

    #@36
    .line 189
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@38
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setText(Ljava/lang/CharSequence;)V

    #@3b
    .line 190
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->addTextWatchers()V

    #@3e
    .line 191
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    #@41
    return-void
.end method

.method private setupPeriodToggle()V
    .registers 3

    #@0
    .line 195
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    #@2
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@a
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@c
    .line 197
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$$ExternalSyntheticLambda0;

    #@e
    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    #@11
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    #@14
    .line 206
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    #@1a
    .line 207
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    #@1d
    return-void
.end method

.method private updateSelection()V
    .registers 3

    #@0
    .line 211
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 216
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@7
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->period:I

    #@9
    if-nez v1, :cond_e

    #@b
    .line 217
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    #@d
    goto :goto_10

    #@e
    .line 218
    :cond_e
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    #@10
    .line 215
    :goto_10
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    #@13
    return-void
.end method


# virtual methods
.method public clearCheck()V
    .registers 3

    #@0
    .line 282
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@6
    .line 283
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@b
    return-void
.end method

.method public hide()V
    .registers 3

    #@0
    .line 237
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 239
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    #@b
    .line 242
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    #@d
    const/16 v1, 0x8

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@12
    return-void
.end method

.method public initialize()V
    .registers 2

    #@0
    .line 168
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->addTextWatchers()V

    #@3
    .line 169
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->setTime(Lcom/google/android/material/timepicker/TimeModel;)V

    #@8
    .line 170
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->controller:Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->bind()V

    #@d
    return-void
.end method

.method public invalidate()V
    .registers 2

    #@0
    .line 247
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->setTime(Lcom/google/android/material/timepicker/TimeModel;)V

    #@5
    return-void
.end method

.method synthetic lambda$setupPeriodToggle$0$com-google-android-material-timepicker-TimePickerTextInputPresenter(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .registers 4

    #@0
    if-nez p3, :cond_3

    #@2
    return-void

    #@3
    .line 202
    :cond_3
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    #@5
    if-ne p2, p1, :cond_9

    #@7
    const/4 p1, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    .line 203
    :goto_a
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@c
    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimeModel;->setPeriod(I)V

    #@f
    return-void
.end method

.method public onSelectionChanged(I)V
    .registers 6

    #@0
    .line 223
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@4
    .line 224
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@6
    const/16 v1, 0xc

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v3, 0x0

    #@a
    if-ne p1, v1, :cond_e

    #@c
    move v1, v2

    #@d
    goto :goto_f

    #@e
    :cond_e
    move v1, v3

    #@f
    :goto_f
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@12
    .line 225
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@14
    const/16 v1, 0xa

    #@16
    if-ne p1, v1, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v2, v3

    #@1a
    :goto_1a
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@1d
    .line 226
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    #@20
    return-void
.end method

.method public resetChecked()V
    .registers 6

    #@0
    .line 277
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@2
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@4
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@6
    const/16 v2, 0xc

    #@8
    const/4 v3, 0x1

    #@9
    const/4 v4, 0x0

    #@a
    if-ne v1, v2, :cond_e

    #@c
    move v1, v3

    #@d
    goto :goto_f

    #@e
    :cond_e
    move v1, v4

    #@f
    :goto_f
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@12
    .line 278
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@14
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@16
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@18
    const/16 v2, 0xa

    #@1a
    if-ne v1, v2, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v3, v4

    #@1e
    :goto_1e
    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@21
    return-void
.end method

.method public show()V
    .registers 3

    #@0
    .line 231
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@6
    .line 232
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@8
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->onSelectionChanged(I)V

    #@d
    return-void
.end method
