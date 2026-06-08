.class public Lcom/google/android/material/datepicker/RangeDateSelector;
.super Ljava/lang/Object;
.source "RangeDateSelector.java"

# interfaces
.implements Lcom/google/android/material/datepicker/DateSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/DateSelector<",
        "Landroidx/core/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/RangeDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error:Ljava/lang/CharSequence;

.field private final invalidRangeEndError:Ljava/lang/String;

.field private invalidRangeStartError:Ljava/lang/String;

.field private proposedTextEnd:Ljava/lang/Long;

.field private proposedTextStart:Ljava/lang/Long;

.field private selectedEndItem:Ljava/lang/Long;

.field private selectedStartItem:Ljava/lang/Long;

.field private textInputFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 330
    new-instance v0, Lcom/google/android/material/datepicker/RangeDateSelector$3;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/RangeDateSelector$3;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/datepicker/RangeDateSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, " "

    #@5
    .line 58
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeEndError:Ljava/lang/String;

    #@7
    const/4 v0, 0x0

    #@8
    .line 59
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@a
    .line 60
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@c
    .line 61
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    #@e
    .line 62
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    #@10
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2

    #@0
    .line 53
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    #@2
    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .registers 4

    #@0
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/RangeDateSelector;->updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    #@3
    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2

    #@0
    .line 53
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    #@2
    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2

    #@0
    .line 53
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@2
    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2

    #@0
    .line 53
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@2
    return-object p1
.end method

.method private clearInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 6

    #@0
    .line 314
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_16

    #@7
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    #@9
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 315
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    #@16
    .line 317
    :cond_16
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@19
    move-result-object p1

    #@1a
    if-eqz p1, :cond_2b

    #@1c
    const-string p1, " "

    #@1e
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@25
    move-result p1

    #@26
    if-eqz p1, :cond_2b

    #@28
    .line 318
    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    #@2b
    :cond_2b
    return-void
.end method

.method private isValidRange(JJ)Z
    .registers 5

    #@0
    cmp-long p1, p1, p3

    #@2
    if-gtz p1, :cond_6

    #@4
    const/4 p1, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p1, 0x0

    #@7
    :goto_7
    return p1
.end method

.method private setInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 4

    #@0
    .line 323
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    #@5
    const-string p1, " "

    #@7
    .line 324
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    #@a
    return-void
.end method

