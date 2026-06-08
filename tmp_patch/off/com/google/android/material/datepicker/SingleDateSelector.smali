.class public Lcom/google/android/material/datepicker/SingleDateSelector;
.super Ljava/lang/Object;
.source "SingleDateSelector.java"

# interfaces
.implements Lcom/google/android/material/datepicker/DateSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/DateSelector<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/SingleDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error:Ljava/lang/CharSequence;

.field private selectedItem:Ljava/lang/Long;

.field private textInputFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 200
    new-instance v0, Lcom/google/android/material/datepicker/SingleDateSelector$2;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/SingleDateSelector$2;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/datepicker/SingleDateSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/SingleDateSelector;)V
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Lcom/google/android/material/datepicker/SingleDateSelector;->clearSelection()V

    #@3
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 50
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->error:Ljava/lang/CharSequence;

    #@2
    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2

    #@0
    .line 50
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@2
    return-object p1
.end method

.method private clearSelection()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 62
    iput-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDefaultThemeResId(Landroid/content/Context;)I
    .registers 4

    #@0
    .line 160
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    #@2
    const-class v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@4
    .line 161
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 160
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public getDefaultTitleResId()I
    .registers 2

    #@0
    .line 194
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_date_header_title:I

    #@2
    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    #@0
    .line 189
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->error:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_10

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->error:Ljava/lang/CharSequence;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    :goto_10
    return-object v0
.end method

.method public getSelectedDays()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 85
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@7
    if-eqz v1, :cond_c

    #@9
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    :cond_c
    return-object v0
.end method

.method public getSelectedRanges()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    #@0
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    return-object v0
.end method

.method public getSelection()Ljava/lang/Long;
    .registers 2

    #@0
    .line 94
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@2
    return-object v0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .registers 2

    #@0
    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/SingleDateSelector;->getSelection()Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    #@0
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    .line 180
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@6
    if-nez v0, :cond_f

    #@8
    .line 181
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection_none:I

    #@a
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_17

    #@f
    .line 182
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 183
    :goto_17
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection:I

    #@19
    const/4 v2, 0x1

    #@1a
    new-array v2, v2, [Ljava/lang/Object;

    #@1c
    const/4 v3, 0x0

    #@1d
    aput-object v0, v2, v3

    #@1f
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    return-object p1
.end method

.method public getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    #@0
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    .line 168
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@6
    if-nez v0, :cond_f

    #@8
    .line 169
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_date_header_unselected:I

    #@a
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    .line 171
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 172
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_date_header_selected:I

    #@19
    const/4 v2, 0x1

    #@1a
    new-array v2, v2, [Ljava/lang/Object;

    #@1c
    const/4 v3, 0x0

    #@1d
    aput-object v0, v2, v3

    #@1f
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    return-object p1
.end method

.method public isSelectionComplete()Z
    .registers 2

    #@0
    .line 72
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .line 109
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_text_input_date:I

    #@2
    const/4 v0, 0x0

    #@3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object p1

    #@7
    .line 111
    sget p2, Lcom/google/android/material/R$id;->mtrl_picker_text_input_date:I

    #@9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@c
    move-result-object p2

    #@d
    move-object v8, p2

    #@e
    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    #@10
    .line 112
    invoke-virtual {v8, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    #@13
    .line 113
    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@16
    move-result-object p2

    #@17
    .line 114
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isDateInputKeyboardMissingSeparatorCharacters()Z

    #@1a
    move-result p3

    #@1b
    if-eqz p3, :cond_22

    #@1d
    const/16 p3, 0x11

    #@1f
    .line 116
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    #@22
    .line 119
    :cond_22
    iget-object p3, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    #@24
    const/4 v9, 0x1

    #@25
    if-eqz p3, :cond_29

    #@27
    move v1, v9

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v1, v0

    #@2a
    :goto_2a
    if-eqz v1, :cond_2d

    #@2c
    goto :goto_31

    #@2d
    .line 121
    :cond_2d
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputFormat()Ljava/text/SimpleDateFormat;

    #@30
    move-result-object p3

    #@31
    :goto_31
    move-object v4, p3

    #@32
    if-eqz v1, :cond_39

    #@34
    .line 124
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@37
    move-result-object p3

    #@38
    goto :goto_41

    #@39
    .line 125
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object p3

    #@3d
    invoke-static {p3, v4}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    #@40
    move-result-object p3

    #@41
    :goto_41
    move-object v3, p3

    #@42
    .line 127
    invoke-virtual {v8, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    #@45
    .line 128
    iget-object p3, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@47
    if-eqz p3, :cond_50

    #@49
    .line 129
    invoke-virtual {v4, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@4c
    move-result-object p3

    #@4d
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@50
    .line 132
    :cond_50
    new-instance p3, Lcom/google/android/material/datepicker/SingleDateSelector$1;

    #@52
    move-object v1, p3

    #@53
    move-object v2, p0

    #@54
    move-object v5, v8

    #@55
    move-object v6, p4

    #@56
    move-object v7, p5

    #@57
    invoke-direct/range {v1 .. v8}, Lcom/google/android/material/datepicker/SingleDateSelector$1;-><init>(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;Lcom/google/android/material/textfield/TextInputLayout;)V

    #@5a
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@5d
    new-array p3, v9, [Landroid/widget/EditText;

    #@5f
    aput-object p2, p3, v0

    #@61
    .line 153
    invoke-static {p3}, Lcom/google/android/material/datepicker/DateSelector;->showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V

    #@64
    return-object p1
.end method

.method public select(J)V
    .registers 3

    #@0
    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@6
    return-void
.end method

.method public setSelection(Ljava/lang/Long;)V
    .registers 4

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    goto :goto_10

    #@4
    .line 67
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    #@b
    move-result-wide v0

    #@c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f
    move-result-object p1

    #@10
    :goto_10
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@12
    return-void
.end method

.method public bridge synthetic setSelection(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 49
    check-cast p1, Ljava/lang/Long;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/SingleDateSelector;->setSelection(Ljava/lang/Long;)V

    #@5
    return-void
.end method

.method public setTextInputFormat(Ljava/text/SimpleDateFormat;)V
    .registers 2

    #@0
    .line 99
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    #@2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 224
    iget-object p2, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@5
    return-void
.end method
