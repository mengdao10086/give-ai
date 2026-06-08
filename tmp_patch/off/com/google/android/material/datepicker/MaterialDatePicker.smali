.class public final Lcom/google/android/material/datepicker/MaterialDatePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;,
        Lcom/google/android/material/datepicker/MaterialDatePicker$InputMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field static final CANCEL_BUTTON_TAG:Ljava/lang/Object;

.field static final CONFIRM_BUTTON_TAG:Ljava/lang/Object;

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field private static final DAY_VIEW_DECORATOR_KEY:Ljava/lang/String; = "DAY_VIEW_DECORATOR_KEY"

.field public static final INPUT_MODE_CALENDAR:I = 0x0

.field private static final INPUT_MODE_KEY:Ljava/lang/String; = "INPUT_MODE_KEY"

.field public static final INPUT_MODE_TEXT:I = 0x1

.field private static final NEGATIVE_BUTTON_TEXT_KEY:Ljava/lang/String; = "NEGATIVE_BUTTON_TEXT_KEY"

.field private static final NEGATIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String; = "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

.field private static final OVERRIDE_THEME_RES_ID:Ljava/lang/String; = "OVERRIDE_THEME_RES_ID"

.field private static final POSITIVE_BUTTON_TEXT_KEY:Ljava/lang/String; = "POSITIVE_BUTTON_TEXT_KEY"

.field private static final POSITIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String; = "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

.field private static final TITLE_TEXT_KEY:Ljava/lang/String; = "TITLE_TEXT_KEY"

.field private static final TITLE_TEXT_RES_ID_KEY:Ljava/lang/String; = "TITLE_TEXT_RES_ID_KEY"

.field static final TOGGLE_BUTTON_TAG:Ljava/lang/Object;


# instance fields
.field private background:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private calendar:Lcom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TS;>;"
        }
    .end annotation
.end field

.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private confirmButton:Landroid/widget/Button;

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

.field private edgeToEdgeEnabled:Z

.field private fullTitleText:Ljava/lang/CharSequence;

.field private fullscreen:Z

.field private headerSelectionText:Landroid/widget/TextView;

.field private headerTitleTextView:Landroid/widget/TextView;

.field private headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

.field private inputMode:I

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private negativeButtonTextResId:I

.field private final onCancelListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDismissListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field private overrideThemeResId:I

.field private pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/PickerFragment<",
            "TS;>;"
        }
    .end annotation
.end field

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private positiveButtonTextResId:I

.field private singleLineTitleText:Ljava/lang/CharSequence;

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "CONFIRM_BUTTON_TAG"

    #@2
    .line 87
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    #@4
    const-string v0, "CANCEL_BUTTON_TAG"

    #@6
    .line 88
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    #@8
    const-string v0, "TOGGLE_BUTTON_TAG"

    #@a
    .line 89
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    #@c
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 73
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    #@3
    .line 124
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    #@a
    .line 126
    new-instance v0, Ljava/util/LinkedHashSet;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    #@11
    .line 128
    new-instance v0, Ljava/util/LinkedHashSet;

    #@13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    #@18
    .line 130
    new-instance v0, Ljava/util/LinkedHashSet;

    #@1a
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    #@1f
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .registers 1

    #@0
    .line 73
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/datepicker/DateSelector;
    .registers 1

    #@0
    .line 73
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .registers 1

    #@0
    .line 73
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;
    .registers 1

    #@0
    .line 73
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/internal/CheckableImageButton;
    .registers 1

    #@0
    .line 73
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/datepicker/MaterialDatePicker;Lcom/google/android/material/internal/CheckableImageButton;)V
    .registers 2

    #@0
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .registers 1

    #@0
    .line 73
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    #@3
    return-void
.end method

