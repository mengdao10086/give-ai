.class public final Lcom/google/android/material/timepicker/MaterialTimePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialTimePicker.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    }
.end annotation


# static fields
.field public static final INPUT_MODE_CLOCK:I = 0x0

.field static final INPUT_MODE_EXTRA:Ljava/lang/String; = "TIME_PICKER_INPUT_MODE"

.field public static final INPUT_MODE_KEYBOARD:I = 0x1

.field static final NEGATIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

.field static final NEGATIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

.field static final OVERRIDE_THEME_RES_ID:Ljava/lang/String; = "TIME_PICKER_OVERRIDE_THEME_RES_ID"

.field static final POSITIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_POSITIVE_BUTTON_TEXT"

.field static final POSITIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

.field static final TIME_MODEL_EXTRA:Ljava/lang/String; = "TIME_PICKER_TIME_MODEL"

.field static final TITLE_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_RES"

.field static final TITLE_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_TEXT"


# instance fields
.field private activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

.field private cancelButton:Landroid/widget/Button;

.field private final cancelListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private clockIcon:I

.field private final dismissListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private inputMode:I

.field private keyboardIcon:I

.field private modeButton:Lcom/google/android/material/button/MaterialButton;

.field private final negativeButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private negativeButtonTextResId:I

.field private overrideThemeResId:I

.field private final positiveButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private positiveButtonTextResId:I

.field private textInputStub:Landroid/view/ViewStub;

.field private time:Lcom/google/android/material/timepicker/TimeModel;

.field private timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

.field private timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

.field private timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

.field private titleResId:I

.field private titleText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    #@3
    .line 69
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    #@a
    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    #@11
    .line 71
    new-instance v0, Ljava/util/LinkedHashSet;

    #@13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    #@18
    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    #@1a
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    #@1f
    const/4 v0, 0x0

    #@20
    .line 84
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    #@22
    .line 86
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    #@24
    .line 88
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    #@26
    .line 112
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@28
    .line 116
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    #@2a
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .registers 1

    #@0
    .line 67
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    #@2
    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/timepicker/MaterialTimePicker;)I
    .registers 1

    #@0
    .line 67
    iget p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@2
    return p0
.end method