.method private updateError(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 4

    #@0
    .line 304
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_11

    #@a
    .line 305
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    #@10
    goto :goto_25

    #@11
    .line 306
    :cond_11
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@14
    move-result-object p1

    #@15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result p1

    #@19
    if-nez p1, :cond_22

    #@1b
    .line 307
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@1e
    move-result-object p1

    #@1f
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    #@21
    goto :goto_25

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    .line 309
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    #@25
    :goto_25
    return-void
.end method

.method private updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .line 289
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    #@2
    if-eqz v0, :cond_30

    #@4
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    #@6
    if-nez v1, :cond_9

    #@8
    goto :goto_30

    #@9
    .line 292
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@c
    move-result-wide v0

    #@d
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    #@f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v2

    #@13
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_29

    #@19
    .line 293
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    #@1b
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@1d
    .line 294
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    #@1f
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@21
    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->getSelection()Landroidx/core/util/Pair;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p3, v0}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    #@28
    goto :goto_36

    #@29
    .line 297
    :cond_29
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->setInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    #@2c
    .line 298
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    #@2f
    goto :goto_36

    #@30
    .line 290
    :cond_30
    :goto_30
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->clearInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    #@33
    .line 291
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    #@36
    .line 300
    :goto_36
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->updateError(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    #@39
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
    .registers 5

    #@0
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 127
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v1

    #@8
    .line 128
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_maximum_default_fullscreen_minor_axis:I

    #@a
    .line 129
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@d
    move-result v0

    #@e
    .line 130
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@10
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@12
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v1

    #@16
    if-le v1, v0, :cond_1b

    #@18
    .line 133
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    #@1a
    goto :goto_1d

    #@1b
    .line 134
    :cond_1b
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarFullscreenTheme:I

    #@1d
    .line 135
    :goto_1d
    const-class v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@1f
    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 135
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    #@26
    move-result p1

    #@27
    return p1
.end method

.method public getDefaultTitleResId()I
    .registers 2

    #@0
    .line 190
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_title:I

    #@2
    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    #@0
    .line 185
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

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
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

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
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 115
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@7
    if-eqz v1, :cond_c

    #@9
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    .line 118
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@e
    if-eqz v1, :cond_13

    #@10
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    :cond_13
    return-object v0
.end method

.method public getSelectedRanges()Ljava/util/Collection;
    .registers 5
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
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 106
    new-instance v1, Landroidx/core/util/Pair;

    #@7
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@9
    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@b
    invoke-direct {v1, v2, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@e
    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    return-object v0
.end method

.method public getSelection()Landroidx/core/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .line 99
    new-instance v0, Landroidx/core/util/Pair;

    #@2
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@4
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@6
    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->getSelection()Landroidx/core/util/Pair;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    #@0
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    .line 168
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@6
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@8
    .line 169
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;

    #@b
    move-result-object v0

    #@c
    .line 171
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@e
    if-nez v1, :cond_17

    #@10
    .line 172
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection_none:I

    #@12
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    goto :goto_1b

    #@17
    .line 173
    :cond_17
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@19
    check-cast v1, Ljava/lang/String;

    #@1b
    .line 175
    :goto_1b
    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@1d
    if-nez v2, :cond_26

    #@1f
    .line 176
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection_none:I

    #@21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    goto :goto_2a

    #@26
    .line 177
    :cond_26
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@28
    check-cast v0, Ljava/lang/String;

    #@2a
    .line 178
    :goto_2a
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_range_selection:I

    #@2c
    const/4 v3, 0x2

    #@2d
    new-array v3, v3, [Ljava/lang/Object;

    #@2f
    const/4 v4, 0x0

    #@30
    aput-object v1, v3, v4

    #@32
    const/4 v1, 0x1

    #@33
    aput-object v0, v3, v1

    #@35
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object p1

    #@39
    return-object p1
.end method

.method public getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    #@0
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    .line 143
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@6
    if-nez v0, :cond_13

    #@8
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@a
    if-nez v1, :cond_13

    #@c
    .line 144
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_unselected:I

    #@e
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 146
    :cond_13
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@15
    const/4 v2, 0x0

    #@16
    const/4 v3, 0x1

    #@17
    if-nez v1, :cond_2e

    #@19
    .line 147
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_start_selected:I

    #@1b
    new-array v1, v3, [Ljava/lang/Object;

    #@1d
    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@1f
    .line 149
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@22
    move-result-wide v3

    #@23
    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    aput-object v3, v1, v2

    #@29
    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object p1

    #@2d
    return-object p1

    #@2e
    :cond_2e
    if-nez v0, :cond_45

    #@30
    .line 152
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_end_selected:I

    #@32
    new-array v1, v3, [Ljava/lang/Object;

    #@34
    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@36
    .line 154
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@39
    move-result-wide v3

    #@3a
    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    aput-object v3, v1, v2

    #@40
    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object p1

    #@44
    return-object p1

    #@45
    .line 157
    :cond_45
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;

    #@48
    move-result-object v0

    #@49
    .line 158
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_selected:I

    #@4b
    const/4 v4, 0x2

    #@4c
    new-array v4, v4, [Ljava/lang/Object;

    #@4e
    iget-object v5, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@50
    aput-object v5, v4, v2

    #@52
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@54
    aput-object v0, v4, v3

    #@56
    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object p1

    #@5a
    return-object p1
.end method

.method public isSelectionComplete()Z
    .registers 5

    #@0
    .line 80
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@2
    if-eqz v0, :cond_1a

    #@4
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@6
    if-eqz v1, :cond_1a

    #@8
    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@11
    move-result-wide v2

    #@12
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1a

    #@18
    const/4 v0, 0x1

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    :goto_1b
    return v0
.end method

.method public onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    move-object/from16 v9, p0

    #@2
    .line 205
    sget v0, Lcom/google/android/material/R$layout;->mtrl_picker_text_input_date_range:I

    #@4
    const/4 v10, 0x0

    #@5
    move-object/from16 v1, p1

    #@7
    move-object/from16 v2, p2

    #@9
    .line 206
    invoke-virtual {v1, v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@c
    move-result-object v11

    #@d
    .line 208
    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_start:I

    #@f
    .line 209
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    move-object v12, v0

    #@14
    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    #@16
    .line 210
    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_end:I

    #@18
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    move-object v13, v0

    #@1d
    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    #@1f
    .line 211
    invoke-virtual {v12, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    #@22
    .line 212
    invoke-virtual {v13, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    #@25
    .line 213
    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@28
    move-result-object v14

    #@29
    .line 214
    invoke-virtual {v13}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@2c
    move-result-object v15

    #@2d
    .line 215
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isDateInputKeyboardMissingSeparatorCharacters()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3b

    #@33
    const/16 v0, 0x11

    #@35
    .line 217
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setInputType(I)V

    #@38
    .line 218
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setInputType(I)V

    #@3b
    .line 221
    :cond_3b
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object v0

    #@3f
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_invalid_range:I

    #@41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    iput-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    #@47
    .line 223
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    #@49
    const/16 v16, 0x1

    #@4b
    if-eqz v0, :cond_50

    #@4d
    move/from16 v1, v16

    #@4f
    goto :goto_51

    #@50
    :cond_50
    move v1, v10

    #@51
    :goto_51
    if-eqz v1, :cond_54

    #@53
    goto :goto_58

    #@54
    .line 225
    :cond_54
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputFormat()Ljava/text/SimpleDateFormat;

    #@57
    move-result-object v0

    #@58
    :goto_58
    move-object v8, v0

    #@59
    .line 227
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@5b
    if-eqz v0, :cond_68

    #@5d
    .line 228
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@64
    .line 229
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@66
    iput-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    #@68
    .line 231
    :cond_68
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@6a
    if-eqz v0, :cond_77

    #@6c
    .line 232
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@73
    .line 233
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@75
    iput-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    #@77
    :cond_77
    if-eqz v1, :cond_7e

    #@79
    .line 238
    invoke-virtual {v8}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    goto :goto_86

    #@7e
    .line 239
    :cond_7e
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@81
    move-result-object v0

    #@82
    invoke-static {v0, v8}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    :goto_86
    move-object v7, v0

    #@87
    .line 241
    invoke-virtual {v12, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    #@8a
    .line 242
    invoke-virtual {v13, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    #@8d
    .line 244
    new-instance v6, Lcom/google/android/material/datepicker/RangeDateSelector$1;

    #@8f
    move-object v0, v6

    #@90
    move-object/from16 v1, p0

    #@92
    move-object v2, v7

    #@93
    move-object v3, v8

    #@94
    move-object v4, v12

    #@95
    move-object/from16 v5, p4

    #@97
    move-object v10, v6

    #@98
    move-object v6, v12

    #@99
    move-object/from16 v17, v7

    #@9b
    move-object v7, v13

    #@9c
    move-object/from16 v18, v8

    #@9e
    move-object/from16 v8, p5

    #@a0
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/datepicker/RangeDateSelector$1;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    #@a3
    invoke-virtual {v14, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@a6
    .line 260
    new-instance v10, Lcom/google/android/material/datepicker/RangeDateSelector$2;

    #@a8
    move-object v0, v10

    #@a9
    move-object/from16 v2, v17

    #@ab
    move-object/from16 v3, v18

    #@ad
    move-object v4, v13

    #@ae
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/datepicker/RangeDateSelector$2;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    #@b1
    invoke-virtual {v15, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@b4
    const/4 v0, 0x2

    #@b5
    new-array v0, v0, [Landroid/widget/EditText;

    #@b7
    const/4 v1, 0x0

    #@b8
    aput-object v14, v0, v1

    #@ba
    aput-object v15, v0, v16

    #@bc
    .line 276
    invoke-static {v0}, Lcom/google/android/material/datepicker/DateSelector;->showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V

    #@bf
    return-object v11
.end method

.method public select(J)V
    .registers 5

    #@0
    .line 68
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 69
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object p1

    #@8
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@a
    goto :goto_29

    #@b
    .line 70
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@d
    if-nez v1, :cond_20

    #@f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v0

    #@13
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_20

    #@19
    .line 71
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1c
    move-result-object p1

    #@1d
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@1f
    goto :goto_29

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    .line 73
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@23
    .line 74
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object p1

    #@27
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@29
    :goto_29
    return-void
.end method

.method public setSelection(Landroidx/core/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 87
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_1f

    #@4
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_1f

    #@8
    .line 88
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@a
    check-cast v0, Ljava/lang/Long;

    #@c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@f
    move-result-wide v0

    #@10
    iget-object v2, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@12
    check-cast v2, Ljava/lang/Long;

    #@14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v2

    #@18
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    #@1b
    move-result v0

    #@1c
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    #@1f
    .line 91
    :cond_1f
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@21
    const/4 v1, 0x0

    #@22
    if-nez v0, :cond_26

    #@24
    move-object v0, v1

    #@25
    goto :goto_36

    #@26
    :cond_26
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@28
    check-cast v0, Ljava/lang/Long;

    #@2a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@2d
    move-result-wide v2

    #@2e
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    #@31
    move-result-wide v2

    #@32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@35
    move-result-object v0

    #@36
    :goto_36
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@38
    .line 93
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@3a
    if-nez v0, :cond_3d

    #@3c
    goto :goto_4d

    #@3d
    :cond_3d
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@3f
    check-cast p1, Ljava/lang/Long;

    #@41
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@44
    move-result-wide v0

    #@45
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    #@48
    move-result-wide v0

    #@49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4c
    move-result-object v1

    #@4d
    :goto_4d
    iput-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@4f
    return-void
.end method

.method public bridge synthetic setSelection(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 52
    check-cast p1, Landroidx/core/util/Pair;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->setSelection(Landroidx/core/util/Pair;)V

    #@5
    return-void
.end method

.method public setTextInputFormat(Ljava/text/SimpleDateFormat;)V
    .registers 2

    #@0
    .line 195
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    #@2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 356
    iget-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@5
    .line 357
    iget-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    #@7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@a
    return-void
.end method
