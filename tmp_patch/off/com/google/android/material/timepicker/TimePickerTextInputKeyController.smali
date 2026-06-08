.class Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;
.super Ljava/lang/Object;
.source "TimePickerTextInputKeyController.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private keyListenerRunning:Z

.field private final minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final time:Lcom/google/android/material/timepicker/TimeModel;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V
    .registers 5

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 47
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    #@6
    .line 53
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@8
    .line 54
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@a
    .line 55
    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@c
    return-void
.end method

.method private clearPrefilledText(Landroid/widget/EditText;)V
    .registers 4

    #@0
    .line 145
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_14

    #@6
    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_14

    #@d
    .line 146
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@10
    move-result-object p1

    #@11
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    #@14
    :cond_14
    return-void
.end method

.method private moveSelection(I)V
    .registers 6

    #@0
    .line 74
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

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
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@e
    .line 75
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

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
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    #@19
    .line 76
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@1b
    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@1d
    return-void
.end method

.method private onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .registers 8

    #@0
    .line 121
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    const/4 v2, 0x7

    #@9
    const/4 v3, 0x1

    #@a
    if-lt p1, v2, :cond_25

    #@c
    const/16 v2, 0x10

    #@e
    if-gt p1, v2, :cond_25

    #@10
    .line 130
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@13
    move-result p1

    #@14
    if-ne p1, v3, :cond_25

    #@16
    .line 131
    invoke-virtual {p3}, Landroid/widget/EditText;->getSelectionStart()I

    #@19
    move-result p1

    #@1a
    const/4 p2, 0x2

    #@1b
    if-ne p1, p2, :cond_25

    #@1d
    .line 132
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@20
    move-result p1

    #@21
    if-ne p1, p2, :cond_25

    #@23
    move p1, v3

    #@24
    goto :goto_26

    #@25
    :cond_25
    move p1, v1

    #@26
    :goto_26
    if-eqz p1, :cond_2e

    #@28
    const/16 p1, 0xc

    #@2a
    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    #@2d
    return v3

    #@2e
    .line 138
    :cond_2e
    invoke-direct {p0, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->clearPrefilledText(Landroid/widget/EditText;)V

    #@31
    return v1
.end method

.method private onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .registers 7

    #@0
    const/16 v0, 0x43

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-ne p1, v0, :cond_18

    #@6
    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_18

    #@c
    .line 109
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@f
    move-result-object p1

    #@10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_18

    #@16
    move p1, v1

    #@17
    goto :goto_19

    #@18
    :cond_18
    move p1, v2

    #@19
    :goto_19
    if-eqz p1, :cond_21

    #@1b
    const/16 p1, 0xa

    #@1d
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    #@20
    return v1

    #@21
    .line 115
    :cond_21
    invoke-direct {p0, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->clearPrefilledText(Landroid/widget/EditText;)V

    #@24
    return v2
.end method


# virtual methods
.method public bind()V
    .registers 4

    #@0
    .line 60
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    #@5
    move-result-object v0

    #@6
    .line 61
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    #@8
    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    #@b
    move-result-object v1

    #@c
    .line 62
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@f
    move-result-object v0

    #@10
    .line 63
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@13
    move-result-object v1

    #@14
    const v2, 0x10000005

    #@17
    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    #@1a
    const v2, 0x10000006

    #@1d
    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    #@20
    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    #@23
    .line 69
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@26
    .line 70
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@29
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 p1, 0x5

    #@1
    if-ne p2, p1, :cond_5

    #@3
    const/4 p1, 0x1

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 p1, 0x0

    #@6
    :goto_6
    if-eqz p1, :cond_d

    #@8
    const/16 p2, 0xc

    #@a
    .line 83
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    #@d
    :cond_d
    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    #@0
    .line 91
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    const/4 v0, 0x1

    #@7
    .line 95
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    #@9
    .line 96
    check-cast p1, Landroid/widget/EditText;

    #@b
    .line 98
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@d
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    #@f
    const/16 v2, 0xc

    #@11
    if-ne v0, v2, :cond_18

    #@13
    .line 99
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    #@16
    move-result p1

    #@17
    goto :goto_1c

    #@18
    .line 100
    :cond_18
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    #@1b
    move-result p1

    #@1c
    .line 101
    :goto_1c
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    #@1e
    return p1
.end method