.method static synthetic access$1102(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I
    .registers 2

    #@0
    .line 67
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@2
    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;
    .registers 1

    #@0
    .line 67
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    #@2
    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V
    .registers 2

    #@0
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    #@3
    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .registers 1

    #@0
    .line 67
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .registers 1

    #@0
    .line 67
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    #@2
    return-object p0
.end method

.method private dataForMode(I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_2c

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p1, v0, :cond_17

    #@5
    .line 430
    new-instance p1, Landroid/util/Pair;

    #@7
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v0

    #@d
    sget v1, Lcom/google/android/material/R$string;->material_timepicker_clock_mode_description:I

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@16
    return-object p1

    #@17
    .line 435
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    const-string v2, "no icon for mode: "

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 432
    :cond_2c
    new-instance p1, Landroid/util/Pair;

    #@2e
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    #@30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v0

    #@34
    sget v1, Lcom/google/android/material/R$string;->material_timepicker_text_input_mode_description:I

    #@36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3d
    return-object p1
.end method

.method private getThemeResId()I
    .registers 3

    #@0
    .line 543
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    #@2
    if-eqz v0, :cond_5

    #@4
    return v0

    #@5
    .line 546
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    sget v1, Lcom/google/android/material/R$attr;->materialTimePickerTheme:I

    #@b
    invoke-static {v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@e
    move-result-object v0

    #@f
    if-nez v0, :cond_13

    #@11
    const/4 v0, 0x0

    #@12
    goto :goto_15

    #@13
    .line 547
    :cond_13
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@15
    :goto_15
    return v0
.end method

.method private initializeOrRetrieveActivePresenterForMode(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/TimePickerPresenter;
    .registers 4

    #@0
    if-nez p1, :cond_10

    #@2
    .line 410
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@4
    if-nez p1, :cond_d

    #@6
    .line 411
    new-instance p1, Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@8
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@a
    invoke-direct {p1, p2, p3}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V

    #@d
    .line 412
    :cond_d
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@f
    return-object p1

    #@10
    .line 417
    :cond_10
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@12
    if-nez p1, :cond_23

    #@14
    .line 418
    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@17
    move-result-object p1

    #@18
    check-cast p1, Landroid/widget/LinearLayout;

    #@1a
    .line 419
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@1c
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@1e
    invoke-direct {p2, p1, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V

    #@21
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@23
    .line 422
    :cond_23
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@25
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->clearCheck()V

    #@28
    .line 424
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@2a
    return-object p1
.end method

.method private static newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .registers 5

    #@0
    .line 120
    new-instance v0, Lcom/google/android/material/timepicker/MaterialTimePicker;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;-><init>()V

    #@5
    .line 121
    new-instance v1, Landroid/os/Bundle;

    #@7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@a
    const-string v2, "TIME_PICKER_TIME_MODEL"

    #@c
    .line 122
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$000(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/TimeModel;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@13
    .line 123
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->inputMode:Ljava/lang/Integer;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    if-eqz v2, :cond_26

    #@19
    .line 124
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->inputMode:Ljava/lang/Integer;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v2

    #@21
    const-string v3, "TIME_PICKER_INPUT_MODE"

    #@23
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@26
    :cond_26
    const-string v2, "TIME_PICKER_TITLE_RES"

    #@28
    .line 126
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleTextResId:I
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$200(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2f
    .line 127
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleText:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    #@32
    move-result-object v2

    #@33
    if-eqz v2, :cond_3e

    #@35
    const-string v2, "TIME_PICKER_TITLE_TEXT"

    #@37
    .line 128
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleText:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@3e
    :cond_3e
    const-string v2, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    #@40
    .line 130
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->positiveButtonTextResId:I
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$400(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    #@43
    move-result v3

    #@44
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@47
    .line 131
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->positiveButtonText:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    #@4a
    move-result-object v2

    #@4b
    if-eqz v2, :cond_56

    #@4d
    const-string v2, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    #@4f
    .line 132
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->positiveButtonText:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@56
    :cond_56
    const-string v2, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    #@58
    .line 134
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->negativeButtonTextResId:I
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$600(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    #@5b
    move-result v3

    #@5c
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5f
    .line 135
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->negativeButtonText:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    #@62
    move-result-object v2

    #@63
    if-eqz v2, :cond_6e

    #@65
    const-string v2, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    #@67
    .line 136
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->negativeButtonText:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@6e
    :cond_6e
    const-string v2, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    #@70
    .line 138
    # getter for: Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->overrideThemeResId:I
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$800(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    #@73
    move-result p0

    #@74
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@77
    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->setArguments(Landroid/os/Bundle;)V

    #@7a
    return-object v0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .registers 5

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const-string v0, "TIME_PICKER_TIME_MODEL"

    #@5
    .line 243
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/material/timepicker/TimeModel;

    #@b
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@d
    if-nez v0, :cond_16

    #@f
    .line 245
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel;

    #@11
    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    #@14
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@16
    .line 247
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@18
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    #@1a
    const/4 v1, 0x1

    #@1b
    const/4 v2, 0x0

    #@1c
    if-ne v0, v1, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v1, v2

    #@20
    :goto_20
    const-string v0, "TIME_PICKER_INPUT_MODE"

    #@22
    .line 248
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@28
    const-string v0, "TIME_PICKER_TITLE_RES"

    #@2a
    .line 249
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    #@30
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    #@32
    .line 250
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    #@38
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    #@3a
    .line 251
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    #@40
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    #@42
    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    #@48
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    #@4a
    .line 253
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@4d
    move-result v0

    #@4e
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    #@50
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    #@52
    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    #@58
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    #@5a
    .line 255
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5d
    move-result p1

    #@5e
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    #@60
    return-void
.end method

.method private updateCancelButtonVisibility()V
    .registers 3

    #@0
    .line 401
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 402
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->isCancelable()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_c

    #@a
    const/4 v1, 0x0

    #@b
    goto :goto_e

    #@c
    :cond_c
    const/16 v1, 0x8

    #@e
    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    #@11
    :cond_11
    return-void
.end method

.method private updateInputMode(Lcom/google/android/material/button/MaterialButton;)V
    .registers 5

    #@0
    if-eqz p1, :cond_4e

    #@2
    .line 381
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@4
    if-eqz v0, :cond_4e

    #@6
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_4e

    #@b
    .line 385
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 386
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->hide()V

    #@12
    .line 389
    :cond_12
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@14
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@16
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    #@18
    .line 390
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->initializeOrRetrieveActivePresenterForMode(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@1e
    .line 391
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->show()V

    #@21
    .line 392
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@23
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    #@26
    .line 393
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@28
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->dataForMode(I)Landroid/util/Pair;

    #@2b
    move-result-object v0

    #@2c
    .line 394
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2e
    check-cast v1, Ljava/lang/Integer;

    #@30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v1

    #@34
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    #@37
    .line 395
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getResources()Landroid/content/res/Resources;

    #@3a
    move-result-object v1

    #@3b
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3d
    check-cast v0, Ljava/lang/Integer;

    #@3f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@42
    move-result v0

    #@43
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@4a
    const/4 v0, 0x4

    #@4b
    .line 396
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->sendAccessibilityEvent(I)V

    #@4e
    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .registers 3

    #@0
    .line 499
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 3

    #@0
    .line 523
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3

    #@0
    .line 471
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public addOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3

    #@0
    .line 450
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public clearOnCancelListeners()V
    .registers 2

    #@0
    .line 515
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    return-void
.end method

.method public clearOnDismissListeners()V
    .registers 2

    #@0
    .line 539
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .registers 2

    #@0
    .line 487
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .registers 2

    #@0
    .line 466
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    return-void
.end method

.method public getHour()I
    .registers 2

    #@0
    .line 161
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    #@4
    rem-int/lit8 v0, v0, 0x18

    #@6
    return v0
.end method

.method public getInputMode()I
    .registers 2

    #@0
    .line 174
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@2
    return v0
.end method

.method public getMinute()I
    .registers 2

    #@0
    .line 147
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    #@4
    return v0
.end method

.method getTimePickerClockPresenter()Lcom/google/android/material/timepicker/TimePickerClockPresenter;
    .registers 2

    #@0
    .line 440
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@2
    return-object v0
.end method

.method synthetic lambda$onViewCreated$0$com-google-android-material-timepicker-MaterialTimePicker()V
    .registers 2

    #@0
    .line 332
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@2
    check-cast v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    #@7
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    #@0
    .line 350
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    #@12
    .line 351
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    #@15
    goto :goto_6

    #@16
    .line 353
    :cond_16
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    #@19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 220
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    if-nez p1, :cond_9

    #@5
    .line 221
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getArguments()Landroid/os/Bundle;

    #@8
    move-result-object p1

    #@9
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->restoreState(Landroid/os/Bundle;)V

    #@c
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9

    #@0
    .line 180
    new-instance p1, Landroid/app/Dialog;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getThemeResId()I

    #@9
    move-result v1

    #@a
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@d
    .line 181
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    .line 182
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    #@13
    const-class v2, Lcom/google/android/material/timepicker/MaterialTimePicker;

    #@15
    .line 184
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 183
    invoke-static {v0, v1, v2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    #@1c
    move-result v1

    #@1d
    .line 186
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1f
    sget v3, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    #@21
    sget v4, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    #@23
    const/4 v5, 0x0

    #@24
    invoke-direct {v2, v0, v5, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@27
    .line 193
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker:[I

    #@29
    sget v4, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    #@2b
    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    #@2d
    .line 194
    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@30
    move-result-object v3

    #@31
    .line 200
    sget v4, Lcom/google/android/material/R$styleable;->MaterialTimePicker_clockIcon:I

    #@33
    const/4 v5, 0x0

    #@34
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@37
    move-result v4

    #@38
    iput v4, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    #@3a
    .line 201
    sget v4, Lcom/google/android/material/R$styleable;->MaterialTimePicker_keyboardIcon:I

    #@3c
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3f
    move-result v4

    #@40
    iput v4, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    #@42
    .line 203
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@45
    .line 205
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@48
    .line 206
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@4f
    .line 207
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@52
    move-result-object v0

    #@53
    .line 208
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@56
    const/4 v1, 0x1

    #@57
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    #@5a
    const/4 v1, -0x2

    #@5b
    .line 211
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    #@5e
    .line 213
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@61
    move-result-object v0

    #@62
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@65
    move-result v0

    #@66
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@69
    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    #@0
    .line 264
    sget p3, Lcom/google/android/material/R$layout;->material_timepicker_dialog:I

    #@2
    .line 265
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroid/view/ViewGroup;

    #@8
    .line 266
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_view:I

    #@a
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object p2

    #@e
    check-cast p2, Lcom/google/android/material/timepicker/TimePickerView;

    #@10
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@12
    .line 267
    invoke-virtual {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    #@15
    .line 268
    sget p2, Lcom/google/android/material/R$id;->material_textinput_timepicker:I

    #@17
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object p2

    #@1b
    check-cast p2, Landroid/view/ViewStub;

    #@1d
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    #@1f
    .line 269
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_mode_button:I

    #@21
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@24
    move-result-object p2

    #@25
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    #@27
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    #@29
    .line 270
    sget p2, Lcom/google/android/material/R$id;->header_title:I

    #@2b
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@2e
    move-result-object p2

    #@2f
    check-cast p2, Landroid/widget/TextView;

    #@31
    .line 272
    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    #@33
    if-eqz p3, :cond_39

    #@35
    .line 273
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    #@38
    goto :goto_46

    #@39
    .line 274
    :cond_39
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    #@3b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result p3

    #@3f
    if-nez p3, :cond_46

    #@41
    .line 275
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    #@43
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@46
    .line 278
    :cond_46
    :goto_46
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    #@48
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    #@4b
    .line 279
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_ok_button:I

    #@4d
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@50
    move-result-object p2

    #@51
    check-cast p2, Landroid/widget/Button;

    #@53
    .line 280
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$1;

    #@55
    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$1;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    #@58
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5b
    .line 290
    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    #@5d
    if-eqz p3, :cond_63

    #@5f
    .line 291
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    #@62
    goto :goto_70

    #@63
    .line 292
    :cond_63
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    #@65
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@68
    move-result p3

    #@69
    if-nez p3, :cond_70

    #@6b
    .line 293
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    #@6d
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@70
    .line 296
    :cond_70
    :goto_70
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_cancel_button:I

    #@72
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@75
    move-result-object p2

    #@76
    check-cast p2, Landroid/widget/Button;

    #@78
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    #@7a
    .line 297
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$2;

    #@7c
    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$2;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    #@7f
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@82
    .line 307
    iget p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    #@84
    if-eqz p2, :cond_8c

    #@86
    .line 308
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    #@88
    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(I)V

    #@8b
    goto :goto_9b

    #@8c
    .line 309
    :cond_8c
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    #@8e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@91
    move-result p2

    #@92
    if-nez p2, :cond_9b

    #@94
    .line 310
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    #@96
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    #@98
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@9b
    .line 313
    :cond_9b
    :goto_9b
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateCancelButtonVisibility()V

    #@9e
    .line 315
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    #@a0
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$3;

    #@a2
    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$3;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    #@a5
    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@a8
    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    #@0
    .line 338
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 339
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@6
    .line 340
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    #@8
    .line 341
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@a
    .line 342
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@c
    if-eqz v1, :cond_13

    #@e
    .line 343
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    #@11
    .line 344
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    #@13
    :cond_13
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    #@0
    .line 358
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    #@12
    .line 359
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    #@15
    goto :goto_6

    #@16
    .line 362
    :cond_16
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    #@19
    return-void
.end method

.method public onDoubleTap()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 375
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@3
    .line 376
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    #@8
    .line 377
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    #@d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 226
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    const-string v0, "TIME_PICKER_TIME_MODEL"

    #@5
    .line 227
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@a
    const-string v0, "TIME_PICKER_INPUT_MODE"

    #@c
    .line 228
    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    const-string v0, "TIME_PICKER_TITLE_RES"

    #@13
    .line 229
    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    #@1a
    .line 230
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1f
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    #@21
    .line 231
    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@26
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    #@28
    .line 232
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@2d
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    #@2f
    .line 233
    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    #@31
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@34
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    #@36
    .line 234
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    #@38
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@3b
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    #@3d
    .line 235
    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    #@3f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@42
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 329
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@3
    .line 330
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@5
    instance-of p2, p2, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    #@7
    if-eqz p2, :cond_13

    #@9
    .line 332
    new-instance p2, Lcom/google/android/material/timepicker/MaterialTimePicker$$ExternalSyntheticLambda0;

    #@b
    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    #@e
    const-wide/16 v0, 0x64

    #@10
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@13
    :cond_13
    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .registers 3

    #@0
    .line 507
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 3

    #@0
    .line 531
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3

    #@0
    .line 479
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3

    #@0
    .line 458
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method setActivePresenter(Lcom/google/android/material/timepicker/TimePickerPresenter;)V
    .registers 2

    #@0
    .line 445
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@2
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    #@0
    .line 367
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    #@3
    .line 368
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateCancelButtonVisibility()V

    #@6
    return-void
.end method

.method public setHour(I)V
    .registers 3

    #@0
    .line 166
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    #@5
    .line 167
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@7
    if-eqz p1, :cond_c

    #@9
    .line 168
    invoke-interface {p1}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    #@c
    :cond_c
    return-void
.end method

.method public setMinute(I)V
    .registers 3

    #@0
    .line 152
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    #@5
    .line 153
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    #@7
    if-eqz p1, :cond_c

    #@9
    .line 154
    invoke-interface {p1}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    #@c
    :cond_c
    return-void
.end method