.method private static createHeaderToggleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 511
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@2
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@5
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [I

    #@8
    const v2, 0x10100a0

    #@b
    const/4 v3, 0x0

    #@c
    aput v2, v1, v3

    #@e
    .line 512
    sget v2, Lcom/google/android/material/R$drawable;->material_ic_calendar_black_24dp:I

    #@10
    .line 514
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v2

    #@14
    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@17
    new-array v1, v3, [I

    #@19
    .line 515
    sget v2, Lcom/google/android/material/R$drawable;->material_ic_edit_black_24dp:I

    #@1b
    .line 517
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object p0

    #@1f
    .line 515
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@22
    return-object v0
.end method

.method private enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V
    .registers 6

    #@0
    .line 391
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->edgeToEdgeEnabled:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 395
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireView()Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    sget v1, Lcom/google/android/material/R$id;->fullscreen_header:I

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 397
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getBackgroundColor(Landroid/view/View;)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    const/4 v3, 0x1

    #@15
    .line 396
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    #@18
    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    #@1b
    move-result p1

    #@1c
    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v1

    #@20
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@22
    .line 400
    new-instance v2, Lcom/google/android/material/datepicker/MaterialDatePicker$4;

    #@24
    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$4;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V

    #@27
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@2a
    .line 418
    iput-boolean v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->edgeToEdgeEnabled:Z

    #@2c
    return-void
.end method

.method private getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    #@0
    .line 502
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@2
    if-nez v0, :cond_12

    #@4
    .line 503
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getArguments()Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    const-string v1, "DATE_SELECTOR_KEY"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    #@10
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@12
    .line 505
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@14
    return-object v0
.end method

.method private static getFirstLineBySeparator(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    if-eqz p0, :cond_14

    #@2
    .line 524
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "\n"

    #@8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 525
    array-length v1, v0

    #@d
    const/4 v2, 0x1

    #@e
    if-le v1, v2, :cond_13

    #@10
    const/4 p0, 0x0

    #@11
    aget-object p0, v0, p0

    #@13
    :cond_13
    return-object p0

    #@14
    :cond_14
    const/4 p0, 0x0

    #@15
    return-object p0
.end method

.method private getHeaderContentDescription()Ljava/lang/String;
    .registers 3

    #@0
    .line 434
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static getPaddedPickerWidth(Landroid/content/Context;)I
    .registers 5

    #@0
    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    .line 555
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_content_padding:I

    #@6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@9
    move-result v0

    #@a
    .line 556
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    #@d
    move-result-object v1

    #@e
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    #@10
    .line 557
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_width:I

    #@12
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@15
    move-result v2

    #@16
    .line 558
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_horizontal_padding:I

    #@18
    .line 559
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@1b
    move-result p0

    #@1c
    mul-int/lit8 v0, v0, 0x2

    #@1e
    mul-int/2addr v2, v1

    #@1f
    add-int/2addr v0, v2

    #@20
    add-int/lit8 v1, v1, -0x1

    #@22
    mul-int/2addr v1, p0

    #@23
    add-int/2addr v0, v1

    #@24
    return v0
.end method

.method private getThemeResId(Landroid/content/Context;)I
    .registers 3

    #@0
    .line 220
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    #@2
    if-eqz v0, :cond_5

    #@4
    return v0

    #@5
    .line 223
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1}, Lcom/google/android/material/datepicker/DateSelector;->getDefaultThemeResId(Landroid/content/Context;)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method private initHeaderToggle(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 471
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    sget-object v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setTag(Ljava/lang/Object;)V

    #@7
    .line 472
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@9
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->createHeaderToggleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10
    .line 473
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@12
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    #@14
    if-eqz v0, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    :goto_19
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    #@1c
    .line 477
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@1e
    const/4 v0, 0x0

    #@1f
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@22
    .line 478
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@24
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V

    #@27
    .line 479
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@29
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$6;

    #@2b
    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$6;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    #@2e
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@31
    return-void
.end method

.method static isFullscreen(Landroid/content/Context;)Z
    .registers 2

    #@0
    const v0, 0x101020d

    #@3
    .line 535
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    #@6
    move-result p0

    #@7
    return p0
.end method

.method private isLandscape()Z
    .registers 3

    #@0
    .line 531
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    :goto_10
    return v0
.end method

.method static isNestedScrollable(Landroid/content/Context;)Z
    .registers 2

    #@0
    .line 539
    sget v0, Lcom/google/android/material/R$attr;->nestedScrollable:I

    #@2
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method static newInstance(Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;)Lcom/google/android/material/datepicker/MaterialDatePicker;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker<",
            "TS;>;"
        }
    .end annotation

    #@0
    .line 160
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;-><init>()V

    #@5
    .line 161
    new-instance v1, Landroid/os/Bundle;

    #@7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@a
    const-string v2, "OVERRIDE_THEME_RES_ID"

    #@c
    .line 162
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->overrideThemeResId:I

    #@e
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    const-string v2, "DATE_SELECTOR_KEY"

    #@13
    .line 163
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@15
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@18
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    #@1a
    .line 164
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1f
    const-string v2, "DAY_VIEW_DECORATOR_KEY"

    #@21
    .line 165
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@26
    const-string v2, "TITLE_TEXT_RES_ID_KEY"

    #@28
    .line 166
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2d
    const-string v2, "TITLE_TEXT_KEY"

    #@2f
    .line 167
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleText:Ljava/lang/CharSequence;

    #@31
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@34
    const-string v2, "INPUT_MODE_KEY"

    #@36
    .line 168
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->inputMode:I

    #@38
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3b
    const-string v2, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    #@3d
    .line 169
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonTextResId:I

    #@3f
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@42
    const-string v2, "POSITIVE_BUTTON_TEXT_KEY"

    #@44
    .line 170
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    #@46
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@49
    const-string v2, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    #@4b
    .line 171
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonTextResId:I

    #@4d
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@50
    const-string v2, "NEGATIVE_BUTTON_TEXT_KEY"

    #@52
    .line 172
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    #@54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@57
    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->setArguments(Landroid/os/Bundle;)V

    #@5a
    return-object v0
.end method

.method static readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z
    .registers 5

    #@0
    .line 543
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    #@2
    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    #@4
    .line 545
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 544
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [I

    #@f
    const/4 v2, 0x0

    #@10
    aput p1, v1, v2

    #@12
    .line 547
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@15
    move-result-object p0

    #@16
    .line 548
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@19
    move-result p1

    #@1a
    .line 549
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    return p1
.end method

.method private startPickerFragment()V
    .registers 5

    #@0
    .line 438
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Landroid/content/Context;)I

    #@7
    move-result v0

    #@8
    .line 441
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@e
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@10
    .line 440
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@16
    .line 442
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@18
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_29

    #@1e
    .line 446
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@24
    .line 445
    invoke-static {v2, v0, v3}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    #@27
    move-result-object v0

    #@28
    goto :goto_2b

    #@29
    .line 447
    :cond_29
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2b
    :goto_2b
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    #@2d
    .line 448
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateTitle(Z)V

    #@30
    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderText()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateHeader(Ljava/lang/String;)V

    #@37
    .line 451
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@3e
    move-result-object v0

    #@3f
    .line 452
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    #@41
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    #@43
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@46
    .line 453
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    #@49
    .line 455
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    #@4b
    new-instance v1, Lcom/google/android/material/datepicker/MaterialDatePicker$5;

    #@4d
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$5;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    #@50
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    #@53
    return-void
.end method

.method public static thisMonthInUtcMilliseconds()J
    .registers 2

    #@0
    .line 112
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    #@3
    move-result-object v0

    #@4
    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    #@6
    return-wide v0
.end method

.method public static todayInUtcMilliseconds()J
    .registers 2

    #@0
    .line 105
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method private updateTitle(Z)V
    .registers 3

    #@0
    .line 423
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerTitleTextView:Landroid/widget/TextView;

    #@2
    if-eqz p1, :cond_d

    #@4
    .line 424
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isLandscape()Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_d

    #@a
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->singleLineTitleText:Ljava/lang/CharSequence;

    #@c
    goto :goto_f

    #@d
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullTitleText:Ljava/lang/CharSequence;

    #@f
    .line 423
    :goto_f
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@12
    return-void
.end method

.method private updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V
    .registers 3

    #@0
    .line 495
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_13

    #@8
    .line 496
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    #@b
    move-result-object p1

    #@c
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_calendar_input_mode:I

    #@e
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    goto :goto_1d

    #@13
    .line 497
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    #@16
    move-result-object p1

    #@17
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_text_input_mode:I

    #@19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    .line 498
    :goto_1d
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@1f
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@22
    return-void
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .registers 3

    #@0
    .line 614
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 3

    #@0
    .line 632
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3

    #@0
    .line 588
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;)Z"
        }
    .end annotation

    #@0
    .line 566
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public clearOnCancelListeners()V
    .registers 2

    #@0
    .line 624
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public clearOnDismissListeners()V
    .registers 2

    #@0
    .line 642
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .registers 2

    #@0
    .line 604
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .registers 2

    #@0
    .line 582
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public getHeaderText()Ljava/lang/String;
    .registers 3

    #@0
    .line 121
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final getSelection()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .line 387
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelection()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    #@0
    .line 363
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

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
    .line 364
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    #@15
    goto :goto_6

    #@16
    .line 366
    :cond_16
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    #@19
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 200
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    if-nez p1, :cond_9

    #@5
    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getArguments()Landroid/os/Bundle;

    #@8
    move-result-object p1

    #@9
    :cond_9
    const-string v0, "OVERRIDE_THEME_RES_ID"

    #@b
    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    #@11
    const-string v0, "DATE_SELECTOR_KEY"

    #@13
    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    #@19
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@1b
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    #@1d
    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    #@23
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@25
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    #@27
    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/google/android/material/datepicker/DayViewDecorator;

    #@2d
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@2f
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    #@31
    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@34
    move-result v0

    #@35
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    #@37
    const-string v0, "TITLE_TEXT_KEY"

    #@39
    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    #@3f
    const-string v0, "INPUT_MODE_KEY"

    #@41
    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    #@47
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    #@49
    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    #@4f
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    #@51
    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    #@57
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    #@59
    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    #@5f
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    #@61
    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@64
    move-result-object p1

    #@65
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    #@67
    .line 215
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    #@69
    if-eqz p1, :cond_6c

    #@6b
    goto :goto_7a

    #@6c
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    #@6f
    move-result-object p1

    #@70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@73
    move-result-object p1

    #@74
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    #@76
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@79
    move-result-object p1

    #@7a
    :goto_7a
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullTitleText:Ljava/lang/CharSequence;

    #@7c
    .line 216
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getFirstLineBySeparator(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@7f
    move-result-object p1

    #@80
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->singleLineTitleText:Ljava/lang/CharSequence;

    #@82
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    #@0
    .line 229
    new-instance p1, Landroid/app/Dialog;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Landroid/content/Context;)I

    #@d
    move-result v1

    #@e
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@11
    .line 230
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    .line 231
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    #@18
    move-result v1

    #@19
    iput-boolean v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    #@1b
    .line 232
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    #@1d
    const-class v2, Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@1f
    .line 234
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 233
    invoke-static {v0, v1, v2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    #@26
    move-result v1

    #@27
    .line 235
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@29
    sget v3, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    #@2b
    sget v4, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialCalendar:I

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-direct {v2, v0, v5, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@31
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@33
    .line 241
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@36
    .line 242
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@38
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@3f
    .line 243
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@41
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@48
    move-result-object v1

    #@49
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@4c
    move-result v1

    #@4d
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@50
    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    #@0
    .line 253
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    #@2
    if-eqz p3, :cond_7

    #@4
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_fullscreen:I

    #@6
    goto :goto_9

    #@7
    :cond_7
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    #@9
    .line 254
    :goto_9
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@10
    move-result-object p2

    #@11
    .line 257
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@13
    if-eqz p3, :cond_18

    #@15
    .line 258
    invoke-virtual {p3, p2}, Lcom/google/android/material/datepicker/DayViewDecorator;->initialize(Landroid/content/Context;)V

    #@18
    .line 261
    :cond_18
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    #@1a
    if-eqz p3, :cond_30

    #@1c
    .line 262
    sget p3, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    #@1e
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@21
    move-result-object p3

    #@22
    .line 263
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@24
    .line 264
    invoke-static {p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    #@27
    move-result v1

    #@28
    const/4 v2, -0x2

    #@29
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@2c
    .line 263
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2f
    goto :goto_43

    #@30
    .line 266
    :cond_30
    sget p3, Lcom/google/android/material/R$id;->mtrl_calendar_main_pane:I

    #@32
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@35
    move-result-object p3

    #@36
    .line 267
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@38
    .line 268
    invoke-static {p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    #@3b
    move-result v1

    #@3c
    const/4 v2, -0x1

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@40
    .line 267
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@43
    .line 271
    :goto_43
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_header_selection_text:I

    #@45
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object p3

    #@49
    check-cast p3, Landroid/widget/TextView;

    #@4b
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    #@4d
    const/4 v0, 0x1

    #@4e
    .line 272
    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    #@51
    .line 274
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_header_toggle:I

    #@53
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@56
    move-result-object p3

    #@57
    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    #@59
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    #@5b
    .line 275
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_title_text:I

    #@5d
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@60
    move-result-object p3

    #@61
    check-cast p3, Landroid/widget/TextView;

    #@63
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerTitleTextView:Landroid/widget/TextView;

    #@65
    .line 276
    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->initHeaderToggle(Landroid/content/Context;)V

    #@68
    .line 278
    sget p2, Lcom/google/android/material/R$id;->confirm_button:I

    #@6a
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6d
    move-result-object p2

    #@6e
    check-cast p2, Landroid/widget/Button;

    #@70
    iput-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@72
    .line 279
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    #@75
    move-result-object p2

    #@76
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    #@79
    move-result p2

    #@7a
    if-eqz p2, :cond_82

    #@7c
    .line 280
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@7e
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    #@81
    goto :goto_88

    #@82
    .line 282
    :cond_82
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@84
    const/4 p3, 0x0

    #@85
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    #@88
    .line 284
    :goto_88
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@8a
    sget-object p3, Lcom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    #@8c
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@8f
    .line 285
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    #@91
    if-eqz p2, :cond_99

    #@93
    .line 286
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@95
    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@98
    goto :goto_a2

    #@99
    .line 287
    :cond_99
    iget p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    #@9b
    if-eqz p2, :cond_a2

    #@9d
    .line 288
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@9f
    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(I)V

    #@a2
    .line 290
    :cond_a2
    :goto_a2
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@a4
    new-instance p3, Lcom/google/android/material/datepicker/MaterialDatePicker$1;

    #@a6
    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$1;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    #@a9
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@ac
    .line 301
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    #@ae
    new-instance p3, Lcom/google/android/material/datepicker/MaterialDatePicker$2;

    #@b0
    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$2;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    #@b3
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@b6
    .line 313
    sget p2, Lcom/google/android/material/R$id;->cancel_button:I

    #@b8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@bb
    move-result-object p2

    #@bc
    check-cast p2, Landroid/widget/Button;

    #@be
    .line 314
    sget-object p3, Lcom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    #@c0
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@c3
    .line 315
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    #@c5
    if-eqz p3, :cond_cb

    #@c7
    .line 316
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@ca
    goto :goto_d2

    #@cb
    .line 317
    :cond_cb
    iget p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    #@cd
    if-eqz p3, :cond_d2

    #@cf
    .line 318
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    #@d2
    .line 320
    :cond_d2
    :goto_d2
    new-instance p3, Lcom/google/android/material/datepicker/MaterialDatePicker$3;

    #@d4
    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$3;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    #@d7
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@da
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    #@0
    .line 371
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

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
    .line 372
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    #@15
    goto :goto_6

    #@16
    .line 374
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getView()Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/view/ViewGroup;

    #@1c
    if-eqz v0, :cond_21

    #@1e
    .line 376
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    #@21
    .line 378
    :cond_21
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    #@24
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 179
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    const-string v0, "OVERRIDE_THEME_RES_ID"

    #@5
    .line 180
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    const-string v0, "DATE_SELECTOR_KEY"

    #@c
    .line 181
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@11
    .line 183
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    #@13
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    #@15
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V

    #@18
    .line 185
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@1a
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lcom/google/android/material/datepicker/Month;

    #@1d
    move-result-object v1

    #@1e
    if-eqz v1, :cond_2b

    #@20
    .line 186
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@22
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lcom/google/android/material/datepicker/Month;

    #@25
    move-result-object v1

    #@26
    iget-wide v1, v1, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setOpenAt(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    #@2b
    :cond_2b
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    #@2d
    .line 188
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@34
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    #@36
    .line 189
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    #@38
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@3b
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    #@3d
    .line 190
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    #@3f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@42
    const-string v0, "TITLE_TEXT_KEY"

    #@44
    .line 191
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    #@46
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@49
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    #@4b
    .line 192
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    #@4d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@50
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    #@52
    .line 193
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    #@54
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@57
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    #@59
    .line 194
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    #@5b
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5e
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    #@60
    .line 195
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    #@62
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@65
    return-void
.end method

.method public onStart()V
    .registers 10

    #@0
    .line 335
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    #@3
    .line 336
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireDialog()Landroid/app/Dialog;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@a
    move-result-object v0

    #@b
    .line 338
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    #@d
    if-eqz v1, :cond_1c

    #@f
    const/4 v1, -0x1

    #@10
    .line 339
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    #@13
    .line 340
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@18
    .line 341
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V

    #@1b
    goto :goto_4d

    #@1c
    :cond_1c
    const/4 v1, -0x2

    #@1d
    .line 343
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    #@20
    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v1

    #@24
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_dialog_background_inset:I

    #@26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@29
    move-result v8

    #@2a
    .line 346
    new-instance v1, Landroid/graphics/Rect;

    #@2c
    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2f
    .line 347
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    #@31
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@33
    move-object v3, v2

    #@34
    move v5, v8

    #@35
    move v6, v8

    #@36
    move v7, v8

    #@37
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@3a
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3d
    .line 349
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@40
    move-result-object v0

    #@41
    new-instance v2, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;

    #@43
    .line 350
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireDialog()Landroid/app/Dialog;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3, v1}, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    #@4a
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@4d
    .line 352
    :goto_4d
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    #@50
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    .line 357
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/PickerFragment;->clearOnSelectionChangedListeners()V

    #@5
    .line 358
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    #@8
    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .registers 3

    #@0
    .line 619
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 3

    #@0
    .line 637
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3

    #@0
    .line 597
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;)Z"
        }
    .end annotation

    #@0
    .line 575
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method updateHeader(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 429
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    #@2
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderContentDescription()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@9
    .line 430
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    #@b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@e
    return-void
.end method
